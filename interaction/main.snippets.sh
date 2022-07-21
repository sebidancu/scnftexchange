ALICE="/Users/Sebi/ElrondSC/Sc-CrowdFunding/walletTest.pem"
BOB="/Users/Sebi/ElrondSC/Sc-CrowdFunding/walletBob.pem"
WASM_PATH="/Users/Sebi/Tigers/dapp-vote/scnftexchange/output/scvote.wasm"

ADDRESS= #$(erdpy data load --key=address-testnet)
DEPLOY_TRANSACTION=$(erdpy data load --key=deployTransaction-testnet)
PROXY=https://api.elrond.com


DEPLOY_GAS="80000000"
TARGET=500000000000000000
DEADLINE_UNIX_TIMESTAMP=1651066120  # Fri Jan 01 2021 00:00:00 GMT+0200 (Eastern European Standard Time)
EGLD_TOKEN_ID=0x45474c44 # "EGLD"

deploy() {
    erdpy --verbose contract deploy --project=${PROJECT} --recall-nonce --pem=${ALICE} \
          --gas-limit=${DEPLOY_GAS} \
          --outfile="/Users/Sebi/ElrondSC/Sc-CrowdFunding/mycrowdfunding/deploy-testnet.interaction.json" --send --proxy=${PROXY} --chain=1 || return

    TRANSACTION=$(erdpy data parse --file="deploy-testnet.interaction.json" --expression="data['emittedTransactionHash']")
    ADDRESS=$(erdpy data parse --file="deploy-testnet.interaction.json" --expression="data['contractAddress']")

    erdpy data store --key=address-testnet --value=${ADDRESS}
    erdpy data store --key=deployTransaction-testnet --value=${TRANSACTION}

    echo ""
    echo "Smart contract address: ${ADDRESS}"
}

upgradeSC() {
    erdpy --verbose contract upgrade ${ADDRESS} --recall-nonce \
        --bytecode=${WASM_PATH} \
        --pem=${ALICE} \
        --gas-limit=60000000 \
        --proxy=${PROXY} --chain=1 \
        --send || return
}

checkDeployment() {
    erdpy tx get --hash=$DEPLOY_TRANSACTION --omit-fields="['data', 'signature']" --proxy=${PROXY}
    erdpy account get --address=$ADDRESS --omit-fields="['code']" --proxy=${PROXY}
}

# ALICE claims
start_vote() {
    erdpy --verbose contract call ${ADDRESS} --recall-nonce --pem=${ALICE} --gas-limit=10000000 \
        --function="start_vote" \
        --proxy=${PROXY} --chain=1 \
        --send
}

stop_vote() {
    erdpy --verbose contract call ${ADDRESS} --recall-nonce --pem=${ALICE} --gas-limit=10000000 \
        --function="stop_vote" \
        --proxy=${PROXY} --chain=1 \
        --send
}

clear_votes() {
    erdpy --verbose contract call ${ADDRESS} --recall-nonce --pem=${ALICE} --gas-limit=10000000 \
        --function="clear_votes" \
        --proxy=${PROXY} --chain=1 \
        --send
}


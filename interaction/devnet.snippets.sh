ALICE="/Users/Sebi/ElrondSC/Sc-CrowdFunding/walletTest.pem"
BOB="/Users/Sebi/ElrondSC/Sc-CrowdFunding/walletBob.pem"
WASM_PATH="/Users/Sebi/Tigers/dapp-vote/scnftexchange/output/scvote.wasm"

ADDRESS=erd1qqqqqqqqqqqqqpgqhnn484f5ep20c7xlqa9c5hvawfc9lz5yj0wq6kshla #$(erdpy data load --key=address-testnet)
DEPLOY_TRANSACTION=$(erdpy data load --key=deployTransaction-testnet)
PROXY=https://devnet-api.elrond.com


DEPLOY_GAS="80000000"
TARGET=500000000000000000
DEADLINE_UNIX_TIMESTAMP=1651066120  # Fri Jan 01 2021 00:00:00 GMT+0200 (Eastern European Standard Time)
EGLD_TOKEN_ID=0x45474c44 # "EGLD"

deploy() {
    erdpy --verbose contract deploy --project=${PROJECT} --recall-nonce --pem=${ALICE} \
          --gas-limit=${DEPLOY_GAS} \
          --send --proxy=${PROXY} --chain=D || return

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
        --proxy=${PROXY} --chain=D \
        --send || return
}

checkDeployment() {
    erdpy tx get --hash=$DEPLOY_TRANSACTION --omit-fields="['data', 'signature']" --proxy=${PROXY}
    erdpy account get --address=$ADDRESS --omit-fields="['code']" --proxy=${PROXY}
}

# ALICE claims
claim_baby() {
    erdpy --verbose contract call ${ADDRESS} --recall-nonce --pem=${ALICE} --gas-limit=10000000 \
        --function="claim_baby" \
        --proxy=${PROXY} --chain=D \
        --send
}
claim_elixir() {
    erdpy --verbose contract call ${ADDRESS} --recall-nonce --pem=${ALICE} --gas-limit=10000000 \
        --function="claim_elixir" \
        --proxy=${PROXY} --chain=D \
        --send
}
start_upgrade() {
    erdpy --verbose contract call ${ADDRESS} --recall-nonce --pem=${ALICE} --gas-limit=10000000 \
        --function="start" \
        --proxy=${PROXY} --chain=D \
        --send
}



setDev() {
    local BOB_ADDRESS_BECH32=erd1a8jaysc9aadaa57nm26nyz4euj994fsmmrkjpp2zg53gn3alj0wqls7f96
    local BOB_ADDRESS_HEX=0x$(erdpy wallet bech32 --decode ${BOB_ADDRESS_BECH32})
    erdpy --verbose contract call ${ADDRESS} --recall-nonce --pem=${BOB} --gas-limit=10000000 \
        --function="setdevwallet" \
        --proxy=${PROXY} --chain=D \
        --arguments ${BOB_ADDRESS_HEX} \
        --send
}

setTeam() {
    local BOB_ADDRESS_BECH32=erd1lz29ug45hy975wjjjey4aupwmzxycgx5kavajmray9ezh22uhtfs2a3gl0
    local BOB_ADDRESS_HEX=0x$(erdpy wallet bech32 --decode ${BOB_ADDRESS_BECH32})
    erdpy --verbose contract call ${ADDRESS} --recall-nonce --pem=${BOB} --gas-limit=10000000 \
        --function="setteamwallet" \
        --proxy=${PROXY} --chain=D \
        --arguments ${BOB_ADDRESS_HEX} \
        --send
}

setNft() {
    local BOB_ADDRESS_BECH32=erd14xkt5ey728ns3a080j5garvr3ysuy843gefh585x4qhd5jkfehfqh6xe52
    local BOB_ADDRESS_HEX=0x$(erdpy wallet bech32 --decode ${BOB_ADDRESS_BECH32})
    erdpy --verbose contract call ${ADDRESS} --recall-nonce --pem=${BOB} --gas-limit=10000000 \
        --function="setnftwallet" \
        --proxy=${PROXY} --chain=D \
        --arguments ${BOB_ADDRESS_HEX} \
        --send
}

setMaxTicket() {
    erdpy --verbose contract call ${ADDRESS} --recall-nonce --pem=${BOB} --gas-limit=10000000 \
        --function="set_maxtickets_per_wallet" \
        --proxy=${PROXY} --chain=D \
        --arguments 20 \
        --send
}

setPrice_nou() {
    erdpy --verbose contract call ${ADDRESS} --recall-nonce --pem=${BOB} --gas-limit=10000000 \
        --function="set_price" \
        --proxy=${PROXY} --chain=D \
        --arguments 50000000000000000 \
        --send
}

set_Deadline() {
    erdpy --verbose contract call ${ADDRESS} --recall-nonce --pem=${BOB} --gas-limit=20000000 \
        --function="set_deadline" \
        --proxy=${PROXY} --chain=D \
        --arguments 300 \
        --send
}

# BOB sends funds
buyTicket() {
    erdpy --verbose contract call $ADDRESS --recall-nonce --pem=${BOB} --gas-limit=20000000 \
        --function="buy_ticket" --value=50000000000000000 \
        --proxy=${PROXY} --chain=D \
        --arguments 1 \
        --send
}

buyAlice() {
    erdpy --verbose contract call $ADDRESS --recall-nonce --pem=${ALICE} --gas-limit=10000000 \
        --function="buy_ticket" --value=450000000000000000 \
        --proxy=${PROXY} --chain=D \
        --arguments 9 \
        --send
}

getArtist1() {
    erdpy --verbose contract query ${ADDRESS} --function="getArtist1" --proxy=${PROXY} 
}

getVolume() {
    erdpy --verbose contract query ${ADDRESS} --function="getVolume" --proxy=${PROXY} 
}

getWinners() {
    erdpy --verbose contract query ${ADDRESS} --function="getWinners" --proxy=${PROXY} 
}

getAllWinners() {
    erdpy --verbose contract query ${ADDRESS} --function="getAllWinners" --proxy=${PROXY} 
}

getTicketHolderUnique() {
    erdpy --verbose contract query ${ADDRESS} --function="getTicketHolderUnique" --proxy=${PROXY} 
}


winner() {
    erdpy --verbose contract call $ADDRESS --recall-nonce --pem=${BOB} --gas-limit=10000000 \
        --function="winner" --value=0 \
        --proxy=${PROXY} --chain=D \
        --arguments 3 \
        --send
}

getTicketsPerAddress() {
    local BOB_ADDRESS_BECH32=erd1a8jaysc9aadaa57nm26nyz4euj994fsmmrkjpp2zg53gn3alj0wqls7f96
    local BOB_ADDRESS_HEX=0x$(erdpy wallet bech32 --decode ${BOB_ADDRESS_BECH32})
    erdpy --verbose contract query ${ADDRESS} --function="getTicketsPerAddress" --proxy=${PROXY} --arguments ${BOB_ADDRESS_HEX} 378 \
}

getCurrentFunds() {
    erdpy --verbose contract query ${ADDRESS} --function="getCurrentFunds" --proxy=${PROXY} 
}

getTime() {
    erdpy --verbose contract query ${ADDRESS} --function="getTime" --proxy=${PROXY} 
}


getTicketPrice() {
    erdpy --verbose contract query ${ADDRESS} --function="getTicketPrice" --proxy=${PROXY} 
}

getDeadline() {
    erdpy --verbose contract query ${ADDRESS} --function="getDeadline" --proxy=${PROXY} 
}

getPrize() {
    erdpy --verbose contract query ${ADDRESS} --function="getPrize" --proxy=${PROXY}
}

getTicketHolder() {
    erdpy --verbose contract query ${ADDRESS} --function="getTicketHolder" --proxy=${PROXY}
}

getMaxTicketsPerAddress() {
    erdpy --verbose contract query ${ADDRESS} --function="getMaxTicketsPerAddress" --proxy=${PROXY}
}

claimFunds() {
    erdpy --verbose contract call $ADDRESS --recall-nonce --pem=${ALICE} --gas-limit=10000000 \
        --function="claimfunds" \
        --proxy=${PROXY} --chain=D \
        --send
}

ChangeOwner(){
    erdpy --verbose contract call $ADDRESS --recall-nonce --pem=${ALICE} --gas-limit=10000000 \
        --function=ChangeOwnerAddress \
        --proxy=${PROXY} --chain=D \
        --arguments erd1lz29ug45hy975wjjjey4aupwmzxycgx5kavajmray9ezh22uhtfs2a3gl0 \
        --send
}

getCounterTickets() {
    erdpy --verbose contract query ${ADDRESS} --function="getCounterTickets" --proxy=${PROXY} 
}

getCounterLottery() {
    erdpy --verbose contract query ${ADDRESS} --function="getCounterLottery" --proxy=${PROXY} 
}

getVolume() {
    erdpy --verbose contract query ${ADDRESS} --function="getVolume" --proxy=${PROXY} 
}

getWinners() {
    erdpy --verbose contract query ${ADDRESS} --function="getWinners" --proxy=${PROXY} 
}

getArtist1() {
    erdpy --verbose contract query ${ADDRESS} --function="getArtist1" --proxy=${PROXY} 
}

getArtist2() {
    erdpy --verbose contract query ${ADDRESS} --function="getArtist2" --proxy=${PROXY} 
}
#1654611120
getArtist3() {
    erdpy --verbose contract query ${ADDRESS} --function="getArtist3" --proxy=${PROXY}
}
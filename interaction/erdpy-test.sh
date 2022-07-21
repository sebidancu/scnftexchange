MYWALLET="erd1a8jaysc9aadaa57nm26nyz4euj994fsmmrkjpp2zg53gn3alj0wqls7f96" #my wallet
PEM_FILE="/Users/Sebi/Licenta2022/edpy/elrond-sdk-erdpy-main/walletTest.pem" #pem

declare -a TRANSACTIONS=(
  "erd1a8jaysc9aadaa57nm26nyz4euj994fsmmrkjpp2zg53gn3alj0wqls7f96" #my wallet
)

#Snapshot
declare -a wallet_distribution=(
  'erd1a8jaysc9aadaa57nm26nyz4euj994fsmmrkjpp2zg53gn3alj0wqls7f96'
)

declare -a CONTRACT=(
  'erd1qqqqqqqqqqqqqpgqhnn484f5ep20c7xlqa9c5hvawfc9lz5yj0wq6kshla'
)
# DO NOT MODIFY ANYTHING FROM HERE ON 

PROXY="https://devnet-gateway.elrond.com"
DENOMINATION="000000000000000000"



# We recall the nonce of the wallet
NONCE=$(erdpy account get --nonce --address="$MYWALLET" --proxy="$PROXY")

function send-nft {
  for transaction in "${TRANSACTIONS[@]}"; do
    n=0
    while [ $n -le 0 ] #nr de adrese in snapshot
      do
      erdpy data store --key=address-devnet --value=$(erdpy wallet bech32 --decode ${wallet_distribution[n]} ) #transforma adresa din snapshot in hex
      echo ADDRESS=$(erdpy data load --key=address-devnet)
    
      set -- $transaction
      erdpy --verbose tx new --send --pem=$PEM_FILE --nonce=$NONCE --receiver=$1 --gas-limit=5550000 --proxy=$PROXY --chain D --data ESDTNFTTransfer@554c42532d633232643332@08@01@00000000000000000500bce753d534c854fc78df074b8a5d9d72705f8a8493dc@66756e64
      echo "Transaction sent with nonce $NONCE and backed up to bon-mission-tx-$NONCE.json."
      (( NONCE++ ))
      n=$(( n+1 ))
      
      #sleep 20
    done
  done
}


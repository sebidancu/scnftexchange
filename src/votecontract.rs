#![no_std]

elrond_wasm::imports!();

const TOKEN_ID1: &[u8; 11] = b"TPCB-8ed04a";
const TOKEN_ID2: &[u8; 11] = b"TPCE-559720";
const TOKEN_ID3: &[u8; 11] = b"TPCA-c8ae76";

/// An empty contract. To be used as a template when starting a new contract from scratch.
#[elrond_wasm::derive::contract]
pub trait VoteContract {
    #[init]
    fn init(&self) {
        self.nft1()
            .set(TokenIdentifier::from(ManagedBuffer::new_from_bytes(
                TOKEN_ID1,
            )));
        self.nft1()
            .set(TokenIdentifier::from(ManagedBuffer::new_from_bytes(
                TOKEN_ID2,
            )));
        self.nftreward()
            .set(TokenIdentifier::from(ManagedBuffer::new_from_bytes(
                TOKEN_ID3,
            )));
        self.status().set(true);
    }

    #[payable("*")]
    #[endpoint]
    fn upgrade(&self) {
        let identifier1 = TokenIdentifier::from(ManagedBuffer::new_from_bytes(TOKEN_ID1));
        let identifier2 = TokenIdentifier::from(ManagedBuffer::new_from_bytes(TOKEN_ID2));
        let payments: ManagedVec<EsdtTokenPayment<Self::Api>> =
            self.call_value().all_esdt_transfers();
        let address = self.blockchain().get_caller(); //iau wallet

        require!(self.nonces().len() >= 1, "No Alpha Tiger available");

        require!(self.status().get() == true, "Upgrade is currently closed");

        for payment in &payments {
            require!(
                payment.token_identifier == identifier1 || payment.token_identifier == identifier2,
                "Invalid token"
            );

            if payment.token_identifier == identifier1 {
                self.nonces_baby().push(&payment.token_nonce);
            }

            if payment.token_identifier == identifier2 {
                self.nonces_elixir().push(&payment.token_nonce);
            }

            //payment.token_nonce
        }

        //intoarce nftul reward
        let nfts_vec = self.nonces();
        let nfts_nr = nfts_vec.len() as usize;
        let nft_type = self.nftreward().get();
        let mut rand_source = RandomnessSource::<Self::Api>::new();
        let index = rand_source.next_usize_in_range(1, nfts_nr + 1);
        let nft_nonce = self.nonces().get(index);

        self.send_nft(address, nft_type, nft_nonce, BigUint::from(1 as u32));

        self.nonces().swap_remove(index);
    }

    fn send_nft(
        &self,
        to: ManagedAddress,
        token_id: TokenIdentifier,
        nft_nonce: u64,
        amount: BigUint,
    ) {
        self.send().direct(&to, &token_id, nft_nonce, &amount, &[]);
    }

    #[only_owner]
    #[endpoint]
    fn start(&self) {
        self.status().set(true);
    }

    #[only_owner]
    #[endpoint]
    fn stop(&self) {
        self.status().set(false);
    }

    #[only_owner]
    #[endpoint]
    fn set_nft1(&self, token_id: TokenIdentifier) {
        self.nft1().set(token_id);
    }

    #[only_owner]
    #[endpoint]
    fn set_nft2(&self, token_id: TokenIdentifier) {
        self.nft2().set(token_id);
    }

    #[only_owner]
    #[endpoint]
    fn set_nft_reward(&self, token_id: TokenIdentifier) {
        self.nftreward().set(token_id);
    }

    #[only_owner]
    #[payable("*")]
    #[endpoint]
    fn fund(&self) {
        let (nft_type, nft_nonce, nft_amount) = self.call_value().payment_as_tuple();
        require!(
            nft_type == self.nftreward().get(), // verific daca e nft-ul din colectia reward
            "NFT is not valid"
        );
        require!(
            nft_amount == BigUint::from(1 as u32), // verific nft-ul trimis
            "NFT amount is not valid"
        );

        self.nonces().push(&nft_nonce); //actualizez vectorul cu nfturile rewards
    }

    // #[only_owner]
    // #[endpoint]
    // fn claim_baby(&self) {
    //     let address = self.blockchain().get_caller(); //iau wallet
    //     //let babys = self.nonces_baby();
    //     let token1 = self.nft1().get();
    //     //let token2 = self.nft2().get();

    //     for baby in self.nonces_baby().iter() {
    //         self.send_nft(
    //             address.clone(), 
    //             token1.clone(), 
    //             baby, 
    //             BigUint::from(1 as u32));
    //         self.nonces_baby().swap_remove(baby as usize);
    //     }
    // }

    // #[only_owner]
    // #[endpoint]
    // fn claim_elixir(&self) {
    //     let address = self.blockchain().get_caller(); //iau wallet
    //     //let babys = self.nonces_baby();
    //     let token2 = self.nft2().get();
    //     //let token2 = self.nft2().get();

    //     for elixir in self.nonces_elixir().iter() {
    //         self.send_nft(
    //             address.clone(), 
    //             token2.clone(), 
    //             elixir, 
    //             BigUint::from(1 as u32));
    //         self.nonces_baby().swap_remove(elixir as usize);
    //     }
    // }


    //=====STORAGE=====
    #[view(getNFT1)]
    #[storage_mapper("nft1")]
    fn nft1(&self) -> SingleValueMapper<TokenIdentifier>;

    #[view(getNFT2)]
    #[storage_mapper("nft2")]
    fn nft2(&self) -> SingleValueMapper<TokenIdentifier>;

    #[view(getnftreward)]
    #[storage_mapper("nftreward")]
    fn nftreward(&self) -> SingleValueMapper<TokenIdentifier>;

    //salvez toate nft-urile ce le primesc in functia fund
    #[view(getNonces)]
    #[storage_mapper("nonces")]
    fn nonces(&self) -> VecMapper<u64>;

    #[view(getNoncesBaby)]
    #[storage_mapper("noncesbaby")]
    fn nonces_baby(&self) -> VecMapper<u64>;

    #[view(getNoncesElixir)]
    #[storage_mapper("nonceselixir")]
    fn nonces_elixir(&self) -> VecMapper<u64>;

    #[view(getStatus)]
    #[storage_mapper("status")]
    fn status(&self) -> SingleValueMapper<bool>;
}

import CryptoPoops from 0x05
import NonFungibleToken from 0x05

pub fun main(User: Address, _id: UInt64): &NonFungibleToken.NFT {

    // Get a reference to the User`s public Collection
    let pubRef = getAccount(User).getCapability(/public/MyCollection)
                                  .borrow<&CryptoPoops.Collection{CryptoPoops.CollectionPublic}>()
                                  ?? panic("The recipient does not have a Collection.")

    let ids =  pubRef.getIDs()
    
    let nft = pubRef.borrowAuthNFT(id: ids[_id])

    return nft


}

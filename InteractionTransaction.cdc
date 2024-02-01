import CryptoPoops from 0x05

transaction {
  prepare(signer: AuthAccount) {
    // Reference the "CryptoPoops.Collection" stored in the account's storage.
    let myCollection = signer.borrow<&CryptoPoops.Collection>(from: /storage/MyCollection)
                          ?? panic("MyCollection not found in account storage")

    // Call functions on the collection as needed.
    // For example, you can deposit NFTs into the collection or get NFT IDs.

    log("Successfully interacted with contract3")
  }
}

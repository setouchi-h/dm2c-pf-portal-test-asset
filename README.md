# Test Asset

This is a test asset for pf-portal project.

## Deployed Contracts

### DM2Verse Testnet

- SMP Token: [0xAaf6A734114437b719c28cfd44c0b2B515eD29be](https://explorer.testnet.dm2verse.dmm.com/address/0xAaf6A734114437b719c28cfd44c0b2B515eD29be)
- WETH: [0xAa3FDEB44B7bb1C0A366685c0A10b1a2aEa6548C](https://explorer.testnet.dm2verse.dmm.com/address/0xAa3FDEB44B7bb1C0A366685c0A10b1a2aEa6548C)
- Thether: [0x35B9B2B23f01452eab2095d074966F99A1d1aAd0](https://explorer.testnet.dm2verse.dmm.com/address/0x35B9B2B23f01452eab2095d074966F99A1d1aAd0)

- ERC721: [0xB0C4aF27bC604724B9692463E6a6801eCAD61375](https://explorer.testnet.dm2verse.dmm.com/address/0xB0C4aF27bC604724B9692463E6a6801eCAD61375)

### Sepolia Testnet

- TestAsset (ERC20): [0xf2a58f210956698D5fB3327348801dCCBBc7F317](https://sepolia.etherscan.io/address/0xf2a58f210956698d5fb3327348801dccbbc7f317)
- TestToken (ERC721): [0xf2609e2e219e144c1A99F111f8c5f5e9756e1362](https://sepolia.etherscan.io/address/0xf2609e2e219e144c1A99F111f8c5f5e9756e1362)

## Usage

Please change contract name and below are just examples.
When interacting with the verse, `--legacy` is required.

### Deploy ERC20

```shell
$  forge script script/DeployTestSMP.s.sol:DeployTestSMP --rpc-url $DM2_VERSE_TESTNET_RPC_URL --broadcast --verify --verifier blockscout --verifier-url 'https://explorer.testnet.dm2verse.dmm.com//api?' --account defaultKey --sender <your whitelisted address>
```

### Deploy ERC721

```shell
$ forge script script/DeployTestERC721.s.sol:DeployTestERC721 --rpc-url $DM2_VERSE_TESTNET_RPC_URL --broadcast --verify --verifier blockscout --verifier-url 'https://explorer.testnet.dm2verse.dmm.com//api?' --account defaultKey --sender <your whitelisted address>
```

### Mint ERC20

Everyone can mint because it is a test asset.

```shell
$ cast send 0xf2a58f210956698D5fB3327348801dCCBBc7F317 "mint(address,uint256)" <recipient> <amount> --rpc-url $DM2_VERSE_TESTNET_RPC_URL  --account defaultKey
```

or

```shell
$ forge script script/Interactions.s.sol:MintTestERC20 --rpc-url $DM2_VERSE_TESTNET_RPC_URL --account defaultKey --sender <your address> --broadcast
```

### Mint ERC721

Everyone can mint because it is a test asset.

```shell
$ cast send 0xf2609e2e219e144c1A99F111f8c5f5e9756e1362 "safeMint(address)" <recipient> --rpc-url $SEPOLIA_RPC_URL  --account defaultKey
```

or

```shell
$ forge script script/Interactions.s.sol:MintTestERC721 --rpc-url $SEPOLIA_RPC_URL --account defaultKey --sender <your address> --broadcast
```

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```

## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

- **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
- **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
- **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
- **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

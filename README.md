# Test Asset

This is a test asset for pf-portal project.

## Deployed Contracts

- TestAsset (ERC20): [0xc5DaF4084CC8A826BF0010a17e0B4EE9cd447C2D](https://sepolia.etherscan.io/address/0xc5daf4084cc8a826bf0010a17e0b4ee9cd447c2d)

## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

- **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
- **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
- **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
- **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Deploy

```shell
$ forge script script/DeployTestAsset.s.sol:DeployTestAsset --rpc-url $SEPOLIA_RPC_URL --account defaultKey --sender <address> --broadcast --verify --etherscan-api-key $ETHERSCAN_API_KEY
```

### Mint ERC20

```shell
$ cast send 0xc5DaF4084CC8A826BF0010a17e0B4EE9cd447C2D "mint(address,uint256)" <recipient> <amount> --rpc-url $SEPOLIA_RPC_URL  --account defaultKey
```

or

```shell
$ forge script script/Interactions.s.sol:MintTestAsset --rpc-url $SEPOLIA_RPC_URL --account defaultKey --sender 0x5Cdc9010D01d6744Dd9213A0e28aa780210eC544 --broadcast
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

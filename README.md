# Test Asset

This is a test asset for pf-portal project.

## Deployed Contracts

These contracts are deployed on Sepolia Testnet.

- TestAsset (ERC20): [0xf2a58f210956698D5fB3327348801dCCBBc7F317](https://sepolia.etherscan.io/address/0xf2a58f210956698d5fb3327348801dccbbc7f317)

## Usage

### Deploy

```shell
$ forge script script/DeployTestAsset.s.sol:DeployTestAsset --rpc-url $SEPOLIA_RPC_URL --account defaultKey --sender <your address> --broadcast --verify --etherscan-api-key $ETHERSCAN_API_KEY
```

### Mint ERC20

```shell
$ cast send 0xf2a58f210956698D5fB3327348801dCCBBc7F317 "mint(address,uint256)" <recipient> <amount> --rpc-url $SEPOLIA_RPC_URL  --account defaultKey
```

or

```shell
$ forge script script/Interactions.s.sol:MintTestAsset --rpc-url $SEPOLIA_RPC_URL --account defaultKey --sender <your address> --broadcast
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

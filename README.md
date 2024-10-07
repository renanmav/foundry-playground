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

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
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

### NFT.sol

Base Sepolia: https://sepolia.basescan.org/address/0x08c969e1287d9e15099e4663d6c0414df90aa06d

```
Deployer: 0xaCAe57882528fEBB7Ac2561188bE8915b20c56E8
Deployed to: 0x08C969e1287d9E15099e4663d6c0414Df90AA06D
Transaction hash: 0xfaade4f6aed30148351caa52202dba733c9e91ac1c96bb6b159a629e1bd63893
```

Base Mainnet: https://basescan.org/address/0x83A471ed5f07c9AA3f32a57F5017f8B56a7792Ce

```
Deployer: 0xaCAe57882528fEBB7Ac2561188bE8915b20c56E8
Deployed to: 0x83A471ed5f07c9AA3f32a57F5017f8B56a7792Ce
Transaction hash: 0xe89e70b6b987aa45f224cb7f42871129c2602cad2cafa8abd8a5e555a77b2fee
```

### BasicMath.sol

Base Sepolia:

```
Deployer: 0xaCAe57882528fEBB7Ac2561188bE8915b20c56E8
Deployed to: 0x4da2A4bBB657569a8E3dC697424eF9c8418a156A
Transaction hash: 0xc5ccd9a7baca8bd7d4be19abdf7a88a5155a2c7b8c4111611f978226a996d568
```

Base Mainnet:

```
Deployer: 0xaCAe57882528fEBB7Ac2561188bE8915b20c56E8
Deployed to: 0xd34520342f3b6c0c98ECB2485Bf034cecE80C7D5
Transaction hash: 0xda47675d99a9287d098fc3485e4b99897eeb7c298db915a8025d6711a7e77491
```

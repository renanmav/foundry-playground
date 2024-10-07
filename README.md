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

Base Sepolia: https://sepolia.basescan.org/address/0x4da2A4bBB657569a8E3dC697424eF9c8418a156A

```
Deployer: 0xaCAe57882528fEBB7Ac2561188bE8915b20c56E8
Deployed to: 0x4da2A4bBB657569a8E3dC697424eF9c8418a156A
Transaction hash: 0xc5ccd9a7baca8bd7d4be19abdf7a88a5155a2c7b8c4111611f978226a996d568
```

Base Mainnet: https://basescan.org/address/0xd34520342f3b6c0c98ECB2485Bf034cecE80C7D5

```
Deployer: 0xaCAe57882528fEBB7Ac2561188bE8915b20c56E8
Deployed to: 0xd34520342f3b6c0c98ECB2485Bf034cecE80C7D5
Transaction hash: 0xda47675d99a9287d098fc3485e4b99897eeb7c298db915a8025d6711a7e77491
```

### Counter.sol

Base Sepolia: https://sepolia.basescan.org/address/0xe4eD0F9A05f0Ee8E924D33e48b25E2fd32a72d03

```
Deployer: 0xaCAe57882528fEBB7Ac2561188bE8915b20c56E8
Deployed to: 0xe4eD0F9A05f0Ee8E924D33e48b25E2fd32a72d03
Transaction hash: 0x609582fac1a4b6bfc72166dfad054bbcb2394a38674587e89798a8b6247afdb1
```

Base Mainnet: https://basescan.org/address/0x3cbf5E3b76A8eeAdc5303911DdF7F7C776FB4B9f

```
Deployer: 0xaCAe57882528fEBB7Ac2561188bE8915b20c56E8
Deployed to: 0x3cbf5E3b76A8eeAdc5303911DdF7F7C776FB4B9f
Transaction hash: 0x0498d6027151e51abb59b0f6304181db0c25c0d284751269bb74e0e3635e61a6
```

### Greeter.sol

Base Sepolia: https://sepolia.basescan.org/address/0x1F6f125483fdBa624Aef6ee9C98Af543E3E2b354

```
Deployer: 0xaCAe57882528fEBB7Ac2561188bE8915b20c56E8
Deployed to: 0x1F6f125483fdBa624Aef6ee9C98Af543E3E2b354
Transaction hash: 0x33c1d7355f7488c0b7486a87b256dd2b73a6d69d461fe520b7c89367bfb42773
```

Base Mainnet: https://basescan.org/address/0xFd9956986ef513A32eAa5e6D960d3B617Bf9bBe8

```
Deployer: 0xaCAe57882528fEBB7Ac2561188bE8915b20c56E8
Deployed to: 0xFd9956986ef513A32eAa5e6D960d3B617Bf9bBe8
Transaction hash: 0xe01f634689b3ef585ed5c313ba1ac07de08f6b748b5d081bea91ee916bd915b5
```

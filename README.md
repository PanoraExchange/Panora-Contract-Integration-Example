# Panora Swap Integration

This repository contains a sample contract for integrating with Panora.

## Overview

The `demo.move` file demonstrates how to interact with the Panora Swap module to perform token swaps, supporting both coin and fungible asset (FA) standards.

## Configuration

Before compiling and publishing the contract, you need to set your contract address in the `Move.toml` file in the root directory.

Open the `Move.toml` file and replace `"YOUR_CONTRACT_ADDRESS"` with your actual contract address:

```toml
[addresses]
your_contract_address = "YOUR_CONTRACT_ADDRESS"
```

## Initialization

Before publishing the contract, you need to initialize your Aptos project if you haven't done it already.

The following command sets up your Aptos project by creating necessary configuration files.

```bash
aptos init
```

## Deploy the Contract

This command deploys your compiled Move contract to the Aptos blockchain.

```bash
aptos move publish --move-2
```

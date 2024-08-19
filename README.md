# Panora Swap Integration

This repository contains a sample contract for integrating with the Panora Swap protocol on the Aptos blockchain.

## Overview

The `demo.move` file demonstrates how to interact with the Panora Swap module to perform token swaps, supporting both coin and fungible asset (FA) types.

## Configuration

Before compiling and publishing the contract, you need to set the integrator address in the `Move.toml` file in the root directory.

Open the `Move.toml` file and replace `"INTEGRATOR_ADDRESS"` with your actual integrator address:

```toml
[addresses]
integrator_address = "INTEGRATOR_ADDRESS"
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
aptos move publish
```

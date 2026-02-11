
# 📘 Deploy Smart Contracts on Sepolia Using Foundry

This guide explains how to deploy a Solidity smart contract to the **Sepolia testnet** using **Foundry**.

---

# 🚀 1️⃣ Install Foundry

### Mac / Linux

```bash
curl -L https://foundry.paradigm.xyz | bash
foundryup
```

Verify installation:

```bash
forge --version
```

---

# 📁 2️⃣ Create a New Foundry Project

```bash
forge init my-project
cd my-project
```

Project structure:

```
src/
script/
test/
foundry.toml
```

---

# ✍️ 3️⃣ Write Your Smart Contract

Create:

```
src/MyContract.sol
```

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract MyContract {
    string public message = "Hello Sepolia!";
}
```

---

# 🛠 4️⃣ Compile the Contract

Run from project root:

```bash
forge build
```

If there are no errors, compilation is successful.

---

# 📜 5️⃣ Create Deployment Script

Create:

```
script/Deploy.s.sol
```



---

# 🌐 6️⃣ Get Sepolia RPC URL

1. Go to **Alchemy** 
2. Create a new app
3. Copy the HTTPS endpoint

Example:

```
https://www.alchemy.com/
```

---

# 🔑 7️⃣ Get Your Private Key

From MetaMask:

* Account → Account Details → Export Private Key

⚠️ **Never share your private key publicly**

---

# 🔎 8️⃣ Get Etherscan API Key

1. Go to [https://etherscan.io/](https://etherscan.io/)
2. Create an account
3. Generate API key

---

# 📄 9️⃣ Create `.env` File

In project root:

```
.env
```

Add:

```
PRIVATE_KEY=your_private_key_here
SEPOLIA_RPC_URL=https://eth-sepolia.g.alchemy.com/v2/your_key
ETHERSCAN_API_KEY=your_etherscan_key
```

---

# ⚙️ 🔟 Configure Etherscan in `foundry.toml`

Open `foundry.toml` and add:

```toml
[etherscan]
sepolia = { key = "${ETHERSCAN_API_KEY}" }
```

---

# 📦 1️⃣1️⃣ Load Environment Variables (Mac/Linux)

```bash
source .env
```

---

# 🚀 1️⃣2️⃣ Deploy to Sepolia

```bash
forge script script/Deploy.s.sol:Deploy \
--rpc-url $SEPOLIA_RPC_URL \
--broadcast \
--verify
```

---

# ✅ After Successful Deployment

You will see:

```
Deployed at: 0x....
```

Check your contract on:

```
https://sepolia.etherscan.io/address/YOUR_CONTRACT_ADDRESS
```

If verification succeeds, your contract source code will be visible.


Thanks 
With Regards - Web3 Wing Axios
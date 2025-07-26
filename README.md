# ☑️ Learn Solidity for Beginners

A collection of simple, practical Solidity smart contract examples designed to help beginners learn by doing.

## 📚 About

This repository contains a curated set of small smart contracts illustrating core Solidity concepts and patterns. The goal is to provide hands-on experience in writing, deploying, and interacting with Ethereum contracts.

All contracts are self-contained. Exploring, deploying, and experimenting with each will help you incrementally build your understanding of Solidity, blockchain basics, and Ethereum development workflows.

## 🔧 Prerequisites

- **Basic knowledge of Solidity syntax**  
  (but no advanced experience required)
- **Familiarity with Remix IDE** (web-based Solidity development)
- **MetaMask** (optional, for interacting with deployed contracts)

## 📂 Files Overview

| File/Folder        | Description                                                             |
|--------------------|-------------------------------------------------------------------------|
| `array.sol`        | Introduction to dynamic arrays and storage in Solidity                  |
| `array2.sol`       | Arrays with structs, storing information about multiple people          |
| `struct.sol`       | Using structs to model and retrieve a single person's information       |
| `struct2.sol`      | Mappings from address to struct, simulating a user registry             |
| `calculator.sol`   | Basic arithmetic operations in a contract                               |
| `modifiers.sol`    | Demonstrates access control modifiers (e.g., owner-only functions)      |
| `loop.sol`         | Using loops to process arrays and calculate sums                        |
| `SafeMath.sol`     | Demonstrates unchecked arithmetic and overflow precautions              |
| `payable.sol`      | Handling Ether deposits, withdrawals, and contract balance              |
| `ens.sol`          | A simple address-to-name registry, like a basic ENS                     |
| `myToken.sol`      | Custom ERC20-like token with mint, burn, and transfer logic             |
| `myToken2.sol`     | ERC20 token using OpenZeppelin, with minting restricted to owner        |
| `uber.sol`         | Simulated ride-booking contract (Uber-like app structure)               |
| `will.sol`         | Time-locked inheritance contract for asset transfer ("Will")            |
| `CallAnything.sol` | Demonstrates function selectors, encoding, and low-level calls          |
| `Encoding.sol`     | Shows abi encoding/decoding, packed encoding, and string handling       |
| `/classes/car.sol` | Inherits from `Vehicle.sol`, illustrating inheritance with constructors |
| `/classes/vehicle.sol` | Base Vehicle contract demonstrating virtual functions                |
| `/classes/proxy.sol` | Proxy contract that calls external storage contract via interface      |
| `/StorageFactory/AddFive.sol` | Extends SimpleStorage to add custom logic (add five)            |
| `/StorageFactory/SimpleStorage.sol` | Stores person structs and maintains a mapping               |
| `/StorageFactory/StorageFactory.sol` | Manages multiple SimpleStorage contracts                  |

## 🚦 Learning Path (Recommended Order)

1. `array.sol`  
2. `array2.sol`  
3. `struct.sol`  
4. `struct2.sol`  
5. `calculator.sol`  
6. `modifiers.sol`  
7. `loop.sol`  
8. `SafeMath.sol`  
9. `payable.sol`  
10. `ens.sol`  
11. `myToken.sol`  
12. `myToken2.sol`  
13. `uber.sol`  
14. `will.sol`  
15. `CallAnything.sol`  
16. `Encoding.sol`  
17. `/classes/vehicle.sol`  
18. `/classes/car.sol`  
19. `/classes/proxy.sol`  
20. `/StorageFactory/SimpleStorage.sol`  
21. `/StorageFactory/AddFive.sol`  
22. `/StorageFactory/StorageFactory.sol`  

## 🚀 How to Use in Remix

Follow these detailed step-by-step instructions to open, compile, and interact with any smart contract from this repository using [Remix IDE](https://remix.ethereum.org/):

### 1. Open Remix
- Go to [https://remix.ethereum.org](https://remix.ethereum.org) in your web browser.

### 2. Import a Contract File
**A. Import via GitHub (Recommended)**
1. In Remix, look at the **File Explorer** panel on the left (folder icon).
2. Click the "Clone from GitHub" button (or the plug icon), usually near the top.
3. Paste this repository URL:   
   `https://github.com/hilmikt/learn-solidity-for-beginners`
4. Select a `.sol` file of interest – it will appear in your Remix workspace.
5. Click the Solidity compiler tab and compile the contract.
6. Head to the "Deploy & Run Transactions" tab, deploy, and interact with the contract.

> ⚠️  If "Connect to GitHub" doesn't work, download the `.sol` files or ZIP the repo, then upload into Remix manually.

## 🗂️ Contributing

- Fork the repo, make your changes, and open pull requests!
- Follow best practices:  
  Use descriptive commit messages, comment your code with [NatSpec](https://docs.soliditylang.org/en/latest/natspec-format.html), and include tests if adding advanced contracts.
- Want to suggest or add a contract? Open an issue describing your idea.

## 📖 Learn More

- [Solidity Official Documentation](https://docs.soliditylang.org/)
- [OpenZeppelin Contracts Documentation](https://docs.openzeppelin.com/contracts/)
- [Remix Documentation](https://remix-ide.readthedocs.io/)
- [Solidity by Example](https://solidity-by-example.org)

## 📝 License

This project is open-source for educational and community use.  
See [LICENSE](LICENSE) for details.

**Happy building and learning Solidity!**

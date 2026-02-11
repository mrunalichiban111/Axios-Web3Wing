// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import "../src/NFT.sol";
// Replace with your contract's path

contract Deploy is Script {
    function run() external {
        // Read private key from environment variable
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");

        
        vm.startBroadcast(deployerPrivateKey);

        // Deploy the contract
        NFT nft = new NFT(); // pass the arguements in brackets if your contract constructor requires any

        //IF YOU WANT TO DEPLOY MULTIPLE CONTRACTS USING THE SAME SCRIPT YOU CAN FOLLOW THE BELOW EXAMPLE
        // Token token = new Token();
        // NFT nft = new NFT();

        // Marketplace marketplace = new Marketplace(address(nft), address(token));

        
        vm.stopBroadcast();
    }
}

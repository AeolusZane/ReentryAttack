# eth0.8.0
in eth 0.8.0, need use `unchecked` to reproduce reentry attack, before this version, we don't need `unchecked` keyword, because it is not be opened by default.

## step 1
`npx hardhat node` start the local chain

## step 2
`make start` to deploy vulnerableContract & Attack contracts
this contains four steps:
1. deploy vulnerable_contract
2. deploy attack_contract
3. (some users)transfer some eth into vulnerable_contract
4. run `make balance` to show the fund in the contract

## step 3
`make attack` make a reentry attack

## step 4
`make withdraw` to withdraw all the attack eth

## help check
`make check` to check the balance of the first account `xxxx2266`

`make balance` to check the balance of the contract(which to be attacked)

# Palkeoramix decompiler. 

def _fallback() payable: # default function
  revert

def transfer() payable: 
  log Transfer(
        address from=eth.balance(this.address),
        address to=this.address,
        uint256 tokens=caller)


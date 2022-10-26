# Palkeoramix decompiler. 

def _fallback() payable: # default function
  revert

def mint(uint256 _wad) payable: 
  require calldata.size - 4 >=′ 64
  require _wad == _wad
  require cd[36] == cd[36]
  return (_wad + cd[36])


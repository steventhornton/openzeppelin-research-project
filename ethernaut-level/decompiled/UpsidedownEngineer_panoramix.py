# Palkeoramix decompiler. 

def storage:
  owner is addr at storage 0
  stor1 is uint256 at storage 1

def owner(): # not payable
  return owner

#
#  Regular functions
#

def isOwner(): # not payable
  return (caller == owner)

def unknown10000001(uint256 _param1): # not payable
  require calldata.size - 4 >=′ 32
  if _param1 <= 3:
      if not _param1:
          return 0
      return 1
  if 1 > !(_param1 / 2):
      revert with 0, 17
  s = (_param1 / 2) + 1
  t = _param1
  while s < t:
      if not s:
          revert with 0, 18
      if _param1 / s > !s:
          revert with 0, 17
      s = (_param1 / s) + s / 2
      t = s
      continue 
  return t

def unknown10000000(): # not payable
  if stor1 > -2:
      revert with 0, 17
  stor1++
  if not stor1:
      revert with 0, 'Try decompiling the contract'
  if 1 == stor1:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Etherscan has a built in decompiler'
  if 2 == stor1:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Try out https://library.dedaub.com/decompile'
  if 3 == stor1:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                  'Try to find out what storage slot the solution is stored in'
  revert with 0, 'No more hints'

def _fallback(): # not payable, default function
  if stor1 > -2:
      revert with 0, 17
  stor1++
  if not stor1:
      revert with 0, 'Try decompiling the contract'
  if 1 == stor1:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Etherscan has a built in decompiler'
  if 2 == stor1:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Try out https://library.dedaub.com/decompile'
  if 3 == stor1:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                  'Try to find out what storage slot the solution is stored in'
  revert with 0, 'No more hints'

def setOwner(address _new): # not payable
  require calldata.size - 4 >=′ 32
  require _new == _new
  if caller == owner:
      owner = _new
      stop
  if stor1 > -2:
      revert with 0, 17
  stor1++
  if not stor1:
      revert with 0, 'Try decompiling the contract'
  if 1 == stor1:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Etherscan has a built in decompiler'
  if 2 == stor1:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Try out https://library.dedaub.com/decompile'
  if 3 == stor1:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                  'Try to find out what storage slot the solution is stored in'
  revert with 0, 'No more hints'

def unknown10000003(uint256 _param1): # not payable
  require calldata.size - 4 >=′ 32
  if caller == owner:
      stor[sha3(32, 18, 0x54686520536f6c7574696f6e2069732034320000000000000000000000000000)] = _param1
      stop
  if stor1 > -2:
      revert with 0, 17
  stor1++
  if not stor1:
      revert with 0, 'Try decompiling the contract'
  if 1 == stor1:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Etherscan has a built in decompiler'
  if 2 == stor1:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Try out https://library.dedaub.com/decompile'
  if 3 == stor1:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                  'Try to find out what storage slot the solution is stored in'
  revert with 0, 'No more hints'

def unknown12345678(uint256 _param1, uint256 _param2) payable: 
  require calldata.size - 4 >=′ 64
  if _param1 == stor[sha3(32, 18, 0x54686520536f6c7574696f6e2069732034320000000000000000000000000000)]:
      if caller <= 3:
          if not caller:
              if not _param2:
                  owner = caller
                  stop
          else:
              if _param2 == 1:
                  owner = caller
                  stop
      else:
          if 1 > !(caller / 2):
              revert with 0, 17
          s = (caller / 2) + 1
          t = caller
          while s < t:
              if not s:
                  revert with 0, 18
              if caller / s > !s:
                  revert with 0, 17
              s = (caller / s) + s / 2
              t = s
              continue 
          if _param2 == t:
              owner = caller
              stop
  if stor1 > -2:
      revert with 0, 17
  stor1++
  if not stor1:
      revert with 0, 'Try decompiling the contract'
  if 1 == stor1:
      revert with 0, 'Etherscan has a built in decompiler'
  if 2 == stor1:
      revert with 0, 'Try out https://library.dedaub.com/decompile'
  if 3 == stor1:
      revert with 0, 'Try to find out what storage slot the solution is stored in'
  revert with 0, 'No more hints'


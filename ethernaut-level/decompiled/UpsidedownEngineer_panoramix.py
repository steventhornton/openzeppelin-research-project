def storage:
  owner is addr at storage 0

def owner(): # not payable
  return owner

#
#  Regular functions
#

def unknown10000000(): # not payable
  selfdestruct(caller)

def unknown10000003(uint256 _param1): # not payable
  require calldata.size - 4 >=′ 32
  if owner != caller:
      selfdestruct(caller)
  stor[sha3(32, 18, 0x54686520536f6c7574696f6e2069732034320000000000000000000000000000)] = _param1

def unknown12345678(uint256 _param1, uint256 _param2) payable: 
  require calldata.size - 4 >=′ 64
  if _param1 != stor[sha3(32, 18, 0x54686520536f6c7574696f6e2069732034320000000000000000000000000000)]:
      selfdestruct(caller)
  if caller <= 3:
      if not caller:
          if _param2:
              selfdestruct(caller)
      else:
          if _param2 != 1:
              selfdestruct(caller)
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
      if _param2 != t:
          selfdestruct(caller)
  owner = caller

def setOwner(address _new): # not payable
  require calldata.size - 4 >=′ 32
  require _new == _new
  if owner != caller:
      selfdestruct(caller)
  owner = _new

def _fallback(): # not payable, default function
  selfdestruct(caller)

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


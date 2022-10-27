# Palkeoramix decompiler. 

const decimals = 18

def storage:
  balanceOf is mapping of uint256 at storage 0
  allowance is mapping of uint256 at storage 1
  totalSupply is uint256 at storage 2
  stor3 is array of struct at storage 3
  stor4 is array of struct at storage 4

def totalSupply() payable: 
  return totalSupply

def balanceOf(address _owner) payable: 
  require calldata.size - 4 >=′ 32
  require _owner == _owner
  return balanceOf[addr(_owner)]

def allowance(address _owner, address _spender) payable: 
  require calldata.size - 4 >=′ 64
  require _owner == _owner
  require _spender == _spender
  return allowance[addr(_owner)][addr(_spender)]

#
#  Regular functions
#

def _fallback() payable: # default function
  revert

def approve(address _spender, uint256 _value) payable: 
  require calldata.size - 4 >=′ 64
  require _spender == _spender
  if not caller:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
  if not _spender:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
  allowance[caller][addr(_spender)] = _value
  log Approval(
        address tokenOwner=_value,
        address spender=caller,
        uint256 tokens=_spender)
  return 1

def transfer(address _to, uint256 _value) payable: 
  require calldata.size - 4 >=′ 64
  require _to == _to
  if not caller:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
  if not _to:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
  if balanceOf[caller] < _value:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
  balanceOf[caller] -= _value
  if balanceOf[_to] > _value + balanceOf[_to]:
      revert with 0, 17
  balanceOf[_to] += _value
  log Transfer(
        address from=_value,
        address to=caller,
        uint256 tokens=_to)
  return 1

def increaseAllowance(address _spender, uint256 _addedValue) payable: 
  require calldata.size - 4 >=′ 64
  require _spender == _spender
  if allowance[caller][addr(_spender)] > _addedValue + allowance[caller][addr(_spender)]:
      revert with 0, 17
  if not caller:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
  if not _spender:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
  allowance[caller][addr(_spender)] += _addedValue
  log Approval(
        address tokenOwner=(_addedValue + allowance[caller][addr(_spender)]),
        address spender=caller,
        uint256 tokens=_spender)
  return 1

def decreaseAllowance(address _spender, uint256 _subtractedValue) payable: 
  require calldata.size - 4 >=′ 64
  require _spender == _spender
  if allowance[caller][addr(_spender)] < _subtractedValue:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
  if not caller:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
  if not _spender:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
  allowance[caller][addr(_spender)] -= _subtractedValue
  log Approval(
        address tokenOwner=(allowance[caller][addr(_spender)] - _subtractedValue),
        address spender=caller,
        uint256 tokens=_spender)
  return 1

def transferFrom(address _from, address _to, uint256 _value) payable: 
  require calldata.size - 4 >=′ 96
  require _from == _from
  require _to == _to
  if allowance[addr(_from)][caller] != -1:
      if allowance[addr(_from)][caller] < _value:
          revert with 0, 'ERC20: insufficient allowance'
      if not _from:
          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
      if not caller:
          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
      allowance[addr(_from)][caller] -= _value
      log Approval(
            address tokenOwner=(allowance[addr(_from)][caller] - _value),
            address spender=_from,
            uint256 tokens=caller)
  if not _from:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
  if not _to:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
  if balanceOf[addr(_from)] < _value:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
  balanceOf[addr(_from)] -= _value
  if balanceOf[_to] > _value + balanceOf[_to]:
      revert with 0, 17
  balanceOf[_to] += _value
  log Transfer(
        address from=_value,
        address to=_from,
        uint256 tokens=_to)
  return 1

def name() payable: 
  if bool(stor3.length):
      if not bool(stor3.length) - (uint255(stor3.length) * 0.5 < 32):
          revert with 0, 34
      if bool(stor3.length):
          if not bool(stor3.length) - (uint255(stor3.length) * 0.5 < 32):
              revert with 0, 34
          if Mask(256, -1, stor3.length):
              if 31 < uint255(stor3.length) * 0.5:
                  mem[128] = uint256(stor3.field_0)
                  idx = 128
                  s = 0
                  while (uint255(stor3.length) * 0.5) + 96 > idx:
                      mem[idx + 32] = stor3[s].field_256
                      idx = idx + 32
                      s = s + 1
                      continue 
                  return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
              mem[128] = 256 * stor3.length.field_8
      else:
          if not bool(stor3.length) - (stor3.length.field_1 < 32):
              revert with 0, 34
          if stor3.length.field_1:
              if 31 < stor3.length.field_1:
                  mem[128] = uint256(stor3.field_0)
                  idx = 128
                  s = 0
                  while stor3.length.field_1 + 96 > idx:
                      mem[idx + 32] = stor3[s].field_256
                      idx = idx + 32
                      s = s + 1
                      continue 
                  return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
              mem[128] = 256 * stor3.length.field_8
      mem[ceil32(uint255(stor3.length) * 0.5) + 192 len ceil32(uint255(stor3.length) * 0.5)] = mem[128 len ceil32(uint255(stor3.length) * 0.5)]
      mem[ceil32(uint255(stor3.length) * 0.5) + (uint255(stor3.length) * 0.5) + 192] = 0
      return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
  if not bool(stor3.length) - (stor3.length.field_1 < 32):
      revert with 0, 34
  if bool(stor3.length):
      if not bool(stor3.length) - (uint255(stor3.length) * 0.5 < 32):
          revert with 0, 34
      if Mask(256, -1, stor3.length):
          if 31 < uint255(stor3.length) * 0.5:
              mem[128] = uint256(stor3.field_0)
              idx = 128
              s = 0
              while (uint255(stor3.length) * 0.5) + 96 > idx:
                  mem[idx + 32] = stor3[s].field_256
                  idx = idx + 32
                  s = s + 1
                  continue 
              return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
          mem[128] = 256 * stor3.length.field_8
  else:
      if not bool(stor3.length) - (stor3.length.field_1 < 32):
          revert with 0, 34
      if stor3.length.field_1:
          if 31 < stor3.length.field_1:
              mem[128] = uint256(stor3.field_0)
              idx = 128
              s = 0
              while stor3.length.field_1 + 96 > idx:
                  mem[idx + 32] = stor3[s].field_256
                  idx = idx + 32
                  s = s + 1
                  continue 
              return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
          mem[128] = 256 * stor3.length.field_8
  mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
  mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
  return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 

def symbol() payable: 
  if bool(stor4.length):
      if not bool(stor4.length) - (uint255(stor4.length) * 0.5 < 32):
          revert with 0, 34
      if bool(stor4.length):
          if not bool(stor4.length) - (uint255(stor4.length) * 0.5 < 32):
              revert with 0, 34
          if Mask(256, -1, stor4.length):
              if 31 < uint255(stor4.length) * 0.5:
                  mem[128] = uint256(stor4.field_0)
                  idx = 128
                  s = 0
                  while (uint255(stor4.length) * 0.5) + 96 > idx:
                      mem[idx + 32] = stor4[s].field_256
                      idx = idx + 32
                      s = s + 1
                      continue 
                  return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
              mem[128] = 256 * stor4.length.field_8
      else:
          if not bool(stor4.length) - (stor4.length.field_1 < 32):
              revert with 0, 34
          if stor4.length.field_1:
              if 31 < stor4.length.field_1:
                  mem[128] = uint256(stor4.field_0)
                  idx = 128
                  s = 0
                  while stor4.length.field_1 + 96 > idx:
                      mem[idx + 32] = stor4[s].field_256
                      idx = idx + 32
                      s = s + 1
                      continue 
                  return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
              mem[128] = 256 * stor4.length.field_8
      mem[ceil32(uint255(stor4.length) * 0.5) + 192 len ceil32(uint255(stor4.length) * 0.5)] = mem[128 len ceil32(uint255(stor4.length) * 0.5)]
      mem[ceil32(uint255(stor4.length) * 0.5) + (uint255(stor4.length) * 0.5) + 192] = 0
      return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
  if not bool(stor4.length) - (stor4.length.field_1 < 32):
      revert with 0, 34
  if bool(stor4.length):
      if not bool(stor4.length) - (uint255(stor4.length) * 0.5 < 32):
          revert with 0, 34
      if Mask(256, -1, stor4.length):
          if 31 < uint255(stor4.length) * 0.5:
              mem[128] = uint256(stor4.field_0)
              idx = 128
              s = 0
              while (uint255(stor4.length) * 0.5) + 96 > idx:
                  mem[idx + 32] = stor4[s].field_256
                  idx = idx + 32
                  s = s + 1
                  continue 
              return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
          mem[128] = 256 * stor4.length.field_8
  else:
      if not bool(stor4.length) - (stor4.length.field_1 < 32):
          revert with 0, 34
      if stor4.length.field_1:
          if 31 < stor4.length.field_1:
              mem[128] = uint256(stor4.field_0)
              idx = 128
              s = 0
              while stor4.length.field_1 + 96 > idx:
                  mem[idx + 32] = stor4[s].field_256
                  idx = idx + 32
                  s = s + 1
                  continue 
              return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
          mem[128] = 256 * stor4.length.field_8
  mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
  mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
  return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 


# Palkeoramix decompiler. 

def storage:
  stor0 is array of struct at storage 0

def _fallback() payable: # default function
  revert

def unknownc66feb94() payable: 
  if bool(stor0.length):
      if bool(stor0.length) == stor0.length.field_1 < 32:
          revert with 'NH{q', 34
      bool(stor0.length) = 0
      stor0.length.field_1 = 12
      stor0.length.field_8 = 'Hello World!' / 256
      idx = 0
      while stor0.length.field_1 + 31 / 32 > idx:
          stor0[idx].field_0 = 0
          idx = idx + 1
          continue 
  else:
      if bool(stor0.length) == stor0.length.field_1 < 32:
          revert with 'NH{q', 34
      bool(stor0.length) = 0
      stor0.length.field_1 = 12
      stor0.length.field_8 = 'Hello World!' / 256
      idx = 0
      while stor0.length.field_1 + 31 / 32 > idx:
          stor0[idx].field_0 = 0
          idx = idx + 1
          continue 

def name() payable: 
  if bool(stor0.length):
      if bool(stor0.length) == stor0.length.field_1 < 32:
          revert with 'NH{q', 34
      if bool(stor0.length):
          if bool(stor0.length) == stor0.length.field_1 < 32:
              revert with 'NH{q', 34
          if stor0.length.field_1:
              if 31 < stor0.length.field_1:
                  mem[128] = uint256(stor0.field_0)
                  idx = 128
                  s = 0
                  while stor0.length.field_1 + 96 > idx:
                      mem[idx + 32] = stor0[s].field_256
                      idx = idx + 32
                      s = s + 1
                      continue 
                  return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
              mem[128] = 256 * stor0.length.field_8
      else:
          if bool(stor0.length) == stor0.length.field_1 < 32:
              revert with 'NH{q', 34
          if stor0.length.field_1:
              if 31 < stor0.length.field_1:
                  mem[128] = uint256(stor0.field_0)
                  idx = 128
                  s = 0
                  while stor0.length.field_1 + 96 > idx:
                      mem[idx + 32] = stor0[s].field_256
                      idx = idx + 32
                      s = s + 1
                      continue 
                  return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
              mem[128] = 256 * stor0.length.field_8
      mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
      if ceil32(stor0.length.field_1) > stor0.length.field_1:
          mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
      return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
  if bool(stor0.length) == stor0.length.field_1 < 32:
      revert with 'NH{q', 34
  if bool(stor0.length):
      if bool(stor0.length) == stor0.length.field_1 < 32:
          revert with 'NH{q', 34
      if stor0.length.field_1:
          if 31 < stor0.length.field_1:
              mem[128] = uint256(stor0.field_0)
              idx = 128
              s = 0
              while stor0.length.field_1 + 96 > idx:
                  mem[idx + 32] = stor0[s].field_256
                  idx = idx + 32
                  s = s + 1
                  continue 
              return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
          mem[128] = 256 * stor0.length.field_8
  else:
      if bool(stor0.length) == stor0.length.field_1 < 32:
          revert with 'NH{q', 34
      if stor0.length.field_1:
          if 31 < stor0.length.field_1:
              mem[128] = uint256(stor0.field_0)
              idx = 128
              s = 0
              while stor0.length.field_1 + 96 > idx:
                  mem[idx + 32] = stor0[s].field_256
                  idx = idx + 32
                  s = s + 1
                  continue 
              return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
          mem[128] = 256 * stor0.length.field_8
  mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
  if ceil32(stor0.length.field_1) > stor0.length.field_1:
      mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
  return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 



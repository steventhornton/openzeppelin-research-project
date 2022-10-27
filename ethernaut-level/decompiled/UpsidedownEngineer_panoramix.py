# Palkeoramix decompiler. 

def storage:
  owner is addr at storage 0
  stor1 is addr at storage 1
  stor2 is array of uint256 at storage 2
  stor3 is array of uint256 at storage 3

def owner(): # not payable
  return owner

#
#  Regular functions
#

def _fallback() payable: # default function
  revert

def isOwner(): # not payable
  return (caller == owner)

def claimOwnership(): # not payable
  owner = caller
  require ext_code.size(stor1)
  call stor1.hint() with:
       gas gas_remaining wei
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]

def setOwner(address _new): # not payable
  require calldata.size - 4 >=′ 32
  require _new == _new
  if owner != caller:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Maybe the claimOwnership function will work'
  owner = _new

def unknown10000001(uint256 _param1): # not payable
  require calldata.size - 4 >=′ 32
  if _param1 <= 3:
      if not _param1:
          return 0
      return 1
  if 1 > (_param1 / 2) + 1:
      revert with 0, 17
  s = (_param1 / 2) + 1
  t = _param1
  while s < t:
      if not s:
          revert with 0, 18
      if _param1 / s > s + (_param1 / s):
          revert with 0, 17
      s = s + (_param1 / s) / 2
      t = s
      continue 
  return t

def unknown12345678(uint256 _param1, uint256 _param2) payable: 
  require calldata.size - 4 >=′ 64
  if _param1 - stor[sha3(32, 18, 0x54686520536f6c7574696f6e2069732034320000000000000000000000000000)]:
      mem[224] = 32
      if bool(stor2.length):
          if not bool(stor2.length) - (uint255(stor2.length) * 0.5 < 32):
              revert with 0, 34
          mem[256] = uint255(stor2.length) * 0.5
          if not bool(stor2.length):
              mem[288] = Mask(248, 8, stor2.length)
              log 0x7e4c830d: mem[224 len (32 * bool(uint255(stor2.length) * 0.5)) + 64]
          else:
              if bool(stor2.length) != 1:
                  log 0x7e4c830d: mem[224 len -224]
              else:
                  idx = 0
                  s = 0
                  while idx < uint255(stor2.length) * 0.5:
                      mem[idx + 288] = stor2[s].field_0
                      idx = idx + 32
                      s = s + 1
                      continue 
                  log 0x7e4c830d: Array(len=2 * Mask(256, -1, stor2.length), data=mem[288 len ceil32(uint255(stor2.length) * 0.5)])
      else:
          if not bool(stor2.length) - (stor2.length.field_1 % 128 < 32):
              revert with 0, 34
          mem[256] = stor2.length.field_1 % 128
          if not bool(stor2.length):
              mem[288] = Mask(248, 8, stor2.length)
              log 0x7e4c830d: mem[224 len (32 * bool(stor2.length.field_1 % 128)) + 64]
          else:
              if bool(stor2.length) != 1:
                  log 0x7e4c830d: mem[224 len -224]
              else:
                  idx = 0
                  s = 0
                  while idx < stor2.length.field_1 % 128:
                      mem[idx + 288] = stor2[s].field_0
                      idx = idx + 32
                      s = s + 1
                      continue 
                  log 0x7e4c830d: Array(len=stor2.length % 128, data=mem[288 len ceil32(stor2.length.field_1 % 128)])
  else:
      if caller <= 3:
          if not caller:
              if not _param2:
                  owner = caller
              else:
                  mem[224] = 32
                  if bool(stor3.length):
                      if not bool(stor3.length) - (uint255(stor3.length) * 0.5 < 32):
                          revert with 0, 34
                      mem[256] = uint255(stor3.length) * 0.5
                      if not bool(stor3.length):
                          mem[288] = Mask(248, 8, stor3.length)
                          log 0x7e4c830d: mem[224 len (32 * bool(uint255(stor3.length) * 0.5)) + 64]
                      else:
                          if bool(stor3.length) != 1:
                              log 0x7e4c830d: mem[224 len -224]
                          else:
                              idx = 0
                              s = 0
                              while idx < uint255(stor3.length) * 0.5:
                                  mem[idx + 288] = stor3[s].field_0
                                  idx = idx + 32
                                  s = s + 1
                                  continue 
                              log 0x7e4c830d: Array(len=2 * Mask(256, -1, stor3.length), data=mem[288 len ceil32(uint255(stor3.length) * 0.5)])
                  else:
                      if not bool(stor3.length) - (stor3.length.field_1 % 128 < 32):
                          revert with 0, 34
                      mem[256] = stor3.length.field_1 % 128
                      if not bool(stor3.length):
                          mem[288] = Mask(248, 8, stor3.length)
                          log 0x7e4c830d: mem[224 len (32 * bool(stor3.length.field_1 % 128)) + 64]
                      else:
                          if bool(stor3.length) != 1:
                              log 0x7e4c830d: mem[224 len -224]
                          else:
                              idx = 0
                              s = 0
                              while idx < stor3.length.field_1 % 128:
                                  mem[idx + 288] = stor3[s].field_0
                                  idx = idx + 32
                                  s = s + 1
                                  continue 
                              log 0x7e4c830d: Array(len=stor3.length % 128, data=mem[288 len ceil32(stor3.length.field_1 % 128)])
          else:
              if not _param2 - 1:
                  owner = caller
              else:
                  mem[224] = 32
                  if bool(stor3.length):
                      if not bool(stor3.length) - (uint255(stor3.length) * 0.5 < 32):
                          revert with 0, 34
                      mem[256] = uint255(stor3.length) * 0.5
                      if not bool(stor3.length):
                          mem[288] = Mask(248, 8, stor3.length)
                          log 0x7e4c830d: mem[224 len (32 * bool(uint255(stor3.length) * 0.5)) + 64]
                      else:
                          if bool(stor3.length) != 1:
                              log 0x7e4c830d: mem[224 len -224]
                          else:
                              idx = 0
                              s = 0
                              while idx < uint255(stor3.length) * 0.5:
                                  mem[idx + 288] = stor3[s].field_0
                                  idx = idx + 32
                                  s = s + 1
                                  continue 
                              log 0x7e4c830d: Array(len=2 * Mask(256, -1, stor3.length), data=mem[288 len ceil32(uint255(stor3.length) * 0.5)])
                  else:
                      if not bool(stor3.length) - (stor3.length.field_1 % 128 < 32):
                          revert with 0, 34
                      mem[256] = stor3.length.field_1 % 128
                      if not bool(stor3.length):
                          mem[288] = Mask(248, 8, stor3.length)
                          log 0x7e4c830d: mem[224 len (32 * bool(stor3.length.field_1 % 128)) + 64]
                      else:
                          if bool(stor3.length) != 1:
                              log 0x7e4c830d: mem[224 len -224]
                          else:
                              idx = 0
                              s = 0
                              while idx < stor3.length.field_1 % 128:
                                  mem[idx + 288] = stor3[s].field_0
                                  idx = idx + 32
                                  s = s + 1
                                  continue 
                              log 0x7e4c830d: Array(len=stor3.length % 128, data=mem[288 len ceil32(stor3.length.field_1 % 128)])
      else:
          if 1 > (caller / 2) + 1:
              revert with 0, 17
          s = (caller / 2) + 1
          t = caller
          while s < t:
              if not s:
                  revert with 0, 18
              if caller / s > s + (caller / s):
                  revert with 0, 17
              s = s + (caller / s) / 2
              t = s
              continue 
          if not _param2 - t:
              owner = caller
          else:
              mem[224] = 32
              if bool(stor3.length):
                  if not bool(stor3.length) - (uint255(stor3.length) * 0.5 < 32):
                      revert with 0, 34
                  mem[256] = uint255(stor3.length) * 0.5
                  if not bool(stor3.length):
                      mem[288] = Mask(248, 8, stor3.length)
                      log 0x7e4c830d: mem[224 len (32 * bool(uint255(stor3.length) * 0.5)) + 64]
                  else:
                      if bool(stor3.length) != 1:
                          log 0x7e4c830d: mem[224 len -224]
                      else:
                          idx = 0
                          s = 0
                          while idx < uint255(stor3.length) * 0.5:
                              mem[idx + 288] = stor3[s].field_0
                              idx = idx + 32
                              s = s + 1
                              continue 
                          log 0x7e4c830d: Array(len=2 * Mask(256, -1, stor3.length), data=mem[288 len ceil32(uint255(stor3.length) * 0.5)])
              else:
                  if not bool(stor3.length) - (stor3.length.field_1 % 128 < 32):
                      revert with 0, 34
                  mem[256] = stor3.length.field_1 % 128
                  if not bool(stor3.length):
                      mem[288] = Mask(248, 8, stor3.length)
                      log 0x7e4c830d: mem[224 len (32 * bool(stor3.length.field_1 % 128)) + 64]
                  else:
                      if bool(stor3.length) != 1:
                          log 0x7e4c830d: mem[224 len -224]
                      else:
                          idx = 0
                          s = 0
                          while idx < stor3.length.field_1 % 128:
                              mem[idx + 288] = stor3[s].field_0
                              idx = idx + 32
                              s = s + 1
                              continue 
                          log 0x7e4c830d: Array(len=stor3.length % 128, data=mem[288 len ceil32(stor3.length.field_1 % 128)])



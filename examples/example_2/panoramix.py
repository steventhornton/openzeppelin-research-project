# Palkeoramix decompiler. 

def storage:
  stor0 is uint256 at storage 0 offset 1
  stor0 is uint256 at storage 0
  stor1 is uint256 at storage 1 offset 1
  stor1 is uint256 at storage 1
  stor2 is uint256 at storage 2 offset 1
  stor2 is uint256 at storage 2
  stor3 is uint256 at storage 3 offset 1
  stor3 is uint256 at storage 3

def _fallback() payable: # default function
  revert

def f5() payable: 
  if uint256(stor3.field_0) <= 3:
      if not uint256(stor3.field_0):
          return 0
      return 1
  if uint255(stor3.field_1) > -2:
      revert with 'NH{q', 17
  s = uint255(stor3.field_1) + 1
  t = uint256(stor3.field_0)
  while s < t:
      if not s:
          revert with 'NH{q', 18
      if uint256(stor3.field_0) / s > -s - 1:
          revert with 'NH{q', 17
      s = (uint256(stor3.field_0) / s) + s / 2
      t = s
      continue 
  return t

def f2() payable: 
  if uint256(stor1.field_0) <= 3:
      if not uint256(stor1.field_0):
          return 0
      return 1
  if uint255(stor1.field_1) > -2:
      revert with 'NH{q', 17
  s = uint255(stor1.field_1) + 1
  t = uint256(stor1.field_0)
  while s < t:
      if not s:
          revert with 'NH{q', 18
      if uint256(stor1.field_0) / s > -s - 1:
          revert with 'NH{q', 17
      s = (uint256(stor1.field_0) / s) + s / 2
      t = s
      continue 
  return t

def f3() payable: 
  if uint256(stor2.field_0) <= 3:
      if not uint256(stor2.field_0):
          return 0
      return 1
  if uint255(stor2.field_1) > -2:
      revert with 'NH{q', 17
  s = uint255(stor2.field_1) + 1
  t = uint256(stor2.field_0)
  while s < t:
      if not s:
          revert with 'NH{q', 18
      if uint256(stor2.field_0) / s > -s - 1:
          revert with 'NH{q', 17
      s = (uint256(stor2.field_0) / s) + s / 2
      t = s
      continue 
  return t

def f1() payable: 
  if uint256(stor0.field_0) <= 3:
      if not uint256(stor0.field_0):
          return 0
      return 1
  if uint255(stor0.field_1) > -2:
      revert with 'NH{q', 17
  s = uint255(stor0.field_1) + 1
  t = uint256(stor0.field_0)
  while s < t:
      if not s:
          revert with 'NH{q', 18
      if uint256(stor0.field_0) / s > -s - 1:
          revert with 'NH{q', 17
      s = (uint256(stor0.field_0) / s) + s / 2
      t = s
      continue 
  return t

def f4() payable: 
  if uint256(stor3.field_0) <= 3:
      if not uint256(stor3.field_0):
          return 0
      return 1
  if uint255(stor3.field_1) > -2:
      revert with 'NH{q', 17
  s = uint255(stor3.field_1) + 1
  t = uint256(stor3.field_0)
  while s < t:
      if not s:
          revert with 'NH{q', 18
      if uint256(stor3.field_0) / s > -s - 1:
          revert with 'NH{q', 17
      s = (uint256(stor3.field_0) / s) + s / 2
      t = s
      continue 
  return t




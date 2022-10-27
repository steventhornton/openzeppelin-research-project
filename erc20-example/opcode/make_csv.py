#!/usr/bin/env python3

import pandas as pd

# List for saving data
data = {
    'dedaub': [],
    'etherscan': [],
    'evmasm': []
}

f_dedaub = open('opcode_dedaub.evm', 'r')
for line in f_dedaub.readlines():
    data['dedaub'].append(line.split(':')[1].strip('\n').lstrip().rstrip())

f_etherscan = open('opcode_etherscan.evm', 'r')
for line in f_etherscan.readlines():
    data['etherscan'].append(line.split(']')[1].strip('\n').lstrip().rstrip())

f_evmasm = open('opcode_evmasm.evm', 'r')
for line in f_evmasm.readlines():
    data['evmasm'].append(line.split(':')[1].strip('\n').lstrip().rstrip())

# Fill with empty lines
nrow = max(max(len(data['dedaub']), len(data['etherscan'])), len(data['evmasm']))
if len(data['dedaub']) < nrow:
    for i in range(len(data['dedaub']), nrow):
        data['dedaub'].append('')

if len(data['etherscan']) < nrow:
    for i in range(len(data['etherscan']), nrow):
        data['etherscan'].append('')

if len(data['evmasm']) < nrow:
    for i in range(len(data['evmasm']), nrow):
        data['evmasm'].append('')

pd.DataFrame(data).to_csv('opcode.csv', index=False)

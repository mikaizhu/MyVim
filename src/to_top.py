#!/Users/zwl/miniconda3/bin/python3
import re
import os

# 代码功能
# 为每一个模块添加返回目录的功能
# 读取完每个章节的知识后，可以返回目录，方便查询

# python 文本读取
# python 插入文字进去
# python 查找文字
def add_to_top(file):
    content = []
    with open(file) as f:
        for line in f:
            if line.startswith('*'):
                try:
                    content.append(re.search('\[(.*?)\]', line).group(1))
                except:
                    continue

    if len(content) < 2: return
    content.pop(0)
    content.pop(0)

    front_line = ""
    add_content = f"\n[【↥ back to top】](#目录)\n"
    pre_line = ""

    with open(file) as f:
        for line in f:
            key_words = line.split('#')[-1].strip()
            flag = 0 if pre_line.strip() == add_content.strip() else 1
            if key_words in content and flag:
                front_line += add_content + line
            else:
                front_line += line
            pre_line = line

    with open(file, 'w') as f:
        f.write(front_line)

files = [
    #"./README.md",
    "/Users/zwl/Desktop/CSNotes/README.md",
    "/Users/zwl/Desktop/CSNotes/DataStructure/README.md",
    "/Users/zwl/Desktop/CSNotes/ComputerNetwork/README.md",
    "/Users/zwl/Desktop/CSNotes/OperatingSystem/README.md",
]

for file in files:
    add_to_top(file)

import smartypants
import sys

with open(sys.argv[1], 'r', encoding='utf-8') as f:
    html = f.read()

output = smartypants.smartypants(html)

with open(sys.argv[2], 'w', encoding='utf-8') as f:
    f.write(output)

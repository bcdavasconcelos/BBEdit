#!/Users/bcdav/opt/anaconda3/bin/python3
# -*- coding: UTF-8 -*-
# inliner - converts reference-style Markdown endnotes to
# Pandoc Markdown's inline footnotes
# by Louis Goddard <louisgoddard@gmail.com>
# Slightly adapted by Bernardo Vasconcelos to MMD footnotes
# Usage: python inliner.py [input.markdown] [output.markdown]

import sys
import re

with open(sys.argv[1], "r") as input:
  text = input.read()
  text = re.sub('\^fn', '^', text)
  
# str1 = "Lorem[^1] ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore[^2] et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
# 
# str2 = "[^1]: Teste XXXXXXXX"
# str3 = "[^2]: Teste XXXXXXXX"
# 
# text = str1 + "\n\n" + str2 + "\n\n" + str3

counter = 0

while True:
    try:

        counter = counter + 1

        ref = "[^" + str(counter) + "]:"
        nextRef = "[^" + str(counter + 1) + "]:"
        cite = "[^" + str(counter) + "]"

        refStart = text.index(ref)
        refEnd = text.index(nextRef) - 2

        offset = len(str(counter)) + 5

        note = "^^" + text[refStart+offset:refEnd] + "]"
        text = text.replace(cite, note)

    except ValueError:


        break

if counter > 1:

    note = "^^" + text[refStart+offset:len(text)-1] + "]"
    text = text.replace(cite, note)
    text = text.replace("\n    ", " ")
    cutPoint = text.index("\n[")
    text = text[0:cutPoint]
    print(str(counter) + " notes replaced.")

else:

    print("0 notes replaced.")

# print(text)
with open(sys.argv[1], "w") as output:
  output.write(text)

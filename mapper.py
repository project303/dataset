#!/usr/bin/python
"""mapper.py"""

import sys

#print ("hellow world")
#print("Python version")
#print (sys.version)
#print("Version info.")
#print (sys.version_info)

for line in sys.stdin:
	line = line.strip()
	words = line.split()

	for word in words:
		print '%s\t%s' % (word, 1)

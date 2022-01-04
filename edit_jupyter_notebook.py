#!/usr/bin/python

# From: https://jaketae.github.io/blog/jupyter-automation/

import sys
import re
import os

def edit():
	# path = os.path.join(__file__, "_jupyter", str(sys.argv[1]))
	path = str(sys.argv[1])
	#yaml = "---\ntitle: TITLE\nmathjax: true\ncategories:\n  - category\ntags:\n  - tag\n---\n\n"
	with open(path, 'r') as file:
		filedata = file.read()
	filedata = re.sub(r"!\[png\]\(", "<img src=\"/images/", filedata)
	filedata = re.sub(".png\)", ".png\">", filedata)
	#filedata = yaml + filedata
	with open(path, 'w') as file:
		file.write(filedata)

if __name__ == '__main__':
	edit()
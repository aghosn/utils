#!/usr/local/bin/python

import os
import sys
from optparse import OptionParser

GO_ROOT="~/"
GO_URL="https://storage.googleapis.com/golang/go1.8.3.linux-amd64.tar.gz"
GO_TAR="go1.8.3.linux-amd64.tar.gz"

def installGo():
	if os.path.exits("~/go"):
		print "The go folder already exists."
		return

	if not os.path.exists("_go_install.sh"):
		print "Error, missing _go_instrall.sh script."
		return

	os.system("sh _go_install.sh")


def setupVim():
	


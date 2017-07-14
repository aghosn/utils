#!/usr/local/bin/python

import os
import sys
from optparse import OptionParser

GO_ROOT="~/"
GO_URL="https://storage.googleapis.com/golang/go1.8.3.linux-amd64.tar.gz"
GO_TAR="go1.8.3.linux-amd64.tar.gz"

def installGo():
	if os.path.exists("~/go"):
		print "The go folder already exists."
		return

	if not os.path.exists("_go_install.sh"):
		print "Error, missing _go_instrall.sh script."
		return

	os.system("sh _go_install.sh")


def setupVim():
	if os.path.exists("~/.vim_runtime"):
		print "Vim runtime already exists."
		return

	os.system("sh _vim_install.sh")

parser = OptionParser()
parser.add_option("-v", "--vim", action="store_true", dest="install_vim", default=False, help="install vim")
parser.add_option("-g", "--go", action="store_true", dest="install_go", default=False, help="install go")

(options, args) = parser.parse_args()

if options.install_vim :
	setupVim()

if options.install_go :
	installGo()
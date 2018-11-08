import sys
import os
from signal import signal, SIGPIPE, SIG_DFL
signal(SIGPIPE,SIG_DFL)

# C:\some\win\path
def convertToWslPath(winPath):
    winPath = winPath.replace("C:\\", "/mnt/c/")
    wslPath = winPath.replace("\\", "/")
    print(wslPath.rstrip())

# /mnt/c/some/wsl/path
def convertToWinPath(wslPath):
    wslPath = wslPath.replace("/mnt/c/", "C:\\")
    winPath = wslPath.replace("/", "\\")
    print(winPath.rstrip())


def main():
    args = sys.argv[1:]
    if ":\\" in args[0]:
        convertToWslPath(args[0])
    else:
        convertToWinPath(args[0])

main()

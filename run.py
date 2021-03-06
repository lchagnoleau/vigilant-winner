#!/usr/bin/python
import sys
import argparse
import os


def generate_source(payload):
    l = len(payload)
    # payload into FLASH memory of digispark
    declare = "#define DUCK_LEN " + \
        str(l) + "\nconst uint8_t duckraw [DUCK_LEN] = {\n\t"
    for c in range(l - 1):
        declare += str(hex(ord(payload[c]))) + ", "
    declare += str(hex(ord(payload[l - 1]))) + "\n};"

    return declare


def generate_raw(inputfile):
    os.system(
        "java -jar duck2tab/encoder.jar -i %s -o raw.bin -l fr > /dev/null" % inputfile)


def write_dackraw_header_file(payload):
    # remove existing file if exist
    filename = "software/include/duckraw.h"

    if os.path.exists(filename):
        os.remove(filename)

    #copy payload into file
    file = open(filename,"w") 
    file.write(payload)
    file.close()

def generate_binary():
    originpath = os.getcwd()
    path = "software/Release"
    os.chdir(path)
    os.system("make all")
    os.chdir(originpath)

def flashdevice():
    cmd = "dfu-util -d 0483:df11 -D software/Release/vigilant-winner.bin -a 0 -i 0 -s 0x08000000:leave"
    os.system(cmd)


def main(args):
    generate_raw(args.inputfile)
    ifile = "raw.bin"
    with open(ifile, "rb") as f:
        payload = f.read()

    duckraw = generate_source(payload)

    write_dackraw_header_file(duckraw)
    generate_binary()
    flashdevice()

    os.system("rm raw.bin")


if __name__ == '__main__':
    parser = argparse.ArgumentParser(
        description = "Script to generate payload",
        fromfile_prefix_chars = '@' )
    parser.add_argument(
        "-i",
        "--inputfile",
        help="set input file name",
        required = True)
    args = parser.parse_args()

    main(args)

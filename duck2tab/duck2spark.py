#!/usr/bin/python
import sys
import argparse
import os


def generate_source(payload):
	l = len(payload)
	# payload into FLASH memory of digispark
	declare = "#define DUCK_LEN " + str(l) + "\nconst uint8_t duckraw [DUCK_LEN] = {\n\t"
	for c in range(l - 1):
		declare += str(hex(ord(payload[c]))) + ", "
	declare += str(hex(ord(payload[l - 1]))) + "\n};"

	return declare

def generate_raw(inputfile):
	os.system("java -jar encoder.jar -i %s -o raw.bin -l fr > /dev/null" % inputfile)

def main(args):
	generate_raw(args.inputfile)
	ifile = "raw.bin"
	with open(ifile, "rb") as f:
		payload = f.read()

	print generate_source(payload)

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

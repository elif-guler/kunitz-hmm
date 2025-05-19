#!/usr/bin/env python3

import random
from Bio import SeqIO
import sys




def select_random(file):
	records = list(SeqIO.parse("notkunitz.fasta", "fasta"))
	sampled = random.sample(records, 400) 
	
	with open("min_notkunitz-pdb.fasta","w") as final:
		SeqIO.write(sampled, final, "fasta")




if __name__ == '__main__':
	file = sys.argv[1]
	select_random(file)

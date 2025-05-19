cat customreportpdb.csv |tr -d '"' |awk -F ',' '{if (length($2)>0) {name=$2}; print name,$3,$4,$5}' |grep PF0

0014 |awk '{print ">"$1"_"$3;print $2}'  >pdb_kunitz.fasta

cd-hit -i pdb_kunitz.fasta -o cdhit_kunitz.fasta -c 0.95 -aL 0.9

awk '/^>/ {if (seq && length(seq) >= 20 && length(seq) <= 100) {print head; print seq} head=$0; seq=""} /^[^>]/ {seq = seq $0} END {if (length(seq) >= 20 && length(seq) <= 100) {print head; print seq}}' cdhit_kunitz.fasta > filtered.fasta

clustalo -i filtered.fasta -o alignment.fasta --outfmt=fasta

hmmbuild themodel.hmm alignment.fasta

hmmsearch --noali --max --tblout combined_results.tbl -Z 1 themodel.hmm combined-test.fasta 

 
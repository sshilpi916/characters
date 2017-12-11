# Build both steps required for executing the character count example
all: results/charscount.out results/charsplot.out

#Extract 10 most frequent characters (Step 1)
results/charscount.out: source/count.py data/shakespeare.in
	cat data/shakespeare.in | ./source/count.py > results/charscount.out

#Create Bar chart (Step 2)
results/charsplot.out: source/plot.py results/charscount.out
	cat results/charscount.out | ./source/plot.py > results/charsplot.out


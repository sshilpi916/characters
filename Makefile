all: results/charscount.out results/charsplot.out

results/charscount.out: source/count.py data/shakespeare.in
	cat data/shakespeare.in | ./source/count.py > results/charscount.out

results/charsplot.out: source/plot.py results/charscount.out
	cat results/charscount.out | ./source/plot.py > results/charsplot.out


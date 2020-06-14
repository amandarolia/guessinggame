all: README.md

README.md: guessinggame.sh
	touch README.md
	echo "## Assignment for Guessing Number of Files in the Current Directory." >> README.md
	echo "This file is generated on `date`." >> README.md
	echo "This code contains `wc -l guessinggame.sh | cut -f1 -d ' '` lines." >> README.md
clean:
	rm README.md

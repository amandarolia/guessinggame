all: README.md

README.md: guessinggame.sh
	touch README.md
	echo "Assignment for Guessing Number of Files in the Current Directory" > README.md
	date >> README.md
	echo "\n" >> README.md
	echo "Number of lines in the Code is:" >> README.md
	wc -l guessinggame.sh | cut -f1 -d " " >> README.md
clean:
	rm README.md

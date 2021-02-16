

readme:
	touch README.md
	echo "The guessing game project" > README.md
	date >> README.md
	echo "The guessing game program contains $(shell wc -l < guessinggame.sh) lines." >> README.md



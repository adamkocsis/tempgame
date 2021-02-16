

readme:
	touch README.md
	echo "The guessing game from the UNIX workbench course" > README.md
	echo >> README.md
	date >> README.md
	echo >> README.md
	echo "The guessing game program contains $(shell wc -l < guessinggame.sh) lines." >> README.md



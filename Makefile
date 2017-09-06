all:readme.md
readme.md:
	echo '# Bash, Make, Git, and GitHub - Guessing Game' > readme.md
	echo '**Tiempo de ejecución:** '$(shell date +%M:%S) '\n'>> readme.md
	echo '**No. of Lines in guessiggame.sh:** ' $(shell wc -l guessingame.sh | awk '{print $1}') '\n' >> readme.md
clean:
	rm readme.md ./*~

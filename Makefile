# Define variables
SCRIPT = guessinggame.sh
README = README.md

all: $(README)

$(README): $(SCRIPT)
	echo "# Projet : Devinez le nombre de fichiers" > $(README)
	echo "Exécuté le : $$(date)" >> $(README)
	echo "Nombre de lignes dans $(SCRIPT) : $$(wc -l < $(SCRIPT))" >> $(README)

clean:
	rm -f $(README)

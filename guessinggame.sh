#!/bin/bash

# Function to handle user guesses
function guess_files {
    local file_count=$(ls -1 | wc -l)  # Count files in the current directory
    while true; do
        echo "Combien de fichiers y a-t-il dans le répertoire actuel ?"
        read user_guess
        if [[ $user_guess -eq $file_count ]]; then
            echo "Félicitations, vous avez deviné correctement !"
            break
        elif [[ $user_guess -lt $file_count ]]; then
            echo "Votre estimation est trop basse. Essayez encore."
        else
            echo "Votre estimation est trop élevée. Essayez encore."
        fi
    done
}

# Call the function
guess_files

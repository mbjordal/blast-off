openssl enc -pbkdf2 -nosalt -aes-256-cbc -d -in $1 -base64 -K $2 -iv $3

openssl enc -pbkdf2 -nosalt -aes-256-cbc -in $1  -out $1.enc -base64 -K $2 -iv $3

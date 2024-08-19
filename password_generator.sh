#!/bin/bash

# password length
PASSWORD_LENGTH=16


generate_password() {

  tr -dc 'A-Za-z0-9!@#$%&*()_+=-[]{}' </dev/urandom | head -c $PASSWORD_LENGTH
  echo
}

# display the password
PASSWORD=$(generate_password)
echo "Generated Password: $PASSWORD"

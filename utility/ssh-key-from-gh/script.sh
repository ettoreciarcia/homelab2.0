#!/bin/bash

# Check if Go is installed
if ! command -v go &> /dev/null; then
    echo "Go is not installed. Installing Go..."
    
    # Download the Go binary archive
    wget https://golang.org/dl/go1.17.5.linux-amd64.tar.gz
    
    # Extract the archive
    tar -C /usr/local -xzf go1.17.5.linux-amd64.tar.gz
    
    # Add Go binaries to the PATH environment variable
    export PATH=$PATH:/usr/local/go/bin
    
    # Add Go environment variables to the profile file
    echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.profile
    
    # Reload the profile file
    source ~/.profile
    
    echo "Go has been installed."
fi

# Clone the repository
echo "Cloning the repository..."
git clone https://github.com/github/script.git
cd script || exit 1

# Build and run the Go program
echo "Building and running the program..."
go run main.go

# Cleanup: Remove the cloned repository
echo "Cleaning up..."
cd ..
rm -rf script

echo "Script completed successfully."

#!/bin/bash

# Define the boilerplate repository and target directories
BOILERPLATE_REPO_URL=""
BOILERPLATE_DIR="boilerplate"

# Clone the boilerplate repository
echo "Cloning the boilerplate repository from $BOILERPLATE_REPO_URL..."
git clone $BOILERPLATE_REPO_URL $BOILERPLATE_DIR

# Navigate to the boilerplate directory
cd $BOILERPLATE_DIR || { echo "Failed to navigate to boilerplate directory"; exit 1; }

# Remove the .git folder to avoid git conflicts
echo "Removing .git folder from the boilerplate..."
rm -rf .git

# Move back to the main project directory
cd ..

# Copy the boilerplate structure to the main repository
echo "Copying boilerplate structure to the main repository..."
cp -r $BOILERPLATE_DIR/. .

# Remove the boilerplate directory
echo "Removing the boilerplate folder..."
rm -rf $BOILERPLATE_DIR

# Finish up
echo "Boilerplate has been successfully merged into your repository!"

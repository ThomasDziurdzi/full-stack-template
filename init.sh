#!/bin/bash

echo "---------------------------------------"
echo "Project Initialization"
echo "---------------------------------------"
echo ""
echo "What would you like to set up?"
echo "1) Client only"
echo "2) Server only"
echo "3) Both"
echo ""

read -p "Enter the number of your choice [1-3]: " choice

case $choice in
  1)
    echo "Removing the 'server' folder..."
    rm -rf server
    echo "The server has been removed."
    ;;
  2)
    echo "Removing the 'client' folder..."
    rm -rf client
    echo "The client has been removed."
    ;;
  3)
    echo "Both 'client' and 'server' folders are kept."
    ;;
  *)
    echo "Invalid choice. Please rerun the script and enter a number between 1 and 3."
    exit 1
    ;;
esac

echo ""
echo "Installing dependencies..."

echo "Installing root dependencies..."
npm install

if [ -d "client" ]; then
  echo "Installing client dependencies..."
  npm --prefix client install
fi

if [ -d "server" ]; then
  echo "Installing server dependencies..."
  npm --prefix server install
fi

echo ""
echo "Initialization complete! Your project is ready."

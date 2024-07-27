#!/bin/bash

# Grant execute permissions to all scripts
chmod +x scripts/*

# Check if telebot is installed
if python -c "import telebot" &> /dev/null; then
    echo "Telebot is already installed."
else
    echo "Telebot not found. Installing..."
    pip install pyTelegramBotAPI
fi

# Execute the bot script
python /workspaces/dds/run_bot.py

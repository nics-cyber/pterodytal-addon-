#!/bin/bash

# Define the Pterodactyl Panel directory
PANEL_DIR="/var/www/panel"

# Check if the Panel directory exists
if [ ! -d "$PANEL_DIR" ]; then
  echo "Pterodactyl Panel directory not found at $PANEL_DIR. Please ensure the Panel is installed."
  exit 1
fi

# Clone the pterodactyl-addons repository
echo "Cloning pterodactyl-addons repository..."
git clone https://github.com/bagou4502/pterodactyl-addons.git /tmp/pterodactyl-addons

# Navigate to the addons directory
cd /tmp/pterodactyl-addons

# Copy addons to the Pterodactyl Panel directory
echo "Installing addons..."
sudo cp -r * "$PANEL_DIR"

# Set correct permissions
echo "Setting permissions..."
sudo chown -R www-data:www-data "$PANEL_DIR"
sudo chmod -R 755 "$PANEL_DIR"

# Clear the Panel cache
echo "Clearing Panel cache..."
sudo php "$PANEL_DIR/artisan" cache:clear
sudo php "$PANEL_DIR/artisan" view:clear

# Clean up
echo "Cleaning up..."
rm -rf /tmp/pterodactyl-addons

echo "Pterodactyl addons installed successfully!"

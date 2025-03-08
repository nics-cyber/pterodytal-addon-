
---

# Pterodactyl Addons

This repository contains additional features, themes, and modifications for the [Pterodactyl Panel](https://pterodactyl.io/). These addons are designed to enhance the functionality and appearance of your Pterodactyl installation.

---

## **Available Addons**

### 1. **Themes**
- **Dark Theme**: A sleek, dark mode theme for the Pterodactyl Panel.
- **Custom Branding**: Replace the default Pterodactyl branding with your own logo and colors.

### 2. **Plugins**
- **Discord Notifications**: Send server status notifications to a Discord webhook.
- **Advanced Statistics**: Display detailed server usage statistics on the dashboard.

### 3. **Modifications**
- **Custom Login Page**: A modified login page with additional customization options.
- **Enhanced Security**: Additional security features for your Pterodactyl Panel.

---

## **Installation**

### **Prerequisites**
- A working installation of the Pterodactyl Panel.
- Access to the server where Pterodactyl is installed (SSH or terminal access).
- Basic knowledge of Linux commands.

### **Steps**

1. **Clone the Repository**
   ```bash
   git clone https://github.com/bagou4502/pterodactyl-addons.git
   cd pterodactyl-addons
   ```

2. **Install Addons**
   - Copy the desired addons to your Pterodactyl Panel directory:
     ```bash
     sudo cp -r themes/dark-theme /var/www/panel/public/themes/
     sudo cp -r plugins/discord-notifications /var/www/panel/app/Plugins/
     ```

3. **Set Permissions**
   Ensure the files have the correct permissions:
   ```bash
   sudo chown -R www-data:www-data /var/www/panel
   sudo chmod -R 755 /var/www/panel
   ```

4. **Clear Cache**
   Clear the Panel cache to apply the changes:
   ```bash
   sudo php /var/www/panel/artisan cache:clear
   sudo php /var/www/panel/artisan view:clear
   ```

5. **Enable Addons**
   - For themes, navigate to the Panel settings and select the new theme.
   - For plugins, follow the specific instructions provided in the plugin's README.

---

## **Usage**

### **Themes**
- After installing a theme, go to **Admin → Settings → Appearance** in the Pterodactyl Panel and select the installed theme.

### **Plugins**
- Each plugin may require additional configuration. Refer to the plugin's README for detailed instructions.

### **Modifications**
- Some modifications may require editing configuration files or running database migrations. Check the README for the specific modification for more details.

---

## **Contributing**

We welcome contributions to this repository! If you have an addon you'd like to share, follow these steps:

1. Fork the repository.
2. Create a new branch for your addon:
   ```bash
   git checkout -b my-new-addon
   ```
3. Add your addon to the appropriate directory (`themes`, `plugins`, or `modifications`).
4. Submit a pull request with a detailed description of your addon.

---

## **Support**

If you encounter any issues or have questions, please open an issue on the [GitHub Issues page](https://github.com/bagou4502/pterodactyl-addons/issues).

---

## **License**

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

## **Credits**

- [Pterodactyl Panel](https://pterodactyl.io/) for the amazing game server management platform.
- Contributors to this repository for their awesome addons.

---

Enjoy your enhanced Pterodactyl experience! 🚀

---


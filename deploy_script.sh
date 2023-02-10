#!/bin/bash

# Stop the existing application, if any
systemctl stop myapp

# Remove the existing application, if any
rm -rf /opt/myapp

# Create a new directory for the application
mkdir /opt/myapp

# Extract the dependencies to the new directory
tar xvf /opt/ansible/roles/app/files/app_dependencies.tar.gz -C /opt/myapp

# Start the application
systemctl start myapp

# Enable the application to start on boot
systemctl enable myapp

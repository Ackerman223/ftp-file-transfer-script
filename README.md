# FTP File Transfer Script

## Overview
This repository contains a bash script for transferring files between FTP servers. The script automates the process of downloading a file from a source FTP server, renaming it, and then uploading it to a destination FTP server.

## Usage
Ensure you have the necessary permissions and dependencies installed to execute the script. Run the script with the following command:

```bash
./ftp_file_transfer.sh <source_ip> <source_user> <source_pass> <source_path> <dest_ip> <dest_user> <dest_pass> <your_name>

## Replace the placeholders with the appropriate values:

<source_ip>: IP address of the source FTP server.
<source_user>: Username for accessing the source FTP server.
<source_pass>: Password for the source FTP server user.
<source_path>: Path to the file on the source FTP server.
<dest_ip>: IP address of the destination FTP server.
<dest_user>: Username for accessing the destination FTP server.
<dest_pass>: Password for the destination FTP server user.
<your_name>: Desired name for the transferred file.
Requirements
wget: For downloading files from the source FTP server.
curl: For uploading files to the destination FTP server.

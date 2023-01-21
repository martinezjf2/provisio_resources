### Local Environment Setup

## Procedure

1. Install MySQL 8.0.32 :https://dev.mysql.com/downloads/mysql/

2. Make sure to add path to your .zshrc and source the file
https://stackoverflow.com/questions/35858052/how-to-fix-command-not-found-mysql-in-zsh

3. Check if you have a PID, with this command: `ps aux | grep mysql`

4. Kill PID with this command: sudo kill `<PID NUMBER>`

5. For MacOS, start your server within the system setting under the MySQL Tab, click on Start Server

6. Once server is started within the system settings, go to your teminal on Mac, type in `mysql -u root -p` to start the mysql server on terminal. If the command does not recognize your password, try this command `mysql -u root`

Please reach out if you have any questions or concerns or errors from the installation process.

## Installing MySQL through Homebrew

1. Open up your terminal on MacOS and copy and paste this code `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

2. Update your terminal to have oh-my-zsh with this command `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

3. Install VSCode through here https://code.visualstudio.com/download
4. When you download it, make sure you drag the application from the downloads folder to the Applications. 

5. Open up VSCode and do this command: Shift + Command + P
6. Type in the box, Uninstall Code Command from Path and click enter
7. Repeat the command once again: Shift + Command + P
8. Type in the box, Install Code Command and click enter. It may require you to input your computer password. Do so and click enter. Once that is done, you can exit VS Code.
9. Now go on terminal and type in `brew install mysql@5.7`
10. Once it is done installing, make sure to copy and paste the export paths as it states within the ending.

11. Go on to the terminal, and type in `code .zshrc`. This will open up a new VS Code Window with the .zshrc file.
12. Verify at the end of the file you should have these commands 
`export PATH=${PATH}:/usr/local/mysql/bin/`
`export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"`

13. Make sure to save the file by doing Command + S on VS Code. Once it is saved, close out VS Code and go to your terminal.

14. Within your terminal, run this command: `source .zshrc`. This will rerun the file and will recognize the export commands from the file so you can open up the mysql server within your terminal.

15. Run this command: `brew services start mysql@5.7`

15. Run this command to start the MySQL Server: `mysql -u root -p`. If the command does not work, run: `mysql -u root`

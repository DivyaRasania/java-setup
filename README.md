# Setup JavaJDK, Git, and Microsoft Visual Studio Code in Windows 10/11

## How to install

Open PowerShell(NOT CMD) window and enter `irm bit.ly/java-vscode-git-setup | iex`

#### What will happen when you run this?

1. The script will check if the current PowerShell window is admin or not. If not it will ask you for admin privialges.
2. Then it will download [chocolately](https://chocolatey.org/) (A package manager for windows).
3. It will ask you if you want to install JavaJDK, Git, and Microsoft Visual Studio Code or not. If you want then go ahead and type "y" and enter.
4. Lastly it will also open 2 websites that you need to install to run Java programs. [Java Extension Pack](https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-java-pack) & [Code Runner](https://marketplace.visualstudio.com/items?itemName=formulahendry.code-runner).
5. You have to install both of them and then you are ready to run your Java code in Visual Studio Code and upload to GitHub. Just make sure to run your code with "Run Code" and not "Run Java" if you want to output class files in your current directories.

---

## How to uninstall

To uninstall JavaJDK alone type `choco uninstall openjdk` in your PowerShell window.
To uninstall Visual Studio Code alone type `choco uninstall vscode` in your PowerShell window.
To uninstall GitHub Desktop alone type `choco uninstall git` in your PowerShell window.
To remove chocolately from your system just delete the chocolately folder in your `C:\ProgramData\` directory or by typing `rm C:\ProgramData\chocolatey` in elevated(admin) PowerShell window.

# Setup JavaJDK, Microsoft Visual Studio Code, GitHub Desktop in Windows 10/11

## How to install

Open PowerShell window (doesn't matter admin or not) and enter `irm bit.ly/java-vscode-git-setup | iex`

#### What will happen when you run this?

1. The script will check if the current PowerShell window is admin or not. If not it will start itself with admin privialges.
2. Then it will download [chocolately](https://chocolatey.org/) (A package manager for windows).
3. It will ask you if you want to install JavaJDK, Microsoft Visual Studio Code, GitHub Desktop or not. If you want then go ahead and type "y" and enter and if not then "n" and enter.
4. Lastly it will also open 2 websites. One of them will be [Java Extension Pack](https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-java-pack) a Visual Studio Code extension. And second will be [Code Runner](https://marketplace.visualstudio.com/items?itemName=formulahendry.code-runner) extension.
5. You have to install both of them and then you are ready to run your Java code in Visual Studio Code and upload to GitHub. Just make sure to run your code with Code Runner on top right by clicking on down arrow beside run icon and choosing Run Code.

---

## How to uninstall

To uninstall JavaJDK alone type `choco uninstall openjdk` in your PowerShell window.
To uninstall Visual Studio Code alone type `choco uninstall vscode` in your PowerShell window.
To uninstall GitHub Desktop alone type `choco uninstall github-dektop` in your PowerShell window.
To remove chocolately from your system just delete the chocolately folder by going to `C:\ProgramData\chocolatey` or by typing `rm C:\ProgramData\chocolatey` in elevated(admin) PowerShell window.

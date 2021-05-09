
# My Laptop Setup    
- Kelvin D. Meeks
  + kmeeks@intltechventures.com
  + https://www.linkedin.com/in/kelvinmeeks/
  + http://www.intltechventures.com

  + __Current Primary Laptop__:
    * MSI GT72 6QE, Intel® Core™ i7-6700HQ, 24GB RAM (DDR4 2133MHz), Three SSD drvies (256GB M.2 SATA, 1TB M.2 SATA, 1TB SATA), 8.4 lbs

  + __Secondary Laptop__:
    * Lenovo Ideapad 110-15ACL, AMD A8-7410 2.2Ghz, 8GB RAM (1,600 MHz), 1TB SATA SSD, 4.8 lbs

  + [Logitech K540 keyboard](https://www.amazon.com/Logitech-Wireless-Keyboard-Computers-Laptops/dp/B07QY3BJBV)
    * Future, to evaluate:
      * [K380 Multi-Device Bluetooth Keyboard](https://www.logitech.com/en-us/product/multi-device-keyboard-k380)
      * [K780 K780 Multi-Device Wireless Keyboard](https://www.logitech.com/en-us/product/k780-multi-device-wireless-keyboard?crid=27)
        * switch between (3) different devices...
  + [Logitech M310 mouse](https://www.amazon.com/Logitech-M310-Wireless-Mouse-Symmetrical/dp/B008QS8G5O/)
    * (This mouse came bundled with the K540 keyboard)
    * Future, to evaluate:
      * [M720 Triathlon, Multi-device wireless mouse](https://www.logitech.com/en-us/product/m720-triathlon?crid=7)

  + [ULBRE Soho KVM Switch 4 Port USB 3.0 Sharing Box Selector, 4Port Peripheral Switcher KM Adapter KVM Console Hub for Office PC Printer Mouse Keyboard](https://www.amazon.com/dp/B07DKD7JHG/) 

  + Logitech H390 USB Headset w/Noise-Canceling Microphone
    * https://www.walmart.com/ip/Logitech-H390-USB-Headset-w-Noise-Canceling-Microphone/8198023
    * https://www.amazon.com/Logitech-logitech-noisecanceling-Microphone-Packaging/dp/B075G4JT4S/



__These are the primary software programs that I typically have installed on my personal development machine...__


## Application Package Managers (still evaluating...)

- winget
  + https://github.com/microsoft/winget-cli
    * https://github.com/microsoft/winget-pkgs
      * https://github.com/microsoft/winget-pkgs/tree/master/manifests
  + https://devblogs.microsoft.com/commandline/windows-package-manager-preview/

- https://chocolatey.org/

- https://sdkman.io/



## Security Tools

- Anti-Virus / Firewall
  + Microsoft Defender

  + Alternatives:
    * [Norton Security](http://us.norton.com/)

  + 2019 Product Reviews:
    * https://www.pcmag.com/article2/0,2817,2372364,00.asp
    * https://www.av-test.org/en/antivirus/home-windows/
    * https://www.techradar.com/best/best-antivirus
    * https://www.pcworld.com/article/3219792/computers/best-antivirus-for-windows-pc.html
    * https://www.tomsguide.com/us/best-windows-antivirus,review-6044.html

- [MalwareBytes](https://www.malwarebytes.org/)

- [TrueCrypt](http://truecrypt.sourceforge.net/)
  + NOTE: 
    * The developers posted this warning on the web site: 
      * ```WARNING: Using TrueCrypt is not secure as it may contain unfixed security issues```
      * ```WARNING: Using TrueCrypt is not secure```
    * "The development of TrueCrypt was ended in 5/2014 after Microsoft terminated support of Windows XP. Windows 8/7/Vista and later offer integrated support for encrypted disks and virtual disk images."
  + https://en.wikipedia.org/wiki/TrueCrypt
    * "On 28 May 2014, the TrueCrypt official website, truecrypt.org, began redirecting visitors to truecrypt.sourceforge.net with a HTTP 301 "Moved Permanently" status"
    * "On 28 May 2014, the TrueCrypt website announced that the project was no longer maintained and recommended users find alternative solutions. Though development of TrueCrypt has ceased, an independent audit of TrueCrypt (published in March 2015) has concluded that no significant flaws are present"
    * "Shortly after the end of life announcement of TrueCrypt, Gibson Research Corporation posted an announcement titled "Yes... TrueCrypt is still safe to use" and a Final Release Repository to host the last official non-crippled version 7.1 of TrueCrypt"
    * "TrueCrypt is vulnerable to various known attacks which are also present in other software-based disk encryption software such as BitLocker. To prevent those, the documentation distributed with TrueCrypt requires users to follow various security precautions" - [Some of those attacks are detailed in the Wikipedia article]
  + Possible Alternatives:
    * https://www.veracrypt.fr/en/Home.html


- [GnuPG](https://www.gnupg.org/)
- Curated sources for inclusion in hosts file
  + https://github.com/StevenBlack/hosts
    * Update Windows file: ```%SystemRoot%\system32\drivers\etc\hosts```



## The Essentials...

### Web Browsers

- [Chrome](https://www.google.com/intl/en/chrome/browser/thankyou.html?platform=win64)
  + Plugins
    * [Postman](https://chrome.google.com/webstore/detail/postman/fhbjgbiflinjbdggehcddcbncdddomop?hl=en)
	  * Or, download stand-alone app:
	  * https://www.postman.com/
    * [Vue.js devtools](https://chrome.google.com/webstore/detail/vuejs-devtools/nhdogjmejiglipccpnnnanhbledajbpd)
    * https://www.tampermonkey.net/
      * https://chrome.google.com/webstore/detail/tampermonkey/dhdgffkkebhmkfjojejmpbldmpobfkfo
  + Chrome Configuration Modifications
    + Disable Media Volume Control Pop-up
      * https://www.howtogeek.com/426284/how-to-stop-chrome-or-edge-from-taking-over-your-media-keys/
      * https://winaero.com/how-to-dismiss-windows-10-media-volume-control-pop-up/
      * ```chrome://flags/#hardware-media-key-handling```


- [Firefox](https://www.mozilla.org/firefox)
  + Plugins
    * https://www.greasespot.net/
      * https://addons.mozilla.org/en-US/firefox/addon/greasemonkey/
  + Firefox Configuration Modification
    + Disable Media Volume Control Pop-up
      * https://winaero.com/enable-or-disable-media-controls-in-mozilla-firefox/
      * https://support.mozilla.org/en-US/questions/1301997
        * ```media.hardwaremediakeys.enabled=false```


### Email Client

- [Thunderbird](https://www.mozilla.org/en-US/thunderbird/)
  + Plugins:
    * https://addons.thunderbird.net/en-US/thunderbird/addon/calendar-tweaks/
	* https://addons.thunderbird.net/en-US/thunderbird/addon/provider-for-google-calendar/?src=hp-dl-mostpopular
	* https://www.maketecheasier.com/12-thunderbird-addons-you-shouldnt-be-without/
  + Config Editor Changes:
    * ```mail.identity.default.suppress_signature_separator``` - change to ```true```
      * http://kb.mozillazine.org/Signatures_(Thunderbird)#Removing_the_signature_separator
      * https://support.mozilla.org/en-US/questions/1019583


### eBook Readers

- [Adobe Reader](https://get.adobe.com/reader/)
  + Fonts: (needed to print certain documents, e.g. WA Healthcare 1095-A)
    * [Adobe Acrobat Reader DC Font Pack (Continuous) - For Acrobat Reader DC version 19.x](https://supportdownloads.adobe.com/thankyou.jsp?ftpID=6484&fileID=6484)

- Kindle 
  + https://www.amazon.com/kindle-dbs/fd/kcp

- Calibre
  + https://calibre-ebook.com/
  + https://en.wikipedia.org/wiki/Calibre_(software)


### Basic Code/Text/Config Editors
- [Notepad++](https://notepad-plus-plus.org/)
  + Additional Plugins
    * Markdown++
      * https://github.com/Edditoria/markdown-plus-plus 
    * NppRegExTractor
      * https://github.com/viper3400/NppRegExTractor
    * HEX-Editor
    * JSLint
    * JSON Viewer
    * JSTool
    * Mime Tools
    * Npp Converter
    * NppExec
    * NppExport
    * PyNPP
    * RunMe
    * Tidy2

- [Visual Studio Code](https://code.visualstudio.com/)
  + https://code.visualstudio.com/docs/
  + [Marketplace for Extensions](https://code.visualstudio.com/docs?start=true#top-extensions)
  + My Installed Extensions:
    * https://marketplace.visualstudio.com/itemdetails?itemName=dbaeumer.vscode-eslint  
    * https://marketplace.visualstudio.com/items?itemName=Tyriar.vscode-terminal-here
      * "Creates an intergrated terminal session at the current file's directory"
        * ```ctrl/cmd+shift+p```
        * View > Command Palette > ``` terminalHere.create```
      * https://github.com/Tyriar/vscode-terminal-here
      * https://marketplace.visualstudio.com/items?itemName=mgmcdermott.vscode-language-babel
    * https://marketplace.visualstudio.com/items?itemName=YoshinoriN.current-file-path
    * Go Tools
      * gocode
      * gopkgs
      * go-outline
      * go-symbols
      * guru
      * gorename
      * dlv
      * gocode-gomod
      * godef
      * goreturns
      * golint
    * Scala Plugins
      * https://marketplace.visualstudio.com/items?itemName=scala-lang.scala
        * https://github.com/scala/vscode-scala-syntax
    * Remote Development (Preview)
      * https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack

- Alternatives:
  * [ATOM](https://atom.io/) - (still evaluating...)
    * https://github.com/atom/atom

- For Future Consideration: Online Editors
  + https://codeanywhere.com/


### Utilities

- [Cygwin](https://www.cygwin.com/)

- [Microsoft Sysinternals Suite](https://docs.microsoft.com/en-us/sysinternals/downloads/sysinternals-suite)

- [TeraCopy](https://codesector.com/teracopy)



### File Diff Utilities

- [KDiff3](https://sourceforge.net/projects/kdiff3/files/kdiff3/)

- Possible Alternatives
  * https://en.wikipedia.org/wiki/Comparison_of_file_comparison_tools
  * http://www.scootersoftware.com
  * https://www.devart.com/codecompare/
  * http://winmerge.org/
  * https://sourceforge.net/projects/winmerge/
  * http://meldmerge.org/
    * https://gitlab.gnome.org/GNOME/meld


## Diagramming & Design Tools

- [Sparx Enterprise Architect](http://www.sparxsystems.com/)

- Open Source Alternatives:

  + [Umlet](https://www.umlet.com/)
    * https://www.umlet.com/changes.htm 
    * https://github.com/umlet/umlet
    * https://marketplace.visualstudio.com/items?itemName=TheUMLetTeam.umlet
    * Online version
      * http://www.umletino.com/

  * [Archi](https://www.archimatetool.com/)



## IDE Tools for Software Developemnt

- [Microsoft Visual Studio](https://www.visualstudio.com/)
  + https://visualstudio.microsoft.com/downloads/
  + Marketplace Extensions:
    * https://marketplace.visualstudio.com/items?itemName=YoshinoriN.current-file-path
    * Markdown Editor
       * https://marketplace.visualstudio.com/items?itemName=MadsKristensen.MarkdownEditor
       * https://github.com/madskristensen/MarkdownEditor
    * GitHub Extension for Visual Studio
      * https://marketplace.visualstudio.com/items?itemName=GitHub.GitHubExtensionforVisualStudio
      * https://visualstudio.github.com/


- [Visual Studio Code](https://code.visualstudio.com/)
  + Disable these configuration settings
    * ```telemetry.enableTelemetry```
  + Suggested: Disable Program Data Package Cache
    * https://www.quora.com/Can-I-delete-the-folder-C-ProgramData-Package-Cache
      * Disable: ```"%ProgramFiles(x86)%\Microsoft Visual Studio\Installer\vs_installer.exe" --nocache```
      * Enable: ```"%ProgramFiles(x86)%\Microsoft Visual Studio\Installer\vs_installer.exe" repair --passive --norestart --cache
        ```
  + Marketplace Extensions:
    * https://marketplace.visualstudio.com/items?itemName=YoshinoriN.current-file-path
      * display current file's path from absolute (root directory) or workspace highest directory in StatusBar by Unix style or Windows style.
    * https://marketplace.visualstudio.com/items?itemName=HookyQR.beautify
      * js-beautify for VS Code
    * https://marketplace.visualstudio.com/items?itemName=ms-mssql.mssql
      * mssql for Visual Studio Code
      * https://sqlchoice.azurewebsites.net/en-us/sql-server/developer-get-started/csharp/win/step/2.html
      * https://docs.microsoft.com/en-us/sql/linux/sql-server-linux-develop-use-vscode?view=sql-server-2017
    * https://marketplace.visualstudio.com/items?itemName=octref.vetur
      * Vue tooling for VS Code
    * https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools
      * C/C++ IntelliSense, debugging, and code browsing.
    * https://marketplace.visualstudio.com/items?itemName=Dart-Code.dart-code
      * Dart language support and debugger for Visual Studio Code.
    * https://marketplace.visualstudio.com/items?itemName=PeterJausovec.vscode-docker
      * Adds syntax highlighting, commands, hover tips, and linting for Dockerfile and docker-compose files.
    * https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint
      * Integrates ESLint into VS Code
    * https://marketplace.visualstudio.com/items?itemName=ms-vscode.Go
      * This extension adds rich language support for the Go language to VS Code.
    * https://marketplace.visualstudio.com/items?itemName=redhat.java
      * Language support for Java ™ for Visual Studio Code
    * https://marketplace.visualstudio.com/items?itemName=PKief.material-icon-theme
      * The Material Icon Theme provides lots of icons based on Material Design for Visual Studio Code.
    * https://marketplace.visualstudio.com/items?itemName=ms-vscode.PowerShell
      * This extension provides rich PowerShell language support for Visual Studio Code. 
    * https://marketplace.visualstudio.com/items?itemName=ms-python.python
      * A Visual Studio Code extension with rich support for the Python language (for all actively supported versions of the language: 2.7, >=3.5), including features such as IntelliSense, linting, debugging, code navigation, code formatting, Jupyter notebook support, refactoring, variable explorer, test explorer, snippets, and more!
    * https://marketplace.visualstudio.com/items?itemName=humao.rest-client
      * REST Client allows you to send HTTP request and view the response in Visual Studio Code directly.
    * https://marketplace.visualstudio.com/items?itemName=asciidoctor.asciidoctor-vscode
      * AsciiDoc support for Visual Studio Code
      * https://github.com/asciidoctor/asciidoctor-vscode
    * https://marketplace.visualstudio.com/items?itemName=TheUMLetTeam.umlet
      * Free UML Tool for Fast UML Diagrams


- [Eclipse](http://www.eclipse.org)
  + [See the plugins that I usually install](https://github.com/intltechventures/EclipseNotes/blob/master/README.md)

- [Android Studio / SDK](http://developer.android.com/sdk/index.html)


- To possibly evaluate, in the future...
  + https://neovim.io


## User Interface (UI) / User Experience (UX) Design Tools

- [Adobe XD](https://www.adobe.com/products/xd.html) - To be evaluated...

- Possible Alternatives:
  * https://balsamiq.com
    * https://balsamiq.com/wireframes/
  * https://www.mockflow.com/



## Version Control Tools

- [Git](https://git-scm.com/)
  + Change Git Bash Options (upper-left corner of the Bash window, right-click)
    * Font Size: 12
  + modify the .vmrc with the details in my dot.files git repository
    * https://github.com/intltechventures/dot.files/blob/master/.vimrc 
  + Make sure you have the latest "Git Credential Manager for Windows"
    * https://github.com/Microsoft/Git-Credential-Manager-for-Windows/releases/latest

- Subversion
  + https://sliksvn.com/download/


	
## Primary Software Development Languages

- [Go](https://golang.org/)

- Java
  + OpenJDK
    * https://openjdk.java.net/
  + Azul OpenJDK
    * https://www.azul.com/downloads/zulu-community/?&architecture=x86-64-bit&package=jdk
    * ```All Zulu Community builds of OpenJDK are free to download and use without restrictions.```
  + Oracle
    * https://www.oracle.com/java/


- [Python](https://www.python.org/)
  + Don't forget to confirm that the ../Scripts folder is added to the Path environment variable
  + Update Pip
    * ```python -m pip install -U pip```
  + https://github.com/intltechventures/Lab.Python/blob/master/install_modules.bat

- [R](https://www.r-project.org/)

- [C#](https://docs.microsoft.com/en-us/dotnet/csharp/)
  + Re: [Visual Studio IDE](https://visualstudio.microsoft.com/)

- [GNU GCC](https://gcc.gnu.org/)
  + [MingW (and MSYS)](http://www.mingw.org/)
  + [Cyqwin](http://www.cygwin.com/)

- JavaScript
  + https://www.ecma-international.org/publications/standards/Ecma-262.htm)
  + http://www.ecma-international.org/ecma-262/10.0/
  + https://github.com/v8/v8
  + https://developer.mozilla.org/en-US/docs/Web/JavaScript
  + https://developer.mozilla.org/en-US/docs/Web/JavaScript/Language_Resources
  + https://developer.mozilla.org/en-US/docs/Web/JavaScript/New_in_JavaScript/ECMAScript_Next_support_in_Mozilla
  + [nodejs](https://nodejs.org/en/)
  + [npmjs](https://www.npmjs.com/)
    * npm install --global yarn
  + https://github.com/intltechventures/Lab.JavaScript/blob/master/packages.sh


## Seconday Software Development Languages

- [Scala](http://scala-lang.org/)

- [Lua](http://www.lua.org/) 

- [Rust](http://rust-lang.org/)

- [Groovy](http://www.groovy-lang.org/)
  + https://groovy-lang.org/documentation.html
  + https://github.com/apache/groovy
	* http://groovy-lang.org/ides.html
  + https://groovy-lang.org/single-page-documentation.html
  + https://github.com/groovy/groovy-eclipse
  + https://github.com/groovy/groovy-eclipse/wiki
    * https://dist.springsource.org/release/GRECLIPSE/e4.15

- [Clojure](https://clojure.org/)

- Dart

- [Julia](http://julialang.org/)

- [Perl](https://www.perl.org/)
  + http://strawberryperl.com
    * http://strawberryperl.com/releases.html
    * (64bit, PDL edition = portable edition + extra PDL related modules and external libraries)
      * http://pdl.perl.org/

- [PHP ](http://php.net/)

- [Ruby](https://www.ruby-lang.org/en/)



## Machine Learning Frameworks

- [TensorFlow](https://www.tensorflow.org/install/)



## Data Analytic Technologies

- [Jupyter](https://jupyter.org/)



## Database Technologies

- [MariaDB](https://mariadb.org/)
  + https://mariadb.com/docs/reference/

- [Microsoft SQL Server](https://www.microsoft.com/en-us/server-cloud/products/sql-server/)
  + https://www.microsoft.com/en-us/sql-server/sql-server-downloads
  + SQL Server 2019 
    * https://docs.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver15
    * https://docs.microsoft.com/en-us/sql/sql-server/?view=sql-server-ver15
  + SQL Server 2017
    * https://www.microsoft.com/en-us/sql-server/sql-server-downloads
    * [SQL Server Management Studio (SSMS) - SQL Server 2017](https://docs.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-2017)
    * [SQL Server Data Tools (SSDT) for Visual Studio](https://docs.microsoft.com/en-us/sql/ssdt/download-sql-server-data-tools-ssdt?view=sql-server-2017)
    * [Microsoft ADO.NET for SQL Server](https://docs.microsoft.com/en-us/sql/connect/ado-net/microsoft-ado-net-for-sql-server?view=sql-server-2017)
    * [Microsoft JDBC Driver for SQL Server](https://docs.microsoft.com/en-us/sql/connect/jdbc/download-microsoft-jdbc-driver-for-sql-server?view=sql-server-2017)
    * [Microsoft ODBC Driver for SQL Server](https://docs.microsoft.com/en-us/sql/connect/odbc/microsoft-odbc-driver-for-sql-server?view=sql-server-2017)
    * [Python SQL Driver](https://docs.microsoft.com/en-us/sql/connect/python/python-driver-for-sql-server?view=sql-server-2017)
      * https://docs.microsoft.com/en-us/sql/connect/python/pyodbc/python-sql-driver-pyodbc?view=sql-server-2017
        * https://docs.microsoft.com/en-us/sql/connect/odbc/download-odbc-driver-for-sql-server?view=sql-server-2017
      * https://docs.microsoft.com/en-us/sql/connect/python/pyodbc/step-1-configure-development-environment-for-pyodbc-python-development?view=sql-server-2017
    * [Node.js Driver for SQL Server](https://docs.microsoft.com/en-us/sql/connect/node-js/node-js-driver-for-sql-server?view=sql-server-2017)
      * https://docs.microsoft.com/en-us/sql/connect/node-js/step-1-configure-development-environment-for-node-js-development?view=sql-server-2017
      * https://tediousjs.github.io/tedious/
      * https://github.com/tediousjs/tedious

- [PostgreSQL](http://www.postgresql.org/)
  + https://www.postgresql.org/docs/

- [Oracle](https://www.oracle.com/database/)
  + https://docs.oracle.com/en/database/index.html
  + https://www.oracle.com/database/technologies/
  + https://docs.oracle.com/en/database/oracle/oracle-database/19/index.html
  + https://www.oracle.com/database/technologies/appdev/xe.html
    * https://docs.oracle.com/en/database/oracle/application-express/18.2/index.html
  + Oracle SQL Developer
    * https://www.oracle.com/database/technologies/appdev/sql-developer.html
    * https://docs.oracle.com/en/database/oracle/sql-developer/
  + Oracle SQLcl
    * https://docs.oracle.com/en/database/oracle/sql-developer-command-line/19.2/sqcug/working-sqlcl.html#GUID-1343FA2B-BDB4-4645-B4D4-CD7C3E200AC9

- [datomic](http://www.datomic.com/)

- [Neo4j](http://neo4j.com)
  + https://neo4j.com/developer/get-started/



## Application/Web Servers

- [NGINX](https://www.nginx.com/)

- [Apache Tomcat](http://tomcat.apache.org/)

- [Apache TomEE](http://tomee.apache.org/)

- [Jetty](http://www.eclipse.org/jetty/)



## API Testing Tools

- [SoapUI](https://www.soapui.org/)
  + https://dzone.com/articles/how-to-mock-rest-api-with-soap-ui-step-by-step-gui

- [Postman](https://www.getpostman.com)
  + https://learning.getpostman.com/docs/postman/launching_postman/installation_and_updates
  + https://learning.getpostman.com/reference/
  + https://learning.getpostman.com/concepts

- json-server
  + "Get a full fake REST API with zero coding in less than 30 seconds"
  + https://github.com/typicode/json-server



## Continuous Integration / Build Tools

- [Jenkins](https://jenkins.io/)

- [Apache Ant](http://ant.apache.org/)
  + https://ant.apache.org/manual/index.html

- [Apache Maven](https://maven.apache.org/)
  + https://maven.apache.org/guides/index.html

- [Bazel](https://www.bazel.build/)
  + https://github.com/bazelbuild/bazel/releases
  + https://docs.bazel.build/versions/master/bazel-overview.html

- [Gradle](http://gradle.org/)
  + https://docs.gradle.org/current/userguide/userguide.html

- [sbt](http://www.scala-sbt.org/)

- [CBT](https://github.com/cvogt/cbt) - (stil evaluating...)



## Deployment / Cloud / Kubernetes / Container / VM Tools

- [minikube](https://minikube.sigs.k8s.io/docs/)
  + https://github.com/kubernetes/minikube

- [AWS Command Line Interface (CLI)](https://aws.amazon.com/cli/)

- [Ansible](https://www.ansible.com/)

- [Vagrant](https://www.vagrantup.com)
  + https://github.com/hashicorp/vagrant

- [Docker](https://www.docker.com/)
  + [Docker Community Edition](https://store.docker.com/editions/community/docker-ce-desktop-windows)
  + [Docker Hub](https://hub.docker.com/)
  + Enable Microsoft Windows WSL:
    * ```Enable-WindowsOptionalFeature -Online -FeatureName $("VirtualMachinePlatform", "Microsoft-Windows-Subsystem-Linux")```

- Container/VM OS Options:

  + [Mint Linux](https://www.linuxmint.com/)

  + [Ubuntu](http://www.ubuntu.com/)

  + [CoreOS](https://coreos.com/)
    * https://en.wikipedia.org/wiki/Container_Linux

  + [Community Enterprise Operating System (CentOS)](https://www.centos.org/)
    * https://en.wikipedia.org/wiki/CentOS

  + [Alpine](http://www.alpinelinux.org/) - (new, evaluating...)

  + [Microsoft Windows Nano Server](https://hub.docker.com/_/microsoft-windows-nanoserver)
    * https://docs.microsoft.com/en-us/virtualization/windowscontainers/
    * https://docs.microsoft.com/en-us/windows-server/get-started/nano-in-semi-annual-channel
    * https://docs.microsoft.com/en-us/windows-server/get-started/nano-server-quick-start

  + [Microsoft Windows Server 2019](https://docs.microsoft.com/en-us/windows-server/get-started-19/get-started-19) - (new, evaluating...)



## General Productivity Tools

- [Dropbox](https://www.dropbox.com/)
  + https://www.dropbox.com/business/pricing

- [Google Docs](https://docs.google.com/)

- Brother Printer software 

- [Cutepdf](http://www.cutepdf.com/)

- [7-ZIp](http://www.7-zip.org/download.html)  

- To Evaluate/Consider:
  + https://github.com/microsoft/PowerToys

- ISO Image Utilities
  + [ImgBurn.com](http://www.imgburn.com/index.php?act=download)

  + [PowerISO](https://www.poweriso.com/)


## Writing Tools

- [Libre Office](https://www.libreoffice.org/)
  + https://wiki.documentfoundation.org/Feature_Comparison:_LibreOffice_-_Microsoft_Office

- [Scrivner](https://www.literatureandlatte.com/scrivener) 



## Documentation Generation/Publishing Tools

- Sphinx  (TO BE EVALUATED)
  + http://www.sphinx-doc.org/en
    * http://www.sphinx-doc.org/en/master/

- Doxygen
  + http://www.doxygen.nl/

- LaTeX 
  + https://www.latex-project.org/
  + https://www.latex-project.org/help/documentation/
  + https://github.com/intltechventures/Tips/blob/master/Tips.LaTeX.md

- Amazon Kindle Direct Publishing (KDP)
  + [KDP Kindle Create](https://kdp.amazon.com/en_US/help/topic/GHU4YEWXQGNLU94T)
  + [KDP Tools and Resources](https://kdp.amazon.com/en_US/help/topic/G200735480)



## Network Monitoring / Debugging Tools

- [Networx](https://www.softperfect.com/products/networx/)

- [Fiddler](http://www.telerik.com/fiddler)

- [WireShark](https://www.wireshark.org/)



## Additional Security Tools

- [NMAP](https://nmap.org/)

- https://decentsecurity.com/#/securing-your-computer/
  + Some very good suggestions for securing Windows 10

- https://www.qubes-os.org/
  + To be evaluated in the future...


 
## Communication Tools

- [GoToMeeting](https://www.gotomeeting.com)

- [Skype](https://www.skype.com/en/) 



## Misc. - Music, eBook, Audio

- [iTunes](http://www.apple.com/itunes/)
  + Alternatives
    - https://www.getmusicbee.com/

- [Amazon Kindle for PC](http://www.amazon.com/gp/kindle/pc/download)
  + Alternatives
    * https://calibre-ebook.com/

- [Audacity](http://www.audacityteam.org/)
  + https://github.com/audacity/audacity
  + https://www.fosshub.com/Audacity.html

- [MuseScore](https://musescore.org/)
  + https://github.com/musescore/MuseScore
  + https://musescore.org/en/handbook
    * "Create, play and print beautiful sheet music"
    * https://musescore.org/en/handbook/file-formats
      * "Apart from native format files (*.mscz and *.mscx), MuseScore can also
        open MusicXML, compressed MusicXML and MIDI files, as well as a variety
        of files in other formats."
      * https://musescore.org/en/handbook/file-formats#mscx
        * "MSCX is the uncompressed version of the MuseScore file format. A score
          saved in this format will retain all information, except images. It can
          be opened with a text editor, allowing the user access to the file's
          source code."


## Video and Postcasting Tools

- [Camtasia](https://www.techsmith.com/camtasia.html)

- [Open Broadcaster Software](https://obsproject.com/) 
  + GPLv2 license

 - [VideoLan VLC media player](http://www.videolan.org)


## Image/Graphic Tools

- [Graphviz](http:www.graphviz.org)

- [GIMP](https://www.gimp.org/downloads/)
  + Alternatives:
    * https://en.wikipedia.org/wiki/Comparison_of_raster_graphics_editors
    * https://www.designer.io/en/
    * https://krita.org/en/

- [SnagIt](https://www.techsmith.com/snagit.html)


## Map Tools

- Garmin Express
  + https://www.garmin.com/en-US/software/express/windows/
  + Note: Garmin doesn't clean-up after itself - so you will need to manually monitor/clean-up left-over folders in the
    following locations:
      * ```C:\ProgramData\Garmin\CoreService\Downloads\Map```
      * ```C:\ProgramData\Garmin\CoreService\Downloads\Temp```



## Diagnostic Utilities

- Disk Performance
  - https://crystalmark.info

- General Performance Benchmarking
  - https://www.geekbench.com



# Other Configuration Tweaks:

- Google Public DNS IP addresses
  + https://developers.google.com/speed/public-dns/docs/using 
  + https://developers.google.com/speed/public-dns/docs/dns64

- The Google Public DNS IP addresses (IPv4) are as follows:
  + 8.8.8.8
  + 8.8.4.4

- The Google Public DNS IPv6 addresses are as follows:
  + 2001:4860:4860::8888
  + 2001:4860:4860::8844

- Alternate DNS Options:
  + Cloudflare
    * 1.1.1.1
    * 1.0.0.1



## Windows Environment Variables

- ```DOTNET_CLI_TELEMETRY_OPTOUT=1```
  + The .NET Core tools collect usage data in order to help us improve your experience. The data is anonymous and doesn't include command-line arguments. The data is collected by Microsoft and shared with the community. You can opt-out of telemetry by setting the DOTNET_CLI_TELEMETRY_OPTOUT environment variable to '1' or 'true' using your favorite shell.
  + Read more about .NET Core CLI Tools telemetry: https://aka.ms/dotnet-cli-telemetry



# Additional Utilities to consider adding:

- [TeraCopy](http://codesector.com/teracopy)
  + https://www.techsupportalert.com/content/faster-way-copy-files.htm

- [WizTree](https://antibody-software.com/web/software/software/wiztree-finds-the-files-and-folders-using-the-most-disk-space-on-your-hard-drive/)
  + "shows you just how much space various files and folders are taking up on your hard drive(s)."

- [HandBrake](https://handbrake.fr/)
  + "HandBrake is a tool for converting video from nearly any format to a selection of modern, widely supported codecs"
  + https://lifehacker.com/how-to-rip-a-dvd-to-your-computer-5809765

- [MakeMKV](http://makemkv.com/)
  + Video format conversion ("transcoder") utility 
  + MKV stands for "Matroska Video"
  + https://en.wikipedia.org/wiki/Matroska 

- [Sumatra PDF](https://www.sumatrapdfreader.org/free-pdf-reader.html)

- [AutoHotKey](https://www.autohotkey.com/)

- Backup / Image Copy
  + [Macrium Reflect](https://www.macrium.com/reflectfree)
    * https://www.macrium.com/products/home
  + [Arconis](https://www.acronis.com/en-us/personal/computer-backup/)

- [Microsoft TechNet: Diskspd Utility: A Robust Storage Testing Tool](https://gallery.technet.microsoft.com/DiskSpd-a-robust-storage-6cd2f223)

- https://www.userbenchmark.com

- https://ohmyz.sh/

- https://inkscape.org/
  + a Free and open source vector graphics editor for GNU/Linux, Windows and MacOS X


# Windows OS Performance Optimizations

## File Deletion Optimization Tweaks
- https://www.windowspasswordsrecovery.com/system-tuneup/how-to-fix-windows-10-slow-file-deteting-speed.html
  + Turn off Thumbnails to Speed up Copying Files on Windows 10
  + Disable Remote Differential Compression to Optimize Win10 File Moving



## Other Possible Optimizations to experiment with in the future...
- https://answers.microsoft.com/en-us/windows/forum/windows_10-files/copy-speed-very-slow-in-windows-10/950c8f96-d9de-41e2-8d35-977944eb5c01
  + turn off the Auto tuning feature
    * Turn-Off:  ```netsh int tcp set global autotuninglevel=disabled```
    * Turn-On:  ```netsh int tcp set global autotuninglevel=normal```
  + turn off RSS
    * ```netsh interface tcp set global rss=disabled```
  + deselect "Allow files on this drive to have contents indexed in addition to file properties"



## Remove Bloatware from Windows (NOTE: Need to evaluate this further, CAVEAT: have not yet applied this...)
- NOTE: You'll need to launch PowerShell as Administrator

- https://docs.microsoft.com/en-us/powershell/module/appx/remove-appxpackage?view=win10-ps 
  + ```remove-appxpackage``` 

- https://docs.microsoft.com/en-us/powershell/module/appx/get-appxpackage?view=win10-ps
  + To get a list of installed package:
    * ```Get-AppxPackage |Select Name, PackageFullName```

- Also see, for additional ideas:
  + https://www.pdq.com/blog/remove-appx-packages/
    * See ```The process for preventing the software from installing in the future is very similar. The only difference
      in the command is “provisioned” is added to the command name (Get-AppxProvisionedPackage)```

+ https://github.com/W4RH4WK/Debloat-Windows-10
    * https://github.com/W4RH4WK/Debloat-Windows-10/blob/master/scripts/remove-default-apps.ps1


- Source: https://www.reddit.com/r/pcmasterrace/comments/736tfh/skype_is_officially_bloatware_uninstalled_it/
  + Note: Should probably use ```-Allusers``` on both sides, for each command

  + ```get-appxpackage messaging | remove-appxpackage```
  + ```get-appxpackage sway | remove-appxpackage```
  + ```get-appxpackage commsphone | remove-appxpackage```
  + ```get-appxpackage windowsphone remove-appxpackage```
  + ```get-appxpackage phone | remove-appxpackage```
  + ```get-appxpackage communicationsapps | remove-appxpackage```
  + ```get-appxpackage people | remove-appxpackage```
  + ```get-appxpackage zunemusic | remove-appxpackage```
  + ```get-appxpackage zunevideo | remove-appxpackage```
  + ```get-appxpackage zune | remove-appxpackage```
  + ```get-appxpackage bingfinance | remove-appxpackage```
  + ```get-appxpackage bingnews | remove-appxpackage```
  + ```get-appxpackage bingsports | remove-appxpackage```
  + ```get-appxpackage bingweather | remove-appxpackage```
  + ```get-appxpackage bing | remove-appxpackage ```
  + ```get-appxpackage onenote | remove-appxpackage```
  + ```get-appxpackage maps | remove-appxpackage```
  + ```get-appxpackage solitaire | remove-appxpackage```
  + ```get-appxpackage officehub | remove-appxpackage```
  + ```get-appxpackage skypeapp | remove-appxpackage```
  + ```get-appxpackage getstarted | remove-appxpackage```
  + ```get-appxpackage 3dbuilder | remove-appxpackage```
  + ```get-AppxPackage drawboardpdf | Remove-AppxPackage```
  + ```get-AppxPackage freshpaint | Remove-AppxPackage```
  + ```get-AppxPackage nytcrossword | Remove-AppxPackage```
  + ```get-AppxPackage microsoft.xboxapp | Remove-AppxPackage```
  + ```get-AppxPackage SurfaceHub | Remove-AppxPackage```
  + ```get-AppxPackage flipboard | Remove-AppxPackage```
  + Also see:
    * https://drive.google.com/file/d/0BxEm-kEuxjnrOHpESC0wcHE3YTA/view



# My Personal Utility Scripts

## shazam.bat - Automated Rescue Steps for a Corrupted Windows System
- https://github.com/intltechventures/Personal.Windows.Utils/blob/master/shazam.bat




# Removed Technologies
- [VirtualBox](https://www.virtualbox.org/) - (Oracle)
  * Conflicts with running Docker



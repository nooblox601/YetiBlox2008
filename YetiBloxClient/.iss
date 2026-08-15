#define MyAppName "YetiBlox2008"
#define MyAppVersion "1.2"
#define MyAppPublisher "Nooblox Studios"
#define MyAppURL "https://nooblox601.github.io/YetiBlox2008/"
#define MyAppExeName "Yeti.exe"

[Setup]
AppId={{8A053500-42EC-4E14-83DB-FB02E92D37BB}}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}

DefaultDirName={autopf}\YetiBlox2008
DefaultGroupName={#MyAppName}

OutputDir=Output
OutputBaseFilename=YetiInstaller_v1.2

Compression=lzma2
SolidCompression=yes
WizardStyle=modern

SetupIconFile=Icon.ico
WizardBackImageFile=Background.png

DisableProgramGroupPage=no
PrivilegesRequired=admin

[Files]
Source: "*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\YetiBlox2008"; Filename: "{app}\Yeti.exe"
Name: "{autodesktop}\YetiBlox2008"; Filename: "{app}\Yeti.exe"; Tasks: desktopicon

[Tasks]
Name: "desktopicon"; Description: "Create a desktop shortcut"; Flags: unchecked

[Run]
Filename: "{app}\Yeti.exe"; Description: "Launch YetiBlox2008"; Flags: nowait postinstall skipifsilent


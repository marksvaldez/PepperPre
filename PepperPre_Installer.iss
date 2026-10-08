#define MyAppName "Pepper Pre"
#define MyAppVersion "1.0.0"
#define MyAppPublisher "Tu Imprenta"
#define MyAppExeName "PepperPre.hta"

[Setup]
AppId={{D8F3A9B2-C1E4-4F5A-9B8C-7D6E5F4A3B2C}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultDirName={autopf}\{#MyAppName}
DefaultGroupName={#MyAppName}
DisableProgramGroupPage=yes
OutputDir=Output
OutputBaseFilename=PepperPre_Setup
Compression=lzma
SolidCompression=yes
WizardStyle=modern
PrivilegesRequired=lowest
; Si tenés un icono, descomentá la siguiente línea y asegurate de que icono.ico esté en la carpeta:
; SetupIconFile=icono.ico
; UninstallDisplayIcon={app}\icono.ico

[Languages]
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.msg"

[Files]
Source: "PepperPre.hta"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\Desinstalar {#MyAppName}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Tasks]
Name: "desktopicon"; Description: "Crear un icono en el &escritorio"; GroupDescription: "Tareas adicionales:"; Flags: unchecked

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "Iniciar {#MyAppName} ahora"; Flags: nowait postinstall skipifsilent
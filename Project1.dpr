program YouTubeDLGUI;

uses
  Vcl.Forms,
  MainForm in 'MainForm.pas' {Form1},
  Vcl.Themes,
  Vcl.Styles,
  FormatGeneratorForm in 'FormatGeneratorForm.pas' {Form3},
  QuickGeneratorForm in 'QuickGeneratorForm.pas' {Form4},
  ConsoleForm in 'ConsoleForm.pas' {Form5},
  SettingsForm in 'SettingsForm.pas' {Form6},
  QueueForm in 'QueueForm.pas' {Form7},
  Unit3 in 'Unit3.pas',
  StatusUpdaterThread in 'StatusUpdaterThread.pas',
  MSOListForm in 'MSOListForm.pas' {Form9},
  HelpForm in 'HelpForm.pas' {Form10},
  LogForm in 'LogForm.pas' {LogWindow};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Carbon');
  Application.Title := 'youtube-dl --let-me-download-that-for-you';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TLogWindow, LogWindow);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TForm10, Form10);
  Application.CreateForm(TForm6, Form6);
  Application.Run;
end.

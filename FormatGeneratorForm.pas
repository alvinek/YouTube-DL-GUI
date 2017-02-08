unit FormatGeneratorForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm3 = class(TForm)
    mp4: TRadioButton;
    webm9: TRadioButton;
    webm8: TRadioButton;
    threegp: TRadioButton;
    prvwtext: TLabel;
    formatresult: TEdit;
    donebtn: TButton;
    bestquality: TRadioButton;
    fps60: TCheckBox;
    p1080: TRadioButton;
    p720: TRadioButton;
    p480: TRadioButton;
    p360: TRadioButton;
    p240: TRadioButton;
    p144: TRadioButton;
    p2160: TRadioButton;
    p1440: TRadioButton;
    PickAFormat: TGroupBox;
    pickaquality: TGroupBox;
    procedure mp4Click(Sender: TObject);
    procedure bestqualityClick(Sender: TObject);
    procedure p2160Click(Sender: TObject);
    procedure p1440Click(Sender: TObject);
    procedure p1080Click(Sender: TObject);
    procedure p720Click(Sender: TObject);
    procedure p480Click(Sender: TObject);
    procedure p360Click(Sender: TObject);
    procedure p240Click(Sender: TObject);
    procedure p144Click(Sender: TObject);
    procedure fps60Click(Sender: TObject);
    procedure webm8Click(Sender: TObject);
    procedure threegpClick(Sender: TObject);
    procedure webm9Click(Sender: TObject);
    procedure donebtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    procedure GenerateMp4;
    procedure GenerateWebm9;
    procedure GenerateWebm8;
    procedure Generate3GP;
  end;

var
  Form3: TForm3;
  Quality: String;

implementation

{$R *.dfm}

uses MainForm;

procedure TForm3.GenerateWebm9;
begin
  Quality := 'bestvideo[ext=webm]';
  if fps60.Checked = false then
    Quality := Quality + '[fps<=30]';
  if bestquality.Checked = True then
    Quality := Quality + '+bestaudio[ext=webm]';
  if p2160.Checked = True then
    Quality := Quality + '[height<=2160]+bestaudio[ext=webm]';
  if p1440.Checked = True then
    Quality := Quality + '[height<=1440]+bestaudio[ext=webm]';
  if p1080.Checked = True then
    Quality := Quality + '[height<=1080]+bestaudio[ext=webm]';
  if p720.Checked = True then
    Quality := Quality + '[height<=720]+bestaudio[ext=webm]';
  if p480.Checked = True then
    Quality := Quality + '[height<=480]+bestaudio[ext=webm]';
  if p360.Checked = True then
    Quality := Quality + '[height<=360]+bestaudio[ext=webm]';
  if p240.Checked = True then
    Quality := Quality + '[height<=240]+bestaudio[ext=webm]';
  if p144.Checked = True then
    Quality := Quality + '[height<=144]+bestaudio[ext=webm]';
  formatresult.Text := Quality;
end;

procedure TForm3.GenerateWebm8;
begin
  if p360.Checked = True then
    Quality := '43';
  formatresult.Text := Quality;
end;

procedure TForm3.bestqualityClick(Sender: TObject);
begin
  if mp4.Checked = True then
    GenerateMp4;
  if webm9.Checked = True then
    GenerateWebm9;
  if webm8.Checked = True then
    GenerateWebm8;
  if threegp.Checked = True then
    Generate3GP;
end;

procedure TForm3.donebtnClick(Sender: TObject);
begin
  MainForm.Form1.format_text.Text := formatresult.Text;
  MainForm.Form1.format.Checked := True;
  Form3.Close;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
  formatresult.Clear;
end;

procedure TForm3.fps60Click(Sender: TObject);
begin
  if mp4.Checked = True then
    GenerateMp4;
  if webm9.Checked = True then
    GenerateWebm9;
  if webm8.Checked = True then
    GenerateWebm8;
  if threegp.Checked = True then
    Generate3GP;
end;

procedure TForm3.Generate3GP;
begin
  if p240.Checked = True then
    Quality := '36';
  if p144.Checked = True then
    Quality := '17';
  formatresult.Text := Quality;
end;

procedure TForm3.GenerateMp4;
begin
  Quality := 'bestvideo[ext=mp4]';
  if fps60.Checked = false then
    Quality := Quality + '[fps<=30]';
  if bestquality.Checked = True then
    Quality := Quality + '+bestaudio[ext=m4a]';
  if p2160.Checked = True then
    Quality := Quality + '[height<=2160]+bestaudio[ext=m4a]';
  if p1440.Checked = True then
    Quality := Quality + '[height<=1440]+bestaudio[ext=m4a]';
  if p1080.Checked = True then
    Quality := Quality + '[height<=1080]+bestaudio[ext=m4a]';
  if p720.Checked = True then
    Quality := Quality + '[height<=720]+bestaudio[ext=m4a]';
  if p480.Checked = True then
    Quality := Quality + '[height<=480]+bestaudio[ext=m4a]';
  if p360.Checked = True then
    Quality := Quality + '[height<=360]+bestaudio[ext=m4a]';
  if p240.Checked = True then
    Quality := Quality + '[height<=240]+bestaudio[ext=m4a]';
  if p144.Checked = True then
    Quality := Quality + '[height<=144]+bestaudio[ext=m4a]';
  formatresult.Text := Quality;
end;

procedure TForm3.mp4Click(Sender: TObject);
begin
  Quality := '';

  p2160.Enabled := True;
  p1440.Enabled := True;
  p1080.Enabled := True;
  p720.Enabled := True;
  p480.Enabled := True;
  p360.Enabled := True;
  p240.Enabled := True;
  p144.Enabled := True;
  bestquality.Enabled := True;
  bestquality.Checked := True;
  fps60.Enabled := True;
  GenerateMp4;
end;

procedure TForm3.p1080Click(Sender: TObject);
begin
  if mp4.Checked then
    GenerateMp4;
  if webm9.Checked then
    GenerateWebm9;
  if webm8.Checked then
    GenerateWebm8;
  if threegp.Checked then
    Generate3GP;
end;

procedure TForm3.p1440Click(Sender: TObject);
begin
  if mp4.Checked then
    GenerateMp4;
  if webm9.Checked then
    GenerateWebm9;
  if webm8.Checked then
    GenerateWebm8;
  if threegp.Checked then
    Generate3GP;
end;

procedure TForm3.p144Click(Sender: TObject);
begin
  if mp4.Checked then
    GenerateMp4;
  if webm9.Checked then
    GenerateWebm9;
  if webm8.Checked then
    GenerateWebm8;
  if threegp.Checked then
    Generate3GP;
end;

procedure TForm3.p2160Click(Sender: TObject);
begin
  if mp4.Checked then
    GenerateMp4;
  if webm9.Checked then
    GenerateWebm9;
  if webm8.Checked then
    GenerateWebm8;
  if threegp.Checked then
    Generate3GP;
end;

procedure TForm3.p240Click(Sender: TObject);
begin
  if mp4.Checked then
    GenerateMp4;
  if webm9.Checked then
    GenerateWebm9;
  if webm8.Checked then
    GenerateWebm8;
  if threegp.Checked then
    Generate3GP;
end;

procedure TForm3.p360Click(Sender: TObject);
begin
  if mp4.Checked then
    GenerateMp4;
  if webm9.Checked then
    GenerateWebm9;
  if webm8.Checked then
    GenerateWebm8;
  if threegp.Checked then
    Generate3GP;
end;

procedure TForm3.p480Click(Sender: TObject);
begin
  if mp4.Checked then
    GenerateMp4;
  if webm9.Checked then
    GenerateWebm9;
  if webm8.Checked then
    GenerateWebm8;
  if threegp.Checked then
    Generate3GP;
end;

procedure TForm3.p720Click(Sender: TObject);
begin
  if mp4.Checked then
    GenerateMp4;
  if webm9.Checked then
    GenerateWebm9;
  if webm8.Checked then
    GenerateWebm8;
  if threegp.Checked then
    Generate3GP;
end;

procedure TForm3.threegpClick(Sender: TObject);
begin
  p2160.Enabled := false;
  p1440.Enabled := false;
  p1080.Enabled := false;
  p720.Enabled := false;
  p480.Enabled := false;
  p360.Enabled := false;
  /// //////////////////////
  p240.Enabled := True;
  p240.Checked := True;
  p144.Enabled := True;
  /// //////////////////////
  bestquality.Enabled := false;
  fps60.Enabled := false;
  Generate3GP;
end;

procedure TForm3.webm8Click(Sender: TObject);
begin
  p2160.Enabled := false;
  p1440.Enabled := false;
  p1080.Enabled := false;
  p720.Enabled := false;
  p480.Enabled := false;
  /// /////////////////////
  p360.Enabled := True;
  p360.Checked := True;
  /// /////////////////////
  p240.Enabled := false;
  p144.Enabled := false;
  bestquality.Enabled := false;
  fps60.Enabled := false;
  webm8.Checked := True;
  GenerateWebm8;
end;

procedure TForm3.webm9Click(Sender: TObject);
begin
  p2160.Enabled := True;
  p1440.Enabled := True;
  p1080.Enabled := True;
  p720.Enabled := True;
  p480.Enabled := True;
  /// /////////////////////
  p360.Enabled := True;
  /// /////////////////////
  p240.Enabled := True;
  p144.Enabled := True;
  bestquality.Enabled := True;
  bestquality.Checked := True;
  fps60.Enabled := True;
  webm9.Checked := True;
  GenerateWebm9;
end;

end.


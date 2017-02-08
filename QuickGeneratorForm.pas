unit QuickGeneratorForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm4 = class(TForm)
    btnMP4: TButton;
    btnWEBM: TButton;
    btnMP3: TButton;
    fps60: TCheckBox;
    BestQuality: TRadioButton;
    HighQuality: TRadioButton;
    MediumQuality: TRadioButton;
    LowQuality: TRadioButton;
    VideoSettingsGroup: TGroupBox;
    VideoAudio: TRadioButton;
    AudioSettingsGroup: TGroupBox;
    AudioOnly: TRadioButton;
    FormatGroup: TGroupBox;
    RecodeMP4: TRadioButton;
    RecodeAVI: TRadioButton;
    RecodeFLV: TRadioButton;
    RecodeMKV: TRadioButton;
    RecodeWEBM: TRadioButton;
    RecodeVideo: TCheckBox;
    AudioBest: TRadioButton;
    AudioMP3: TRadioButton;
    AudioAAC: TRadioButton;
    AudioM4A: TRadioButton;
    MoreSettingsGroup: TGroupBox;
    OneClickGroup: TGroupBox;
    BottomButtonPanel: TPanel;
    GenerateSettingsBt: TButton;
    CancelBt: TButton;
    AudioOpus: TRadioButton;
    procedure btnMP4Click(Sender: TObject);
    procedure btnWEBMClick(Sender: TObject);
    procedure btnMP3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CancelBtClick(Sender: TObject);
    procedure GenerateSettingsBtClick(Sender: TObject);
    procedure VideoAudioClick(Sender: TObject);
    procedure RecodeVideoClick(Sender: TObject);
    procedure AudioOnlyClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure SettingsSetter;
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses MainForm, FormatGeneratorForm;

procedure TForm4.SettingsSetter;
begin
if VideoAudio.Checked then
begin
  BestQuality.Enabled := True;
  HighQuality.Enabled := True;
  MediumQuality.Enabled := True;
  LowQuality.Enabled := True;
  fps60.Enabled := True;
  RecodeVideo.Enabled := True;
  BestQuality.Checked := True;
end else
begin
  BestQuality.Enabled := false;
  HighQuality.Enabled := false;
  MediumQuality.Enabled := false;
  LowQuality.Enabled := false;
  fps60.Enabled := false;
  RecodeVideo.Enabled := False;

  BestQuality.Checked := false;
  HighQuality.Checked := false;
  MediumQuality.Checked := false;
  LowQuality.Checked := false;
  fps60.Checked := false;
  RecodeVideo.Checked := False;
end;

if RecodeVideo.Checked then
begin
  RecodeMP4.Enabled := true;
  RecodeAVI.Enabled := true;
  RecodeFLV.Enabled := true;
  RecodeMKV.Enabled := true;
  RecodeWEBM.Enabled := true;
  RecodeMP4.Checked := True;
end else
begin
  RecodeMP4.Enabled := false;
  RecodeAVI.Enabled := false;
  RecodeFLV.Enabled := false;
  RecodeMKV.Enabled := false;
  RecodeWEBM.Enabled := false;

  RecodeMP4.Checked := false;
  RecodeAVI.Checked := false;
  RecodeFLV.Checked := false;
  RecodeMKV.Checked := false;
  RecodeWEBM.Checked := false;
end;

if AudioOnly.Checked then
begin
  AudioBest.Enabled := true;
  AudioMP3.Enabled := true;
  AudioAAC.Enabled := true;
  AudioM4A.Enabled := true;
  AudioOpus.Enabled := true;
  AudioBest.Checked := True;
end else
begin
  AudioBest.Enabled := false;
  AudioMP3.Enabled := false;
  AudioAAC.Enabled := false;
  AudioM4A.Enabled := false;
  AudioOpus.Enabled := false;

  AudioBest.Checked := false;
  AudioMP3.Checked := false;
  AudioAAC.Checked := false;
  AudioM4A.Checked := false;
  AudioOpus.Checked := false;
end;
end;

procedure TForm4.VideoAudioClick(Sender: TObject);
begin
SettingsSetter;
end;

procedure TForm4.btnMP4Click(Sender: TObject);
begin
  Form1.ResetAll(true);
  Form1.ignoreerrors.Checked := true;
  Form1.outputtemplate_text.Text := '%(title)s.%(ext)s';
  Form1.outputtemplate.Checked := true;
  Form1.preferffmpeg.Checked := true;
  Form1.nocheckcertificate.Checked := true;
  Form3.mp4.Checked := true;
  Form3.donebtnClick(Form4);
  Form1.format.Checked := true;
  Form4.Close;
end;

procedure TForm4.btnWEBMClick(Sender: TObject);
begin
  Form1.ResetAll(true);
  Form1.ignoreerrors.Checked := true;
  Form1.outputtemplate_text.Text := '%(title)s.%(ext)s';
  Form1.outputtemplate.Checked := true;
  Form1.preferffmpeg.Checked := true;
  Form1.nocheckcertificate.Checked := true;
  Form3.webm9.Checked := true;
  Form3.BestQuality.Checked := true;
  Form3.donebtnClick(Form4);
  Form1.format.Checked := true;
  Form4.Close;
end;

procedure TForm4.CancelBtClick(Sender: TObject);
begin
Form4.Hide;
end;

procedure TForm4.AudioOnlyClick(Sender: TObject);
begin
SettingsSetter;
end;

procedure TForm4.btnMP3Click(Sender: TObject);
begin
  Form1.ResetAll(true);
  Form1.ignoreerrors.Checked := true;
  Form1.extractaudio.Checked := true;
  Form1.audioformat.Checked := true;
  Form1.audioformat_text.Text := 'mp3';
  Form4.Close;
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
  BestQuality.Checked := true;
  VideoAudio.Checked := true;
end;

procedure TForm4.GenerateSettingsBtClick(Sender: TObject);
begin
  Form1.ResetAll(true);
  Form1.ignoreerrors.Checked := true;
  Form1.outputtemplate_text.Text := '%(title)s.%(ext)s';
  Form1.outputtemplate.Checked := true;
  Form1.preferffmpeg.Checked := true;
  Form1.nocheckcertificate.Checked := true;


if VideoAudio.Checked then
begin
Form3.mp4.Checked := True;

  if RecodeVideo.Checked then
  Form1.recodevideo.Checked := True;
  begin
    if RecodeMP4.Checked then
    begin
      Form1.recodevideo_text.Text := 'mp4';
    end;
    if RecodeAVI.Checked then
    begin
      Form1.recodevideo_text.Text := 'avi';
    end;
    if RecodeFLV.Checked then
    begin
      Form1.recodevideo_text.Text := 'flv';
    end;
    if RecodeMKV.Checked then
    begin
      Form1.recodevideo_text.Text := 'mkv';
    end;
    if RecodeWEBM.Checked then
    begin
      Form1.recodevideo_text.Text := 'webm';
    end;
  end;


  if BestQuality.Checked then
  begin
    Form3.BestQuality.Checked := true;
    if fps60.Checked then
      Form3.fps60.Checked := true;
  end;

  if HighQuality.Checked then
  begin
    Form3.p1080.Checked := true;
    if fps60.Checked then
      Form3.fps60.Checked := true;
  end;

  if MediumQuality.Checked then
  begin
    Form3.p720.Checked := true;
    if fps60.Checked then
      Form3.fps60.Checked := true;
  end;

  if LowQuality.Checked then
  begin
    Form3.p480.Checked := true;
    if fps60.Checked then
      Form3.fps60.Checked := true;
  end;

  Form3.donebtn.Click;

end;

if AudioOnly.Checked then
begin
Form1.extractaudio.Checked := true;
Form1.audioformat.Checked := true;
Form1.audioquality.Checked := true;
Form1.audioquality_text.Text := '0';

  if AudioBest.Checked then
  begin
    Form1.audioformat_text.Text := 'best';
  end;
  if AudioMP3.Checked then
  begin
    Form1.audioformat_text.Text := 'mp3';
  end;
  if AudioAAC.Checked then
  begin
    Form1.audioformat_text.Text := 'aac';
  end;
  if AudioM4A.Checked then
  begin
    Form1.audioformat_text.Text := 'm4a';
  end;
  if AudioOpus.Checked then
  begin
    Form1.audioformat_text.Text := 'opus';
  end;
end;

Form4.Close;

end;


procedure TForm4.RecodeVideoClick(Sender: TObject);
begin
SettingsSetter;
end;

end.

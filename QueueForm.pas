unit QueueForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, TLHelp32;

type
  TForm7 = class(TForm)
    RemoveFromQueue: TButton;
    HideBt: TButton;
    QueueList: TListBox;
    MoveDownBt: TButton;
    MoveUPBt: TButton;
    RunDownloadBt: TButton;
    RunAllDownloadBt: TButton;
    QueueDownload: TTimer;
    Panel1: TPanel;
    ClearBt: TButton;
    AutoRunQueue: TTimer;
    BatchListBt: TButton;
    SaveBatch: TSaveDialog;
    procedure MoveUPBtClick(Sender: TObject);
    procedure MoveDownBtClick(Sender: TObject);
    procedure HideBtClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RemoveFromQueueClick(Sender: TObject);
    procedure QueueListClick(Sender: TObject);
    procedure RunDownloadBtClick(Sender: TObject);
    procedure RunAllDownloadBtClick(Sender: TObject);
    procedure QueueDownloadTimer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ClearBtClick(Sender: TObject);
    procedure AutoRunQueueTimer(Sender: TObject);
    procedure BatchListBtClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure AddItemToDownload(Item : String; Param : String);
    procedure RedrawList;
    procedure AddCapitalsToList;
    procedure AddHorizontalScrollToList;
    procedure RelockButtons;
    procedure LockButtonsP;
    procedure LockButtonsQueueRunning;
    procedure UnlockButtons;
  end;

var
  Form7: TForm7;
  WhichItem, TWitchItem : Integer;
  HowManyItemsTogether : Integer;
  LockButtons : Boolean;
  WhichItemStatus, TWitchItemStatus : Integer;
  URLs : TStringList;
  DownloadList : TStringList;
  HistoryList : TStringList;
  BatchList : TStringList;
  QueueRunning : Boolean;

implementation

{$R *.dfm}

uses MainForm, ConsoleForm, LogForm;

function processExists(exeFileName: string): boolean;
var
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
begin
  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := SizeOf(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);
  Result := false;
  while Integer(ContinueLoop) <> 0 do
  begin
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile))
      = UpperCase(exeFileName)) or (UpperCase(FProcessEntry32.szExeFile)
      = UpperCase(exeFileName))) then
    begin
      Result := True;
    end;
    ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
  end;
  CloseHandle(FSnapshotHandle);
end;

procedure TForm7.LockButtonsP;
begin
LogWindow.LogAdd('[SCRIPT] LockButtonsP: Locked');
  LockButtons := True;
  MoveUPbt.Enabled := False;
  MoveDownBt.Enabled := False;
  RemoveFromQueue.Enabled := False;
  RunDownloadBt.Enabled := False;
  RunAllDownloadBt.Enabled := False;
end;

procedure TForm7.LockButtonsQueueRunning;
begin
LogWindow.LogAdd('[SCRIPT] LockButtonsQueueRunning: Locked');
  MoveUPbt.Enabled := False;
  MoveDownBt.Enabled := False;
  RunDownloadBt.Enabled := False;
  RunAllDownloadBt.Enabled := False;
end;

procedure TForm7.UnlockButtons;
begin
LogWindow.LogAdd('[SCRIPT] UnlockButtons: Unlocked');
  LockButtons := False;
  RunDownloadBt.Enabled := True;
  RunAllDownloadBt.Enabled := True;
  RelockButtons;
end;

procedure TForm7.RelockButtons;
begin
LogWindow.LogAdd('[SCRIPT] RelockButtons: Relocking UPBt, DownBt, RMQueue');

if QueueRunning then
begin
if (QueueList.ItemIndex+1) = WhichItemStatus then
begin
  MoveUpBt.Enabled := False;
  MoveDownBt.Enabled := False;
  RemoveFromQueue.Enabled := False;
end else
if QueueList.ItemIndex = WhichItemStatus then
begin
  MoveUpBt.Enabled := False;
  MoveDownBt.Enabled := True;
  RemoveFromQueue.Enabled := True;
end else
if (QueueList.ItemIndex+1) < WhichItemStatus then
begin
  MoveUpBt.Enabled := False;
  MoveDownBt.Enabled := False;
  RemoveFromQueue.Enabled := False;
end else
if (QueueList.ItemIndex+1) > WhichItemStatus then
begin
  MoveUpBt.Enabled := True;
  MoveDownBt.Enabled := True;
  RemoveFromQueue.Enabled := True;
end;
end
// tryb normalnego sprawdzania
else
begin
if QueueList.ItemIndex = -1 then
begin
  MoveUPbt.Enabled := False;
  MoveDownBt.Enabled := False;
  RemoveFromQueue.Enabled := False;
  Exit;
end;

if QueueList.ItemIndex = 0 then
begin
  MoveUpBt.Enabled := False;
  MoveDownBt.Enabled := True;
  RemoveFromQueue.Enabled := True;
  Exit;
end;

if QueueList.ItemIndex = QueueList.Count-1 then
begin
  MoveUpBt.Enabled := True;
  MoveDownBt.Enabled := False;
  RemoveFromQueue.Enabled := True;
  Exit;
end;

if (QueueList.ItemIndex < QueueList.Count-1) or (QueueList.ItemIndex > QueueList.Count-1) then
begin
  MoveUpBt.Enabled := True;
  MoveDownBt.Enabled := True;
  RemoveFromQueue.Enabled := True;
end;
end;

end;

// http://www.scalabium.com/faq/dct0010.htm
procedure TForm7.AddHorizontalScrollToList;
var i, intWidth, intMaxWidth: Integer;
begin
  LogWindow.LogAdd('[SCRIPT] RedrawList: Rendering horizontal scrollbar');
  intMaxWidth := 0;
  for i := 0 to QueueList.Items.Count-1 do
  begin
    intWidth := QueueList.Canvas.TextWidth(QueueList.Items.Strings[i] + 'x');
    if intMaxWidth < intWidth then
      intMaxWidth := intWidth;
  end;
  SendMessage(QueueList.Handle, LB_SETHORIZONTALEXTENT, intMaxWidth, 0);
end;

procedure TForm7.AddCapitalsToList;
var
I : Integer;
DS : String;
begin
LogWindow.LogAdd('[SCRIPT] RedrawList: Redrawing list with AddCapitals');
  for I := 0 to QueueList.Items.Count - 1 do
  begin
    if WhichItemStatus = (I+1) then DS := '>> Processing: ' else
    if WhichItemStatus < (I+1) then DS := 'Queued: ' else
    if WhichItemStatus > (I+1) then DS := 'Processed: ';
    QueueList.Items[I] := IntToStr(I+1) + '. ' + DS + URLs.Strings[I] + ' | ' + DownloadList.Strings[I];
  end;
AddHorizontalScrollToList;
end;

procedure TForm7.RedrawList;
var
I : Integer;
begin
LogWindow.LogAdd('[SCRIPT] RedrawList: Redrawing list with DownloadList');
QueueList.Clear;
  for I := 0 to DownloadList.Count-1 do
    QueueList.Items.Add(URLs.Strings[I] + ' // ' + DownloadList.Strings[I]);
AddCapitalsToList;
end;

procedure TForm7.AddItemToDownload(Item: string; Param : String);
begin
// add item to download from main form
// and add it to array
DownloadList.Add(Param);
QueueList.Items.Add(Param);
{Unit2.Status := '[queue] Getting name of ' + Item;
Form5.RunDosInMemo(PathToYoutubedl, ' -e "' + Item + '"',
    procedure(const Line: PAnsiChar)
    begin
      // this writes command effect to memo
      URLs.Add(String(Line) + ' ' + Item);
    end);
Unit2.Status := 'Ready';}
URLs.Add(Item);
RedrawList;
end;

procedure TForm7.AutoRunQueueTimer(Sender: TObject);
begin
if QueueList.Count >= 1 then
begin
if QueueRunning then
begin
  AutoRunQueue.Enabled := False;
end else
begin
LogWindow.LogAdd('[SCRIPT] AutoRunQueue: Script is getting ready');
MainForm.Status := 'Running download script';
LockButtonsQueueRunning;
WhichItem := 0;
WhichItemStatus := 1;
LogWindow.LogAdd('[SCRIPT] AutoRunQueue: Succesfuly resetted values');
HowManyItemsTogether := QueueList.Count;
LogWindow.LogAdd('[SCRIPT] AutoRunQueue: Calling QueueDownload');
QueueDownload.Enabled := True;
end;
end;
end;

procedure TForm7.BatchListBtClick(Sender: TObject);
var
HowManyItemsBatch : Integer;
I : Integer;
begin
HowManyItemsBatch := DownloadList.Count;
BatchList := TStringList.Create;
BatchList.Add('@echo off');
BatchList.Add('echo Downloading ' + IntToStr(HowManyItemsBatch) + ' items...');
for I := 0 to DownloadList.Count-1 do
begin
  BatchList.Add('echo Downloading ' + IntToStr(I+1) + ' of ' + IntToStr(HowManyItemsBatch));
  BatchList.Add(MainForm.PathToYoutubedl + ' ' + DownloadList.Strings[I]);
  BatchList.Add('cls');
end;
BatchList.Add('echo Downloaded ' + IntToStr(HowManyItemsBatch) + ' item(s)!');
BatchList.Add('pause>nul');
BatchList.SaveToFile(ExtractFilePath(Application.ExeName) + 'batch.txt');

SaveBatch.InitialDir := ExtractFilePath(Application.ExeName);
if SaveBatch.Execute() then
BatchList.SaveToFile(SaveBatch.FileName + '.bat');
end;

procedure TForm7.ClearBtClick(Sender: TObject);
begin
URLs.Clear;
DownloadList.Clear;
QueueList.Clear;
HistoryList.Clear;
end;

procedure TForm7.RunAllDownloadBtClick(Sender: TObject);
begin
QueueDownload.Enabled := True;
QueueRunning := True;
LockButtonsQueueRunning;
WhichItem := 0;
WhichItemStatus := 1;
HowManyItemsTogether := QueueList.Count;
Form7.Hide;
if MainForm.ConsoleInWindowedMode then Form1.ConsoleSheet.Show else Form5.Show;
end;

procedure TForm7.FormClose(Sender: TObject; var Action: TCloseAction);
{var
I:Integer;
SaveModule : TStringList;}
begin
{
SaveModule := TStringList.Create;

for I:=0 to Length(Downloads)-1 do
  SaveModule.Add(Downloads[I]);

SaveModule.SaveToFile(ExtractFilePath(Application.ExeName) + 'queue.his');
}
{
for I := 0 to Length(Downloads) do
  SaveLoad.Lines.Strings[I] := Downloads[I];

SaveLoad.Lines.SaveToFile(ExtractFilePath(Application.ExeName) + 'queue.txt');
}
end;

procedure TForm7.FormCreate(Sender: TObject);
{var
I : Integer;
SaveModule : TStringList;}
begin
URLs := TStringList.Create;
DownloadList := TStringList.Create;
HistoryList := TStringList.Create;
if not LockButtons then RelockButtons else LockButtonsP;
 {
if FileExists(ExtractFilePath(Application.ExeName) + 'queue.his') then
begin
  SaveModule := TStringList.Create;
  SaveModule.LoadFromFile(ExtractFilePath(Application.ExeName) + 'queue.his');
  SetLength(Downloads, SaveModule.Count);
  for I := 0 to SaveModule.Count-1 do
    Downloads[I] := SaveModule.Strings[I];
  RedrawList;
end;

if FileExists(ExtractFilePath(Application.ExeName + 'queuehistory.his')) then
begin
  HistoryList.Items.LoadFromFile(ExtractFilePath(Application.ExeName) + 'queuehistory.his');
end;
}
end;

procedure TForm7.HideBtClick(Sender: TObject);
begin
Form7.Hide;
end;

procedure TForm7.MoveDownBtClick(Sender: TObject);
begin
// moving item down
DownloadList.Exchange(QueueList.ItemIndex, QueueList.ItemIndex + 1);
URLs.Exchange(QueueList.ItemIndex, QueueList.ItemIndex + 1);
RedrawList;
end;

procedure TForm7.MoveUPBtClick(Sender: TObject);
begin
// moving item up
DownloadList.Exchange(QueueList.ItemIndex, QueueList.ItemIndex - 1);
URLs.Exchange(QueueList.ItemIndex, QueueList.ItemIndex - 1);
RedrawList;
end;

procedure TForm7.QueueDownloadTimer(Sender: TObject);
var
HowManyItems : Integer;
begin
HowManyItems := QueueList.Count - 1;
HowManyItemsTogether := QueueList.Count;
if WhichItem > HowManyItems then
begin
  LogWindow.LogAdd('[SCRIPT] QueueDownload: Download looks finished, sending message');
  MainForm.Status := 'Downloaded ' + IntToStr(HowManyItemsTogether) + ' items.';
  Form1.MainConsoleMessager('Downloaded queued items.', false);
  LogWindow.LogAdd('[SCRIPT] QueueDownload: Cleaning values');
  UnlockButtons;
  URLs.Clear;
  DownloadList.Clear;
  QueueList.Clear;
  LogWindow.LogAdd('[SCRIPT] QueueDownload: Disabling QueueDownload');
  QueueDownload.Enabled := False;
  QueueRunning := False;
  LogWindow.LogAdd('[SCRIPT] AddToQueue: Running script AutoRunQueue');
  AutoRunQueue.Enabled := True;
end else
if not processExists('youtube-dl.exe') then
begin
  RedrawList;
  QueueRunning := True;
  LogWindow.LogAdd('[SCRIPT] QueueDownload: Running external download');
  Form1.RunExternalDownload(DownloadList.Strings[WhichItem], WhichItemStatus, HowManyItemsTogether);
  Inc(WhichItem);
  Inc(WhichItemStatus);
end;
end;

procedure TForm7.QueueListClick(Sender: TObject);
begin
if not LockButtons then RelockButtons else LockButtonsP;
end;

procedure TForm7.RemoveFromQueueClick(Sender: TObject);
begin
URLs.Delete(QueueList.ItemIndex);
DownloadList.Delete(QueueList.ItemIndex);
RedrawList;
end;

procedure TForm7.RunDownloadBtClick(Sender: TObject);
begin
if not QueueList.ItemIndex = -1 then
begin
LogWindow.LogAdd('[SCRIPT] RunOneDownloadFromQueue: Running');
QueueRunning := True;
LogWindow.LogAdd('[SCRIPT] RunOneDownloadFromQueue: Sending to external download');
Form1.RunExternalDownload(DownloadList.Strings[QueueList.ItemIndex], 0, 1);
Form7.Hide;
end
else
MessageBox(Handle, PChar('Select something!'), PChar('Error'), MB_OK + MB_ICONERROR);
end;

end.

unit LogForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TLogWindow = class(TForm)
    Log: TListBox;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    procedure LogAdd(Text:string);
    procedure LogSave(Location:String);
    procedure AddHorizontalScrollToList;
  end;

var
  LogWindow: TLogWindow;
  Today : TDateTime;

implementation

{$R *.dfm}

procedure TLogWindow.FormShow(Sender: TObject);
begin
  AddHorizontalScrollToList;
end;

procedure TLogWindow.LogAdd(Text: string);
begin
  FormatDateTime('hh:nn:ss', Now);
  Log.Items.Add('[' + FormatDateTime('hh:nn:ss', Now) + '] ' + Text);
end;

procedure TLogWindow.LogSave(Location: string);
begin
  Log.Items.SaveToFile(Location);
end;

procedure TLogWindow.AddHorizontalScrollToList;
var i, intWidth, intMaxWidth: Integer;
begin
  intMaxWidth := 0;
  for i := 0 to Log.Items.Count-1 do
  begin
    intWidth := Log.Canvas.TextWidth(Log.Items.Strings[i] + 'x');
    if intMaxWidth < intWidth then
      intMaxWidth := intWidth;
  end;
  SendMessage(Log.Handle, LB_SETHORIZONTALEXTENT, intMaxWidth, 0);
end;


end.

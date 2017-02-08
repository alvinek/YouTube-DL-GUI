unit StatusUpdaterThread;

interface

uses
  System.Classes;

type
  StatusUpdater = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
  end;

implementation

{ 
  Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);  

  and UpdateCaption could look like,

    procedure StatusUpdater.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end; 
    
    or 
    
    Synchronize( 
      procedure 
      begin
        Form1.Caption := 'Updated in thread via an anonymous method' 
      end
      )
    );
    
  where an anonymous method is passed.
  
  Similarly, the developer can call the Queue method with similar parameters as 
  above, instead passing another TThread class as the first parameter, putting
  the calling thread in a queue with the other thread.
    
}

{ StatusUpdater }
uses MainForm, QueueForm;
procedure StatusUpdater.Execute;
begin
  while 3>0 do
  begin
  if QueueForm.QueueRunning then Sleep(100) else Sleep(400);
  Form1.StatusBar1.Panels[1].Text := MainForm.Status;
  Form1.StatusBar1.Panels[0].Text := MainForm.LessStatus;
  if (QueueForm.QueueRunning) or (MainForm.Processing) then
  begin
    Form1.StatusBar1.Panels[2].Text := '/';
    Sleep(150);
    Form1.StatusBar1.Panels[0].Text := MainForm.LessStatus + '.';
    Form1.StatusBar1.Panels[2].Text := '|';
    Sleep(150);
    Form1.StatusBar1.Panels[0].Text := MainForm.LessStatus + '..';
    Form1.StatusBar1.Panels[2].Text := '\';
    Sleep(150);
    Form1.StatusBar1.Panels[0].Text := MainForm.LessStatus + '...';
    Form1.StatusBar1.Panels[2].Text := '–';
  end else
    Form1.StatusBar1.Panels[2].Text := 'S';
  end;
end;

end.

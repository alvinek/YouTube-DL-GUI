unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Mask,
  ClipBrd,
  Vcl.ExtCtrls, Vcl.FileCtrl, INIFiles, TLHelp32, Vcl.Menus, ShellApi, Vcl.WinXCtrls;

type
  TForm1 = class(TForm)
    URL_Text: TLabel;
    videourl: TEdit;
    PageControl: TPageControl;
    GeneralSheet: TTabSheet;
    MainCommand: TMemo;
    abortonerror: TCheckBox;
    ignoreconfig: TCheckBox;
    flatplaylist: TCheckBox;
    markwatched: TCheckBox;
    nomarkwatched: TCheckBox;
    ProxyNetworkSheet: TTabSheet;
    proxyurl: TCheckBox;
    sockettimeout: TCheckBox;
    sourceaddress: TCheckBox;
    forceipv6: TCheckBox;
    forceipv4: TCheckBox;
    geoverificationproxy: TCheckBox;
    proxyurl_text: TEdit;
    ConvertShitFromMinutesToSeconds: TButton;
    sourceaddress_text: TEdit;
    geoverificationproxy_text: TEdit;
    VideoSelectionSheet: TTabSheet;
    PlaylistInfo: TLabel;
    GermanyInfo: TLabel;
    playliststart: TCheckBox;
    playlistend: TCheckBox;
    playlistitems: TCheckBox;
    matchtitle: TCheckBox;
    rejecttitle: TCheckBox;
    maxdownloads: TCheckBox;
    minfilesize: TCheckBox;
    maxfilesize: TCheckBox;
    playliststart_text: TEdit;
    playlistend_text: TEdit;
    playlistitems_text: TEdit;
    matchtitle_text: TEdit;
    rejecttitle_text: TEdit;
    maxdownloads_text: TEdit;
    minfilesize_text: TEdit;
    maxfilesize_text: TEdit;
    date: TCheckBox;
    datebefore: TCheckBox;
    dateafter: TCheckBox;
    minviews: TCheckBox;
    maxviews: TCheckBox;
    matchfilter: TCheckBox;
    agelimit: TCheckBox;
    matchfilter_text: TEdit;
    agelimit_text: TEdit;
    maxviews_text: TEdit;
    minviews_text: TEdit;
    noplaylist: TCheckBox;
    yesplaylist: TCheckBox;
    downloadarchive: TCheckBox;
    includeads: TCheckBox;
    DownloadSheet: TTabSheet;
    limitrate: TCheckBox;
    retries: TCheckBox;
    fragmentretries: TCheckBox;
    buffersize: TCheckBox;
    noresizebuffer: TCheckBox;
    playlistreverse: TCheckBox;
    xattrsetfilesize: TCheckBox;
    hlsprefernative: TCheckBox;
    hlspreferffmpeg: TCheckBox;
    hlsusempegts: TCheckBox;
    externaldownloadercmd: TCheckBox;
    externaldownloaderargs: TCheckBox;
    limitrate_text: TEdit;
    retries_text: TEdit;
    fragmentretries_text: TEdit;
    buffersize_text: TEdit;
    externaldownloadercmd_text: TEdit;
    externaldownloaderargs_text: TEdit;
    FileSystemSheet: TTabSheet;
    batchfile: TCheckBox;
    id: TCheckBox;
    outputtemplate: TCheckBox;
    autonumbersize: TCheckBox;
    restrictfilenames: TCheckBox;
    autonumber: TCheckBox;
    titledeprecated: TCheckBox;
    literaldeprecated: TCheckBox;
    nooverwrites: TCheckBox;
    continue: TCheckBox;
    nocontinue: TCheckBox;
    nopart: TCheckBox;
    nomtime: TCheckBox;
    writedescription: TCheckBox;
    writeinfojson: TCheckBox;
    writeannotations: TCheckBox;
    loadinfojson: TCheckBox;
    cachedir: TCheckBox;
    nocachedir: TCheckBox;
    rmcachedir: TCheckBox;
    selectcachedir: TButton;
    selectbatchfile: TButton;
    outputtemplate_text: TEdit;
    autonumbersize_text: TEdit;
    titledeprecated_text: TEdit;
    literaldeprecated_text: TEdit;
    selectjsonfile: TButton;
    writethumbnail: TCheckBox;
    writeallthumbnails: TCheckBox;
    listthumbnails: TCheckBox;
    WorkaroundSheet: TTabSheet;
    callhome: TCheckBox;
    nocallhome: TCheckBox;
    encoding: TCheckBox;
    nocheckcertificate: TCheckBox;
    preferinsecure: TCheckBox;
    refererurl: TCheckBox;
    addheader: TCheckBox;
    bidiworkaround: TCheckBox;
    sleepinterval: TCheckBox;
    encoding_text: TEdit;
    addheader_text: TEdit;
    sleepinterval_text: TEdit;
    FormatSubsSheet: TTabSheet;
    format: TCheckBox;
    allformats: TCheckBox;
    preferfreeformats: TCheckBox;
    youtubeskipdashmanifest: TCheckBox;
    mergeoutputformat: TCheckBox;
    writesub: TCheckBox;
    writeautosub: TCheckBox;
    allsubs: TCheckBox;
    subformat: TCheckBox;
    sublang: TCheckBox;
    format_text: TEdit;
    mergeoutputformat_text: TEdit;
    AuthSheet: TTabSheet;
    username: TCheckBox;
    password: TCheckBox;
    twofactor: TCheckBox;
    videopassword: TCheckBox;
    netrc: TCheckBox;
    PostProcessingSheet: TTabSheet;
    extractaudio: TCheckBox;
    audioformat: TCheckBox;
    audioquality: TCheckBox;
    recodevideo: TCheckBox;
    postprocessorargs: TCheckBox;
    keepvideo: TCheckBox;
    nopostoverwrites: TCheckBox;
    embedsubs: TCheckBox;
    embedthumbnail: TCheckBox;
    addmetadata: TCheckBox;
    metadatafromtitle: TCheckBox;
    xattrs: TCheckBox;
    fixup: TCheckBox;
    preferaconv: TCheckBox;
    preferffmpeg: TCheckBox;
    ffmpeglocation: TCheckBox;
    execcmd: TCheckBox;
    convertsubs: TCheckBox;
    username_text: TEdit;
    twofactor_text: TEdit;
    videopassword_text: TEdit;
    safetyinfo: TLabel;
    password_text: TMaskEdit;
    downloadarchivefile: TButton;
    subformat_text: TEdit;
    sublang_text: TEdit;
    audioformat_text: TEdit;
    audioquality_text: TEdit;
    recodevideo_text: TEdit;
    postprocessorargs_text: TEdit;
    metadatafromtitle_text: TEdit;
    fixup_text: TEdit;
    convertsubs_text: TEdit;
    execcmd_text: TEdit;
    ffmpeglocationbt: TButton;
    Timer1: TTimer;
    CopyURL: TButton;
    OpenDialogForArchive: TOpenDialog;
    OpenDialogForBatch: TOpenDialog;
    OpenDialogForJson: TOpenDialog;
    date_text: TMaskEdit;
    datebefore_text: TMaskEdit;
    dateafter_text: TMaskEdit;
    DateMaskInfo: TLabel;
    DateMaskInfo2: TLabel;
    referer_text: TEdit;
    StatusBar1: TStatusBar;
    OpenDialogForFFmpeg: TOpenDialog;
    OpenDialogForYTDL: TOpenDialog;
    ChangePathOfYTDLBt: TButton;
    sockettimeout_text: TMaskEdit;
    ignoreerrors: TCheckBox;
    FormatGeneratorBT: TButton;
    RUNITBt: TButton;
    PathChangeBt: TButton;
    Path: TEdit;
    downloadinginfo: TLabel;
    OpenDialogForLoad: TOpenDialog;
    OpenDialogForSave: TSaveDialog;
    OpenDialog1: TOpenDialog;
    Timer2: TTimer;
    FIXUPPolicyMenu: TPopupMenu;
    never1: TMenuItem;
    warn1: TMenuItem;
    detectorwarn1: TMenuItem;
    AUDIOFORMATPopup: TPopupMenu;
    best1: TMenuItem;
    aac1: TMenuItem;
    vorbis1: TMenuItem;
    mp31: TMenuItem;
    m4a1: TMenuItem;
    opus1: TMenuItem;
    wav1: TMenuItem;
    RecodeVideoPopup: TPopupMenu;
    mp41: TMenuItem;
    flv1: TMenuItem;
    ogg1: TMenuItem;
    webm1: TMenuItem;
    mkv1: TMenuItem;
    avi1: TMenuItem;
    ConvertSubsPopup: TPopupMenu;
    srt1: TMenuItem;
    ass1: TMenuItem;
    vtt1: TMenuItem;
    SubFormatPopup: TPopupMenu;
    ass2: TMenuItem;
    srt2: TMenuItem;
    best2: TMenuItem;
    MergeOutputPopup: TPopupMenu;
    mkv2: TMenuItem;
    mp32: TMenuItem;
    ogg2: TMenuItem;
    webm2: TMenuItem;
    flv2: TMenuItem;
    AudioQualityPopup: TPopupMenu;
    N0better1: TMenuItem;
    N11: TMenuItem;
    N21: TMenuItem;
    N31: TMenuItem;
    N41: TMenuItem;
    N51: TMenuItem;
    N61: TMenuItem;
    N71: TMenuItem;
    N81: TMenuItem;
    N91: TMenuItem;
    N128Kbps1: TMenuItem;
    N320kbps1: TMenuItem;
    N256kbps1: TMenuItem;
    QuickGenerate: TButton;
    resetsettings: TButton;
    VideoCheck: TButton;
    LoadConfBt: TButton;
    SaveConfBt: TButton;
    AppSettBt: TButton;
    VersionBt: TButton;
    UpdateBt: TButton;
    QueueBt: TButton;
    ChangePathOfFFMBt: TButton;
    ConsoleSheet: TTabSheet;
    ConsoleInApp: TMemo;
    ConsoleInAppRefresh: TTimer;
    ConsoleInWindow: TCheckBox;
    AddToQueueBt: TButton;
    apmso: TCheckBox;
    apusername: TCheckBox;
    appassword: TCheckBox;
    appassword_text: TMaskEdit;
    apmso_text: TEdit;
    apusername_text: TEdit;
    useragent: TCheckBox;
    useragent_text: TEdit;
    UserAgentMenu: TPopupMenu;
    GoogleBot1: TMenuItem;
    BingBot1: TMenuItem;
    Chrome411: TMenuItem;
    Firefox4011: TMenuItem;
    Opera9801: TMenuItem;
    Android4031: TMenuItem;
    WindowsMediaPlayer111: TMenuItem;
    msolistbt: TButton;
    youtubedlhelpbt: TButton;
    PasteURLPopup: TPopupMenu;
    Pasteonly1: TMenuItem;
    Pasteaddtoqueue1: TMenuItem;
    Editonly1: TMenuItem;
    Timer3: TTimer;
    Button1: TButton;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure CopyURLClick(Sender: TObject);
    procedure downloadarchivefileClick(Sender: TObject);
    procedure selectbatchfileClick(Sender: TObject);
    procedure selectjsonfileClick(Sender: TObject);
    procedure selectcachedirClick(Sender: TObject);
    procedure ffmpeglocationbtClick(Sender: TObject);
    procedure markwatchedClick(Sender: TObject);
    procedure nomarkwatchedClick(Sender: TObject);
    procedure callhomeClick(Sender: TObject);
    procedure nocallhomeClick(Sender: TObject);
    procedure forceipv4Click(Sender: TObject);
    procedure ConvertShitFromMinutesToSecondsClick(Sender: TObject);
    procedure forceipv6Click(Sender: TObject);
    procedure ChangePathOfYTDLBtClick(Sender: TObject);
    procedure ChangePathOfYTDLBtMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure abortonerrorMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure ignoreconfigMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure markwatchedMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure nomarkwatchedMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure callhomeMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure nocallhomeMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure PageControlMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure proxyurlMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure sockettimeoutMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure sourceaddressMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure forceipv4MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure forceipv6MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure geoverificationproxyMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure FormatGeneratorBTClick(Sender: TObject);
    procedure QuickGenerateClick(Sender: TObject);
    procedure RUNITBtClick(Sender: TObject);
    procedure PathChangeBtClick(Sender: TObject);
    procedure videocheckClick(Sender: TObject);
    procedure updatebuttonClick(Sender: TObject);
    procedure noplaylistClick(Sender: TObject);
    procedure yesplaylistClick(Sender: TObject);
    procedure sockettimeout_textChange(Sender: TObject);
    procedure ResetSettingsClick(Sender: TObject);
    procedure MainCommandMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure stoprefreshMouseLeave(Sender: TObject);
    procedure SaveConfBtClick(Sender: TObject);
    procedure LoadConfBtClick(Sender: TObject);
    procedure MainCommandMouseLeave(Sender: TObject);
    procedure versionbuttonClick(Sender: TObject);
    procedure abortonerrorClick(Sender: TObject);
    procedure AppSettBtClick(Sender: TObject);
    procedure fixup_textClick(Sender: TObject);
    procedure never1Click(Sender: TObject);
    procedure warn1Click(Sender: TObject);
    procedure detectorwarn1Click(Sender: TObject);
    procedure best1Click(Sender: TObject);
    procedure aac1Click(Sender: TObject);
    procedure vorbis1Click(Sender: TObject);
    procedure mp31Click(Sender: TObject);
    procedure m4a1Click(Sender: TObject);
    procedure opus1Click(Sender: TObject);
    procedure wav1Click(Sender: TObject);
    procedure audioformat_textClick(Sender: TObject);
    procedure recodevideo_textClick(Sender: TObject);
    procedure convertsubs_textClick(Sender: TObject);
    procedure subformat_textClick(Sender: TObject);
    procedure mergeoutputformat_textClick(Sender: TObject);
    procedure mkv2Click(Sender: TObject);
    procedure mp32Click(Sender: TObject);
    procedure ogg2Click(Sender: TObject);
    procedure webm2Click(Sender: TObject);
    procedure flv2Click(Sender: TObject);
    procedure mp41Click(Sender: TObject);
    procedure flv1Click(Sender: TObject);
    procedure ogg1Click(Sender: TObject);
    procedure webm1Click(Sender: TObject);
    procedure mkv1Click(Sender: TObject);
    procedure avi1Click(Sender: TObject);
    procedure ass2Click(Sender: TObject);
    procedure srt2Click(Sender: TObject);
    procedure best2Click(Sender: TObject);
    procedure ass1Click(Sender: TObject);
    procedure srt1Click(Sender: TObject);
    procedure vtt1Click(Sender: TObject);
    procedure N0better1Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure N41Click(Sender: TObject);
    procedure N51Click(Sender: TObject);
    procedure N61Click(Sender: TObject);
    procedure N71Click(Sender: TObject);
    procedure N81Click(Sender: TObject);
    procedure N91Click(Sender: TObject);
    procedure N128Kbps1Click(Sender: TObject);
    procedure N256kbps1Click(Sender: TObject);
    procedure N320kbps1Click(Sender: TObject);
    procedure audioquality_textClick(Sender: TObject);
    procedure QueueBtClick(Sender: TObject);
    procedure ChangePathOfFFMBtClick(Sender: TObject);
    procedure refresherinfoClick(Sender: TObject);
    procedure ConsoleInAppRefreshTimer(Sender: TObject);
    procedure ConsoleSheetEnter(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure ConsoleSheetContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure ConsoleInWindowClick(Sender: TObject);
    procedure AddToQueueBtClick(Sender: TObject);
    procedure GoogleBot1Click(Sender: TObject);
    procedure BingBot1Click(Sender: TObject);
    procedure Chrome411Click(Sender: TObject);
    procedure Firefox4011Click(Sender: TObject);
    procedure Opera9801Click(Sender: TObject);
    procedure Android4031Click(Sender: TObject);
    procedure WindowsMediaPlayer111Click(Sender: TObject);
    procedure useragent_textClick(Sender: TObject);
    procedure msolistbtClick(Sender: TObject);
    procedure youtubedlhelpbtClick(Sender: TObject);
    procedure videourlClick(Sender: TObject);
    procedure ignoreerrorsMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure playliststartMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure playlistendMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure playlistitemsMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure matchtitleMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure rejecttitleMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure maxdownloadsMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure minfilesizeMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure maxfilesizeMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure dateMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure datebeforeMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure dateafterMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure minviewsMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure maxviewsMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure matchfilterMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure agelimitMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure downloadarchiveMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure limitrateMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure retriesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure fragmentretriesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure buffersizeMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure noresizebufferMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure playlistreverseMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure xattrsetfilesizeMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure externaldownloadercmdMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure externaldownloaderargsMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure hlsprefernativeMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure hlspreferffmpegMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure hlsusempegtsMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure writethumbnailMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure writeallthumbnailsMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure listthumbnailsMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Pasteonly1Click(Sender: TObject);
    procedure Pasteaddtoqueue1Click(Sender: TObject);
    procedure Editonly1Click(Sender: TObject);
    procedure videourlDblClick(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure GenerateGeneral;
    procedure GenerateProxy;
    procedure GenerateVideoSelection;
    procedure GenerateDownload;
    procedure GenerateFilesystem;
    procedure GenerateWorkarounds;
    procedure GenerateFormatSubs;
    procedure GenerateAuth;
    procedure GeneratePostProcessing;
    procedure ResetAll(keepurl: boolean);
    procedure SaveAll(where: String);
    procedure LoadAll(from: string);
    procedure LockDownload;
    procedure UnlockDownload;
    procedure RunExternalDownload(param:String; LeftItems:Integer; AllItems:Integer);
    procedure MainConsoleMessager(msg:String; show:boolean);
    procedure SetLocations(foryt:boolean; forff: boolean; forav: boolean);
  end;

var
  Form1: TForm1;
  General: String;
  PathToYoutubedl: String;
  SetPasswordFree: Boolean;
  OpenDialogForDownloadDir, OpenDialogForDownloadDir2, OpenDialogForFFmpegFile,
    OpenDialogForArchiveFile, OpenDialogForJsonFile, OpenDialogForBatchFile,
    OpenDialogForCacheDir: String;
  OpenDialogForSaveDir, OpenDialogForLoadDir: String;
  LinesLogCount: Integer;
  Status, LessStatus : String;
  ConsoleInWindowedMode, PortableMode : Boolean;
  ConfigFileDir : String;
  MouseOverConsole : Boolean;
  Today : TDateTime;
  URLEdit, MsgURLEdit : Boolean;
  TotalDownloads, TotalDownloadsClick : Integer;
  LeftItemsGlobal, AllItemsGlobal : Integer;
  RunOnceRunning : Boolean;
  Processing : Boolean;

implementation

{$R *.dfm}

uses LogForm,
FormatGeneratorForm,
QuickGeneratorForm,
ConsoleForm,
SettingsForm,
QueueForm,
StatusUpdaterThread,
MSOListForm,
HelpForm;

//Get Windows Dir Function
function GetWinDir: string;
var
  dir: array [0..MAX_PATH] of Char;
begin
  GetWindowsDirectory(dir, MAX_PATH);
  Result := StrPas(dir);
end;

function SlashCheck(Dir:String):String;
begin
 if Length(Dir) > 1 then
 if Dir[Length(Dir)] <> '\' then Result := dir + '\'
 else Result := Dir;
end;

procedure TForm1.SetLocations(foryt:boolean; forff: boolean; forav: boolean);
begin
  LogWindow.LogAdd('Set_Locations: ' + BoolToStr(foryt) + ' ' + BoolToStr(forff) + ' ' + BoolToStr(forav));
  if foryt then
  begin
  if FileExists(ExtractFilePath(ConfigFileDir) + 'youtube-dl.exe') then
  begin
    Pathtoyoutubedl := SlashCheck(ExtractFilePath(Application.ExeName)) + 'youtube-dl.exe';
    LogWindow.LogAdd('Set_Locations: youtube-dl.exe detected in ' + Pathtoyoutubedl);
  end
  else
  if FileExists(SlashCheck(GetWinDir)+'youtube-dl.exe') then
  begin
    Pathtoyoutubedl := SlashCheck(GetWinDir)+'youtube-dl.exe';
    LogWindow.LogAdd('Set_Locations: youtube-dl.exe detected in ' + Pathtoyoutubedl);
  end
  else
  begin
    MessageBox(handle, PChar('Hey! YouTube-DL cannot be found! Without this application cannot work! Set up a location in application please!'), PChar('Dramatic Error'), MB_OK + MB_ICONERROR);
    LogWindow.LogAdd('Set_Locations: Failed to detect youtube-dl.exe');
  end;
  Form6.youtubedllocation.Text := Pathtoyoutubedl;
  end;

  if forff then
  begin
  if FileExists(ExtractFilePath(ConfigFileDir) + 'ffmpeg.exe') then
  begin
    OpenDialogForFFMpegFile := SlashCheck(ExtractFilePath(Application.ExeName)) + 'ffmpeg.exe';
    ffmpeglocation.Checked := True;
    LogWindow.LogAdd('Set_Locations: ffmpeg.exe detected in ' + OpenDialogForFFMpegFile);
  end else
  if FileExists(SlashCheck(GetWinDir)+'ffmpeg.exe') then
  begin
    OpenDialogForFFMpegFile := SlashCheck(GetWinDir)+'ffmpeg.exe';
    LogWindow.LogAdd('Set_Locations: ffmpeg.exe detected in ' + OpenDialogForFFMpegFile);
  end else
  begin
    MessageBox(handle, PChar('Hey! FFmpeg cannot be found! ' + SlashCheck(GetWinDir) + 'ffmpeg.exe' + ' does not exist! This will cause problems! Set up a location in application please!'), PChar('Dramatic Error'), MB_OK + MB_ICONERROR);
    LogWindow.LogAdd('Set_Locations: Failed to detect ffmpeg.exe');
  end;
  Form6.ffmpeglocation.Text := OpenDialogForFFMpegFile;
  end;


end;

function processExists(exeFileName: string): boolean;
var
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
begin
  LogWindow.LogAdd('ProcessExists: ' + exeFileName);
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

function StrMaxLen(const S: string; MaxLen: integer): string;
var
  i: Integer;
begin
  result := S;
  if Length(result) <= MaxLen then Exit;
  SetLength(result, MaxLen);
  for i := MaxLen downto MaxLen - 2 do
    result[i] := '.';
end;

procedure TForm1.MainConsoleMessager(msg: string; show:boolean);
begin
  LogWindow.LogAdd('MainConsoleMessager: ' + msg);
  if ConsoleInWindowedMode = False then
  begin
    if show then Form5.Show;
    Form5.Memo1.Lines.Add('---------------------------------------------');
    Form5.Memo1.Lines.Add(msg);
    Form5.Memo1.Lines.Add('---------------------------------------------');
  end else
  begin
    if show then ConsoleSheet.Show;
    ConsoleInApp.Lines.Add('---------------------------------------------');
    ConsoleInApp.Lines.Add(msg);
    ConsoleInApp.Lines.Add('---------------------------------------------');
  end;
end;

procedure TForm1.RunExternalDownload(param: string; LeftItems:Integer; AllItems:Integer);
begin
  // clear lines
  LogWindow.LogAdd('[SCRIPT] RunExtDownload: Running external download');
  Form5.Memo1.Lines.Clear;
  ConsoleInApp.Lines.Clear;
  LockDownload;
  LogWindow.LogAdd('[SCRIPT] RunExtDownload: Sending message to StatusBar');
  Status := '[download] running download ' + IntToStr(LeftItems) + ' of ' + IntToStr(Form7.QueueList.Count);

  MainConsoleMessager('Queue: ' + param, false { dont inform user });

  // this is for password
  CopyURL.Enabled := false;
  SetPasswordFree := True;
  LeftItemsGlobal := LeftItems;
  AllItemsGlobal  := AllItems;

  // this runs commands
  Inc(TotalDownloads);
  LogWindow.LogAdd('[SCRIPT] RunExtDownload: ConsoleWindowedMode = ' + BoolToStr(ConsoleInWindowedMode));
  if ConsoleInWindowedMode = False then
  begin
  Form5.RunDosInMemo(Pathtoyoutubedl, param,
    procedure(const Line: PAnsiChar)
    begin
      // this writes command to memo
      Form5.Memo1.Lines.Add(String(Line));
      Status := '[' + IntToStr(LeftItems) + '/' + IntToStr(Form7.QueueList.Count) + '] ' + String(Line);
    end);
  end else
  begin
  Form5.RunDosInMemo(Pathtoyoutubedl, param,
    procedure(const Line: PAnsiChar)
    begin
      // this writes command to memo
      ConsoleInApp.Lines.Add(String(Line));
      Status := '[' + IntToStr(LeftItems) + '/' + IntToStr(Form7.QueueList.Count) + '] ' + String(Line);
    end);
  end;

  // after that we check if process exists and if exists we sleep 500ms
  while processExists('youtube-dl.exe') do
    Sleep(500);


  if ConsoleInWindowedMode = False then
  begin
    // now we are saving log: Where-Application-Is-Running\log(Formatted time from 12:34:56 > 12_34_56).txt
    Form5.Memo1.Lines.Add('');
    Form5.Memo1.Lines.Add(MainCommand.Text); // adding command that has been used
    Form5.Memo1.Lines.SaveToFile((ExtractFilePath(Application.ExeName)) + 'log' +
      FormatDateTime('dd_mm_yyyy_hh_nn_ss', Now) + '.txt');

    // information to user
    Form5.Memo1.Lines.Add('---------------------------------------------');
    Form5.Memo1.Lines.Add('File downloaded!');
  end else
  begin
    // now we are saving log: Where-Application-Is-Running\log(Formatted time from 12:34:56 > 12_34_56).txt
    ConsoleInApp.Lines.Add('');
    ConsoleInApp.Lines.Add(MainCommand.Text); // adding command that has been used
    ConsoleInApp.Lines.SaveToFile((ExtractFilePath(Application.ExeName)) + 'log' +
      FormatDateTime('dd_mm_yyyy_hh_nn_ss', Now) + '.txt');
    // information to user
    ConsoleInApp.Lines.Add('---------------------------------------------');
    ConsoleInApp.Lines.Add('File downloaded!');
  end;
  // 1 second to read information
  UnlockDownload;
  Sleep(1000);

  today := Now;

  // then show in status bar that file has been downloaded (with time)
  LessStatus := '[' + TimeToStr(Time) +
    '] Downloaded succesfully, or not. Log: ' + 'log' +
    FormatDateTime('dd_mm_yyyy_hh_nn_ss', Now) + '.txt';

  LogWindow.LogAdd('[SCRIPT] RunExtDownload: Script finished');

  // and enable hidden password
  CopyURL.Enabled := True;
  SetPasswordFree := false;
end;


// Save All Procedure
// Saves all settings of application.
procedure TForm1.LockDownload;
begin
LogWindow.LogAdd('[SCRIPT] LockDownload: Locking');
  // lock buttons
VideoCheck.Enabled := False;
VersionBt.Enabled := False;
UpdateBt.Enabled := False;
RUNITBt.Enabled := False;
//AddToQueueBt.Enabled := False;
//QueueBt.Enabled := False;
//Form7.Close;
end;

procedure TForm1.UnlockDownload;
begin
LogWindow.LogAdd('[SCRIPT] UnlockDownload: Unlocking');
  // unlock buttons
VideoCheck.Enabled := True;
VersionBt.Enabled := True;
UpdateBt.Enabled := True;
RUNITBt.Enabled := True;
//AddToQueueBt.Enabled := True;
//QueueBt.Enabled := True;
end;

procedure TForm1.SaveAll(where: string);
var
  INI: TINIFile;
begin
LogWindow.LogAdd('[SCRIPT] SaveAll: Saving to ' + where);
  INI := TINIFile.Create(where);

  // text
  INI.WriteString('text', 'proxyurl_text', proxyurl_text.Text);
  INI.WriteString('text', 'sockettimeout_text', sockettimeout_text.Text);
  INI.WriteString('text', 'sourceaddress_text', sourceaddress_text.Text);
  INI.WriteString('text', 'geoverificationproxy_text',
    geoverificationproxy_text.Text);
  INI.WriteString('text', 'playliststart_text', playliststart_text.Text);
  INI.WriteString('text', 'playlistend_text', playlistend_text.Text);
  INI.WriteString('text', 'playlistitems_text', playlistitems_text.Text);
  INI.WriteString('text', 'matchtitle_text', matchtitle_text.Text);
  INI.WriteString('text', 'rejecttitle_text', rejecttitle_text.Text);
  INI.WriteString('text', 'maxdownloads_text', maxdownloads_text.Text);
  INI.WriteString('text', 'minfilesize_text', minfilesize_text.Text);
  INI.WriteString('text', 'maxfilesize_text', maxfilesize_text.Text);
  INI.WriteString('text', 'date_text', date_text.Text);
  INI.WriteString('text', 'datebefore_text', datebefore_text.Text);
  INI.WriteString('text', 'dateafter_text', dateafter_text.Text);
  INI.WriteString('text', 'minviews_text', minviews_text.Text);
  INI.WriteString('text', 'maxviews_text', maxviews_text.Text);
  INI.WriteString('text', 'matchfilter_text', matchfilter_text.Text);
  INI.WriteString('text', 'agelimit_text', agelimit_text.Text);
  // INI.WriteString('text', 'downloadlimit_text', downloadlimit_text.Text);
  INI.WriteString('text', 'limitrate_text', limitrate_text.Text);
  INI.WriteString('text', 'retries_text', retries_text.Text);
  INI.WriteString('text', 'fragmentretries_text', fragmentretries_text.Text);
  INI.WriteString('text', 'buffersize_text', buffersize_text.Text);
  INI.WriteString('text', 'externaldownloadercmd_text',
    externaldownloadercmd_text.Text);
  INI.WriteString('text', 'externaldownloaderargs_text',
    externaldownloaderargs_text.Text);
  INI.WriteString('text', 'outputtemplate_text', outputtemplate_text.Text);
  INI.WriteString('text', 'autonumbersize_text', autonumbersize_text.Text);
  INI.WriteString('text', 'titledeprecated_text', titledeprecated_text.Text);
  INI.WriteString('text', 'literaldeprecated_text',
    literaldeprecated_text.Text);
  INI.WriteString('text', 'encoding_text', encoding_text.Text);
  INI.WriteString('text', 'referer_text', referer_text.Text);
  INI.WriteString('text', 'addheader_text', addheader_text.Text);
  INI.WriteString('text', 'sleepinterval_text', sleepinterval_text.Text);
  INI.WriteString('text', 'format_text', format_text.Text);
  INI.WriteString('text', 'mergeoutputformat_text',
    mergeoutputformat_text.Text);
  INI.WriteString('text', 'subformat_text', subformat_text.Text);
  INI.WriteString('text', 'sublang_text', sublang_text.Text);
  INI.WriteString('text', 'username_text', username_text.Text);
  INI.WriteString('text', 'password_text', password_text.Text);
  INI.WriteString('text', 'twofactor_text', twofactor_text.Text);
  INI.WriteString('text', 'videopassword_text', videopassword_text.Text);
  INI.WriteString('text', 'audioformat_text', audioformat_text.Text);
  INI.WriteString('text', 'audioquality_text', audioquality_text.Text);
  INI.WriteString('text', 'recodevideo_text', recodevideo_text.Text);
  INI.WriteString('text', 'postprocessorargs_text',
    postprocessorargs_text.Text);
  INI.WriteString('text', 'metadatafromtitle_text',
    metadatafromtitle_text.Text);
  INI.WriteString('text', 'fixup_text', fixup_text.Text);
  INI.WriteString('text', 'execcmd_text', execcmd_text.Text);
  INI.WriteString('text', 'convertsubs_text', convertsubs_text.Text);
  INI.WriteString('text', 'useragent_text', useragent_text.Text);

  // checkboxes general
  INI.WriteBool('checkbox', 'abortonerror', abortonerror.Checked);
  INI.WriteBool('checkbox', 'callhome', callhome.Checked);
  INI.WriteBool('checkbox', 'nocallhome', nocallhome.Checked);
  INI.WriteBool('checkbox', 'ignoreconfig', ignoreconfig.Checked);
  INI.WriteBool('checkbox', 'ignoreerrors', ignoreerrors.Checked);
  INI.WriteBool('checkbox', 'flatplaylist', flatplaylist.Checked);
  INI.WriteBool('checkbox', 'markwatched', markwatched.Checked);
  INI.WriteBool('checkbox', 'nomarkwatched', nomarkwatched.Checked);

  // checkboxes proxy
  INI.WriteBool('checkbox', 'proxyurl', proxyurl.Checked);
  INI.WriteBool('checkbox', 'sockettimeout', sockettimeout.Checked);
  INI.WriteBool('checkbox', 'sourceaddress', sourceaddress.Checked);
  INI.WriteBool('checkbox', 'forceipv4', forceipv4.Checked);
  INI.WriteBool('checkbox', 'forceipv6', forceipv6.Checked);
  INI.WriteBool('checkbox', 'geoverificationproxy',
    geoverificationproxy.Checked);

  // checkboxes videoselection
  INI.WriteBool('checkbox', 'playliststart', playliststart.Checked);
  INI.WriteBool('checkbox', 'playlistend', playlistend.Checked);
  INI.WriteBool('checkbox', 'playlistitems', playlistitems.Checked);
  INI.WriteBool('checkbox', 'matchtitle', matchtitle.Checked);
  INI.WriteBool('checkbox', 'rejecttitle', rejecttitle.Checked);
  INI.WriteBool('checkbox', 'maxdownloads', maxdownloads.Checked);
  INI.WriteBool('checkbox', 'minfilesize', minfilesize.Checked);
  INI.WriteBool('checkbox', 'maxfilesize', maxfilesize.Checked);
  INI.WriteBool('checkbox', 'date', date.Checked);
  INI.WriteBool('checkbox', 'datebefore', datebefore.Checked);
  INI.WriteBool('checkbox', 'dateafter', dateafter.Checked);
  INI.WriteBool('checkbox', 'minviews', minviews.Checked);
  INI.WriteBool('checkbox', 'maxviews', maxviews.Checked);
  INI.WriteBool('checkbox', 'matchfilter', matchfilter.Checked);
  INI.WriteBool('checkbox', 'agelimit', agelimit.Checked);
  INI.WriteBool('checkbox', 'downloadarchive', downloadarchive.Checked);
  INI.WriteBool('checkbox', 'noplaylist', noplaylist.Checked);
  INI.WriteBool('checkbox', 'yesplaylist', yesplaylist.Checked);
  INI.WriteBool('checkbox', 'includeads', includeads.Checked);

  // checkboxes download
  INI.WriteBool('checkbox', 'limitrate', limitrate.Checked);
  INI.WriteBool('checkbox', 'retries', retries.Checked);
  INI.WriteBool('checkbox', 'fragmentretries', fragmentretries.Checked);
  INI.WriteBool('checkbox', 'buffersize', buffersize.Checked);
  INI.WriteBool('checkbox', 'noresizebuffer', noresizebuffer.Checked);
  INI.WriteBool('checkbox', 'playlistreverse', playlistreverse.Checked);
  INI.WriteBool('checkbox', 'xattrsetfilesize', xattrsetfilesize.Checked);
  INI.WriteBool('checkbox', 'externaldownloadercmd',
    externaldownloadercmd.Checked);
  INI.WriteBool('checkbox', 'externaldownloaderargs',
    externaldownloaderargs.Checked);
  INI.WriteBool('checkbox', 'hlsprefernative', hlsprefernative.Checked);
  INI.WriteBool('checkbox', 'hlspreferffmpeg', hlspreferffmpeg.Checked);
  INI.WriteBool('checkbox', 'hlsusempegts', hlsusempegts.Checked);
  INI.WriteBool('checkbox', 'writethumbnail', writethumbnail.Checked);
  INI.WriteBool('checkbox', 'writeallthumbnails', writeallthumbnails.Checked);
  INI.WriteBool('checkbox', 'listthumbnails', listthumbnails.Checked);

  // checkboxes filesystem
  INI.WriteBool('checkbox', 'batchfile', batchfile.Checked);
  INI.WriteBool('checkbox', 'id', id.Checked);
  INI.WriteBool('checkbox', 'outputtemplate', outputtemplate.Checked);
  INI.WriteBool('checkbox', 'autonumbersize', autonumbersize.Checked);
  INI.WriteBool('checkbox', 'restrictfilenames', restrictfilenames.Checked);
  INI.WriteBool('checkbox', 'autonumber', autonumber.Checked);
  INI.WriteBool('checkbox', 'titledeprecated', titledeprecated.Checked);
  INI.WriteBool('checkbox', 'literaldeprecated', literaldeprecated.Checked);
  INI.WriteBool('checkbox', 'loadinfojson', loadinfojson.Checked);
  INI.WriteBool('checkbox', 'cachedir', cachedir.Checked);
  INI.WriteBool('checkbox', 'nocachedir', nocachedir.Checked);
  INI.WriteBool('checkbox', 'rmcachedir', rmcachedir.Checked);
  INI.WriteBool('checkbox', 'nooverwrites', nooverwrites.Checked);
  INI.WriteBool('checkbox', 'continue', continue.Checked);
  INI.WriteBool('checkbox', 'nocontinue', nocontinue.Checked);
  INI.WriteBool('checkbox', 'nopart', nopart.Checked);
  INI.WriteBool('checkbox', 'nomtime', nomtime.Checked);
  INI.WriteBool('checkbox', 'writedescription', writedescription.Checked);
  INI.WriteBool('checkbox', 'writeinfojson', writeinfojson.Checked);
  INI.WriteBool('checkbox', 'writeannotations', writeannotations.Checked);

  // checkboxes workarounds
  INI.WriteBool('checkbox', 'encoding', encoding.Checked);
  INI.WriteBool('checkbox', 'nocheckcertificate', nocheckcertificate.Checked);
  INI.WriteBool('checkbox', 'preferinsecure', preferinsecure.Checked);
  INI.WriteBool('checkbox', 'useragent', useragent.Checked);
  INI.WriteBool('checkbox', 'refererurl', refererurl.Checked);
  INI.WriteBool('checkbox', 'addheader', addheader.Checked);
  INI.WriteBool('checkbox', 'bidiworkaround', bidiworkaround.Checked);
  INI.WriteBool('checkbox', 'sleepinterval', sleepinterval.Checked);

  // checkboxes format+subs
  INI.WriteBool('checkbox', 'format', format.Checked);
  INI.WriteBool('checkbox', 'allformats', allformats.Checked);
  INI.WriteBool('checkbox', 'preferfreeformats', preferfreeformats.Checked);
  INI.WriteBool('checkbox', 'youtubeskipdashmanifest',
    youtubeskipdashmanifest.Checked);
  INI.WriteBool('checkbox', 'mergeoutputformat', mergeoutputformat.Checked);
  INI.WriteBool('checkbox', 'writesub', writesub.Checked);
  INI.WriteBool('checkbox', 'writeautosub', writeautosub.Checked);
  INI.WriteBool('checkbox', 'allsubs', allsubs.Checked);
  INI.WriteBool('checkbox', 'subformat', subformat.Checked);
  INI.WriteBool('checkbox', 'sublang', sublang.Checked);

  // checkboxes auth
  INI.WriteBool('checkbox', 'username', username.Checked);
  INI.WriteBool('checkbox', 'password', password.Checked);
  INI.WriteBool('checkbox', 'videopassword', videopassword.Checked);
  INI.WriteBool('checkbox', 'twofactor', twofactor.Checked);
  INI.WriteBool('checkbox', 'netrc', netrc.Checked);
  INI.WriteBool('checkbox', 'apmso', apmso.Checked);
  INI.WriteBool('checkbox', 'apusername', apusername.Checked);
  INI.WriteBool('checkbox', 'appassword', appassword.Checked);

  // checkboxes postprocessing
  INI.WriteBool('checkbox', 'extractaudio', extractaudio.Checked);
  INI.WriteBool('checkbox', 'audioformat', audioformat.Checked);
  INI.WriteBool('checkbox', 'audioquality', audioquality.Checked);
  INI.WriteBool('checkbox', 'recodevideo', recodevideo.Checked);
  INI.WriteBool('checkbox', 'postprocessorargs', postprocessorargs.Checked);
  INI.WriteBool('checkbox', 'keepvideo', keepvideo.Checked);
  INI.WriteBool('checkbox', 'nopostoverwrites', nopostoverwrites.Checked);
  INI.WriteBool('checkbox', 'embedsubs', embedsubs.Checked);
  INI.WriteBool('checkbox', 'embedthumbnail', embedthumbnail.Checked);
  INI.WriteBool('checkbox', 'addmetadata', addmetadata.Checked);
  INI.WriteBool('checkbox', 'metadatafromtitle', metadatafromtitle.Checked);
  INI.WriteBool('checkbox', 'xattrs', xattrs.Checked);
  INI.WriteBool('checkbox', 'fixup', fixup.Checked);
  INI.WriteBool('checkbox', 'preferaconv', preferaconv.Checked);
  INI.WriteBool('checkbox', 'preferffmpeg', preferffmpeg.Checked);
  INI.WriteBool('checkbox', 'ffmpeglocation', ffmpeglocation.Checked);
  INI.WriteBool('checkbox', 'execcmd', execcmd.Checked);
  INI.WriteBool('checkbox', 'convertsubs', convertsubs.Checked);

  // strings
  INI.WriteString('mm', 'OpenDialogForDownloadDir', OpenDialogForDownloadDir);
  INI.WriteString('mm', 'OpenDialogForDownloadDir2', OpenDialogForDownloadDir2);
//INI.WriteString('mm', 'OpenDialogForFFmpegFile', OpenDialogForFFmpegFile);
  INI.WriteString('mm', 'OpenDialogForJsonFile', OpenDialogForJsonFile);
  INI.WriteString('mm', 'OpenDialogForBatchFile', OpenDialogForBatchFile);
  INI.WriteString('mm', 'OpenDialogForCacheDir', OpenDialogForCacheDir);
  INI.WriteString('mm', 'OpenDialogForArchiveFile', OpenDialogForArchiveFile);
  INI.WriteString('mm', 'OpenDialogForSaveDir', OpenDialogForSaveDir);
  INI.WriteString('mm', 'OpenDialogForLoadDir', OpenDialogForLoadDir);

  INI.Free;
end;

// Load All Procedure
// Loads all settings to application

procedure TForm1.LoadAll(from: string);
var
  INI: TINIFile;
begin
LogWindow.LogAdd('[SCRIPT] LoadAll: Loading from ' + from);
  INI := TINIFile.Create(from);

  // checkboxes general
  abortonerror.Checked := INI.ReadBool('checkbox', 'abortonerror', false);
  ignoreerrors.Checked := INI.ReadBool('checkbox', 'ignoreerrors', false);
  ignoreconfig.Checked := INI.ReadBool('checkbox', 'ignoreconfig', false);
  flatplaylist.Checked := INI.ReadBool('checkbox', 'flatplaylist', false);
  callhome.Checked := INI.ReadBool('checkbox', 'callhome', false);
  nocallhome.Checked := INI.ReadBool('checkbox', 'nocallhome', false);
  markwatched.Checked := INI.ReadBool('checkbox', 'markwatched', false);
  nomarkwatched.Checked := INI.ReadBool('checkbox', 'nomarkwatched', false);

  // checkboxes proxy
  proxyurl.Checked := INI.ReadBool('checkbox', 'proxyurl', false);
  sockettimeout.Checked := INI.ReadBool('checkbox', 'sockettimeout', false);
  sourceaddress.Checked := INI.ReadBool('checkbox', 'sourceaddress', false);
  geoverificationproxy.Checked := INI.ReadBool('checkbox',
    'geoverificationproxy', false);
  forceipv4.Checked := INI.ReadBool('checkbox', 'forceipv4', false);
  forceipv6.Checked := INI.ReadBool('checkbox', 'forceipv6', false);

  // checkboxes videoselection
  playliststart.Checked := INI.ReadBool('checkbox', 'playliststart', false);
  playlistend.Checked := INI.ReadBool('checkbox', 'playlistend', false);
  playlistitems.Checked := INI.ReadBool('checkbox', 'playlistitems', false);
  matchtitle.Checked := INI.ReadBool('checkbox', 'matchtitle', false);
  rejecttitle.Checked := INI.ReadBool('checkbox', 'rejecttitle', false);
  maxdownloads.Checked := INI.ReadBool('checkbox', 'maxdownloads', false);
  minviews.Checked := INI.ReadBool('checkbox', 'minviews', false);
  maxviews.Checked := INI.ReadBool('checkbox', 'maxviews', false);
  minfilesize.Checked := INI.ReadBool('checkbox', 'minfilesize', false);
  maxfilesize.Checked := INI.ReadBool('checkbox', 'maxfilesize', false);
  date.Checked := INI.ReadBool('checkbox', 'date', false);
  datebefore.Checked := INI.ReadBool('checkbox', 'datebefore', false);
  dateafter.Checked := INI.ReadBool('checkbox', 'dateafter', false);
  matchfilter.Checked := INI.ReadBool('checkbox', 'matchfilter', false);
  agelimit.Checked := INI.ReadBool('checkbox', 'agelimit', false);
  downloadarchive.Checked := INI.ReadBool('checkbox', 'downloadarchive', false);
  noplaylist.Checked := INI.ReadBool('checkbox', 'noplaylist', false);
  yesplaylist.Checked := INI.ReadBool('checkbox', 'yesplaylist', false);
  includeads.Checked := INI.ReadBool('checkbox', 'includeads', false);

  // checkboxes download
  limitrate.Checked := INI.ReadBool('checkbox', 'limitrate', false);
  retries.Checked := INI.ReadBool('checkbox', 'retries', false);
  fragmentretries.Checked := INI.ReadBool('checkbox', 'fragmentretries', false);
  buffersize.Checked := INI.ReadBool('checkbox', 'buffersize', false);
  noresizebuffer.Checked := INI.ReadBool('checkbox', 'noresizebuffer', false);
  playlistreverse.Checked := INI.ReadBool('checkbox', 'playlistreverse', false);
  xattrsetfilesize.Checked := INI.ReadBool('checkbox',
    'xattrsetfilesize', false);
  externaldownloadercmd.Checked := INI.ReadBool('checkbox',
    'externaldownloadercmd', false);
  externaldownloaderargs.Checked := INI.ReadBool('checkbox',
    'externaldownloaderargs', false);
  hlsprefernative.Checked := INI.ReadBool('checkbox', 'hlsprefernative', false);
  hlspreferffmpeg.Checked := INI.ReadBool('checkbox', 'hlspreferffmpeg', false);
  hlsusempegts.Checked := INI.ReadBool('checkbox', 'hlsusempegts', false);
  writethumbnail.Checked := INI.ReadBool('checkbox', 'writethumbnail', false);
  writeallthumbnails.Checked := INI.ReadBool('checkbox',
    'writeallthumbnails', false);
  listthumbnails.Checked := INI.ReadBool('checkbox', 'listthumbnails', false);

  // checkboxes filesystem
  batchfile.Checked := INI.ReadBool('checkbox', 'batchfile', false);
  id.Checked := INI.ReadBool('checkbox', 'id', false);
  outputtemplate.Checked := INI.ReadBool('checkbox', 'outputtemplate', false);
  autonumbersize.Checked := INI.ReadBool('checkbox', 'autonumbersize', false);
  restrictfilenames.Checked := INI.ReadBool('checkbox',
    'restrictfilenames', false);
  autonumber.Checked := INI.ReadBool('checkbox', 'autonumber', false);
  titledeprecated.Checked := INI.ReadBool('checkbox', 'titledeprecated', false);
  literaldeprecated.Checked := INI.ReadBool('checkbox',
    'literaldeprecated', false);
  loadinfojson.Checked := INI.ReadBool('checkbox', 'loadinfojson', false);
  nocachedir.Checked := INI.ReadBool('checkbox', 'nocachedir', false);
  cachedir.Checked := INI.ReadBool('checkbox', 'cachedir', false);
  rmcachedir.Checked := INI.ReadBool('checkbox', 'rmcachedir', false);
  nooverwrites.Checked := INI.ReadBool('checkbox', 'nooverwrites', false);
  continue.Checked := INI.ReadBool('checkbox', 'continue', false);
  nocontinue.Checked := INI.ReadBool('checkbox', 'nocontinue', false);
  nopart.Checked := INI.ReadBool('checkbox', 'nopart', false);
  nomtime.Checked := INI.ReadBool('checkbox', 'nomtime', false);
  writedescription.Checked := INI.ReadBool('checkbox',
    'writedescription', false);
  writeannotations.Checked := INI.ReadBool('checkbox',
    'writeannotations', false);
  writeinfojson.Checked := INI.ReadBool('checkbox', 'writeinfojson', false);

  // checkboxes workarounds
  encoding.Checked := INI.ReadBool('checkbox', 'encoding', false);
  nocheckcertificate.Checked := INI.ReadBool('checkbox',
    'nocheckcertificate', false);
  preferinsecure.Checked := INI.ReadBool('checkbox', 'preferinsecure', false);
  useragent.Checked := INI.ReadBool('checkbox', 'useragent', false);
  refererurl.Checked := INI.ReadBool('checkbox', 'refererurl', false);
  addheader.Checked := INI.ReadBool('checkbox', 'addheader', false);
  bidiworkaround.Checked := INI.ReadBool('checkbox', 'bidiworkaround', false);
  sleepinterval.Checked := INI.ReadBool('checkbox', 'sleepinterval', false);

  // checkboxes formats+subs
  format.Checked := INI.ReadBool('checkbox', 'format', false);
  allformats.Checked := INI.ReadBool('checkbox', 'allformats', false);
  preferfreeformats.Checked := INI.ReadBool('checkbox',
    'preferfreeformats', false);
  youtubeskipdashmanifest.Checked := INI.ReadBool('checkbox',
    'youtubeskipdashmanifest', false);
  mergeoutputformat.Checked := INI.ReadBool('checkbox',
    'mergeoutputformat', false);
  writesub.Checked := INI.ReadBool('checkbox', 'writesub', false);
  writeautosub.Checked := INI.ReadBool('checkbox', 'writeautosub', false);
  allsubs.Checked := INI.ReadBool('checkbox', 'allsubs', false);
  subformat.Checked := INI.ReadBool('checkbox', 'subformat', false);
  sublang.Checked := INI.ReadBool('checkbox', 'sublang', false);

  // checkboxes auth
  username.Checked := INI.ReadBool('checkbox', 'username', false);
  password.Checked := INI.ReadBool('checkbox', 'password', false);
  videopassword.Checked := INI.ReadBool('checkbox', 'videopassword', false);
  twofactor.Checked := INI.ReadBool('checkbox', 'twofactor', false);
  netrc.Checked := INI.ReadBool('checkbox', 'netrc', false);
  apmso.Checked := INI.ReadBool('checkbox', 'apmso', false);
  apusername.Checked := INI.ReadBool('checkbox', 'apusername', false);
  appassword.Checked := INI.ReadBool('checkbox', 'appassword', false);

  // checkboxes postprocessing
  extractaudio.Checked := INI.ReadBool('checkbox', 'extractaudio', false);
  audioformat.Checked := INI.ReadBool('checkbox', 'audioformat', false);
  audioquality.Checked := INI.ReadBool('checkbox', 'audioquality', false);
  recodevideo.Checked := INI.ReadBool('checkbox', 'recodevideo', false);
  postprocessorargs.Checked := INI.ReadBool('checkbox',
    'postprocessorargs', false);
  keepvideo.Checked := INI.ReadBool('checkbox', 'keepvideo', false);
  nopostoverwrites.Checked := INI.ReadBool('checkbox',
    'nopostoverwrites', false);
  embedsubs.Checked := INI.ReadBool('checkbox', 'embedsubs', false);
  embedthumbnail.Checked := INI.ReadBool('checkbox', 'embedthumbnail', false);
  addmetadata.Checked := INI.ReadBool('checkbox', 'addmetadata', false);
  metadatafromtitle.Checked := INI.ReadBool('checkbox',
    'metadatafromtitle', false);
  xattrs.Checked := INI.ReadBool('checkbox', 'xattrs', false);
  fixup.Checked := INI.ReadBool('checkbox', 'fixup', false);
  preferaconv.Checked := INI.ReadBool('checkbox', 'preferaconv', false);
  preferffmpeg.Checked := INI.ReadBool('checkbox', 'preferffmpeg', false);
  ffmpeglocation.Checked := INI.ReadBool('checkbox', 'ffmpeglocation', false);
  execcmd.Checked := INI.ReadBool('checkbox', 'execcmd', false);
  convertsubs.Checked := INI.ReadBool('checkbox', 'convertsubs', false);

  // text
  proxyurl_text.Text := INI.ReadString('text', 'proxyurl_text', '');
  sockettimeout_text.Text := INI.ReadString('text', 'sockettimeout_text', '');
  sourceaddress_text.Text := INI.ReadString('text', 'sourceaddress_text', '');
  geoverificationproxy_text.Text := INI.ReadString('text',
    'geoverificationproxy_text', '');

  playliststart_text.Text := INI.ReadString('text', 'playliststart_text', '');
  playlistend_text.Text := INI.ReadString('text', 'playlistend_text', '');
  playlistitems_text.Text := INI.ReadString('text', 'playlistitems_text', '');
  matchtitle_text.Text := INI.ReadString('text', 'matchtitle_text', '');
  rejecttitle_text.Text := INI.ReadString('text', 'rejecttitle_text', '');
  maxdownloads_text.Text := INI.ReadString('text', 'maxdownloads_text', '');
  minfilesize_text.Text := INI.ReadString('text', 'minfilesize_text', '');
  maxfilesize_text.Text := INI.ReadString('text', 'maxfilesize_text', '');
  date_text.Text := INI.ReadString('text', 'date_text', '');
  datebefore_text.Text := INI.ReadString('text', 'datebefore_text', '');
  dateafter_text.Text := INI.ReadString('text', 'dateafter_text', '');
  minviews_text.Text := INI.ReadString('text', 'minviews_text', '');
  maxviews_text.Text := INI.ReadString('text', 'maxviews_text', '');
  matchfilter_text.Text := INI.ReadString('text', 'matchfilter_text', '');
  agelimit_text.Text := INI.ReadString('text', 'agelimit_text', '');

  limitrate_text.Text := INI.ReadString('text', 'limitrate_text', '');
  retries_text.Text := INI.ReadString('text', 'retries_text', '');
  fragmentretries_text.Text := INI.ReadString('text',
    'fragmentretries_text', '');
  buffersize_text.Text := INI.ReadString('text', 'buffersize_text', '');
  externaldownloadercmd_text.Text := INI.ReadString('text',
    'externaldownloadercmd_text', '');
  externaldownloaderargs_text.Text := INI.ReadString('text',
    'externaldownloaderargs_text', '');

  outputtemplate_text.Text := INI.ReadString('text', 'outputtemplate_text', '');
  autonumbersize_text.Text := INI.ReadString('text', 'autonumbersize_text', '');
  titledeprecated_text.Text := INI.ReadString('text',
    'titledeprecated_text', '');
  literaldeprecated_text.Text := INI.ReadString('text',
    'literaldeprecated_text', '');

  encoding_text.Text := INI.ReadString('text', 'encoding_text', '');
  referer_text.Text := INI.ReadString('text', 'referer_text', '');
  useragent_text.Text := INI.ReadString('text', 'useragent_text', '');
  addheader_text.Text := INI.ReadString('text', 'addheader_text', '');
  sleepinterval_text.Text := INI.ReadString('text', 'sleepinterval_text', '');

  format_text.Text := INI.ReadString('text', 'format_text', '');
  mergeoutputformat_text.Text := INI.ReadString('text',
    'mergeoutputformat_text', '');
  subformat_text.Text := INI.ReadString('text', 'subformat_text', '');
  sublang_text.Text := INI.ReadString('text', 'sublang_text', '');

  username_text.Text := INI.ReadString('text', 'username_text', '');
  password_text.Text := INI.ReadString('text', 'password_text', '');
  twofactor_text.Text := INI.ReadString('text', 'twofactor_text', '');
  videopassword_text.Text := INI.ReadString('text', 'videopassword_text', '');
  apmso_text.Text := INI.ReadString('text', 'apmso_text', '');
  apusername_text.Text := INI.ReadString('text', 'apusername_text', '');
  appassword_text.Text := INI.ReadString('text', 'appassword_text', '');

  audioformat_text.Text := INI.ReadString('text', 'audioformat_text', '');
  audioquality_text.Text := INI.ReadString('text', 'audioquality_text', '');
  recodevideo_text.Text := INI.ReadString('text', 'recodevideo_text', '');
  postprocessorargs_text.Text := INI.ReadString('text',
    'postprocessorargs_text', '');
  metadatafromtitle_text.Text := INI.ReadString('text',
    'metadatafromtitle_text', '');
  fixup_text.Text := INI.ReadString('text', 'fixup_text', '');
  execcmd_text.Text := INI.ReadString('text', 'execcmd_text', '');
  convertsubs_text.Text := INI.ReadString('text', 'convertsubs_text', '');

  // strings
  OpenDialogForDownloadDir := INI.ReadString('text',
    'OpenDialogForDownloadDir', '');
  OpenDialogForDownloadDir2 := INI.ReadString('text',
    'OpenDialogForDownloadDir2', '');

  OpenDialogForFFmpegFile := INI.ReadString('text',
    'OpenDialogForFFmpegFile', '');
  if OpenDialogForFFmpegFile = '' then
  else
    SetLocations(false, true, false);

  OpenDialogForArchiveFile := INI.ReadString('text',
    'OpenDialogForArchiveFile', '');
  if OpenDialogForArchiveFile = '' then
  else
    downloadarchivefile.Caption := 'DONE';

  OpenDialogForJsonFile := INI.ReadString('text', 'OpenDialogForJsonFile', '');
  if OpenDialogForJsonFile = '' then
  else
    selectjsonfile.Caption := 'DONE';

  OpenDialogForBatchFile := INI.ReadString('text',
    'OpenDialogForBatchFile', '');
  if OpenDialogForBatchFile = '' then
  else
    selectbatchfile.Caption := 'BATCH FILE SELECTED';

  OpenDialogForCacheDir := INI.ReadString('text', 'OpenDialogForCacheDir', '');
  if OpenDialogForCacheDir = '' then
  else
    selectcachedir.Caption := 'DONE';

  INI.Free;
end;


// Reset all settings
// Resets all settings of procedure
procedure TForm1.ResetAll(keepurl: boolean);
begin
LogWindow.LogAdd('[SCRIPT] ResetAll: Running settings reset');
  // edits:
  if keepurl = false then
  begin
    proxyurl_text.Clear;
    sockettimeout_text.Clear;
    sourceaddress_text.Clear;
    geoverificationproxy_text.Clear;
    playliststart_text.Clear;
    playlistend_text.Clear;
    playlistitems_text.Clear;
    matchtitle_text.Clear;
    rejecttitle_text.Clear;
    maxdownloads_text.Clear;
    minfilesize_text.Clear;
    maxfilesize_text.Clear;
    date_text.Clear;
    datebefore_text.Clear;
    dateafter_text.Clear;
    matchfilter_text.Clear;
    agelimit_text.Clear;
    maxviews_text.Clear;
    minviews_text.Clear;
    limitrate_text.Clear;
    retries_text.Clear;
    fragmentretries_text.Clear;
    buffersize_text.Clear;
    externaldownloadercmd_text.Clear;
    externaldownloaderargs_text.Clear;
    encoding_text.Clear;
    addheader_text.Clear;
    sleepinterval_text.Clear;
    format_text.Clear;
    mergeoutputformat_text.Clear;
    username_text.Clear;
    twofactor_text.Clear;
    videopassword_text.Clear;
    password_text.Clear;
    subformat_text.Clear;
    sublang_text.Clear;
    audioformat_text.Clear;
    audioquality_text.Clear;
    recodevideo_text.Clear;
    postprocessorargs_text.Clear;
    metadatafromtitle_text.Clear;
    fixup_text.Clear;
    convertsubs_text.Clear;
    execcmd_text.Clear;
    outputtemplate_text.Clear;
    autonumbersize_text.Clear;
    titledeprecated_text.Clear;
    literaldeprecated_text.Clear;
    referer_text.Clear;
  end;

  // occassionally lol
  SetPasswordFree := false;
//  PathToYoutubedl := 'youtube-dl ';

  LogWindow.LogAdd('[SCRIPT] ResetAll: Reconfiguring locations');
  OpenDialogForDownloadDir := '';
  OpenDialogForDownloadDir2 := '';

//  OpenDialogForFFmpegFile := '';
//  ffmpeglocationbt.Caption := 'PATH';

  OpenDialogForArchiveFile := '';
  downloadarchivefile.Caption := 'FILE';

  OpenDialogForJsonFile := '';
  selectjsonfile.Caption := 'SELECT';

  OpenDialogForBatchFile := '';
  selectbatchfile.Caption := 'SELECT BATCH FILE';

  OpenDialogForCacheDir := '';
  selectcachedir.Caption := 'SELECT';

  // checkboxes
  abortonerror.Checked := false;
  ignoreerrors.Checked := false;
  ignoreconfig.Checked := false;
  flatplaylist.Checked := false;
  markwatched.Checked := false;
  nomarkwatched.Checked := false;
  callhome.Checked := false;
  nocallhome.Checked := false;

  proxyurl.Checked := false;
  sockettimeout.Checked := false;
  sourceaddress.Checked := false;
  forceipv4.Checked := false;
  forceipv6.Checked := false;
  geoverificationproxy.Checked := false;
  playliststart.Checked := false;
  playlistend.Checked := false;
  playlistitems.Checked := false;
  matchtitle.Checked := false;
  rejecttitle.Checked := false;
  maxdownloads.Checked := false;
  minfilesize.Checked := false;
  maxfilesize.Checked := false;
  date.Checked := false;
  datebefore.Checked := false;
  dateafter.Checked := false;
  minviews.Checked := false;
  maxviews.Checked := false;
  matchfilter.Checked := false;
  agelimit.Checked := false;
  downloadarchive.Checked := false;
  noplaylist.Checked := false;
  yesplaylist.Checked := false;
  includeads.Checked := false;

  limitrate.Checked := false;
  retries.Checked := false;
  fragmentretries.Checked := false;
  buffersize.Checked := false;
  noresizebuffer.Checked := false;
  playlistreverse.Checked := false;
  xattrsetfilesize.Checked := false;
  externaldownloadercmd.Checked := false;
  externaldownloaderargs.Checked := false;
  hlsprefernative.Checked := false;
  hlspreferffmpeg.Checked := false;
  hlsusempegts.Checked := false;
  writethumbnail.Checked := false;
  writeallthumbnails.Checked := false;
  listthumbnails.Checked := false;

  batchfile.Checked := false;
  id.Checked := false;
  // outputtemplate.Checked := False;
  autonumbersize.Checked := false;
  restrictfilenames.Checked := false;
  autonumber.Checked := false;
  titledeprecated.Checked := false;
  literaldeprecated.Checked := false;
  loadinfojson.Checked := false;
  nooverwrites.Checked := false;
  continue.Checked := false;
  nocontinue.Checked := false;
  nopart.Checked := false;
  nomtime.Checked := false;
  writedescription.Checked := false;
  writeinfojson.Checked := false;
  writeannotations.Checked := false;
  cachedir.Checked := false;
  rmcachedir.Checked := false;
  nocachedir.Checked := false;

  encoding.Checked := false;
  nocheckcertificate.Checked := false;
  preferinsecure.Checked := false;
  refererurl.Checked := false;
  addheader.Checked := false;
  bidiworkaround.Checked := false;
  sleepinterval.Checked := false;

  format.Checked := false;
  allformats.Checked := false;
  preferfreeformats.Checked := false;
  youtubeskipdashmanifest.Checked := false;
  mergeoutputformat.Checked := false;
  writesub.Checked := false;
  writeautosub.Checked := false;
  allsubs.Checked := false;
  subformat.Checked := false;
  sublang.Checked := false;

  username.Checked := false;
  password.Checked := false;
  twofactor.Checked := false;
  videopassword.Checked := false;
  netrc.Checked := false;

  extractaudio.Checked := false;
  audioformat.Checked := false;
  audioquality.Checked := false;
  recodevideo.Checked := false;
  postprocessorargs.Checked := false;
  keepvideo.Checked := false;
  nopostoverwrites.Checked := false;
  embedsubs.Checked := false;
  embedthumbnail.Checked := false;
  addmetadata.Checked := false;
  metadatafromtitle.Checked := false;
  xattrs.Checked := false;
  fixup.Checked := false;
  preferaconv.Checked := false;
  preferffmpeg.Checked := false;
//  ffmpeglocation.Checked := false;
  execcmd.Checked := false;
  convertsubs.Checked := false;

  LessStatus := 'Settings resetted.';
  LogWindow.LogAdd('[SCRIPT] ResetAll: Finished');
end;

procedure TForm1.GeneratePostProcessing;
begin

  if extractaudio.Checked then
    General := General + '--extract-audio ';

  if audioformat.Checked then
    General := General + '--audio-format "' + audioformat_text.Text + '" ';

  if audioquality.Checked then
    General := General + '--audio-quality "' + audioquality_text.Text + '" ';

  if recodevideo.Checked then
    General := General + '--recode-video "' + recodevideo_text.Text + '" ';

  if postprocessorargs.Checked then
    General := General + '--postprocessor-args "' +
      postprocessorargs_text.Text + '" ';

  if keepvideo.Checked then
    General := General + '--keep-video ';

  if nopostoverwrites.Checked then
    General := General + '--no-post-overwrites ';

  if embedsubs.Checked then
    General := General + '--embed-subs ';

  if embedthumbnail.Checked then
    General := General + '--embed-thumbnail ';

  if addmetadata.Checked then
    General := General + '--add-metadata ';

  if metadatafromtitle.Checked then
    General := General + '--metadata-from-title "' +
      metadatafromtitle_text.Text + '" ';

  if xattrs.Checked then
    General := General + '--xattrs ';

  if fixup.Checked then
    General := General + '--fixup "' + fixup_text.Text + '" ';

  if preferaconv.Checked then
    General := General + '--prefer-aconv ';

  if preferffmpeg.Checked then
    General := General + '--prefer-ffmpeg ';

  if ffmpeglocation.Checked then
    General := General + '--ffmpeg-location "' + OpenDialogForFFmpegFile + '" ';

  if execcmd.Checked then
    General := General + '--exec-cmd "' + execcmd_text.Text + '" ';

  if convertsubs.Checked then
    General := General + '--convert-subs "' + convertsubs_text.Text + '" ';

end;

procedure TForm1.GenerateAuth;
begin

  if username.Checked then
    General := General + '--username "' + username_text.Text + '" ';

  if password.Checked then
  begin
    if SetPasswordFree = True then
      General := General + '--password "' + password_text.Text + '" '
    else
      General := General + '--password **** ';
  end;

  if twofactor.Checked then
    General := General + '--two-factor "' + twofactor_text.Text + '" ';

  if videopassword.Checked then
    General := General + '--video-password "' + videopassword_text.Text + '" ';

  if netrc.Checked then
    General := General + '--netrc ';

  if apmso.Checked then
    General := General + '--ap-mso "' + apmso_text.Text + '" ';

  if apusername.Checked then
    General := General + '--ap-username "' + apusername_text.Text + '" ';

  if appassword.Checked then
  begin
    if SetPasswordFree = True then
      General := General + '--ap-password "' + appassword_text.Text + '" '
    else
      General := General + '--ap-password **** ';
  end;

end;

procedure TForm1.GenerateFormatSubs;
begin
  if format.Checked then
    General := General + '--format "' + format_text.Text + '" ';

  if allformats.Checked then
    General := General + '--all-formats ';

  if preferfreeformats.Checked then
    General := General + '--prefer-free-formats ';

  if youtubeskipdashmanifest.Checked then
    General := General + '--youtube-skip-dash-manifest ';

  if mergeoutputformat.Checked then
    General := General + '--merge-output-format "' +
      mergeoutputformat_text.Text + '" ';

  if writesub.Checked then
    General := General + '--write-sub ';

  if writeautosub.Checked then
    General := General + '--write-auto-sub ';

  if allsubs.Checked then
    General := General + '--all-subs ';

  if subformat.Checked then
    General := General + '--sub-format "' + subformat_text.Text + '" ';

  if sublang.Checked then
    General := General + '--sub-lang "' + sublang_text.Text + '" ';

end;

procedure TForm1.GenerateWorkarounds;
begin

  if encoding.Checked then
    General := General + '--encoding "' + encoding_text.Text + '" ';

  if nocheckcertificate.Checked then
    General := General + '--no-check-certificate ';

  if preferinsecure.Checked then
    General := General + '--prefer-insecure ';

  if useragent.Checked then
    General := General + '--user-agent "' + useragent_text.Text + '" ';

  if refererurl.Checked then
    General := General + '--referer "' + referer_text.Text + '" ';

  if addheader.Checked then
    General := General + '--add-header "' + addheader_text.Text + '" ';

  if bidiworkaround.Checked then
    General := General + '--bidi-workaround ';

  if sleepinterval.Checked then
    General := General + '--sleep-interval "' + sleepinterval_text.Text + '" ';

end;

procedure TForm1.geoverificationproxyMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  LessStatus := 'Use this proxy to verify the IP address for ' +
    'some geo-restricted sites. ';
end;

procedure TForm1.GoogleBot1Click(Sender: TObject);
begin
useragent_text.Text := 'Googlebot/2.1 (+http://www.google.com/bot.html)';
end;

procedure TForm1.hlspreferffmpegMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  LessStatus := 'Prefer ffmpeg HLS.';
end;

procedure TForm1.hlsprefernativeMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  LessStatus := 'Prefer native HLS.';
end;

procedure TForm1.hlsusempegtsMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  LessStatus := 'Use mpegts for HLS.';
end;

procedure TForm1.ignoreconfigMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  LessStatus := 'Ignores config in AppData.';
end;

procedure TForm1.ignoreerrorsMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  LessStatus := 'Does NOT abort after error occured.';
end;

procedure TForm1.limitrateMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  LessStatus := 'Limit rate in FPS.';
end;

procedure TForm1.listthumbnailsMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  LessStatus := 'List all thumbnails to download.';
end;

procedure TForm1.m4a1Click(Sender: TObject);
begin
  audioformat_text.Text := 'm4a';
end;

procedure TForm1.markwatchedClick(Sender: TObject);
begin
  if markwatched.Checked and nomarkwatched.Checked then
    MessageBox(handle,
      'Just decide! Watched, or not watched: --no-mark-watched and --mark-watched checked both!',
      'Warning', MB_OK + MB_ICONWARNING);
end;

procedure TForm1.markwatchedMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  LessStatus := 'Marks video as watched when you are logged in.';
end;

procedure TForm1.matchfilterMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  LessStatus := 'Match this filter to download.';
end;

procedure TForm1.matchtitleMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  LessStatus := 'Match this REGEX for title.';
end;

procedure TForm1.maxdownloadsMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  LessStatus := 'Maximum downloads.';
end;

procedure TForm1.maxfilesizeMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  LessStatus := 'Maximal file size.';
end;

procedure TForm1.maxviewsMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  LessStatus := 'Maximal views to start download.';
end;

procedure TForm1.MainCommandMouseLeave(Sender: TObject);
begin
  MouseOverConsole := False;

end;

procedure TForm1.MainCommandMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  MouseOverConsole := True;
end;

procedure TForm1.mergeoutputformat_textClick(Sender: TObject);
var
  pt: tPoint;
begin
  pt := Mouse.CursorPos;
  MergeOutputPopup.Popup(pt.X, pt.Y);
end;

procedure TForm1.minfilesizeMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  LessStatus := 'Minimal file size.';
end;

procedure TForm1.minviewsMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  LessStatus := 'Minimal views to start download.';
end;

procedure TForm1.mkv1Click(Sender: TObject);
begin
  recodevideo_text.Text := 'mkv';
end;

procedure TForm1.mkv2Click(Sender: TObject);
begin
  mergeoutputformat_text.Text := 'mkv';
end;

procedure TForm1.mp31Click(Sender: TObject);
begin
  audioformat_text.Text := 'mp3';
end;

procedure TForm1.mp32Click(Sender: TObject);
begin
  mergeoutputformat_text.Text := 'mp4';
end;

procedure TForm1.mp41Click(Sender: TObject);
begin
  recodevideo_text.Text := 'mp4';
end;

procedure TForm1.msolistbtClick(Sender: TObject);
begin
Form9.Show;
end;

procedure TForm1.N0better1Click(Sender: TObject);
begin
  audioquality_text.Text := '0';
end;

procedure TForm1.N11Click(Sender: TObject);
begin
  audioquality_text.Text := '1';
end;

procedure TForm1.N128Kbps1Click(Sender: TObject);
begin
  audioquality_text.Text := '128K';
end;

procedure TForm1.N21Click(Sender: TObject);
begin
  audioquality_text.Text := '2';
end;

procedure TForm1.N256kbps1Click(Sender: TObject);
begin
  audioquality_text.Text := '256K';
end;

procedure TForm1.N31Click(Sender: TObject);
begin
  audioquality_text.Text := '3';
end;

procedure TForm1.N320kbps1Click(Sender: TObject);
begin
  audioquality_text.Text := '320K';
end;

procedure TForm1.N41Click(Sender: TObject);
begin
  audioquality_text.Text := '4';
end;

procedure TForm1.N51Click(Sender: TObject);
begin
  audioquality_text.Text := '5';
end;

procedure TForm1.N61Click(Sender: TObject);
begin
  audioquality_text.Text := '6';
end;

procedure TForm1.N71Click(Sender: TObject);
begin
  audioquality_text.Text := '7';
end;

procedure TForm1.N81Click(Sender: TObject);
begin
  audioquality_text.Text := '8';
end;

procedure TForm1.N91Click(Sender: TObject);
begin
  audioquality_text.Text := '9';
end;

procedure TForm1.never1Click(Sender: TObject);
begin
  fixup_text.Text := 'never';
end;

procedure TForm1.nocallhomeClick(Sender: TObject);
begin
  if callhome.Checked and nocallhome.Checked then
    MessageBox(handle,
      'Hey, I cant decide if I can call my mom! --call-home and --no-call-home are checked!',
      'Warning', MB_OK + MB_ICONWARNING);

end;

procedure TForm1.nocallhomeMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  LessStatus := 'Debug is off :(';
end;

procedure TForm1.nomarkwatchedClick(Sender: TObject);
begin
  if markwatched.Checked and nomarkwatched.Checked then
    MessageBox(handle,
      'Just decide! Watched, or not watched: --no-mark-watched and --mark-watched checked both!',
      'Warning', MB_OK + MB_ICONWARNING);
end;

procedure TForm1.nomarkwatchedMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  LessStatus :=
    'Does not mark video as watched when you are logged in.';
end;

procedure TForm1.noplaylistClick(Sender: TObject);
begin
  if noplaylist.Checked and yesplaylist.Checked then
    MessageBox(handle,
      'Playlist... or no playlist? That is the question! --yes-playlist and --no-playlist checked both!',
      'Warning', MB_OK + MB_ICONWARNING);
end;

procedure TForm1.noresizebufferMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  LessStatus := 'Do not resize buffer.';
end;

procedure TForm1.ogg1Click(Sender: TObject);
begin
  recodevideo_text.Text := 'ogg';
end;

procedure TForm1.ogg2Click(Sender: TObject);
begin
  mergeoutputformat_text.Text := 'ogg';
end;

procedure TForm1.Opera9801Click(Sender: TObject);
begin
useragent_text.Text := 'Opera/9.80 (X11; Linux i686; Ubuntu/14.10) Presto/2.12.388 Version/12.16';
end;

procedure TForm1.opus1Click(Sender: TObject);
begin
  audioformat_text.Text := 'opus';
end;

procedure TForm1.PageControlMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  LessStatus := '';
end;

procedure TForm1.Pasteaddtoqueue1Click(Sender: TObject);
begin
LogWindow.LogAdd('Add to queue clicked from menu');
videoURL.Text := Clipboard.AsText;
Form7.AddItemToDownload(videourl.Text, ' --newline ' + General + '"' + videourl.Text + '"');
LessStatus := 'Added pasted URL to queue!';
end;

procedure TForm1.Pasteonly1Click(Sender: TObject);
begin
videoURL.Text := Clipboard.AsText;
end;

procedure TForm1.playlistendMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  LessStatus := 'Playlist index to end.';
end;

procedure TForm1.playlistitemsMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  LessStatus := 'Define items to download.';
end;

procedure TForm1.playlistreverseMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  LessStatus := 'Download playlist in reverse mode.';
end;

procedure TForm1.playliststartMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  LessStatus := 'Playlist index to start.';
end;

procedure TForm1.proxyurlMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  LessStatus :=
    'Use the specified HTTP/HTTPS/SOCKS proxy. To enable experimental SOCKS proxy, specify a proper scheme.';
end;

procedure TForm1.GenerateFilesystem;
begin

  if batchfile.Checked then
    General := General + '--batch-file "' + OpenDialogForBatchFile + '" ';

  if id.Checked then
    General := General + '--id ';
  // let's see if this works
  // if outputtemplate.Checked then
  if outputtemplate_text.Text = '' then
    General := General + '--output "' + SlashCheck(Path.Text) + '%(title)s.%(ext)s" '
  else
    General := General + '--output "' + SlashCheck(Path.Text) +
      outputtemplate_text.Text + '" ';

  if autonumbersize.Checked then
    General := General + '--autonumber-size "' +
      autonumbersize_text.Text + '" ';

  if restrictfilenames.Checked then
    General := General + '--restrict-filenames ';

  if autonumber.Checked then
    General := General + '--auto-number ';

  if titledeprecated.Checked then
    General := General + '--title "' + titledeprecated_text.Text + '" ';

  if literaldeprecated.Checked then
    General := General + '--literal "' + literaldeprecated_text.Text + '" ';

  if loadinfojson.Checked then
    General := General + '--load-info-json "' + OpenDialogForJsonFile + '" ';

  if cachedir.Checked then
    General := General + '--cache-dir "' + OpenDialogForCacheDir + '" ';

  if nocachedir.Checked then
    General := General + '--no-cache-dir ';

  if rmcachedir.Checked then
    General := General + '--rm-cache-dir ';

  if nooverwrites.Checked then
    General := General + '--no-overwrites ';

  if continue.Checked then
    General := General + '--continue ';

  if nocontinue.Checked then
    General := General + '--no-continue ';

  if nopart.Checked then
    General := General + '--no-part ';

  if nomtime.Checked then
    General := General + '--no-mtime ';

  if writedescription.Checked then
    General := General + '--write-description ';

  if writeinfojson.Checked then
    General := General + '--write-info-json ';

  if writeannotations.Checked then
    General := General + '--write-annotations ';

end;

procedure TForm1.GenerateDownload;
begin
  if limitrate.Checked then
    General := General + '--limit-rate "' + limitrate_text.Text + '" ';

  if retries.Checked then
    General := General + '--retries "' + retries_text.Text + '" ';

  if fragmentretries.Checked then
    General := General + '--fragment-retries "' +
      fragmentretries_text.Text + '" ';

  if buffersize.Checked then
    General := General + '--buffer-size "' + buffersize_text.Text + '" ';

  if noresizebuffer.Checked then
    General := General + '--no-resize-buffer ';

  if playlistreverse.Checked then
    General := General + '--playlist-reverse ';

  if xattrsetfilesize.Checked then
    General := General + '--xattr-set-filesize ';

  if externaldownloadercmd.Checked then
    General := General + '--external-downloader "' +
      externaldownloadercmd_text.Text + '" ';

  if externaldownloaderargs.Checked then
    General := General + '--external-downloader-args "' +
      externaldownloaderargs_text.Text + '" ';

  if hlsprefernative.Checked then
    General := General + '--hls-prefer-native ';

  if hlspreferffmpeg.Checked then
    General := General + '--hls-prefer-ffmpeg ';

  if hlsusempegts.Checked then
    General := General + '--hls-use-mpegts ';

  if writethumbnail.Checked then
    General := General + '--write-thumbnail ';

  if writeallthumbnails.Checked then
    General := General + '--write-all-thumbnails ';

  if listthumbnails.Checked then
    General := General + '--list-thumbnails ';
end;

procedure TForm1.GenerateVideoSelection;
begin
  if playliststart.Checked then
    General := General + '--playlist-start "' + playliststart_text.Text + '" ';

  if playlistend.Checked then
    General := General + '--playlist-end "' + playlistend_text.Text + '" ';

  if playlistitems.Checked then
    General := General + '--playlist-items "' + playlistitems_text.Text + '" ';

  if matchtitle.Checked then
    General := General + '--match-title "' + matchtitle_text.Text + '" ';

  if rejecttitle.Checked then
    General := General + '--reject-title "' + rejecttitle_text.Text + '" ';

  if maxdownloads.Checked then
    General := General + '--max-downloads "' + maxdownloads_text.Text + '" ';

  if minfilesize.Checked then
    General := General + '--min-filesize "' + minfilesize_text.Text + '" ';

  if maxfilesize.Checked then
    General := General + '--max-filesize "' + maxfilesize_text.Text + '" ';

  if date.Checked then
    General := General + '--date "' + date_text.Text + '" ';

  if datebefore.Checked then
    General := General + '--date-before "' + datebefore_text.Text + '" ';

  if dateafter.Checked then
    General := General + '--date-after "' + dateafter_text.Text + '" ';

  if minviews.Checked then
    General := General + '--min-views "' + minviews_text.Text + '" ';

  if maxviews.Checked then
    General := General + '--max-views "' + maxviews_text.Text + '" ';

  if matchfilter.Checked then
    General := General + '--match-filter "' + matchfilter_text.Text + '" ';

  if agelimit.Checked then
    General := General + '--age-limit "' + agelimit_text.Text + '" ';

  if downloadarchive.Checked then
    General := General + '--download-archive "' +
      OpenDialogForArchiveFile + '" ';

  if noplaylist.Checked then
    General := General + '--no-playlist ';

  if yesplaylist.Checked then
    General := General + '--yes-playlist ';

  if includeads.Checked then
    General := General + '--include-ads ';

end;

procedure TForm1.selectbatchfileClick(Sender: TObject);
begin
  OpenDialogForBatch := TOpenDialog.Create(self);
  OpenDialogForBatch.InitialDir := GetCurrentDir;
  OpenDialogForBatch.Options := [ofFileMustExist];
  OpenDialogForBatch.Filter := 'Everything|*.*';
  if OpenDialogForBatch.Execute then
  begin
    OpenDialogForBatchFile := OpenDialogForBatch.FileName;
    selectbatchfile.Caption := 'SELECTED [CLICK TO CHANGE]';
  end
  else
  begin
    MessageBox(handle, 'Warning: You cancelled file selection!', 'Warning',
      MB_OK + MB_ICONWARNING);
    selectbatchfile.Caption := 'SELECT BATCH FILE';
  end;
end;

procedure TForm1.selectcachedirClick(Sender: TObject);
begin
  if SelectDirectory('Select directory for --cache-dir', '',
    OpenDialogForCacheDir) then
    selectcachedir.Caption := 'SELECTED!'
  else
  begin
    MessageBox(handle, 'Warning: You cancelled directory selection!', 'Warning',
      MB_OK + MB_ICONWARNING);
    selectcachedir.Caption := 'SELECT';
  end;
end;

procedure TForm1.selectjsonfileClick(Sender: TObject);
begin
  OpenDialogForJson := TOpenDialog.Create(self);
  OpenDialogForJson.InitialDir := GetCurrentDir;
  OpenDialogForJson.Options := [ofFileMustExist];
  OpenDialogForJson.Filter := 'Everything|*.*';
  if OpenDialogForJson.Execute then
  begin
    OpenDialogForJsonFile := OpenDialogForJson.FileName;
    selectjsonfile.Caption := 'SELECTED!';
  end
  else
  begin
    MessageBox(handle, 'Warning: You cancelled file selection!', 'Warning',
      MB_OK + MB_ICONWARNING);
    selectjsonfile.Caption := 'SELECT';
  end;
end;

procedure TForm1.sockettimeoutMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  LessStatus := 'Time to wait before giving up, in seconds';
end;

procedure TForm1.sockettimeout_textChange(Sender: TObject);
begin
  ConvertShitFromMinutesToSeconds.Enabled := True;
end;

procedure TForm1.sourceaddressMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  LessStatus := 'Client-side IP address to bind to';
end;

procedure TForm1.srt1Click(Sender: TObject);
begin
  convertsubs_text.Text := 'srt';
end;

procedure TForm1.srt2Click(Sender: TObject);
begin
  subformat_text.Text := 'srt';
end;

procedure TForm1.stoprefreshMouseLeave(Sender: TObject);
begin
  MouseOverConsole := false;
end;

procedure TForm1.subformat_textClick(Sender: TObject);
var
  pt: tPoint;
begin
  pt := Mouse.CursorPos;
  SubFormatPopup.Popup(pt.X, pt.Y);
end;

procedure TForm1.GenerateGeneral();
begin
  if abortonerror.Checked then
    General := General + '--abort-on-error ';

  if ignoreconfig.Checked then
    General := General + '--ignore-config ';

  if ignoreerrors.Checked then
    General := General + '--ignore-errors ';

  if flatplaylist.Checked then
    General := General + '--flat-playlist ';

  if markwatched.Checked then
    General := General + '--mark-watched ';

  if nomarkwatched.Checked then
    General := General + '--no-mark-watched ';

  if callhome.Checked then
    General := General + '--call-home ';

  if nocallhome.Checked then
    General := General + '--no-call-home ';
end;

procedure TForm1.GenerateProxy;
begin
  if proxyurl.Checked then
    General := General + '--proxy "' + proxyurl_text.Text + '" ';

  if sockettimeout.Checked then
    General := General + '--socket-timeout "' + sockettimeout_text.Text + '" ';

  if sourceaddress.Checked then
    General := General + '--source-address "' + sourceaddress_text.Text + '" ';

  if forceipv4.Checked then
    General := General + '--force-ipv4 ';

  if forceipv6.Checked then
    General := General + '--force-ipv6 ';

  if geoverificationproxy.Checked then
    General := General + '--geo-verification-proxy' + ' "' +
      geoverificationproxy_text.Text + '" ';

end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  // PathtoYoutubedl := 'youtube-dl '; // prowizorka w pizdu

  General := ''; // first of all XD

  GenerateGeneral;
  GenerateProxy;
  GenerateVideoSelection;
  GenerateDownload;
  GenerateFilesystem;
  GenerateWorkarounds;
  GenerateFormatSubs;
  GenerateAuth;
  GeneratePostProcessing;

  if (Form6.DontRefresh.Checked) and (MouseOverConsole) then
  // nic
  else
  begin
  MainCommand.Clear;
  MainCommand.Lines.Add('"' + PathToYoutubedl + '" ' + General + '"' + videourl.Text + '"');
  end;

  if not CopyURL.Enabled then
  begin
    Clipboard.AsText := MainCommand.Text;
    CopyURL.Enabled := True;
    SetPasswordFree := false;
  end;

end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
// ## AKTUALIZACJA STATUSU APLIKACJI
{StatusBar1.StyleElements := StatusBar1.StyleElements - [seClient];
Application.ProcessMessages;
StatusBar1.Panels[1].Text := Status;
Application.ProcessMessages;
StatusBar1.StyleElements := StatusBar1.StyleElements + [seClient];
Application.ProcessMessages;
StatusBar1.Update;}
end;

procedure TForm1.Timer3Timer(Sender: TObject);
begin
if QueueForm.QueueRunning then
begin
  LessStatus := 'Processing: ' + IntToStr(LeftItemsGlobal) + '/' + IntToStr(Form7.QueueList.Count) + ' [Queue mode]';
end
else
if RunOnceRunning then
  begin
    Processing := True;
    LessStatus := 'Processing: 1/1 [RunOnce mode]';
  end
  else
  begin
    if not Processing then LessStatus := 'Advanced report: doing absolutely nothing.';
  end;
end;

procedure TForm1.updatebuttonClick(Sender: TObject);
begin
Processing := True;
LogWindow.LogAdd('[SCRIPT] Update: Running');
LessStatus := 'Running update of YouTube-DL';
LockDownload;
LogWindow.LogAdd('[SCRIPT] Update: ConsoleInWindowedMode = ' + BoolToStr(ConsoleInWindowedMode));
if ConsoleInWindowedMode then
begin
  ConsoleSheet.Show;
  ConsoleInApp.Lines.Clear;
  ConsoleInApp.Lines.Add('Command send! Waiting for youtube-dl to react: ');
  LogWindow.LogAdd('[SCRIPT] Update: youtube-dl --update');
  Form5.RunDosInMemo(PathToYoutubedl, '--update',
    procedure(const Line: PAnsiChar)
    begin
      ConsoleInApp.Lines.Add(String(Line));
    end);
end else
begin
  Form5.Show;
  Form5.Memo1.Lines.Clear;
  Form5.Memo1.Lines.Add('Command send! Waiting for youtube-dl to react: ');
  LogWindow.LogAdd('[SCRIPT] Update: youtube-dl --update');
  Form5.RunDosInMemo(PathToYoutubedl, '--update',
    procedure(const Line: PAnsiChar)
    begin
      Form5.Memo1.Lines.Add(String(Line));
    end);
end;
UnlockDownload;
MainConsoleMessager('End of update', true);
LogWindow.LogAdd('[SCRIPT] Update: Process exited');
LessStatus := 'Ready';
Processing := True;
end;

procedure TForm1.useragent_textClick(Sender: TObject);
var
  pt: tPoint;
begin
  pt := Mouse.CursorPos;
  UserAgentMenu.Popup(pt.X, pt.Y);
end;

procedure TForm1.versionbuttonClick(Sender: TObject);
begin
Processing := True;
LogWindow.LogAdd('[SCRIPT] Version: Running');
LessStatus := 'Checking version of YouTube-Dl';
LockDownload;
if ConsoleInWindowedMode then
begin
  ConsoleSheet.Show;
  ConsoleInApp.Lines.Clear;
  ConsoleInApp.Lines.Add('youtube-dl --version: ');
  LogWindow.LogAdd('[SCRIPT] Version: youtube-dl --version');
  Form5.RunDosInMemo(PathToYoutubedl, '--version',
    procedure(const Line: PAnsiChar)
    begin
      ConsoleInApp.Lines.Add(String(Line));
    end);
end else
begin
  Form5.Show;
  Form5.Memo1.Lines.Clear;
  Form5.Memo1.Lines.Add('youtube-dl --version: ');
  LogWindow.LogAdd('[SCRIPT] Version: youtube-dl --version');
  Form5.RunDosInMemo(PathToYoutubedl, '--version',
    procedure(const Line: PAnsiChar)
    begin
      Form5.Memo1.Lines.Add(String(Line));
    end);
end;
MainConsoleMessager('End of version checking', true);
LogWindow.LogAdd('[SCRIPT] Version: Process exited');
Processing := False;
LessStatus := 'Ready.';
UnlockDownload;

end;

procedure TForm1.videocheckClick(Sender: TObject);
begin
  LogWindow.LogAdd('[SCRIPT] VideoCheck: Running');
  if videourl.Text = '' then
  begin
    MessageBox(handle, 'What to check? Where is URL?!', 'Fatal error',
      MB_OK + MB_ICONERROR);
    LogWindow.LogAdd('[SCRIPT] VideoCheck: Error: Null_URL');
    Exit;
  end;
  Processing := True;
  LessStatus := 'Checking URL';
  if ConsoleInWindowedMode then
  begin
  ConsoleSheet.Show;
  ConsoleInApp.Lines.Clear;
  ConsoleInApp.Lines.Add('Check: ' + videoURL.Text);
  LogWindow.LogAdd('[SCRIPT] VideoCheck: youtube-dl --list-formats');
  Form5.RunDosInMemo(PathToYoutubedl, '--list-formats ' + '"' +
    videourl.Text + '"',
    procedure(const Line: PAnsiChar)
    begin
      ConsoleInApp.Lines.Add(String(Line));
    end);
  end else
  begin
  Form5.Show;
  Form5.Memo1.Lines.Clear;
  Form5.Memo1.Lines.Add('Check: ' + videoURL.Text);
  LogWindow.LogAdd('[SCRIPT] VideoCheck: youtube-dl --list-formats');
  Form5.RunDosInMemo(PathToYoutubedl, '--list-formats ' + '"' +
    videourl.Text + '"',
    procedure(const Line: PAnsiChar)
    begin
      Form5.Memo1.Lines.Add(String(Line));
    end);
  end;
  LogWindow.LogAdd('[SCRIPT] VideoCheck: Process exited');
  MainConsoleMessager('End of URL check', true);
  LessStatus := 'Ready';
  Processing := False;
end;

procedure TForm1.videourlClick(Sender: TObject);
var
  pt: tPoint;
begin
//if Form6.AutoPasteClipboard.Checked then
//videoURL.Text := Clipboard.AsText;
//
//if Form6.AutoAddQueue.Checked then
//begin
//Form7.AddItemToDownload(videourl.Text, ' --newline ' + General + '"' + videourl.Text + '"');
//LessStatus := 'Added pasted URL to queue!';
//end;
if not URLEdit then
begin
  pt := Mouse.CursorPos;
  PasteURLPopup.Popup(pt.X, pt.Y);
end;
end;

procedure TForm1.videourlDblClick(Sender: TObject);
var
  pt: tPoint;
begin
URLEdit := False;
MsgURLEdit := True;
pt := Mouse.CursorPos;
PasteURLPopup.Popup(pt.X, pt.Y);
end;

procedure TForm1.vorbis1Click(Sender: TObject);
begin
  audioformat_text.Text := 'vorbis';
end;

procedure TForm1.vtt1Click(Sender: TObject);
begin
  convertsubs_text.Text := 'vtt';
end;

procedure TForm1.warn1Click(Sender: TObject);
begin
  fixup_text.Text := 'warn';
end;

procedure TForm1.wav1Click(Sender: TObject);
begin
  audioformat_text.Text := 'wav';
end;

procedure TForm1.webm1Click(Sender: TObject);
begin
  recodevideo_text.Text := 'webm';
end;

procedure TForm1.webm2Click(Sender: TObject);
begin
  mergeoutputformat_text.Text := 'webm';
end;

procedure TForm1.WindowsMediaPlayer111Click(Sender: TObject);
begin
useragent_text.Text := 'Windows-Media-Player/11.0.5721.5145';
end;

procedure TForm1.writeallthumbnailsMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  LessStatus := 'Download all thumbnails.';
end;

procedure TForm1.writethumbnailMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  LessStatus := 'Download thumbnail.';
end;

procedure TForm1.xattrsetfilesizeMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   LessStatus := 'Set XATRR filesize.';
end;

procedure TForm1.yesplaylistClick(Sender: TObject);
begin
  if noplaylist.Checked and yesplaylist.Checked then
    MessageBox(handle,
      'Playlist... or no playlist? That is the question! --yes-playlist and --no-playlist checked both!',
      'Warning', MB_OK + MB_ICONWARNING);
end;

procedure TForm1.ffmpeglocationbtClick(Sender: TObject);
begin
Form6.ffbt.Click;
end;

procedure TForm1.Firefox4011Click(Sender: TObject);
begin
useragent_text.Text := 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:40.0) Gecko/20100101 Firefox/40.1';
end;

procedure TForm1.fixup_textClick(Sender: TObject);
var
  pt: tPoint;
begin
  pt := Mouse.CursorPos;
  FIXUPPolicyMenu.Popup(pt.X, pt.Y);
end;

procedure TForm1.flv1Click(Sender: TObject);
begin
  recodevideo_text.Text := 'flv';
end;

procedure TForm1.flv2Click(Sender: TObject);
begin
  mergeoutputformat_text.Text := 'flv';
end;

procedure TForm1.forceipv4Click(Sender: TObject);
begin
  if forceipv4.Checked and forceipv6.Checked then
    MessageBox(handle,
      'Wait... I can force only one! --force-ipv4 and --force-ipv6 - take a look!',
      'Warning', MB_OK + MB_ICONWARNING);

end;

procedure TForm1.forceipv4MouseMove(Sender: TObject; Shift: TShiftState;
X, Y: Integer);
begin
  LessStatus := 'Forces IPV4';
end;

procedure TForm1.forceipv6Click(Sender: TObject);
begin
  if forceipv4.Checked and forceipv6.Checked then
    MessageBox(handle,
      'Wait... I can force only one! --force-ipv4 and --force-ipv6 - take a look!',
      'Warning', MB_OK + MB_ICONWARNING);

end;

procedure TForm1.forceipv6MouseMove(Sender: TObject; Shift: TShiftState;
X, Y: Integer);
begin
  LessStatus := 'Forces IPV6';
end;

procedure TForm1.ConsoleInAppRefreshTimer(Sender: TObject);
begin
//ConsoleInApp.Lines := Form5.Memo1.Lines;
end;

procedure TForm1.ConsoleInWindowClick(Sender: TObject);
begin
if ConsoleInWindow.Checked = True then
begin
ConsoleSheet.TabVisible := True;
ConsoleInWindowedMode := True;
end else
begin
ConsoleSheet.TabVisible := False;
ConsoleInWindowedMode := False;
end;
//////////////////////////////////////////////////////////////////////////////////////////////
end;

procedure TForm1.ConsoleSheetContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
ConsoleinApp.Lines.Add('Please wait, getting data...');
end;

procedure TForm1.ConsoleSheetEnter(Sender: TObject);
begin
ConsoleInAppRefresh.Enabled := True;
end;

procedure TForm1.ConvertShitFromMinutesToSecondsClick(Sender: TObject);
var
  temp: Integer;
begin
  temp := StrToInt(sockettimeout_text.Text);
  temp := temp * 60;
  sockettimeout_text.Text := IntToStr(temp);
  ConvertShitFromMinutesToSeconds.Enabled := false;
end;

procedure TForm1.convertsubs_textClick(Sender: TObject);
var
  pt: tPoint;
begin
  pt := Mouse.CursorPos;
  ConvertSubsPopup.Popup(pt.X, pt.Y);
end;

procedure TForm1.ChangePathOfFFMBtClick(Sender: TObject);
begin
Form6.ffbt.Click;
end;

procedure TForm1.ChangePathOfYTDLBtClick(Sender: TObject);
begin
//  OpenDialogForYTDL := TOpenDialog.Create(self);
//  OpenDialogForYTDL.InitialDir := GetCurrentDir;
//  OpenDialogForYTDL.Options := [ofFileMustExist];
//  OpenDialogForYTDL.Filter := 'youtube-dl|*.*';
//  if OpenDialogForYTDL.Execute then
//
//  begin
//    PathToYoutubedl := OpenDialogForYTDL.FileName;
//    ChangePathOfYTDLBt.Caption := 'Changed!';
//  end
//
//  else
//
//  begin
//    MessageBox(handle, 'Warning: You cancelled path changing!', 'Warning',
//      MB_OK + MB_ICONWARNING);
//    PathToYoutubedl := 'youtube-dl ';
//  end;

Form6.ydbt.Click;
end;

procedure TForm1.ChangePathOfYTDLBtMouseMove(Sender: TObject;
Shift: TShiftState; X, Y: Integer);
begin
  LessStatus := StrMaxLen('[MAIN] Path: ' + PathToYoutubedl, 60);
end;

procedure TForm1.Chrome411Click(Sender: TObject);
begin
useragent_text.Text := 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2228.0 Safari/537.36';
end;

procedure TForm1.aac1Click(Sender: TObject);
begin
  audioformat_text.Text := 'aac';
end;

procedure TForm1.abortonerrorClick(Sender: TObject);
begin
  if abortonerror.Checked and ignoreerrors.Checked then
    MessageBox(handle,
      'Are you serious? --ignore-errors and --abort-on-error checked both!',
      'Warning', MB_OK + MB_ICONWARNING);
end;

procedure TForm1.abortonerrorMouseMove(Sender: TObject; Shift: TShiftState;
X, Y: Integer);
begin
  LessStatus := 'If error, abort. Simply!';
end;

procedure TForm1.AddToQueueBtClick(Sender: TObject);
begin
LogWindow.LogAdd('[SCRIPT] AddToQueue: Checking');
if videourl.Text = '' then
begin
  MessageBox(handle, 'Hello? What to download? Where is URL to video?', 'Fatal error', MB_OK + MB_ICONERROR);
  Status := '[ERROR] No video URL';
  LogWindow.LogAdd('[SCRIPT] AddToQueue: Error: null_url');
  Exit;
end;
if Path.Text = '' then
begin
  MessageBox(handle, 'Where to save it, master? Where!? Check path!',
  'Fatal error', MB_OK + MB_ICONERROR);
  LogWindow.LogAdd('[SCRIPT] AddToQueue: Error: null_path');
  Status := '[ERROR] Specife directory to save';
  Exit;
end;

LogWindow.LogAdd('[SCRIPT] AddToQueue: Running script AddItemToDownload');
Form7.AddItemToDownload(videourl.Text, ' --newline ' + General + '"' + videourl.Text + '"');
//LogWindow.LogAdd('[SCRIPT] AddToQueue: Running script AutoRunQueue');
//Form7.AutoRunQueue.Enabled := True;
//QueueForm.QueueRunning := False;
end;

procedure TForm1.agelimitMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  LessStatus := 'Match above this age to download.';
end;

procedure TForm1.Android4031Click(Sender: TObject);
begin
useragent_text.Text := 'Mozilla/5.0 (Linux; U; Android 4.0.3; ko-kr; LG-L160L Build/IML74K) AppleWebkit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30';
end;

procedure TForm1.AppSettBtClick(Sender: TObject);
begin
  Form6.ShowModal;
end;

procedure TForm1.ass1Click(Sender: TObject);
begin
  convertsubs_text.Text := 'ass';
end;

procedure TForm1.ass2Click(Sender: TObject);
begin
  subformat_text.Text := 'ass';
end;

procedure TForm1.audioformat_textClick(Sender: TObject);
var
  pt: tPoint;
begin
  pt := Mouse.CursorPos;
  AUDIOFORMATPopup.Popup(pt.X, pt.Y);
end;

procedure TForm1.audioquality_textClick(Sender: TObject);
var
  pt: tPoint;
begin
  pt := Mouse.CursorPos;
  AudioQualityPopup.Popup(pt.X, pt.Y);
end;

procedure TForm1.avi1Click(Sender: TObject);
begin
  recodevideo_text.Text := 'avi';
end;

procedure TForm1.best1Click(Sender: TObject);
begin
  audioformat_text.Text := 'best';
end;

procedure TForm1.best2Click(Sender: TObject);
begin
  subformat_text.Text := 'best';
end;

procedure TForm1.BingBot1Click(Sender: TObject);
begin
useragent_text.Text := 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)';
end;

procedure TForm1.buffersizeMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  LessStatus := 'Size of download buffer.';
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
LogWindow.LogAdd('Kill process: youtube-dl.exe');
LessStatus := 'SKIPPING';
Timer3.Enabled := False; // pause status
Form5.KillTaskSender('youtube-dl.exe');
Timer3.Enabled := True; // re-enable status
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
LogWindow.LogAdd('Show this window');
LogWindow.Show;
end;

procedure TForm1.QueueBtClick(Sender: TObject);
begin
LogWindow.LogAdd('Show queue');
Form7.Show;
end;

procedure TForm1.youtubedlhelpbtClick(Sender: TObject);
begin
LogWindow.LogAdd('Show ytdl-help');
Form10.Show;
end;

procedure TForm1.FormatGeneratorBTClick(Sender: TObject);
begin
LogWindow.LogAdd('Show format generator');
  Form3.ShowModal;
end;

procedure TForm1.RUNITBtClick(Sender: TObject);
begin
 // checking...
 LogWindow.LogAdd('[SCRIPT] RunOnce: Checking');
  if videourl.Text = '' then
  begin
    MessageBox(handle, 'Hello? What to download? Where is URL to video?', 'Fatal error', MB_OK + MB_ICONERROR);
    Status := '[ERROR] No video URL';
    LogWindow.LogAdd('[SCRIPT] RunOnce: Error: null_url');
    Exit;
  end;

  if Path.Text = '' then
  begin
    MessageBox(handle, 'Where to save it, master? Where!? Check path!',
     'Fatal error', MB_OK + MB_ICONERROR);
     LogWindow.LogAdd('[SCRIPT] RunOnce: Error: null_path');
    Status := '[ERROR] Specife directory to save';
    Exit;
  end;

  // Form5.location.Text := PathToYoutubedl;
  // Form5.parameters.Text := General + '"' + VideoURL.Text + '"';
  // Form7.QueueList.Items.Add(VideoURL.Text);
  Status := 'Downloading URL';

  // clear lines
  Form5.Memo1.Lines.Clear;
  ConsoleInApp.Lines.Clear;
  LockDownload;

  // message to user that youtube-dl will be runned
  LogWindow.LogAdd('[SCRIPT] RunOnce: Running');
  if ConsoleInWindowedMode = False then
  begin
    Form5.Show;
    Form5.Memo1.Lines.Add('---------------------------------------------');
    Form5.Memo1.Lines.Add('Downloading URL: ' + VideoURL.Text);
    Form5.Memo1.Lines.Add('With settings: ' + General);
    Form5.Memo1.Lines.Add('---------------------------------------------');
  end else
  begin
    ConsoleSheet.Show;
    ConsoleInApp.Lines.Add('---------------------------------------------');
    ConsoleInApp.Lines.Add('Downloading URL: ' + VideoURL.Text);
    ConsoleInApp.Lines.Add('With settings: ' + General);
    ConsoleInApp.Lines.Add('---------------------------------------------');
  end;
  // this is for password
  CopyURL.Enabled := false;
  SetPasswordFree := True;

  // this runs commands
  LogWindow.LogAdd('[SCRIPT] RunOnce: Calling to youtube-dl.exe');
  if ConsoleInWindowedMode = False then
  begin
  Form5.RunDosInMemo(PathToYoutubedl, ' --newline ' + General + '"' +
    videourl.Text + '"',
    procedure(const Line: PAnsiChar)
    begin
      // this writes command effect to memo
      Form5.Memo1.Lines.Add(String(Line));
      Status := String(Line);
    end);
  end else
  begin
  Form5.RunDosInMemo(PathToYoutubedl, ' --newline ' + General + '"' +
    videourl.Text + '"',
    procedure(const Line: PAnsiChar)
    begin
      // this writes command to memo
      ConsoleInApp.Lines.Add(String(Line));
      Status := String(Line);
    end);
  end;

  // after that we check if process exists and if exists we sleep 500ms
  while processExists('youtube-dl.exe') do
    Sleep(500);

  if ConsoleInWindowedMode = False then
  begin
    // now we are saving log: Where-Application-Is-Running\log(Formatted time from 12:34:56 > 12_34_56).txt
    Form5.Memo1.Lines.Add('');
    Form5.Memo1.Lines.Add(MainCommand.Text); // adding command that has been used
    Form5.Memo1.Lines.SaveToFile((ExtractFilePath(Application.ExeName)) + 'log' +
      StringReplace(TimeToStr(Time), ':', '_', [rfReplaceAll]) + '.txt');

    // information to user
    Form5.Memo1.Lines.Add('---------------------------------------------');
    Form5.Memo1.Lines.Add('File downloaded!');
  end else
  begin
    // now we are saving log: Where-Application-Is-Running\log(Formatted time from 12:34:56 > 12_34_56).txt
    ConsoleInApp.Lines.Add('');
    ConsoleInApp.Lines.Add(MainCommand.Text); // adding command that has been used
    ConsoleInApp.Lines.SaveToFile((ExtractFilePath(Application.ExeName)) + 'log' +
      StringReplace(TimeToStr(Time), ':', '_', [rfReplaceAll]) + '.txt');
    // information to user
    ConsoleInApp.Lines.Add('---------------------------------------------');
    ConsoleInApp.Lines.Add('File downloaded!');
  end;
  // 1 second to read information
  UnlockDownload;
  Sleep(1000);

  // and close console
 Form5.Close;
 // then show in status bar that file has been downloaded (with time)
 LessStatus := '[' + TimeToStr(Time) +
 '] Downloaded succesfully, or not. Log: ' + 'log' +
 StringReplace(TimeToStr(Time), ':', '_', [rfReplaceAll]) + '.txt';
 Status := 'Downloaded 1 item';
 LogWindow.LogAdd('[SCRIPT] RunOnce: Finished');
 // and enable hidden password
 CopyURL.Enabled := True;
 SetPasswordFree := false;
end;

procedure TForm1.PathChangeBtClick(Sender: TObject);
begin
  LogWindow.LogAdd('PathChange: Backing up current path');
  OpenDialogForDownloadDir2 := Path.Text;
  LogWindow.LogAdd('PathChange: Running SelectDirectory');
  if SelectDirectory('Select directory for download', '',
    OpenDialogForDownloadDir) then
  begin
    Path.Text := OpenDialogForDownloadDir;
    LogWindow.LogAdd('PathChange: Changed to: ' + Path.Text);
  end
  else
  begin
    MessageBox(handle, 'Warning: You cancelled directory selection!', 'Warning',
      MB_OK + MB_ICONWARNING);
    LogWindow.LogAdd('PathChange: User cancelled, restoring path');
    Path.Text := OpenDialogForDownloadDir2;
  end;

end;

procedure TForm1.LoadConfBtClick(Sender: TObject);
begin
  OpenDialogForLoad := TOpenDialog.Create(self);
  OpenDialogForLoad.InitialDir := GetCurrentDir;
  OpenDialogForLoad.Filter := 'Settings|*.ini';
  if OpenDialogForLoad.Execute then
  begin
    LoadAll(OpenDialogForLoad.FileName);
    // ShowMessage(OpenDialogForLoad.FileName);
  end
  else
    MessageBox(handle, 'Warning: Load config aborted!', 'Warning',
      MB_OK + MB_ICONWARNING);
end;

procedure TForm1.ResetSettingsClick(Sender: TObject);
begin
  Form1.ResetAll(false);
end;

procedure TForm1.retriesMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 LessStatus := 'Retries to download after error.';
end;

procedure TForm1.SaveConfBtClick(Sender: TObject);
begin
  OpenDialogForSave := TSaveDialog.Create(self);
  OpenDialogForSave.InitialDir := GetCurrentDir;
  OpenDialogForSave.Filter := 'Settings|*.ini';
  if OpenDialogForSave.Execute then
  begin
    SaveAll(OpenDialogForSave.FileName + '.ini');
  end
  else
    MessageBox(handle, 'Warning: Saving config aborted!', 'Warning',
      MB_OK + MB_ICONWARNING);
end;

procedure TForm1.QuickGenerateClick(Sender: TObject);
begin
  Form4.ShowModal;
end;

procedure TForm1.recodevideo_textClick(Sender: TObject);
var
  pt: tPoint;
begin
  pt := Mouse.CursorPos;
  RecodeVideoPopup.Popup(pt.X, pt.Y);
end;

procedure TForm1.refresherinfoClick(Sender: TObject);
begin
MessageBox(handle, 'Hello :)', 'Hello', MB_OK + MB_ICONINFORMATION);
end;

procedure TForm1.rejecttitleMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  LessStatus := 'Reject this REGEX for title.';
end;

procedure TForm1.callhomeClick(Sender: TObject);
begin
  if callhome.Checked and nocallhome.Checked then
    MessageBox(handle,
      'Hey, I cant decide if I can call my mom! --call-home and --no-call-home are checked!',
      'Warning', MB_OK + MB_ICONWARNING);
end;

procedure TForm1.callhomeMouseMove(Sender: TObject; Shift: TShiftState;
X, Y: Integer);
begin
  LessStatus := 'Debug is on :)';
end;

procedure TForm1.CopyURLClick(Sender: TObject);
begin
  // this sends to generator procedure that button is disabled
  // and copies commands to clipboard then enables button
  CopyURL.Enabled := false;

  // this sets password free
  SetPasswordFree := True;
end;

procedure TForm1.dateafterMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  LessStatus := 'Download uploaded after this date.';
end;

procedure TForm1.datebeforeMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  LessStatus := 'Download uploaded before this date.';
end;

procedure TForm1.dateMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  LessStatus := 'Download uploaded this date.';
end;

procedure TForm1.detectorwarn1Click(Sender: TObject);
begin
  fixup_text.Text := 'detect_or_warn';
end;

procedure TForm1.downloadarchivefileClick(Sender: TObject);
begin
  OpenDialogForArchive := TOpenDialog.Create(self);
  OpenDialogForArchive.InitialDir := GetCurrentDir;
  OpenDialogForArchive.Options := [ofFileMustExist];
  OpenDialogForArchive.Filter := 'Everything|*.*';
  if OpenDialogForArchive.Execute then
  begin
    OpenDialogForArchiveFile := OpenDialogForArchive.FileName;
    downloadarchivefile.Caption := 'DONE';
  end
  else
  begin
    MessageBox(handle, 'Warning: You cancelled file selection!', 'Warning',
      MB_OK + MB_ICONWARNING);
    downloadarchivefile.Caption := 'FILE';
  end;
end;

procedure TForm1.downloadarchiveMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   LessStatus := 'Check help for Download Archive info.';
end;

procedure TForm1.Editonly1Click(Sender: TObject);
begin
URLEdit := True;
PasteURLPopup.CloseMenu;
if not MsgURLEdit then
MessageBox(handle, 'To re-enable paste menu, double click on URL text', 'Information', MB_OK + MB_ICONINFORMATION);
end;

procedure TForm1.externaldownloaderargsMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 LessStatus := 'Sends these arguments to external downloader.';
end;

procedure TForm1.externaldownloadercmdMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  LessStatus := 'Runs external downloader by command.';
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if Form6.RememberConfiguration.Checked then
SaveAll(ConfigFileDir + '2');
Form6.SaveSettings;
LogWindow.LogSave(ConfigFileDir + 'LastLog');
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  MainCommand.Clear;
  Path.Clear;

  // ready, steady, go!

  videourl.Clear;

  proxyurl_text.Clear;
  sockettimeout_text.Clear;
  sourceaddress_text.Clear;
  geoverificationproxy_text.Clear;

  playliststart_text.Clear;
  playlistend_text.Clear;
  playlistitems_text.Clear;
  matchtitle_text.Clear;
  rejecttitle_text.Clear;
  maxdownloads_text.Clear;
  minfilesize_text.Clear;
  maxfilesize_text.Clear;
  date_text.Clear;
  datebefore_text.Clear;
  dateafter_text.Clear;
  matchfilter_text.Clear;
  agelimit_text.Clear;
  maxviews_text.Clear;
  minviews_text.Clear;

  limitrate_text.Clear;
  retries_text.Clear;
  fragmentretries_text.Clear;
  buffersize_text.Clear;
  externaldownloadercmd_text.Clear;
  externaldownloaderargs_text.Clear;

  encoding_text.Clear;
  addheader_text.Clear;
  sleepinterval_text.Clear;
  useragent_text.Clear;

  format_text.Clear;
  mergeoutputformat_text.Clear;

  username_text.Clear;
  twofactor_text.Clear;
  videopassword_text.Clear;
  password_text.Clear;
  apmso_text.Clear;
  apusername_text.Clear;
  appassword_text.Clear;

  subformat_text.Clear;
  sublang_text.Clear;
  audioformat_text.Clear;
  audioquality_text.Clear;
  recodevideo_text.Clear;
  postprocessorargs_text.Clear;
  metadatafromtitle_text.Clear;
  fixup_text.Clear;
  convertsubs_text.Clear;
  execcmd_text.Clear;

  outputtemplate_text.Clear;
  autonumbersize_text.Clear;
  titledeprecated_text.Clear;
  literaldeprecated_text.Clear;

  referer_text.Clear;

  SetPasswordFree := false;
  PathToYoutubedl := 'youtube-dl ';
  TotalDownloads := 0;
  TotalDownloadsClick := 0;

  ConfigFileDir := ExtractFilePath(Application.ExeName) + 'config.ini';

//  INIFile := TINIFile.Create(ConfigFileDir);
//  try
//  if not INIFile.ReadBool('settings', 'dontsave', false) then
//  begin
//    Path.Text := INIFile.ReadString('settings', 'lastpath', '');
//    videourl.Text := INIFile.ReadString('settings', 'lasturl', '');
//    outputtemplate_text.Text := INIFile.ReadString('settings', 'lastoutput', '');
//    ConsoleInWindow.Checked := INIFile.ReadBool('settings', 'consoleinwindow', true);
//    PortableMode := INIFile.ReadBool('settings', 'portablemode', false);
//  end;
//  finally
//  INIFile.Free;
//  end;
  StatusUpdater.Create(False);
  Status := 'Ready';

  ConsoleInWindow.Checked := True;
  ConsoleInWindow.Visible := False;
end;

procedure TForm1.fragmentretriesMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
 LessStatus := 'Retries to download fragments after error.';
end;

end.

unit SettingsForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, INIFiles, Vcl.ComCtrls;

type
  TForm6 = class(TForm)
    DontRefresh: TCheckBox;
    DontSave: TCheckBox;
    lngPick: TGroupBox;
    lngENG: TRadioButton;
    lngPLK: TRadioButton;
    keepfunctionsnamesoriginal: TCheckBox;
    SettingsPage: TPageControl;
    SettingsMainSheet: TTabSheet;
    SettingsLanguageSheet: TTabSheet;
    SettingsAboutSheet: TTabSheet;
    BtOK: TButton;
    BtCancel: TButton;
    AboutText: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    youtubedllocation: TEdit;
    ydbt: TButton;
    ffmpeglocation: TEdit;
    ffbt: TButton;
    aconvlocation: TEdit;
    avbt: TButton;
    RememberConfiguration: TCheckBox;
    procedure lngENGClick(Sender: TObject);
    procedure lngPLKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure keepfunctionsnamesoriginalClick(Sender: TObject);
    procedure AutoRunQueueClick(Sender: TObject);
    procedure BtCancelClick(Sender: TObject);
    procedure BtOKClick(Sender: TObject);
    procedure ffbtClick(Sender: TObject);
    procedure ydbtClick(Sender: TObject);
    procedure avbtClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SaveSettings;
  private
    { Private declarations }
  public
    procedure RestoreOriginalArgmunets;
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses LogForm, MainForm, ConsoleForm, QuickGeneratorForm, FormatGeneratorForm, QueueForm;

procedure TForm6.RestoreOriginalArgmunets;
begin
  LogWindow.LogAdd('Restoring language original arguments');
  Form1.abortonerror.Caption := '--abort-on-error';
  Form1.ignoreerrors.Caption := '--ignore-errors';
  Form1.ignoreconfig.Caption := '--ignore-config';
  Form1.flatplaylist.Caption := '--flat-playlist';
  Form1.callhome.Caption := '--call-home';
  Form1.nocallhome.Caption := '--no-call-home';
  Form1.markwatched.Caption := '--mark-watched';
  Form1.nomarkwatched.Caption := '--no-mark-watched';

  Form1.proxyurl.Caption := '--proxy TYPE URL HERE:';
  Form1.sockettimeout.Caption := '--socket-timeout TYPE IN SECONDS HERE:';
  Form1.sourceaddress.Caption := '--source-address TYPE IP HERE:';
  Form1.geoverificationproxy.Caption := '--geo-verification-proxy TYPE URL HERE:';
  Form1.forceipv6.Caption := '--force-ipv6';
  Form1.forceipv4.Caption := '--force-ipv4';

  Form1.playliststart.Caption := '--playlist-start NUMBER:';
  Form1.playlistend.Caption := '--playlist-end NUMBER:';
  Form1.playlistitems.Caption := '--playlist-items ITEM_SPEC:';
  Form1.matchtitle.Caption := '--match-title REGEX:';
  Form1.rejecttitle.Caption := '--reject-title REGEX:';
  Form1.maxdownloads.Caption := '--max-downloads NUMBER:';
  Form1.minfilesize.Caption := '--min-filesize NUMBER:';
  Form1.maxfilesize.Caption := '--max-filesize NUMBER:';
  Form1.date.Caption := '--date DATE:';
  Form1.datebefore.Caption := '--date-before DATE:';
  Form1.dateafter.Caption := '--date-after DATE:';
  Form1.minviews.Caption := '--min-views COUNT:';
  Form1.maxviews.Caption := '--max-views COUNT:';
  Form1.matchfilter.Caption := '--match-filter FILTER:';
  Form1.agelimit.Caption := '--age-limit YEARS:';
  Form1.downloadarchive.Caption := '--download-archive FILE:';
  Form1.noplaylist.Caption := '--no-playlist';
  Form1.yesplaylist.Caption := '--yes-playlist';
  Form1.includeads.Caption := '--include-ads';

  Form1.limitrate.Caption := '--limit-rate RATE:';
  Form1.retries.Caption := '--retries RETRIES:';
  Form1.fragmentretries.Caption := '--fragment-retries RETRIES:';
  Form1.buffersize.Caption := '--buffer-size SIZE:';
  Form1.noresizebuffer.Caption := '--no-resize-buffer';
  Form1.playlistreverse.Caption := '--playlist-reverse';
  Form1.xattrsetfilesize.Caption := '--xattr-set-filesize EXPERIMENTAL';
  Form1.externaldownloadercmd.Caption := '--external-downloader COMMAND:';
  Form1.externaldownloaderargs.Caption := '--external-downloader ARGS:';
  Form1.hlsprefernative.Caption := '--hls-prefer-native';
  Form1.hlspreferffmpeg.Caption := '--hls-prefer-ffmpeg';
  Form1.hlsusempegts.Caption := '--hls-use-mpegts';
  Form1.writethumbnail.Caption := '--write-thumbnail';
  Form1.writeallthumbnails.Caption := '--write-all-thumbnails';
  Form1.listthumbnails.Caption := '--list-thumbnails';

  Form1.batchfile.Caption := '--batch-file FILE:';
  Form1.id.Caption := '--id';
  Form1.outputtemplate.Caption := '--output YOUR TEMPLATE:';
  Form1.autonumbersize.Caption := '--autonumber-size NUMBER:';
  Form1.restrictfilenames.Caption := '--restrict-filenames';
  Form1.autonumber.Caption := '--auto-number (deprecated)';
  Form1.titledeprecated.Caption := '--title (deprecated)';
  Form1.literaldeprecated.Caption := '--literal (deprecated)';
  Form1.loadinfojson.Caption := '--load-info-json FILE:';
  Form1.cachedir.Caption := '--cache-dir DIR:';
  Form1.nocachedir.Caption := '--no-cache-dir';
  Form1.rmcachedir.Caption := '--rm-cache-dir';
  Form1.nooverwrites.Caption := '--no-overwrites';
  Form1.continue.Caption := '--continue';
  Form1.nocontinue.Caption := '--no-continue';
  Form1.nopart.Caption := '--no-part';
  Form1.nomtime.Caption := '--no-mtime';
  Form1.writedescription.Caption := '--write-description';
  Form1.writeinfojson.Caption := '--write-info-json';
  Form1.writeannotations.Caption := '--write-annotations';

  Form1.encoding.Caption := '--encoding (experimental) ENCODING:';
  Form1.nocheckcertificate.Caption := '--no-check-certificate';
  Form1.preferinsecure.Caption := '--prefer-insecure';
  Form1.useragent.Caption := '--user-agent';
  Form1.refererurl.Caption := '--referer URL:';
  Form1.addheader.Caption := '--add-header FIELD:VALUE:';
  Form1.bidiworkaround.Caption := '--bidi-workaround';
  Form1.sleepinterval.Caption := '--sleep-interval SECONDS:';

  Form1.format.Caption := '--format FORMAT:';
  Form1.allformats.Caption := '--all-formats';
  Form1.preferfreeformats.Caption := '--prefer-free-formats';
  Form1.youtubeskipdashmanifest.Caption := '--youtube-skip-dash-manifest';
  Form1.mergeoutputformat.Caption := '--merge-output-format FORMAT:';
  Form1.writesub.Caption := '--write-sub';
  Form1.writeautosub.Caption := '--write-auto-sub';
  Form1.allsubs.Caption := '--all-subs';
  Form1.sublang.Caption := '--sub-lang LANGS:';
  Form1.subformat.Caption := '--sub-format FORMAT:';

  Form1.username.Caption := '--username USERNAME:';
  Form1.password.Caption := '--password PASSWORD:';
  Form1.twofactor.Caption := '--twofactor TWOFACTOR:';
  Form1.videopassword.Caption := '--video-password PASSWORD:';
  Form1.netrc.Caption := '--netrc';
  Form1.apmso.Caption := '--ap-mso MSO:';
  Form1.apusername.Caption := '--ap-username USERNAME:';
  Form1.appassword.Caption := '--ap-password PASSWORD:';

  Form1.extractaudio.Caption := '--extract-audio';
  Form1.audioformat.Caption := '--audio-format FORMAT:';
  Form1.audioquality.Caption := '--audio-quality QUALITY:';
  Form1.recodevideo.Caption := '--recode-video FORMAT:';
  Form1.postprocessorargs.Caption := '--postprocessor-args';
  Form1.keepvideo.Caption := '--keep-video';
  Form1.nopostoverwrites.Caption := '--no-post-overwrites';
  Form1.embedsubs.Caption := '--embed-subs';
  Form1.embedthumbnail.Caption := '--embed-thumbnail';
  Form1.addmetadata.Caption := '--add-metadata';
  Form1.metadatafromtitle.Caption := '--metadata-from-title FORMAT:';
  Form1.xattrs.Caption := '--xattrs';
  Form1.fixup.Caption := '--fixup POLICY:';
  FOrm1.preferaconv.Caption := '--prefer-aconv';
  Form1.preferffmpeg.Caption := '--prefer-ffmpeg';
  Form1.ffmpeglocation.Caption := '--ffmpeg-location';
  Form1.execcmd.Caption := '--exec CMD:';
  Form1.convertsubs.Caption := '--convert-subs FORMAT:';
end;


procedure TForm6.ydbtClick(Sender: TObject);
begin
  LogWindow.LogAdd('OpenDialogYTDL: Running OpenDialogYTDL');
  Form1.OpenDialogForYTDL := TOpenDialog.Create(self);
  Form1.OpenDialogForYTDL.InitialDir := GetCurrentDir;
  Form1.OpenDialogForYTDL.Options := [ofFileMustExist];
  Form1.OpenDialogForYTDL.Filter := 'youtube-dl|*.*';
  if Form1.OpenDialogForYTDL.Execute then

  begin
    MainForm.PathToYoutubedl := '"' + Form1.OpenDialogForYTDL.FileName + '" ';
    youtubedllocation.Text := MainForm.PathToYoutubedl;
    Form1.ChangePathOfYTDLBt.Caption := 'Changed!';
    LogWindow.LogAdd('OpenDialogYTDL: Looks successful: ' + MainForm.PathToYoutubedl);
  end

  else

  begin
    MessageBox(handle, 'Warning: You cancelled path changing!', 'Warning',
      MB_OK + MB_ICONWARNING);
    MainForm.PathToYoutubedl := 'youtube-dl ';
    LogWindow.LogAdd('OpenDialogYTDL: User cancelled operation');
  end;
end;

procedure TForm6.AutoRunQueueClick(Sender: TObject);
begin
//if AutoRunQueue.Checked
//then Form7.AutoRunQueue.Enabled := True
//else Form7.AutoRunQueue.Enabled := False;
end;

procedure TForm6.avbtClick(Sender: TObject);
begin
LogWindow.LogAdd('OpenDialogYTDL: Running OpenDialogYTDL');
  Form1.OpenDialogForYTDL := TOpenDialog.Create(self);
  Form1.OpenDialogForYTDL.InitialDir := GetCurrentDir;
  Form1.OpenDialogForYTDL.Options := [ofFileMustExist];
  Form1.OpenDialogForYTDL.Filter := 'aconv|*.*';
  if Form1.OpenDialogForYTDL.Execute then

  begin
    aconvlocation.Text := Form1.OpenDialogForYTDL.FileName;
    LogWindow.LogAdd('OpenDialogYTDL: Looks successful: ' + Form1.OpenDialogForYTDL.FileName);
  end

  else

  begin
    MessageBox(handle, 'Warning: You cancelled path changing!', 'Warning',
      MB_OK + MB_ICONWARNING);
    LogWindow.LogAdd('OpenDialogYTDL: User cancelled operation');
  end;
end;

procedure TForm6.BtCancelClick(Sender: TObject);
begin
Form6.Close;
end;

procedure TForm6.BtOKClick(Sender: TObject);
begin
Form6.Close;
end;

procedure TForm6.ffbtClick(Sender: TObject);
begin
LogWindow.LogAdd('OpenDialogForFFmpeg: Running OpenDialogForFFmpeg');
  Form1.OpenDialogForFFmpeg := TOpenDialog.Create(self);
  Form1.OpenDialogForFFmpeg.InitialDir := GetCurrentDir;
  Form1.OpenDialogForFFmpeg.Options := [ofFileMustExist];
  Form1.OpenDialogForFFmpeg.Filter := 'FFmpeg|ffmpeg.exe';
  if Form1.OpenDialogForFFmpeg.Execute then
  begin
    MainForm.OpenDialogForFFmpegFile := Form1.OpenDialogForFFmpeg.FileName;
    ffmpeglocation.Text := MainForm.OpenDialogForFFmpegFile;
    Form1.ffmpeglocationbt.Caption := 'PATH';
    Form1.ffmpeglocation.Checked := True;
    LogWindow.LogAdd('OpenDialogYTDL: Looks successful: ' + MainForm.OpenDialogForFFmpegFile);
  end
  else
  begin
    MessageBox(handle, 'Warning: You cancelled file selection!', 'Warning',
      MB_OK + MB_ICONWARNING);
    Form1.ffmpeglocationbt.Caption := 'PATH';
  end;
end;

procedure TForm6.SaveSettings;
var
  INIFile: TINIFile;
begin
LogWindow.LogAdd('Saving settings to file: ' + MainForm.ConfigFileDir);
INIFile := TINIFile.Create(MainForm.ConfigFileDir);
try
begin
  if Form6.DontSave.Checked then
  begin
    LogWindow.LogAdd('Ignoring URL, path, output');
    INIFile.WriteString('settings', 'lasturl', '');
    INIFile.WriteString('settings', 'lastpath', '');
    INIFile.WriteString('settings', 'lastoutput', '');
  end
  else
  begin
    INIFile.WriteString('settings', 'lasturl', Form1.videourl.Text);
    INIFile.WriteString('settings', 'lastpath', Form1.Path.Text);
    INIFile.WriteString('settings', 'lastoutput', Form1.outputtemplate_text.Text);
  end;
  INIFile.WriteBool('settings', 'consoleinwindow', Form1.ConsoleInWindow.Checked);
  INIFile.WriteBool('settings', 'dontrefresh', Form6.DontRefresh.Checked);
  INIFile.WriteBool('settings', 'dontsave', Form6.DontSave.Checked);
  INIFile.WriteBool('settings', 'keepfunctionsnamesoriginal', Form6.keepfunctionsnamesoriginal.Checked);
  INIFile.WriteBool('settings', 'lngpl', Form6.lngPLK.Checked);
  INIFile.WriteBool('settings', 'lngeng', Form6.lngENG.Checked);
//  INIFile.WriteBool('settings', 'autopasteclipboard', Form6.AutoPasteClipboard.Checked);
//  INIFile.WriteBool('settings', 'autoaddqueue', Form6.AutoAddQueue.Checked);
//  INIFile.WriteBool('settings', 'autorunqueue', Form6.AutoRunQueue.Checked);
  INIFile.WriteBool('settings', 'rememberconfiguration', Form6.RememberConfiguration.Checked);
  INIFile.WriteString('settings', 'youtubedllocation', Form6.youtubedllocation.Text);
  INIFile.WriteString('settings', 'ffmpeglocation', Form6.ffmpeglocation.Text);
  INIFile.WriteString('settings', 'aconvlocation', Form6.aconvlocation.Text);
  INIFile.WriteBool('settings', 'URLEdit', MainForm.URLEdit);
  INIFile.WriteBool('settings', 'MsgURLEdit', MainForm.MsgURLEdit);
end;
finally
INIFile.Free;
end;
LogWindow.LogAdd('Settings saved');
end;

procedure TForm6.FormClose(Sender: TObject; var Action: TCloseAction);
begin
SaveSettings;
end;

procedure TForm6.FormCreate(Sender: TObject);
var
  INIFile: TINIFile;
begin
LogWindow.LogAdd('Settings form initialized');
youtubedllocation.Clear;
ffmpeglocation.Clear;
aconvlocation.Clear;

  INIFile := TINIFile.Create(MainForm.ConfigFileDir);
  try
  if not INIFile.ReadBool('settings', 'dontsave', false) then
  begin
    Form1.Path.Text := INIFile.ReadString('settings', 'lastpath', '');
    Form1.videourl.Text := INIFile.ReadString('settings', 'lasturl', '');
    Form1.outputtemplate_text.Text := INIFile.ReadString('settings', 'lastoutput', '');
    Form1.ConsoleInWindow.Checked := INIFile.ReadBool('settings', 'consoleinwindow', true);
    MainForm.PortableMode := INIFile.ReadBool('settings', 'portablemode', false);
    DontRefresh.Checked := INIFile.ReadBool('settings', 'dontrefresh', false);
    lngENG.Checked := INIFile.ReadBool('settings', 'lngen', false);
    lngPLK.Checked := INIFile.ReadBool('settings', 'lngpl', false);
    keepfunctionsnamesoriginal.Checked := INIFile.ReadBool('settings', 'keepfunctionsnamesoriginal', false);
//    AutoPasteClipboard.Checked := INIFile.ReadBool('settings', 'autopasteclipboard', false);
//    AutoRunQueue.Checked := INIFile.ReadBool('settings', 'autorunqueue', false);
//    AutoAddQueue.Checked := INIFile.ReadBool('settings', 'autoaddqueue', false);
    RememberConfiguration.Checked := INIFile.ReadBool('settings', 'rememberconfiguration', false);
    youtubedllocation.Text := INIFile.ReadString('settings', 'youtubedllocation', '');
    ffmpeglocation.Text := INIFile.ReadString('settings', 'ffmpeglocation', '');
    aconvlocation.Text := INIFile.ReadString('settings', 'aconvlocation', '');
    MainForm.URLEdit := INIFile.ReadBool('settings', 'URLEdit', False);
    MainForm.MsgURLEdit := INIFile.ReadBool('settings', 'MsgURLEdit', False);
  end;
  finally
  INIFile.Free;
  end;

LogWindow.LogAdd('RememberConfiguration = ' + BoolToStr(RememberConfiguration.Checked));
if RememberConfiguration.Checked = True then
if FileExists(ExtractFilePath(MainForm.ConfigFileDir) + 'config.ini2') then
Form1.LoadAll(MainForm.ConfigFileDir + '2');

if FileExists(Form6.youtubedllocation.Text) then
MainForm.PathToYoutubedl := Form6.youtubedllocation.Text
else
Form1.SetLocations(true, false, false);

if FileExists(Form6.ffmpeglocation.Text) then
MainForm.OpenDialogForFFMpegFile := Form6.ffmpeglocation.Text
else
Form1.SetLocations(false, true, false);

if FileExists(Form6.aconvlocation.Text) then
// temp
else
Form1.SetLocations(false, false, true);
Form7.AutoRunQueue.Enabled := True;

end;

procedure TForm6.keepfunctionsnamesoriginalClick(Sender: TObject);
begin
if keepfunctionsnamesoriginal.Checked then RestoreOriginalArgmunets else
if lngENG.Checked then lngENGClick(Form6) else
if lngPLK.Checked then lngPLKClick(Form6);

end;

procedure TForm6.lngENGClick(Sender: TObject);
begin
  LogWindow.LogAdd('Loading language: English');
  // ### SETTINGS
  Form6.DontRefresh.Caption := 'Do not refresh console while mouse over';
  Form6.DontSave.Caption := 'Do not save location and path';
  Form6.lngPick.Caption := 'Pick language';
  Form6.keepfunctionsnamesoriginal.Caption := 'Keep function names original';

  // ### QUICK GENERATE
  Form4.BestQuality.Caption := 'Best quality (max: 4K)';
  Form4.HighQuality.Caption := 'High quality (max: 1080p)';
  Form4.MediumQuality.Caption := 'Medium quality (max: 720p)';
  Form4.LowQuality.Caption := 'Low quality (max: 480p)';
  Form4.fps60.Caption := '60 fps if present';

  // ## QUALITY PICKER
  Form3.PickAFormat.Caption := 'Pick a format';
  Form3.pickaquality.Caption := 'Pick quality';
  Form3.prvwtext.Caption := 'Preview:';
  Form3.donebtn.Caption := 'DONE!!';

  // ## MAIN FORM
  Form1.QuickGenerate.Caption := 'Quick Generate';
  Form1.videocheck.Caption := 'VideoCheck';
  Form1.resetsettings.Caption := 'Reset configuration';
  Form1.ChangePathOfYTDLBt.Caption := 'Change path of Youtube-dl.exe';
  FOrm1.ChangePathOfFFMBt.Caption := 'Change path of FFmpeg.exe';
  Form1.LoadConfBt.Caption := 'Load configuration';
  Form1.SaveConfBt.Caption := 'Save configuration';
  Form1.AppSettBt.Caption := 'Application settings';
  Form1.downloadinginfo.Caption := 'Downloading here:';
  Form1.PathChangeBt.Caption := 'Change it!';
  Form1.RUNITBt.Caption := 'Run script once';
  Form1.AddToQueueBt.Caption := 'Add to download list';
  Form1.CopyURL.Caption := 'Copy it to clipboard!';
  Form1.ConvertShitFromMinutesToSeconds.Caption :=
    'Convert this from minutes to seconds';
  Form1.GermanyInfo.Caption :=
    'If you are living in Germany, where these *beep* blocks everything, here you can configure proxy.';
  Form1.PlaylistInfo.Caption :=
    'Use only when you want to download playlist, otherwise beep you and crash.';
  Form1.DateMaskInfo.Caption := 'Date mask: YYYYMMDD';
  Form1.DateMaskInfo2.Caption := 'No spaces.';
  Form1.safetyinfo.Caption :=
    'For safety reasons, your password will not be visible in command preview - only when you click "copy command" and paste it.';

  Form1.GeneralSheet.Caption := 'General';
  Form1.ProxyNetworkSheet.Caption := 'Proxy+Network';
  Form1.VideoSelectionSheet.Caption := 'Video selection';
  Form1.DownloadSheet.Caption := 'Download';
  Form1.FilesystemSheet.Caption := 'Filesystem';
  Form1.WorkaroundSheet.Caption := 'Workarounds';
  Form1.FormatSubsSheet.Caption := 'Format+Subs';
  Form1.AuthSheet.Caption := 'Auth';
  Form1.PostProcessingSheet.Caption := 'Post processing';
  Form1.ConsoleSheet.Caption := 'Console';

  // ## NOT TO CHANGE
  Form1.ConsoleInWindow.Caption := '[BETA] Show console in application';

  // ## CONFIGURATION CHANGED NAMES TO EASY MODE
  if not keepfunctionsnamesoriginal.Checked then
  begin
    Form1.abortonerror.Caption := 'Abort on error';
    Form1.ignoreerrors.Caption := 'Ignore errors';
    Form1.ignoreconfig.Caption := 'Ignore config';
    Form1.flatplaylist.Caption := 'Flat playlist';
    Form1.callhome.Caption := 'Debug mode on';
    Form1.nocallhome.Caption := 'Debug mode off';
    Form1.markwatched.Caption := 'Mark as watched';
    Form1.nomarkwatched.Caption := 'No mark as watched';

    Form1.proxyurl.Caption := 'Proxy URL:';
    Form1.sockettimeout.Caption := 'Socket timeout in seconds:';
    Form1.sourceaddress.Caption := 'Source address:';
    Form1.geoverificationproxy.Caption := 'Proxy geo verification:';
    Form1.forceipv6.Caption := 'Force IPV6';
    Form1.forceipv4.Caption := 'Force IPV4';

    Form1.playliststart.Caption := 'Playlist start number:';
    Form1.playlistend.Caption := 'Playlist end number:';
    Form1.playlistitems.Caption := 'Playlist items:';
    Form1.matchtitle.Caption := 'Match title in REGEX:';
    Form1.rejecttitle.Caption := 'Reject title in REGEX:';
    Form1.maxdownloads.Caption := 'Max downloads:';
    Form1.minfilesize.Caption := 'Minimal filesize:';
    Form1.maxfilesize.Caption := 'Maximal filesize:';
    Form1.date.Caption := 'Date:';
    Form1.datebefore.Caption := 'Date before:';
    Form1.dateafter.Caption := 'Date after:';
    Form1.minviews.Caption := 'Minimal views:';
    Form1.maxviews.Caption := 'Maximal views:';
    Form1.matchfilter.Caption := 'Match filter:';
    Form1.agelimit.Caption := 'Age limit:';
    Form1.downloadarchive.Caption := 'Download archive:';
    Form1.noplaylist.Caption := 'Dont download playlist';
    Form1.yesplaylist.Caption := 'Download playlist';
    Form1.includeads.Caption := 'Download ads';

    Form1.limitrate.Caption := 'Rate limit:';
    Form1.retries.Caption := 'Retries:';
    Form1.fragmentretries.Caption := 'Fragment retries:';
    Form1.buffersize.Caption := 'Buffer size:';
    Form1.noresizebuffer.Caption := 'Dont resize buffer';
    Form1.playlistreverse.Caption := 'Download playlist in reverse mode';
    Form1.xattrsetfilesize.Caption := 'Set xattr filesize (experimental)';
    Form1.externaldownloadercmd.Caption := 'External downloader command:';
    Form1.externaldownloaderargs.Caption := 'External downloader arguments:';
    Form1.hlsprefernative.Caption := '[HLS] Prefer native';
    Form1.hlspreferffmpeg.Caption := '[HLS] Prefer ffmpeg';
    Form1.hlsusempegts.Caption := '[HLS] Use MPEG-TS';
    Form1.writethumbnail.Caption := 'Write thumbnail';
    Form1.writeallthumbnails.Caption := 'Write all thumbnails';
    Form1.listthumbnails.Caption := 'List all thumbnails';

    Form1.batchfile.Caption := 'Batch file:';
    Form1.id.Caption := 'ID';
    Form1.outputtemplate.Caption := 'Output template:';
    Form1.autonumbersize.Caption := 'Auto-number size:';
    Form1.restrictfilenames.Caption := 'Restrict filenames';
    Form1.autonumber.Caption := 'Auto-number (deprecated)';
    Form1.titledeprecated.Caption := 'Title (deprecated)';
    Form1.literaldeprecated.Caption := 'Literal (deprecated)';
    Form1.loadinfojson.Caption := 'Load JSON info file:';
    Form1.cachedir.Caption := 'Pick cache dir:';
    Form1.rmcachedir.Caption := 'Remove cache dir';
    Form1.nocachedir.Caption := 'Dont use cache dir';
    Form1.nooverwrites.Caption := 'Dont overwrite';
    Form1.continue.Caption := 'Continue download';
    Form1.nocontinue.Caption := 'Dont continue download';
    Form1.nopart.Caption := 'Dont use .part files';
    Form1.nomtime.Caption := 'Dont write last modified';
    Form1.writedescription.Caption := 'Write description';
    Form1.writeinfojson.Caption := 'Write JSON';
    Form1.writeannotations.Caption := 'Write annotations';

    Form1.encoding.Caption := 'Pick encoding (experimental):';
    Form1.nocheckcertificate.Caption := 'Ignore certificate';
    Form1.preferinsecure.Caption := 'Prefer insecure';
    Form1.useragent.Caption := 'User agent:';
    Form1.refererurl.Caption := 'Pick referer URL:';
    Form1.addheader.Caption := 'Add header FIELD:VALUE:';
    Form1.bidiworkaround.Caption := 'BIDI Workaround';
    Form1.sleepinterval.Caption := 'Sleep interval in seconds:';

    Form1.format.Caption := 'Pick a format (use generator):';
    Form1.allformats.Caption := 'Download all available formats';
    Form1.preferfreeformats.Caption := 'Prefer free formats';
    Form1.youtubeskipdashmanifest.Caption := 'Skip YouTube dash manifest';
    Form1.mergeoutputformat.Caption := 'Merge output format:';
    Form1.writesub.Caption := 'Write subtitles';
    Form1.writeautosub.Caption := 'Automatically write subtitles';
    Form1.allsubs.Caption := 'Write all subtitles';
    Form1.subformat.Caption := 'Subtitles format:';
    Form1.sublang.Caption := 'Subtitles language:';

    Form1.username.Caption := 'Username:';
    Form1.password.Caption := 'Password:';
    Form1.twofactor.Caption := 'Two factory auth code:';
    Form1.videopassword.Caption := 'Video password:';
    Form1.netrc.Caption := 'Use .netrc authentication data';
    Form1.apmso.Caption := 'Adobe multiple-system operator:';
    Form1.apusername.Caption := 'Adobe MSO username:';
    Form1.appassword.Caption := 'Adobe MSO password:';

    Form1.extractaudio.Caption := 'Extract audio';
    Form1.audioformat.Caption := 'Audio format:';
    Form1.audioquality.Caption := 'Audio quality:';
    Form1.recodevideo.Caption := 'Recode video:';
    Form1.postprocessorargs.Caption := 'Post processing args:';
    Form1.keepvideo.Caption := 'Dont delete downloaded video';
    Form1.nopostoverwrites.Caption := 'No post overwrites';
    Form1.embedsubs.Caption := 'Embed subtitles into video';
    Form1.embedthumbnail.Caption := 'Embed thumbnail into video';
    Form1.addmetadata.Caption := 'Add metadata';
    Form1.metadatafromtitle.Caption := 'Metadata from title format:';
    Form1.xattrs.Caption := 'Write metadata to xattrs file';
    Form1.fixup.Caption := 'Auto correct mode:';
    Form1.preferaconv.Caption := 'Prefer aconv';
    Form1.preferffmpeg.Caption := 'Prefer ffmpeg';
    Form1.ffmpeglocation.Caption := 'FFmpeg location:';
    Form1.execcmd.Caption := 'Exec CMD:';
    Form1.convertsubs.Caption := 'Convert subtitles to:';

    Form1.never1.Caption := 'Never';
    Form1.warn1.Caption := 'Warn';
    Form1.detectorwarn1.Caption := 'Detect or warn';
  end else RestoreOriginalArgmunets;

  Form1.N0better1.Caption := '0 (better)';
  Form1.N51.Caption := '5 (default)';
  Form1.N91.Caption := '9 (worse)';
  Form1.FormatGeneratorBT.Caption := 'Format generator';

end;

procedure TForm6.lngPLKClick(Sender: TObject);
begin
  LogWindow.LogAdd('Loading language: Polish');
  // ### SETTINGS
  Form6.DontRefresh.Caption := 'Nie odœwie¿aj konsoli gdy przeje¿d¿am myszk¹';
  Form6.DontSave.Caption := 'Nie zapisuj lokalizacji i œcie¿ki';
  Form6.lngPick.Caption := 'Wybierz jêzyk';
  Form6.keepfunctionsnamesoriginal.Caption :=
    'Pozostaw nazwy argumentów oryginalne';

  // ### QUICK GENERATE
  Form4.BestQuality.Caption := 'Najlepsz¹ jakoœæ (max: 4K)';
  Form4.HighQuality.Caption := 'Wysok¹ jakoœæ (max: 1080p)';
  Form4.MediumQuality.Caption := 'Œredni¹ jakoœæ (max: 720p)';
  Form4.LowQuality.Caption := 'Nisk¹ jakoœæ (max: 480p)';
  Form4.fps60.Caption := '60 fps jeœli istnieje';

  // ## QUALITY PICKER
  Form3.PickAFormat.Caption := 'Wybierz format';
  Form3.pickaquality.Caption := 'Wybierz jakoœæ';
  Form3.prvwtext.Caption := 'Podgl¹d:';
  Form3.donebtn.Caption := 'OK!!';

  // ## MAIN FORM
  Form1.QuickGenerate.Caption := 'Szybko wygeneruj';
  Form1.videocheck.Caption := 'SprawdŸ link';
  Form1.resetsettings.Caption := 'Reset ustawieñ';
  Form1.ChangePathOfYTDLBt.Caption := 'Zmieñ œcie¿kê Youtube-dl.exe';
  Form1.ChangePathOfFFMBt.Caption := 'Zmieñ œcie¿kê FFmpeg.exe';
  Form1.LoadConfBt.Caption := 'Wczytaj konfiguracjê';
  Form1.SaveConfBt.Caption := 'Zapisz konfiguracjê';
  Form1.AppSettBt.Caption := 'Ustawienia aplikacji';
  Form1.downloadinginfo.Caption := 'Pobieraj pliki tutaj:';
  Form1.PathChangeBt.Caption := 'Zmieñ to!';
  Form1.RUNITBt.Caption := 'Pobierz';
  Form1.CopyURL.Caption := 'Kopiuj komendê do schowka';
  Form1.ConvertShitFromMinutesToSeconds.Caption :=
    'Zaawansowanie konwertuj z minut do sekund';
  Form1.GermanyInfo.Caption :=
    'Jeœli mieszkasz w Niemczech gdzie zablokowali jak¹kolwiek muzykê na YouTube, tutaj masz proxy.';
  Form1.PlaylistInfo.Caption :=
    'U¿ywaj wy³¹cznie wtedy, gdy pobierasz playlistê, inaczej wszystko wybuchnie.';
  Form1.DateMaskInfo.Caption := 'Maska daty: RRRRMMDD';
  Form1.DateMaskInfo2.Caption := 'Bez spacji.';
  Form1.safetyinfo.Caption :=
    'Celem bezpieczeñstwa twoje has³o jest ukrywane. Gdy klikniesz w kopiuj do schowka, zostanie skopiowane do schowka.';

  Form1.GeneralSheet.Caption := 'Generalne';
  Form1.ProxyNetworkSheet.Caption := 'Proxy+Sieæ';
  Form1.VideoSelectionSheet.Caption := 'Wybór nagrañ';
  Form1.DownloadSheet.Caption := 'Pobieranie';
  Form1.FilesystemSheet.Caption := 'Nazwy';
  Form1.WorkaroundSheet.Caption := 'Obejœcia';
  Form1.FormatSubsSheet.Caption := 'Format+Napisy';
  Form1.AuthSheet.Caption := 'Logowanie';
  Form1.PostProcessingSheet.Caption := 'Przetwarzanie';
  Form1.ConsoleSheet.Caption := 'Konsola';

  // ## NOT TO CHANGE
  Form1.ConsoleInWindow.Caption := '[BETA] Poka¿ konsolê w aplikacji';

  // ## FUNCTIONS
  if not keepfunctionsnamesoriginal.Checked then
  begin
    Form1.abortonerror.Caption := 'Nie ignoruj b³êdów';
    Form1.ignoreerrors.Caption := 'Zignoruj b³êdy';
    Form1.ignoreconfig.Caption := 'Zignoruj konfiguracjê';
    Form1.flatplaylist.Caption := 'Zwyk³a playlista';
    Form1.callhome.Caption := 'Debugowanie w³¹czone';
    Form1.nocallhome.Caption := 'Debugowanie wy³¹czone';
    Form1.markwatched.Caption := 'Oznacz jako obejrzany';
    Form1.nomarkwatched.Caption := 'Nie oznaczaj jako obejrzany';

    Form1.proxyurl.Caption := 'Proxy URL:';
    Form1.sockettimeout.Caption := 'Odczekaj sekund przed po³¹czeniem:';
    Form1.sourceaddress.Caption := 'Adres Ÿród³owy:';
    Form1.geoverificationproxy.Caption := 'Weryfikacja lokalizacji proxy:';
    Form1.forceipv6.Caption := 'Wymuœ IPV6';
    Form1.forceipv4.Caption := 'Wymuœ IPV4';

    Form1.playliststart.Caption := 'Nr. pocz¹tku playlisty:';
    Form1.playlistend.Caption := 'Nr. koñca playlisty:';
    Form1.playlistitems.Caption := 'Nr. z playlisty:';
    Form1.matchtitle.Caption := 'Dopasuj tytu³y REGEX:';
    Form1.rejecttitle.Caption := 'Odrzuæ tytu³y REGEX:';
    Form1.maxdownloads.Caption := 'Maksymalnie pobrañ:';
    Form1.minfilesize.Caption := 'Minimalny rozmiar pliku:';
    Form1.maxfilesize.Caption := 'Maksmymalny rozmiar pliku:';
    Form1.date.Caption := 'Data:';
    Form1.datebefore.Caption := 'Data przed:';
    Form1.dateafter.Caption := 'Data po:';
    Form1.minviews.Caption := 'Min wyœwietleñ:';
    Form1.maxviews.Caption := 'Max wyœwietleñ:';
    Form1.matchfilter.Caption := 'Dopasuj filtry:';
    Form1.agelimit.Caption := 'Limit wieku:';
    Form1.downloadarchive.Caption := 'Pobierz z archiw:';
    Form1.noplaylist.Caption := 'Nie pobieraj playlisty';
    Form1.yesplaylist.Caption := 'Pobieraj playlistê';
    Form1.includeads.Caption := 'Pobierz reklamy';

    Form1.limitrate.Caption := 'Limit prêdkoœci:';
    Form1.retries.Caption := 'Ponowieñ:';
    Form1.fragmentretries.Caption := 'Ponowieñ fragmentów:';
    Form1.buffersize.Caption := 'Wielkoœæ bufora:';
    Form1.noresizebuffer.Caption := 'Nie zmieniaj wielkoœci bufora';
    Form1.playlistreverse.Caption := 'Pobieraj playlistê od koñca';
    Form1.xattrsetfilesize.Caption :=
      'Ustaw wielkoœæ pliku xattr (eksperymentalne)';
    Form1.externaldownloadercmd.Caption := 'Zewnêtrzny program pobierania:';
    Form1.externaldownloaderargs.Caption := 'Argumenty tego¿ programu:';
    Form1.hlsprefernative.Caption := '[HLS] Preferuj natywnie';
    Form1.hlspreferffmpeg.Caption := '[HLS] Preferuj ffmpeg';
    Form1.hlsusempegts.Caption := '[HLS] U¿yj MPEG-TS';
    Form1.writethumbnail.Caption := 'Zapisz miniaturki';
    Form1.writeallthumbnails.Caption := 'Zapisz wszystkie miniaturki';
    Form1.listthumbnails.Caption := 'Zrób listê wszystkich miniaturek';

    Form1.batchfile.Caption := 'Plik BATCH:';
    Form1.id.Caption := 'ID';
    Form1.outputtemplate.Caption := 'Szablon nazwy:';
    Form1.autonumbersize.Caption := 'Auto-numeracja wielkoœæ:';
    Form1.restrictfilenames.Caption :=
      'Usuñ znaki diakrytyczne w nazwach pobieranych plików';
    Form1.autonumber.Caption := 'Auto-numeracja plików (przestarza³e)';
    Form1.titledeprecated.Caption := 'Tytu³ (przestarza³e):';
    Form1.literaldeprecated.Caption := 'Literal (przestarza³e):';
    Form1.loadinfojson.Caption := 'Wczytaj plik JSON:';
    Form1.cachedir.Caption := 'P. podrêczna:';
    Form1.rmcachedir.Caption := 'Usuñ pamiêæ podrêczn¹';
    Form1.nocachedir.Caption := 'Nie u¿ywaj pamiêci podrêcznej';
    Form1.nooverwrites.Caption := 'Nie nadpisuj';
    Form1.continue.Caption := 'Kontynuuj pobieranie';
    Form1.nocontinue.Caption := 'Nie kontynuuj pobierania';
    Form1.nopart.Caption := 'Bez plików .part';
    Form1.nomtime.Caption := 'Bez daty modyfikacji';
    Form1.writedescription.Caption := 'Zapisz opis';
    Form1.writeinfojson.Caption := 'Zapisz JSON';
    Form1.writeannotations.Caption := 'Zapisz adnotacje';

    Form1.encoding.Caption := 'Wska¿ kodowanie (eksperymentalne):';
    Form1.nocheckcertificate.Caption := 'Ignoruj certyfikaty';
    Form1.preferinsecure.Caption := 'Preferuj pobieranie bez szyfrowania po³¹czenia';
    Form1.useragent.Caption := 'Identyfikuj siebie jako:';
    Form1.refererurl.Caption := 'Wska¿ stronê wywo³uj¹c¹ URL:';
    Form1.addheader.Caption := 'Dodaj nag³ówek FIELD:VALUE:';
    Form1.bidiworkaround.Caption := 'Obejœcie BIDI';
    Form1.sleepinterval.Caption := 'Czas oczekiwania:';

    Form1.format.Caption := 'Wska¿ format (u¿yj generatora):';
    Form1.allformats.Caption := 'Pobierz wszystkie dostêpne formaty';
    Form1.preferfreeformats.Caption := 'Preferuj wolne formaty';
    Form1.youtubeskipdashmanifest.Caption := 'Pomiñ YouTube dash manifest';
    Form1.mergeoutputformat.Caption := 'Format wyjœciowy ³¹czenia:';
    Form1.writesub.Caption := 'Pobierz napisy';
    Form1.writeautosub.Caption := 'Automatycznie pobierz napisy';
    Form1.allsubs.Caption := 'Pobierz wszystkie napisy';
    Form1.subformat.Caption := 'Format napisów:';
    Form1.sublang.Caption := 'Jêzyk napisów:';

    Form1.username.Caption := 'Login:';
    Form1.password.Caption := 'Has³o:';
    Form1.twofactor.Caption := 'Kod podwójnego uwierzytelnienia:';
    Form1.videopassword.Caption := 'Has³o do nagrania:';
    Form1.netrc.Caption := 'U¿yj pliku .netrc do uwierzytelnienia';
    Form1.apmso.Caption := 'Operator Adobe multiple system:';
    Form1.apusername.Caption := 'Login MSO:';
    Form1.appassword.Caption := 'Has³o MSO:';

    Form1.extractaudio.Caption := 'Wypakuj dŸwiêk z nagrania';
    Form1.audioformat.Caption := 'Format dŸwiêku:';
    Form1.audioquality.Caption := 'Jakoœæ dŸwiêku:';
    Form1.recodevideo.Caption := 'Konwertuj nagranie:';
    Form1.postprocessorargs.Caption := 'Argumenty post process:';
    Form1.keepvideo.Caption := 'Nie usuwaj Ÿród³owego nagrania';
    Form1.nopostoverwrites.Caption := 'Nie nadpisuj Ÿród³owego nagrania';
    Form1.embedsubs.Caption := 'Wklej napisy do filmu';
    Form1.embedthumbnail.Caption := 'Dodaj miniaturkê do filmu';
    Form1.addmetadata.Caption := 'Dodaj metadata';
    Form1.metadatafromtitle.Caption := 'Pobierz metadata z tytu³u:';
    Form1.xattrs.Caption := 'Zapisz metadata do pliku xattrs';
    Form1.fixup.Caption := 'Metoda naprawy pliku:';
    Form1.preferaconv.Caption := 'Preferuj aconv';
    Form1.preferffmpeg.Caption := 'Preferuj FFmpeg';
    Form1.ffmpeglocation.Caption := 'Lokaliacja FFmpeg:';
    Form1.execcmd.Caption := 'Uruchom CMD:';
    Form1.convertsubs.Caption := 'Konwertuj napisy do:';

    // ## FIXUP POLICY MENU
    Form1.never1.Caption := 'Nigdy';
    Form1.warn1.Caption := 'Ostrzegaj';
    Form1.detectorwarn1.Caption := 'Wykryj lub ostrzegaj';
  end else RestoreOriginalArgmunets;

  Form1.N0better1.Caption := '0 (lepsza)';
  Form1.N51.Caption := '5 (domyœlna)';
  Form1.N91.Caption := '9 (gorsza)';
  Form1.FormatGeneratorBT.Caption := 'Generator formatów';

end;

end.

object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 
    'youtube-dl --let-me-type-that-for-you --pre-release --version "2' +
    '.50"'
  ClientHeight = 450
  ClientWidth = 826
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object URL_Text: TLabel
    Left = 8
    Top = 3
    Width = 23
    Height = 13
    Caption = 'URL:'
  end
  object videourl: TEdit
    Left = 37
    Top = 0
    Width = 781
    Height = 21
    TabOrder = 0
    Text = 'videourl'
    OnClick = videourlClick
    OnDblClick = videourlDblClick
  end
  object PageControl: TPageControl
    Left = 8
    Top = 27
    Width = 682
    Height = 257
    ActivePage = GeneralSheet
    TabOrder = 1
    OnMouseMove = PageControlMouseMove
    object GeneralSheet: TTabSheet
      Caption = 'General'
      object downloadinginfo: TLabel
        Left = 3
        Top = 184
        Width = 90
        Height = 13
        Caption = 'Downloading here:'
      end
      object abortonerror: TCheckBox
        Left = 18
        Top = 11
        Width = 136
        Height = 17
        Caption = '--abort-on-error '
        TabOrder = 0
        OnClick = abortonerrorClick
        OnMouseMove = abortonerrorMouseMove
      end
      object ignoreconfig: TCheckBox
        Left = 18
        Top = 57
        Width = 119
        Height = 17
        Caption = '--ignore-config'
        TabOrder = 1
        OnMouseMove = ignoreconfigMouseMove
      end
      object flatplaylist: TCheckBox
        Left = 18
        Top = 80
        Width = 119
        Height = 17
        Caption = '--flat-playlist'
        TabOrder = 2
      end
      object markwatched: TCheckBox
        Left = 184
        Top = 57
        Width = 266
        Height = 17
        Caption = '--mark-watched'
        TabOrder = 3
        OnClick = markwatchedClick
        OnMouseMove = markwatchedMouseMove
      end
      object nomarkwatched: TCheckBox
        Left = 184
        Top = 80
        Width = 266
        Height = 17
        Caption = '--no-mark-watched'
        TabOrder = 4
        OnClick = nomarkwatchedClick
        OnMouseMove = nomarkwatchedMouseMove
      end
      object callhome: TCheckBox
        Left = 184
        Top = 11
        Width = 266
        Height = 17
        Caption = '--call-home'
        TabOrder = 5
        OnClick = callhomeClick
        OnMouseMove = callhomeMouseMove
      end
      object nocallhome: TCheckBox
        Left = 184
        Top = 34
        Width = 266
        Height = 17
        Caption = '--no-call-home'
        TabOrder = 6
        OnClick = nocallhomeClick
        OnMouseMove = nocallhomeMouseMove
      end
      object ChangePathOfYTDLBt: TButton
        Left = 496
        Top = 3
        Width = 175
        Height = 25
        Caption = 'Change path of YouTube-dl.exe'
        TabOrder = 7
        OnClick = ChangePathOfYTDLBtClick
        OnMouseMove = ChangePathOfYTDLBtMouseMove
      end
      object ignoreerrors: TCheckBox
        Left = 18
        Top = 34
        Width = 119
        Height = 17
        Caption = '--ignore-errors'
        TabOrder = 8
        OnMouseMove = ignoreerrorsMouseMove
      end
      object PathChangeBt: TButton
        Left = 598
        Top = 201
        Width = 73
        Height = 25
        Caption = 'Change it!'
        TabOrder = 9
        OnClick = PathChangeBtClick
      end
      object Path: TEdit
        Left = 3
        Top = 203
        Width = 589
        Height = 21
        TabOrder = 10
        Text = 'Path'
      end
      object ChangePathOfFFMBt: TButton
        Left = 496
        Top = 34
        Width = 175
        Height = 25
        Caption = 'Change path of FFmpeg.exe'
        TabOrder = 11
        OnClick = ChangePathOfFFMBtClick
      end
      object ConsoleInWindow: TCheckBox
        Left = 18
        Top = 103
        Width = 255
        Height = 17
        Caption = 'Show console in application'
        TabOrder = 12
        OnClick = ConsoleInWindowClick
      end
      object youtubedlhelpbt: TButton
        Left = 496
        Top = 65
        Width = 175
        Height = 25
        Caption = 'YouTube-Dl --help'
        TabOrder = 13
        OnClick = youtubedlhelpbtClick
      end
    end
    object ProxyNetworkSheet: TTabSheet
      Caption = 'Proxy+Network'
      ImageIndex = 1
      object GermanyInfo: TLabel
        Left = 3
        Top = 213
        Width = 511
        Height = 13
        Caption = 
          'If you are living in Germany, where these motherfuckers blocks e' +
          'verything, here you can configure proxy.'
      end
      object proxyurl: TCheckBox
        Left = 16
        Top = 9
        Width = 145
        Height = 17
        Caption = '--proxy TYPE URL HERE: '
        TabOrder = 0
        OnMouseMove = proxyurlMouseMove
      end
      object sockettimeout: TCheckBox
        Left = 16
        Top = 32
        Width = 241
        Height = 17
        Caption = '--socket-timeout TYPE IN SECONDS HERE:'
        TabOrder = 1
        OnMouseMove = sockettimeoutMouseMove
      end
      object sourceaddress: TCheckBox
        Left = 16
        Top = 56
        Width = 225
        Height = 17
        Caption = '--source-address TYPE IP HERE: '
        TabOrder = 2
        OnMouseMove = sourceaddressMouseMove
      end
      object forceipv6: TCheckBox
        Left = 16
        Top = 102
        Width = 161
        Height = 17
        Caption = '--force-ipv6 EXPERIMENTAL'
        TabOrder = 3
        OnClick = forceipv6Click
        OnMouseMove = forceipv6MouseMove
      end
      object forceipv4: TCheckBox
        Left = 16
        Top = 125
        Width = 161
        Height = 17
        Caption = '--force-ipv4 EXPERIMENTAL'
        TabOrder = 4
        OnClick = forceipv4Click
        OnMouseMove = forceipv4MouseMove
      end
      object geoverificationproxy: TCheckBox
        Left = 16
        Top = 79
        Width = 225
        Height = 17
        Caption = '--geo-verification-proxy TYPE URL HERE:'
        TabOrder = 5
        OnMouseMove = geoverificationproxyMouseMove
      end
      object proxyurl_text: TEdit
        Left = 248
        Top = 7
        Width = 409
        Height = 21
        TabOrder = 6
        Text = 'proxyurl_text'
      end
      object ConvertShitFromMinutesToSeconds: TButton
        Left = 352
        Top = 28
        Width = 305
        Height = 25
        Caption = 'Convert this shit from minutes to seconds'
        TabOrder = 7
        OnClick = ConvertShitFromMinutesToSecondsClick
      end
      object sourceaddress_text: TEdit
        Left = 248
        Top = 54
        Width = 409
        Height = 21
        TabOrder = 8
        Text = 'sourceaddress_text'
      end
      object geoverificationproxy_text: TEdit
        Left = 248
        Top = 77
        Width = 409
        Height = 21
        TabOrder = 9
        Text = 'geoverificationproxy_text'
      end
      object sockettimeout_text: TMaskEdit
        Left = 248
        Top = 30
        Width = 98
        Height = 21
        TabOrder = 10
        Text = ''
        OnChange = sockettimeout_textChange
      end
    end
    object VideoSelectionSheet: TTabSheet
      Caption = 'Video Selection'
      ImageIndex = 2
      object PlaylistInfo: TLabel
        Left = 3
        Top = 213
        Width = 370
        Height = 13
        Caption = 
          'Use only when you wan'#39't to download playlist, otherwise fuck you' +
          ' and crash.'
      end
      object DateMaskInfo: TLabel
        Left = 474
        Top = 17
        Width = 111
        Height = 13
        Caption = 'Date mask: YYYYMMDD'
      end
      object DateMaskInfo2: TLabel
        Left = 474
        Top = 36
        Width = 53
        Height = 13
        Caption = 'No spaces.'
      end
      object playliststart: TCheckBox
        Left = 16
        Top = 16
        Width = 137
        Height = 17
        Caption = '--playlist-start NUMBER: '
        TabOrder = 0
        OnMouseMove = playliststartMouseMove
      end
      object playlistend: TCheckBox
        Left = 16
        Top = 39
        Width = 137
        Height = 17
        Caption = '--playlist-end NUMBER:'
        TabOrder = 1
        OnMouseMove = playlistendMouseMove
      end
      object playlistitems: TCheckBox
        Left = 16
        Top = 62
        Width = 161
        Height = 17
        Caption = '--playlist-items ITEM_SPEC:'
        TabOrder = 2
        OnMouseMove = playlistitemsMouseMove
      end
      object matchtitle: TCheckBox
        Left = 16
        Top = 85
        Width = 154
        Height = 17
        Caption = '--match-title REGEX:'
        TabOrder = 3
        OnMouseMove = matchtitleMouseMove
      end
      object rejecttitle: TCheckBox
        Left = 16
        Top = 108
        Width = 154
        Height = 17
        Caption = '--reject-title REGEX'
        TabOrder = 4
        OnMouseMove = rejecttitleMouseMove
      end
      object maxdownloads: TCheckBox
        Left = 16
        Top = 131
        Width = 161
        Height = 17
        Caption = '--max-downloads NUMBER:'
        TabOrder = 5
        OnMouseMove = maxdownloadsMouseMove
      end
      object minfilesize: TCheckBox
        Left = 16
        Top = 154
        Width = 161
        Height = 17
        Caption = '--min-filesize NUMBER:'
        TabOrder = 6
        OnMouseMove = minfilesizeMouseMove
      end
      object maxfilesize: TCheckBox
        Left = 16
        Top = 177
        Width = 161
        Height = 17
        Caption = '--max-filesize NUMBER:'
        TabOrder = 7
        OnMouseMove = maxfilesizeMouseMove
      end
      object playliststart_text: TEdit
        Left = 176
        Top = 14
        Width = 65
        Height = 21
        TabOrder = 8
        Text = 'playliststart_text'
      end
      object playlistend_text: TEdit
        Left = 176
        Top = 37
        Width = 65
        Height = 21
        TabOrder = 9
        Text = 'Edit6'
      end
      object playlistitems_text: TEdit
        Left = 176
        Top = 60
        Width = 65
        Height = 21
        TabOrder = 10
        Text = 'Edit6'
      end
      object matchtitle_text: TEdit
        Left = 176
        Top = 83
        Width = 65
        Height = 21
        TabOrder = 11
        Text = 'Edit6'
      end
      object rejecttitle_text: TEdit
        Left = 176
        Top = 106
        Width = 65
        Height = 21
        TabOrder = 12
        Text = 'Edit6'
      end
      object maxdownloads_text: TEdit
        Left = 176
        Top = 129
        Width = 65
        Height = 21
        TabOrder = 13
        Text = 'Edit6'
      end
      object minfilesize_text: TEdit
        Left = 176
        Top = 152
        Width = 65
        Height = 21
        TabOrder = 14
        Text = 'Edit6'
      end
      object maxfilesize_text: TEdit
        Left = 176
        Top = 175
        Width = 65
        Height = 21
        TabOrder = 15
        Text = 'Edit6'
      end
      object date: TCheckBox
        Left = 256
        Top = 16
        Width = 137
        Height = 17
        Caption = '--date DATE: '
        TabOrder = 16
        OnMouseMove = dateMouseMove
      end
      object datebefore: TCheckBox
        Left = 256
        Top = 39
        Width = 137
        Height = 17
        Caption = '--datebefore DATE: '
        TabOrder = 17
        OnMouseMove = datebeforeMouseMove
      end
      object dateafter: TCheckBox
        Left = 256
        Top = 62
        Width = 137
        Height = 17
        Caption = '--dateafter DATE: '
        TabOrder = 18
        OnMouseMove = dateafterMouseMove
      end
      object minviews: TCheckBox
        Left = 256
        Top = 85
        Width = 137
        Height = 17
        Caption = '--min-views COUNT:'
        TabOrder = 19
        OnMouseMove = minviewsMouseMove
      end
      object maxviews: TCheckBox
        Left = 256
        Top = 108
        Width = 137
        Height = 17
        Caption = '--max-views COUNT:'
        TabOrder = 20
        OnMouseMove = maxviewsMouseMove
      end
      object matchfilter: TCheckBox
        Left = 256
        Top = 131
        Width = 137
        Height = 17
        Caption = '--match-filter FILTER:'
        TabOrder = 21
        OnMouseMove = matchfilterMouseMove
      end
      object agelimit: TCheckBox
        Left = 256
        Top = 154
        Width = 137
        Height = 17
        Caption = '--age-limit YEARS:'
        TabOrder = 22
        OnMouseMove = agelimitMouseMove
      end
      object matchfilter_text: TEdit
        Left = 384
        Top = 129
        Width = 65
        Height = 21
        TabOrder = 23
        Text = 'Edit6'
      end
      object agelimit_text: TEdit
        Left = 384
        Top = 152
        Width = 65
        Height = 21
        TabOrder = 24
        Text = 'Edit6'
      end
      object maxviews_text: TEdit
        Left = 384
        Top = 106
        Width = 65
        Height = 21
        TabOrder = 25
        Text = 'Edit6'
      end
      object minviews_text: TEdit
        Left = 384
        Top = 83
        Width = 65
        Height = 21
        TabOrder = 26
        Text = 'Edit6'
      end
      object noplaylist: TCheckBox
        Left = 474
        Top = 62
        Width = 135
        Height = 17
        Caption = '--no-playlist'
        TabOrder = 27
        OnClick = noplaylistClick
      end
      object yesplaylist: TCheckBox
        Left = 474
        Top = 85
        Width = 135
        Height = 17
        Caption = '--yes-playlist'
        TabOrder = 28
        OnClick = yesplaylistClick
      end
      object downloadarchive: TCheckBox
        Left = 256
        Top = 177
        Width = 153
        Height = 17
        Caption = '--download-archive FILE:'
        TabOrder = 29
        OnMouseMove = downloadarchiveMouseMove
      end
      object includeads: TCheckBox
        Left = 474
        Top = 108
        Width = 135
        Height = 17
        Caption = '--include-ads'
        TabOrder = 30
      end
      object downloadarchivefile: TButton
        Left = 399
        Top = 177
        Width = 50
        Height = 17
        Caption = 'FILE'
        TabOrder = 31
        OnClick = downloadarchivefileClick
      end
      object date_text: TMaskEdit
        Left = 384
        Top = 14
        Width = 65
        Height = 21
        EditMask = '00009999;1;_'
        MaxLength = 8
        TabOrder = 32
        Text = '        '
      end
      object datebefore_text: TMaskEdit
        Left = 384
        Top = 37
        Width = 65
        Height = 21
        EditMask = '00009999;1;_'
        MaxLength = 8
        TabOrder = 33
        Text = '        '
      end
      object dateafter_text: TMaskEdit
        Left = 384
        Top = 60
        Width = 65
        Height = 21
        EditMask = '00009999;1;_'
        MaxLength = 8
        TabOrder = 34
        Text = '        '
      end
    end
    object DownloadSheet: TTabSheet
      Caption = 'Download'
      ImageIndex = 3
      object limitrate: TCheckBox
        Left = 29
        Top = 16
        Width = 124
        Height = 17
        Caption = '--limit-rate RATE:'
        TabOrder = 0
        OnMouseMove = limitrateMouseMove
      end
      object retries: TCheckBox
        Left = 29
        Top = 39
        Width = 108
        Height = 17
        Caption = '--retries RETRIES:'
        TabOrder = 1
        OnMouseMove = retriesMouseMove
      end
      object fragmentretries: TCheckBox
        Left = 29
        Top = 62
        Width = 156
        Height = 17
        Caption = '--fragment-retries RETRIES:'
        TabOrder = 2
        OnMouseMove = fragmentretriesMouseMove
      end
      object buffersize: TCheckBox
        Left = 29
        Top = 85
        Width = 156
        Height = 17
        Caption = '--buffer-size SIZE:'
        TabOrder = 3
        OnMouseMove = buffersizeMouseMove
      end
      object noresizebuffer: TCheckBox
        Left = 29
        Top = 108
        Width = 156
        Height = 17
        Caption = '--no-resize-buffer'
        TabOrder = 4
        OnMouseMove = noresizebufferMouseMove
      end
      object playlistreverse: TCheckBox
        Left = 29
        Top = 131
        Width = 252
        Height = 17
        Caption = '--playlist-reverse'
        TabOrder = 5
        OnMouseMove = playlistreverseMouseMove
      end
      object xattrsetfilesize: TCheckBox
        Left = 29
        Top = 154
        Width = 370
        Height = 17
        Caption = '--xattr-set-filesize EXPERIMENTAL'
        TabOrder = 6
        OnMouseMove = xattrsetfilesizeMouseMove
      end
      object hlsprefernative: TCheckBox
        Left = 405
        Top = 16
        Width = 188
        Height = 17
        Caption = '--hls-prefer-native'
        TabOrder = 7
        OnMouseMove = hlsprefernativeMouseMove
      end
      object hlspreferffmpeg: TCheckBox
        Left = 405
        Top = 39
        Width = 188
        Height = 17
        Caption = '--hls-prefer-ffmpeg'
        TabOrder = 8
        OnMouseMove = hlspreferffmpegMouseMove
      end
      object hlsusempegts: TCheckBox
        Left = 405
        Top = 62
        Width = 188
        Height = 17
        Caption = '--hls-use-mpegts'
        TabOrder = 9
        OnMouseMove = hlsusempegtsMouseMove
      end
      object externaldownloadercmd: TCheckBox
        Left = 29
        Top = 177
        Width = 188
        Height = 17
        Caption = '--external-downloader COMMAND:'
        TabOrder = 10
        OnMouseMove = externaldownloadercmdMouseMove
      end
      object externaldownloaderargs: TCheckBox
        Left = 29
        Top = 200
        Width = 188
        Height = 17
        Caption = '--external-downloader-args ARGS:'
        TabOrder = 11
        OnMouseMove = externaldownloaderargsMouseMove
      end
      object limitrate_text: TEdit
        Left = 216
        Top = 14
        Width = 89
        Height = 21
        TabOrder = 12
        Text = 'limitrate_text'
      end
      object retries_text: TEdit
        Left = 216
        Top = 37
        Width = 89
        Height = 21
        TabOrder = 13
        Text = 'Edit21'
      end
      object fragmentretries_text: TEdit
        Left = 216
        Top = 60
        Width = 89
        Height = 21
        TabOrder = 14
        Text = 'Edit21'
      end
      object buffersize_text: TEdit
        Left = 216
        Top = 83
        Width = 89
        Height = 21
        TabOrder = 15
        Text = 'Edit21'
      end
      object externaldownloadercmd_text: TEdit
        Left = 216
        Top = 175
        Width = 377
        Height = 21
        TabOrder = 16
        Text = 'Edit21'
      end
      object externaldownloaderargs_text: TEdit
        Left = 216
        Top = 198
        Width = 377
        Height = 21
        TabOrder = 17
        Text = 'Edit21'
      end
      object writethumbnail: TCheckBox
        Left = 405
        Top = 85
        Width = 100
        Height = 17
        Caption = '--write-thumbnail'
        TabOrder = 18
        OnMouseMove = writethumbnailMouseMove
      end
      object writeallthumbnails: TCheckBox
        Left = 405
        Top = 108
        Width = 204
        Height = 17
        Caption = '--write-all-thumbnails'
        TabOrder = 19
        OnMouseMove = writeallthumbnailsMouseMove
      end
      object listthumbnails: TCheckBox
        Left = 405
        Top = 131
        Width = 188
        Height = 17
        Caption = '--list-thumbnails'
        TabOrder = 20
        OnMouseMove = listthumbnailsMouseMove
      end
    end
    object FileSystemSheet: TTabSheet
      Caption = 'Filesystem'
      ImageIndex = 4
      object batchfile: TCheckBox
        Left = 29
        Top = 16
        Width = 108
        Height = 17
        Caption = '--batch-file FILE:'
        TabOrder = 0
      end
      object id: TCheckBox
        Left = 29
        Top = 39
        Width = 108
        Height = 17
        Caption = '--id'
        TabOrder = 1
      end
      object outputtemplate: TCheckBox
        Left = 29
        Top = 62
        Width = 148
        Height = 17
        Caption = '--output YOUR TEMPLATE:'
        Checked = True
        Enabled = False
        State = cbChecked
        TabOrder = 2
      end
      object autonumbersize: TCheckBox
        Left = 29
        Top = 85
        Width = 164
        Height = 17
        Caption = '--autonumber-size NUMBER:'
        TabOrder = 3
      end
      object restrictfilenames: TCheckBox
        Left = 29
        Top = 108
        Width = 380
        Height = 17
        Caption = '--restrict-filenames'
        TabOrder = 4
      end
      object autonumber: TCheckBox
        Left = 30
        Top = 131
        Width = 379
        Height = 17
        Caption = '--auto-number (deprecated)'
        TabOrder = 5
      end
      object titledeprecated: TCheckBox
        Left = 29
        Top = 154
        Width = 164
        Height = 17
        Caption = '--title (deprecated)'
        TabOrder = 6
      end
      object literaldeprecated: TCheckBox
        Left = 29
        Top = 177
        Width = 164
        Height = 17
        Caption = '--literal (deprecated)'
        TabOrder = 7
      end
      object nooverwrites: TCheckBox
        Left = 461
        Top = 16
        Width = 157
        Height = 17
        Caption = '--no-overwrites'
        TabOrder = 8
      end
      object continue: TCheckBox
        Left = 461
        Top = 39
        Width = 157
        Height = 17
        Caption = '--continue'
        TabOrder = 9
      end
      object nocontinue: TCheckBox
        Left = 461
        Top = 62
        Width = 164
        Height = 17
        Caption = '--no-continue'
        TabOrder = 10
      end
      object nopart: TCheckBox
        Left = 461
        Top = 85
        Width = 157
        Height = 17
        Caption = '--no-part'
        TabOrder = 11
      end
      object nomtime: TCheckBox
        Left = 461
        Top = 108
        Width = 157
        Height = 17
        Caption = '--no-mtime'
        TabOrder = 12
      end
      object writedescription: TCheckBox
        Left = 461
        Top = 131
        Width = 157
        Height = 17
        Caption = '--write-description'
        TabOrder = 13
      end
      object writeinfojson: TCheckBox
        Left = 461
        Top = 154
        Width = 148
        Height = 17
        Caption = '--write-info-json'
        TabOrder = 14
      end
      object writeannotations: TCheckBox
        Left = 461
        Top = 177
        Width = 157
        Height = 17
        Caption = '--write-annotations'
        TabOrder = 15
      end
      object loadinfojson: TCheckBox
        Left = 29
        Top = 200
        Width = 124
        Height = 17
        Caption = '--load-info-json FILE:'
        TabOrder = 16
      end
      object cachedir: TCheckBox
        Left = 288
        Top = 152
        Width = 97
        Height = 17
        Caption = '--cache-dir DIR:'
        TabOrder = 17
      end
      object nocachedir: TCheckBox
        Left = 288
        Top = 175
        Width = 167
        Height = 17
        Caption = '--no-cache-dir'
        TabOrder = 18
      end
      object rmcachedir: TCheckBox
        Left = 288
        Top = 198
        Width = 167
        Height = 17
        Caption = '--rm-cache-dir'
        TabOrder = 19
      end
      object selectcachedir: TButton
        Left = 384
        Top = 152
        Width = 57
        Height = 17
        Caption = 'SELECT'
        TabOrder = 20
        OnClick = selectcachedirClick
      end
      object selectbatchfile: TButton
        Left = 200
        Top = 16
        Width = 241
        Height = 17
        Caption = 'SELECT BATCH FILE'
        TabOrder = 21
        OnClick = selectbatchfileClick
      end
      object outputtemplate_text: TEdit
        Left = 200
        Top = 60
        Width = 241
        Height = 21
        TabOrder = 22
        Text = 'outputtemplate_text'
      end
      object autonumbersize_text: TEdit
        Left = 200
        Top = 83
        Width = 65
        Height = 21
        TabOrder = 23
        Text = 'Edit27'
      end
      object titledeprecated_text: TEdit
        Left = 200
        Top = 152
        Width = 82
        Height = 21
        TabOrder = 24
        Text = 'Edit27'
      end
      object literaldeprecated_text: TEdit
        Left = 200
        Top = 175
        Width = 82
        Height = 21
        TabOrder = 25
        Text = 'Edit27'
      end
      object selectjsonfile: TButton
        Left = 199
        Top = 200
        Width = 79
        Height = 17
        Caption = 'SELECT'
        TabOrder = 26
        OnClick = selectjsonfileClick
      end
    end
    object WorkaroundSheet: TTabSheet
      Caption = 'Workarounds'
      ImageIndex = 5
      object encoding: TCheckBox
        Left = 149
        Top = 16
        Width = 220
        Height = 17
        Caption = '--encoding (experimental) ENCODING:'
        TabOrder = 0
      end
      object nocheckcertificate: TCheckBox
        Left = 149
        Top = 39
        Width = 204
        Height = 17
        Caption = '--no-check-certificate'
        TabOrder = 1
      end
      object preferinsecure: TCheckBox
        Left = 149
        Top = 86
        Width = 220
        Height = 17
        Caption = '--prefer-insecure'
        TabOrder = 2
      end
      object refererurl: TCheckBox
        Left = 149
        Top = 109
        Width = 204
        Height = 17
        Caption = '--referer URL:'
        TabOrder = 3
      end
      object addheader: TCheckBox
        Left = 149
        Top = 132
        Width = 204
        Height = 17
        Caption = '--add-header FIELD:VALUE: '
        TabOrder = 4
      end
      object bidiworkaround: TCheckBox
        Left = 149
        Top = 155
        Width = 204
        Height = 17
        Caption = '--bidi-workaround'
        TabOrder = 5
      end
      object sleepinterval: TCheckBox
        Left = 149
        Top = 178
        Width = 204
        Height = 17
        Caption = '--sleep-interval SECONDS:'
        TabOrder = 6
      end
      object encoding_text: TEdit
        Left = 375
        Top = 14
        Width = 146
        Height = 21
        TabOrder = 7
        Text = 'encoding_text'
      end
      object addheader_text: TEdit
        Left = 375
        Top = 130
        Width = 146
        Height = 21
        TabOrder = 8
        Text = 'Edit31'
      end
      object sleepinterval_text: TEdit
        Left = 375
        Top = 176
        Width = 34
        Height = 21
        TabOrder = 9
        Text = 'Edit31'
      end
      object referer_text: TEdit
        Left = 375
        Top = 103
        Width = 146
        Height = 21
        TabOrder = 10
        Text = 'referer_text'
      end
      object useragent: TCheckBox
        Left = 149
        Top = 62
        Width = 220
        Height = 17
        Caption = '--user-agent'
        TabOrder = 11
      end
      object useragent_text: TEdit
        Left = 375
        Top = 60
        Width = 146
        Height = 21
        TabOrder = 12
        Text = 'encoding_text'
        OnClick = useragent_textClick
      end
    end
    object FormatSubsSheet: TTabSheet
      Caption = 'Format+Subs'
      ImageIndex = 6
      object format: TCheckBox
        Left = 77
        Top = 16
        Width = 180
        Height = 17
        Caption = '--format FORMAT:'
        TabOrder = 0
      end
      object allformats: TCheckBox
        Left = 77
        Top = 39
        Width = 284
        Height = 17
        Caption = '--all-formats'
        TabOrder = 1
      end
      object preferfreeformats: TCheckBox
        Left = 77
        Top = 62
        Width = 284
        Height = 17
        Caption = '--prefer-free-formats'
        TabOrder = 2
      end
      object youtubeskipdashmanifest: TCheckBox
        Left = 77
        Top = 85
        Width = 180
        Height = 17
        Caption = '--youtube-skip-dash-manifest'
        TabOrder = 3
      end
      object mergeoutputformat: TCheckBox
        Left = 77
        Top = 108
        Width = 180
        Height = 17
        Caption = '--merge-output-format FORMAT:'
        TabOrder = 4
      end
      object writesub: TCheckBox
        Left = 77
        Top = 131
        Width = 180
        Height = 17
        Caption = '--write-sub'
        TabOrder = 5
      end
      object writeautosub: TCheckBox
        Left = 77
        Top = 154
        Width = 180
        Height = 17
        Caption = '--write-auto-sub'
        TabOrder = 6
      end
      object allsubs: TCheckBox
        Left = 77
        Top = 177
        Width = 180
        Height = 17
        Caption = '--all-subs'
        TabOrder = 7
      end
      object subformat: TCheckBox
        Left = 263
        Top = 154
        Width = 180
        Height = 17
        Caption = '--sub-format FORMAT:'
        TabOrder = 8
      end
      object sublang: TCheckBox
        Left = 263
        Top = 177
        Width = 180
        Height = 17
        Caption = '--sub-lang LANGS:'
        TabOrder = 9
      end
      object format_text: TEdit
        Left = 263
        Top = 14
        Width = 283
        Height = 21
        TabOrder = 10
        Text = 'FORMAT'
      end
      object mergeoutputformat_text: TEdit
        Left = 263
        Top = 106
        Width = 283
        Height = 21
        TabOrder = 11
        Text = 'FORMAT'
        OnClick = mergeoutputformat_textClick
      end
      object subformat_text: TEdit
        Left = 401
        Top = 148
        Width = 145
        Height = 21
        TabOrder = 12
        Text = 'FORMAT'
        OnClick = subformat_textClick
      end
      object sublang_text: TEdit
        Left = 401
        Top = 175
        Width = 145
        Height = 21
        TabOrder = 13
        Text = 'FORMAT'
      end
      object FormatGeneratorBT: TButton
        Left = 552
        Top = 12
        Width = 111
        Height = 25
        Caption = 'Format Generator'
        TabOrder = 14
        OnClick = FormatGeneratorBTClick
      end
    end
    object AuthSheet: TTabSheet
      Caption = 'Auth'
      ImageIndex = 7
      object safetyinfo: TLabel
        Left = 448
        Top = 14
        Width = 221
        Height = 72
        Caption = 
          'For safety reasons, your password will not be visible in command' +
          ' preview - only when you click "copy command" and paste it.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object username: TCheckBox
        Left = 29
        Top = 16
        Width = 197
        Height = 17
        Caption = '--username USERNAME:'
        TabOrder = 0
      end
      object password: TCheckBox
        Left = 29
        Top = 39
        Width = 197
        Height = 17
        Caption = '--password PASSWORD:'
        TabOrder = 1
      end
      object twofactor: TCheckBox
        Left = 29
        Top = 62
        Width = 197
        Height = 17
        Caption = '--twofactor TWOFACTOR:'
        TabOrder = 2
      end
      object videopassword: TCheckBox
        Left = 29
        Top = 85
        Width = 197
        Height = 17
        Caption = '--video-password PASSWORD:'
        TabOrder = 3
      end
      object netrc: TCheckBox
        Left = 29
        Top = 108
        Width = 380
        Height = 17
        Caption = '--netrc'
        TabOrder = 4
      end
      object username_text: TEdit
        Left = 232
        Top = 14
        Width = 177
        Height = 21
        TabOrder = 5
        Text = 'username_text'
      end
      object twofactor_text: TEdit
        Left = 232
        Top = 60
        Width = 177
        Height = 21
        TabOrder = 6
        Text = 'Edit36'
      end
      object videopassword_text: TEdit
        Left = 232
        Top = 83
        Width = 177
        Height = 21
        TabOrder = 7
        Text = 'Edit36'
      end
      object password_text: TMaskEdit
        Left = 232
        Top = 37
        Width = 177
        Height = 21
        PasswordChar = '#'
        TabOrder = 8
        Text = 'password_text'
      end
      object apmso: TCheckBox
        Left = 29
        Top = 131
        Width = 197
        Height = 17
        Caption = '--ap-mso MSO:'
        TabOrder = 9
      end
      object apusername: TCheckBox
        Left = 29
        Top = 154
        Width = 197
        Height = 17
        Caption = '--ap-username USERNAME:'
        TabOrder = 10
      end
      object appassword: TCheckBox
        Left = 29
        Top = 177
        Width = 197
        Height = 17
        Caption = '--ap-password PASSWORD:'
        TabOrder = 11
      end
      object appassword_text: TMaskEdit
        Left = 232
        Top = 175
        Width = 177
        Height = 21
        PasswordChar = '#'
        TabOrder = 12
        Text = 'password_text'
      end
      object apmso_text: TEdit
        Left = 232
        Top = 129
        Width = 177
        Height = 21
        TabOrder = 13
        Text = 'username_text'
      end
      object apusername_text: TEdit
        Left = 232
        Top = 152
        Width = 177
        Height = 21
        TabOrder = 14
        Text = 'Edit36'
      end
      object msolistbt: TButton
        Left = 416
        Top = 127
        Width = 57
        Height = 25
        Caption = 'MSO List'
        TabOrder = 15
        OnClick = msolistbtClick
      end
    end
    object PostProcessingSheet: TTabSheet
      Caption = 'Post Processing'
      ImageIndex = 8
      object extractaudio: TCheckBox
        Left = 29
        Top = 16
        Width = 179
        Height = 17
        Caption = '--extract-audio'
        TabOrder = 0
      end
      object audioformat: TCheckBox
        Left = 29
        Top = 39
        Width = 165
        Height = 17
        Caption = '--audio-format FORMAT:'
        TabOrder = 1
      end
      object audioquality: TCheckBox
        Left = 29
        Top = 62
        Width = 165
        Height = 17
        Caption = '--audio-quality QUALITY:'
        TabOrder = 2
      end
      object recodevideo: TCheckBox
        Left = 29
        Top = 85
        Width = 165
        Height = 17
        Caption = '--recode-video FORMAT:'
        TabOrder = 3
      end
      object postprocessorargs: TCheckBox
        Left = 29
        Top = 108
        Width = 165
        Height = 17
        Caption = '--postprocessor-args ARGS:'
        TabOrder = 4
      end
      object keepvideo: TCheckBox
        Left = 29
        Top = 131
        Width = 306
        Height = 17
        Caption = '--keep-video'
        TabOrder = 5
      end
      object nopostoverwrites: TCheckBox
        Left = 29
        Top = 154
        Width = 306
        Height = 17
        Caption = '--no-post-overwrites'
        TabOrder = 6
      end
      object embedsubs: TCheckBox
        Left = 29
        Top = 177
        Width = 306
        Height = 17
        Caption = '--embed-subs'
        TabOrder = 7
      end
      object embedthumbnail: TCheckBox
        Left = 29
        Top = 200
        Width = 306
        Height = 17
        Caption = '--embed-thumbnail'
        TabOrder = 8
      end
      object addmetadata: TCheckBox
        Left = 381
        Top = 18
        Width = 97
        Height = 17
        Caption = '--add-metadata'
        TabOrder = 9
      end
      object metadatafromtitle: TCheckBox
        Left = 381
        Top = 41
        Width = 172
        Height = 17
        Caption = '--metadata-from-title FORMAT:'
        TabOrder = 10
      end
      object xattrs: TCheckBox
        Left = 381
        Top = 64
        Width = 164
        Height = 17
        Caption = '--xattrs'
        TabOrder = 11
      end
      object fixup: TCheckBox
        Left = 381
        Top = 87
        Width = 164
        Height = 17
        Caption = '--fixup POLICY:'
        TabOrder = 12
      end
      object preferaconv: TCheckBox
        Left = 381
        Top = 110
        Width = 164
        Height = 17
        Caption = '--prefer-aconv'
        TabOrder = 13
      end
      object preferffmpeg: TCheckBox
        Left = 381
        Top = 133
        Width = 164
        Height = 17
        Caption = '--prefer-ffmpeg'
        TabOrder = 14
      end
      object ffmpeglocation: TCheckBox
        Left = 381
        Top = 156
        Width = 164
        Height = 17
        Caption = '--ffmpeg-location PATH:'
        TabOrder = 15
      end
      object execcmd: TCheckBox
        Left = 381
        Top = 179
        Width = 164
        Height = 17
        Caption = '--exec CMD:'
        TabOrder = 16
      end
      object convertsubs: TCheckBox
        Left = 381
        Top = 202
        Width = 164
        Height = 17
        Caption = '--convert-subs FORMAT:'
        TabOrder = 17
      end
      object audioformat_text: TEdit
        Left = 200
        Top = 37
        Width = 135
        Height = 21
        TabOrder = 18
        Text = 'audioformat_text'
        OnClick = audioformat_textClick
      end
      object audioquality_text: TEdit
        Left = 200
        Top = 60
        Width = 135
        Height = 21
        TabOrder = 19
        Text = 'Edit36'
        OnClick = audioquality_textClick
      end
      object recodevideo_text: TEdit
        Left = 200
        Top = 83
        Width = 135
        Height = 21
        TabOrder = 20
        Text = 'Edit36'
        OnClick = recodevideo_textClick
      end
      object postprocessorargs_text: TEdit
        Left = 200
        Top = 106
        Width = 135
        Height = 21
        TabOrder = 21
        Text = 'Edit36'
      end
      object metadatafromtitle_text: TEdit
        Left = 559
        Top = 39
        Width = 82
        Height = 21
        TabOrder = 22
        Text = 'Edit36'
      end
      object fixup_text: TEdit
        Left = 559
        Top = 83
        Width = 82
        Height = 21
        TabOrder = 23
        Text = 'Edit36'
        OnClick = fixup_textClick
      end
      object convertsubs_text: TEdit
        Left = 559
        Top = 200
        Width = 82
        Height = 21
        TabOrder = 24
        Text = 'Edit36'
        OnClick = convertsubs_textClick
      end
      object execcmd_text: TEdit
        Left = 559
        Top = 177
        Width = 82
        Height = 21
        TabOrder = 25
        Text = 'Edit36'
      end
      object ffmpeglocationbt: TButton
        Left = 559
        Top = 154
        Width = 82
        Height = 21
        Caption = 'PATH'
        TabOrder = 26
        OnClick = ffmpeglocationbtClick
      end
    end
    object ConsoleSheet: TTabSheet
      Caption = 'Console'
      ImageIndex = 9
      OnContextPopup = ConsoleSheetContextPopup
      OnEnter = ConsoleSheetEnter
      object ConsoleInApp: TMemo
        Left = 0
        Top = 0
        Width = 671
        Height = 226
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        Lines.Strings = (
          '')
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
  end
  object MainCommand: TMemo
    Left = 8
    Top = 286
    Width = 810
    Height = 106
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssVertical
    TabOrder = 2
    OnMouseLeave = MainCommandMouseLeave
    OnMouseMove = MainCommandMouseMove
  end
  object CopyURL: TButton
    Left = 556
    Top = 398
    Width = 150
    Height = 25
    Caption = 'Copy command to clipboard'
    TabOrder = 3
    OnClick = CopyURLClick
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 431
    Width = 826
    Height = 19
    Panels = <
      item
        Width = 350
      end
      item
        Width = 450
      end
      item
        Width = 20
      end>
  end
  object RUNITBt: TButton
    Left = 712
    Top = 398
    Width = 106
    Height = 25
    Caption = 'Run script once'
    TabOrder = 5
    OnClick = RUNITBtClick
  end
  object QuickGenerate: TButton
    Left = 696
    Top = 33
    Width = 122
    Height = 25
    Caption = 'Quick Generate'
    TabOrder = 6
    OnClick = QuickGenerateClick
  end
  object resetsettings: TButton
    Left = 696
    Top = 157
    Width = 122
    Height = 25
    Caption = 'Reset settings'
    TabOrder = 7
    OnClick = ResetSettingsClick
  end
  object VideoCheck: TButton
    Left = 696
    Top = 64
    Width = 122
    Height = 25
    Caption = 'VideoCheck'
    TabOrder = 8
    OnClick = videocheckClick
  end
  object LoadConfBt: TButton
    Left = 696
    Top = 95
    Width = 122
    Height = 25
    Caption = 'Load configuration'
    TabOrder = 9
    OnClick = LoadConfBtClick
  end
  object SaveConfBt: TButton
    Left = 696
    Top = 126
    Width = 122
    Height = 25
    Caption = 'Save configuration'
    TabOrder = 10
    OnClick = SaveConfBtClick
  end
  object AppSettBt: TButton
    Left = 696
    Top = 219
    Width = 122
    Height = 25
    Caption = 'Application settings'
    TabOrder = 11
    OnClick = AppSettBtClick
  end
  object VersionBt: TButton
    Left = 696
    Top = 188
    Width = 59
    Height = 25
    Caption = '--version'
    TabOrder = 12
    OnClick = versionbuttonClick
  end
  object UpdateBt: TButton
    Left = 761
    Top = 188
    Width = 57
    Height = 25
    Caption = '--update'
    TabOrder = 13
    OnClick = updatebuttonClick
  end
  object QueueBt: TButton
    Left = 696
    Top = 250
    Width = 122
    Height = 25
    Hint = 'Available soon!'
    Caption = 'Queue'
    TabOrder = 14
    OnClick = QueueBtClick
  end
  object AddToQueueBt: TButton
    Left = 8
    Top = 398
    Width = 121
    Height = 25
    Caption = 'Add to queue'
    TabOrder = 15
    OnClick = AddToQueueBtClick
  end
  object Button1: TButton
    Left = 424
    Top = 398
    Width = 126
    Height = 25
    Caption = 'Skip current download'
    TabOrder = 16
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 384
    Top = 398
    Width = 34
    Height = 25
    Caption = 'Log'
    TabOrder = 17
    OnClick = Button2Click
  end
  object Timer1: TTimer
    Interval = 500
    OnTimer = Timer1Timer
    Left = 70
    Top = 312
  end
  object OpenDialogForArchive: TOpenDialog
    Left = 54
    Top = 320
  end
  object OpenDialogForBatch: TOpenDialog
    Left = 80
    Top = 320
  end
  object OpenDialogForJson: TOpenDialog
    Left = 72
    Top = 320
  end
  object OpenDialogForFFmpeg: TOpenDialog
    Left = 152
    Top = 312
  end
  object OpenDialogForYTDL: TOpenDialog
    Left = 680
    Top = 344
  end
  object OpenDialogForLoad: TOpenDialog
    Left = 199
    Top = 313
  end
  object OpenDialogForSave: TSaveDialog
    Left = 295
    Top = 307
  end
  object OpenDialog1: TOpenDialog
    Left = 568
    Top = 331
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 2000
    OnTimer = Timer2Timer
    Left = 132
    Top = 339
  end
  object FIXUPPolicyMenu: TPopupMenu
    Left = 492
    Top = 339
    object never1: TMenuItem
      Caption = 'never'
      OnClick = never1Click
    end
    object warn1: TMenuItem
      Caption = 'warn'
      OnClick = warn1Click
    end
    object detectorwarn1: TMenuItem
      Caption = 'detect_or_warn'
      OnClick = detectorwarn1Click
    end
  end
  object AUDIOFORMATPopup: TPopupMenu
    Left = 292
    Top = 291
    object best1: TMenuItem
      Caption = 'best'
      OnClick = best1Click
    end
    object aac1: TMenuItem
      Caption = 'aac'
      OnClick = aac1Click
    end
    object vorbis1: TMenuItem
      Caption = 'vorbis'
      OnClick = vorbis1Click
    end
    object mp31: TMenuItem
      Caption = 'mp3'
      OnClick = mp31Click
    end
    object m4a1: TMenuItem
      Caption = 'm4a'
      OnClick = m4a1Click
    end
    object opus1: TMenuItem
      Caption = 'opus'
      OnClick = opus1Click
    end
    object wav1: TMenuItem
      Caption = 'wav'
      OnClick = wav1Click
    end
  end
  object RecodeVideoPopup: TPopupMenu
    Left = 220
    Top = 291
    object mp41: TMenuItem
      Caption = 'mp4'
      OnClick = mp41Click
    end
    object flv1: TMenuItem
      Caption = 'flv'
      OnClick = flv1Click
    end
    object ogg1: TMenuItem
      Caption = 'ogg'
      OnClick = ogg1Click
    end
    object webm1: TMenuItem
      Caption = 'webm'
      OnClick = webm1Click
    end
    object mkv1: TMenuItem
      Caption = 'mkv'
      OnClick = mkv1Click
    end
    object avi1: TMenuItem
      Caption = 'avi'
      OnClick = avi1Click
    end
  end
  object ConvertSubsPopup: TPopupMenu
    Left = 404
    Top = 347
    object srt1: TMenuItem
      Caption = 'srt'
      OnClick = srt1Click
    end
    object ass1: TMenuItem
      Caption = 'ass'
      OnClick = ass1Click
    end
    object vtt1: TMenuItem
      Caption = 'vtt'
      OnClick = vtt1Click
    end
  end
  object SubFormatPopup: TPopupMenu
    Left = 608
    Top = 339
    object ass2: TMenuItem
      Caption = 'ass'
      OnClick = ass2Click
    end
    object srt2: TMenuItem
      Caption = 'srt'
      OnClick = srt2Click
    end
    object best2: TMenuItem
      Caption = 'best'
      OnClick = best2Click
    end
  end
  object MergeOutputPopup: TPopupMenu
    Left = 492
    Top = 283
    object mkv2: TMenuItem
      Caption = 'mkv'
      OnClick = mkv2Click
    end
    object mp32: TMenuItem
      Caption = 'mp4'
      OnClick = mp32Click
    end
    object ogg2: TMenuItem
      Caption = 'ogg'
      OnClick = ogg2Click
    end
    object webm2: TMenuItem
      Caption = 'webm'
      OnClick = webm2Click
    end
    object flv2: TMenuItem
      Caption = 'flv'
      OnClick = flv2Click
    end
  end
  object AudioQualityPopup: TPopupMenu
    Left = 388
    Top = 339
    object N0better1: TMenuItem
      Caption = '0 (better)'
      OnClick = N0better1Click
    end
    object N11: TMenuItem
      Caption = '1'
      OnClick = N11Click
    end
    object N21: TMenuItem
      Caption = '2'
      OnClick = N21Click
    end
    object N31: TMenuItem
      Caption = '3'
      OnClick = N31Click
    end
    object N41: TMenuItem
      Caption = '4'
      OnClick = N41Click
    end
    object N51: TMenuItem
      Caption = '5 (default)'
      OnClick = N51Click
    end
    object N61: TMenuItem
      Caption = '6'
      OnClick = N61Click
    end
    object N71: TMenuItem
      Caption = '7'
      OnClick = N71Click
    end
    object N81: TMenuItem
      Caption = '8'
      OnClick = N81Click
    end
    object N91: TMenuItem
      Caption = '9 (worse)'
      OnClick = N91Click
    end
    object N128Kbps1: TMenuItem
      Caption = '128KBps'
      OnClick = N128Kbps1Click
    end
    object N256kbps1: TMenuItem
      Caption = '256KBps'
      OnClick = N256kbps1Click
    end
    object N320kbps1: TMenuItem
      Caption = '320KBps'
      OnClick = N320kbps1Click
    end
  end
  object ConsoleInAppRefresh: TTimer
    Enabled = False
    Interval = 200
    OnTimer = ConsoleInAppRefreshTimer
    Left = 720
    Top = 344
  end
  object UserAgentMenu: TPopupMenu
    Left = 556
    Top = 291
    object GoogleBot1: TMenuItem
      Caption = 'GoogleBot'
      OnClick = GoogleBot1Click
    end
    object BingBot1: TMenuItem
      Caption = 'BingBot'
      OnClick = BingBot1Click
    end
    object Chrome411: TMenuItem
      Caption = 'Chrome 41'
      OnClick = Chrome411Click
    end
    object Firefox4011: TMenuItem
      Caption = 'Firefox 40.1'
      OnClick = Firefox4011Click
    end
    object Opera9801: TMenuItem
      Caption = 'Opera 9.80'
      OnClick = Opera9801Click
    end
    object Android4031: TMenuItem
      Caption = 'Android 4.0.3'
      OnClick = Android4031Click
    end
    object WindowsMediaPlayer111: TMenuItem
      Caption = 'Windows Media Player 11'
      OnClick = WindowsMediaPlayer111Click
    end
  end
  object PasteURLPopup: TPopupMenu
    Left = 356
    Top = 163
    object Pasteonly1: TMenuItem
      Caption = 'Paste'
      OnClick = Pasteonly1Click
    end
    object Pasteaddtoqueue1: TMenuItem
      Caption = 'Paste + add to queue'
      OnClick = Pasteaddtoqueue1Click
    end
    object Editonly1: TMenuItem
      Caption = 'Edit'
      OnClick = Editonly1Click
    end
  end
  object Timer3: TTimer
    Interval = 3000
    OnTimer = Timer3Timer
    Left = 452
    Top = 307
  end
end

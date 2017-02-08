object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'QuickGenerate'
  ClientHeight = 306
  ClientWidth = 393
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object MoreSettingsGroup: TGroupBox
    Left = 0
    Top = 73
    Width = 393
    Height = 196
    Align = alTop
    Caption = 'More settings'
    TabOrder = 0
    ExplicitWidth = 397
    object VideoSettingsGroup: TGroupBox
      Left = 3
      Top = 41
      Width = 169
      Height = 151
      Caption = 'Video settings'
      TabOrder = 0
      object LowQuality: TRadioButton
        Left = 8
        Top = 95
        Width = 153
        Height = 17
        Caption = 'Low quality (max: 480p)'
        TabOrder = 0
      end
      object MediumQuality: TRadioButton
        Left = 8
        Top = 72
        Width = 153
        Height = 17
        Caption = 'Medium quality (max: 720p)'
        TabOrder = 1
      end
      object HighQuality: TRadioButton
        Left = 8
        Top = 49
        Width = 153
        Height = 17
        Caption = 'High quality (max: 1080p)'
        TabOrder = 2
      end
      object BestQuality: TRadioButton
        Left = 8
        Top = 26
        Width = 153
        Height = 17
        Caption = 'Best quality (max: 4K)'
        TabOrder = 3
      end
      object fps60: TCheckBox
        Left = 8
        Top = 118
        Width = 153
        Height = 17
        Caption = '60 fps if present'
        TabOrder = 4
      end
    end
    object AudioSettingsGroup: TGroupBox
      Left = 254
      Top = 42
      Width = 134
      Height = 151
      Caption = 'Audio settings'
      TabOrder = 1
      object AudioBest: TRadioButton
        Left = 16
        Top = 26
        Width = 105
        Height = 17
        Caption = 'Auto best format'
        TabOrder = 0
      end
      object AudioMP3: TRadioButton
        Left = 16
        Top = 49
        Width = 97
        Height = 17
        Caption = 'MP3'
        TabOrder = 1
      end
      object AudioAAC: TRadioButton
        Left = 16
        Top = 72
        Width = 97
        Height = 17
        Caption = 'AAC'
        TabOrder = 2
      end
      object AudioM4A: TRadioButton
        Left = 16
        Top = 95
        Width = 97
        Height = 17
        Caption = 'M4A'
        TabOrder = 3
      end
      object AudioOpus: TRadioButton
        Left = 16
        Top = 118
        Width = 113
        Height = 17
        Caption = 'Opus'
        TabOrder = 4
      end
    end
    object FormatGroup: TGroupBox
      Left = 178
      Top = 42
      Width = 70
      Height = 151
      Caption = 'Format'
      TabOrder = 2
      object RecodeMP4: TRadioButton
        Left = 11
        Top = 26
        Width = 41
        Height = 17
        Caption = 'MP4'
        TabOrder = 0
      end
      object RecodeAVI: TRadioButton
        Left = 11
        Top = 49
        Width = 41
        Height = 17
        Caption = 'AVI'
        TabOrder = 1
      end
      object RecodeFLV: TRadioButton
        Left = 11
        Top = 72
        Width = 41
        Height = 17
        Caption = 'FLV'
        TabOrder = 2
      end
      object RecodeMKV: TRadioButton
        Left = 11
        Top = 95
        Width = 41
        Height = 17
        Caption = 'MKV'
        TabOrder = 3
      end
      object RecodeWEBM: TRadioButton
        Left = 11
        Top = 118
        Width = 49
        Height = 17
        Caption = 'WEBM'
        TabOrder = 4
      end
    end
    object VideoAudio: TRadioButton
      Left = 11
      Top = 18
      Width = 113
      Height = 17
      Caption = 'Video+audio'
      TabOrder = 3
      OnClick = VideoAudioClick
    end
    object RecodeVideo: TCheckBox
      Left = 178
      Top = 18
      Width = 70
      Height = 17
      Caption = 'Recode'
      TabOrder = 4
      OnClick = RecodeVideoClick
    end
    object AudioOnly: TRadioButton
      Left = 254
      Top = 18
      Width = 113
      Height = 17
      Caption = 'Audio only'
      TabOrder = 5
      OnClick = AudioOnlyClick
    end
  end
  object OneClickGroup: TGroupBox
    Left = 0
    Top = 0
    Width = 393
    Height = 73
    Align = alTop
    Caption = 'One-Click settings'
    TabOrder = 1
    ExplicitTop = -6
    object btnMP3: TButton
      Left = 270
      Top = 27
      Width = 118
      Height = 25
      Caption = 'Best MP3'
      TabOrder = 0
      OnClick = btnMP3Click
    end
    object btnMP4: TButton
      Left = 11
      Top = 27
      Width = 105
      Height = 25
      Caption = 'Best MP4'
      TabOrder = 1
      OnClick = btnMP4Click
    end
    object btnWEBM: TButton
      Left = 137
      Top = 27
      Width = 111
      Height = 25
      Caption = 'Best WEBM'
      TabOrder = 2
      OnClick = btnWEBMClick
    end
  end
  object BottomButtonPanel: TPanel
    Left = 0
    Top = 274
    Width = 393
    Height = 32
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 304
    ExplicitWidth = 405
    object GenerateSettingsBt: TButton
      Left = 279
      Top = 1
      Width = 113
      Height = 30
      Align = alRight
      Caption = 'Generate settings'
      TabOrder = 0
      OnClick = GenerateSettingsBtClick
      ExplicitLeft = 283
      ExplicitTop = 8
      ExplicitHeight = 25
    end
    object CancelBt: TButton
      Left = 204
      Top = 1
      Width = 75
      Height = 30
      Align = alRight
      Caption = 'Cancel'
      TabOrder = 1
      OnClick = CancelBtClick
      ExplicitLeft = 202
      ExplicitTop = 8
      ExplicitHeight = 25
    end
  end
end

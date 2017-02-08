object Form3: TForm3
  Left = 89
  Top = 153
  AutoSize = True
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = 'Generate something!'
  ClientHeight = 156
  ClientWidth = 456
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
  object prvwtext: TLabel
    Left = 0
    Top = 136
    Width = 42
    Height = 13
    Caption = 'Preview:'
  end
  object formatresult: TEdit
    Left = 48
    Top = 133
    Width = 327
    Height = 21
    TabOrder = 0
    Text = 'formatresult'
  end
  object donebtn: TButton
    Left = 381
    Top = 131
    Width = 75
    Height = 25
    Caption = 'DONE!!'
    TabOrder = 1
    OnClick = donebtnClick
  end
  object PickAFormat: TGroupBox
    Left = 0
    Top = 0
    Width = 210
    Height = 121
    Caption = 'Pick a format'
    TabOrder = 2
    object threegp: TRadioButton
      Left = 24
      Top = 93
      Width = 113
      Height = 17
      Caption = '3gp'
      TabOrder = 0
      OnClick = threegpClick
    end
    object webm8: TRadioButton
      Left = 24
      Top = 70
      Width = 153
      Height = 17
      Caption = 'webm (vp8+vorbis)'
      TabOrder = 1
      OnClick = webm8Click
    end
    object webm9: TRadioButton
      Left = 24
      Top = 47
      Width = 153
      Height = 17
      Caption = 'webm (vp9+opus or vorbis)'
      TabOrder = 2
      OnClick = webm9Click
    end
    object mp4: TRadioButton
      Left = 24
      Top = 24
      Width = 153
      Height = 17
      Caption = 'mp4 (mp4+m4a)'
      TabOrder = 3
      OnClick = mp4Click
    end
  end
  object pickaquality: TGroupBox
    Left = 216
    Top = 0
    Width = 240
    Height = 121
    Caption = 'Pick a quality'
    TabOrder = 3
    object p1080: TRadioButton
      Left = 15
      Top = 47
      Width = 57
      Height = 17
      Caption = '1080p'
      TabOrder = 0
      OnClick = p1080Click
    end
    object p144: TRadioButton
      Left = 150
      Top = 70
      Width = 49
      Height = 17
      Caption = '144p'
      TabOrder = 1
      OnClick = p144Click
    end
    object p1440: TRadioButton
      Left = 150
      Top = 24
      Width = 50
      Height = 17
      Caption = '1440p'
      TabOrder = 2
      OnClick = p1440Click
    end
    object p2160: TRadioButton
      Left = 94
      Top = 24
      Width = 50
      Height = 17
      Caption = '2160p'
      TabOrder = 3
      OnClick = p2160Click
    end
    object p240: TRadioButton
      Left = 94
      Top = 70
      Width = 49
      Height = 17
      Caption = '240p'
      TabOrder = 4
      OnClick = p240Click
    end
    object p360: TRadioButton
      Left = 15
      Top = 70
      Width = 49
      Height = 17
      Caption = '360p'
      TabOrder = 5
      OnClick = p360Click
    end
    object p480: TRadioButton
      Left = 150
      Top = 47
      Width = 49
      Height = 17
      Caption = '480p'
      TabOrder = 6
      OnClick = p480Click
    end
    object p720: TRadioButton
      Left = 94
      Top = 47
      Width = 49
      Height = 17
      Caption = '720p'
      TabOrder = 7
      OnClick = p720Click
    end
    object fps60: TCheckBox
      Left = 15
      Top = 93
      Width = 49
      Height = 17
      Caption = '60fps'
      TabOrder = 8
      OnClick = fps60Click
    end
    object bestquality: TRadioButton
      Left = 15
      Top = 24
      Width = 73
      Height = 17
      Caption = 'Best quality'
      TabOrder = 9
      OnClick = bestqualityClick
    end
  end
end

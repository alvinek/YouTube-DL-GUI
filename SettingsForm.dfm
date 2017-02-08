object Form6: TForm6
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Settings'
  ClientHeight = 277
  ClientWidth = 470
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object SettingsPage: TPageControl
    Left = 0
    Top = 0
    Width = 470
    Height = 249
    ActivePage = SettingsMainSheet
    Align = alTop
    TabOrder = 0
    object SettingsMainSheet: TTabSheet
      Caption = 'Main settings'
      object Label1: TLabel
        Left = 3
        Top = 120
        Width = 82
        Height = 13
        Caption = 'FFmpeg location:'
      end
      object Label2: TLabel
        Left = 3
        Top = 166
        Width = 74
        Height = 13
        Caption = 'Aconv location:'
      end
      object Label3: TLabel
        Left = 3
        Top = 74
        Width = 96
        Height = 13
        Caption = 'Youtube-dl location:'
      end
      object DontRefresh: TCheckBox
        Left = 3
        Top = 3
        Width = 451
        Height = 17
        Caption = 'Do not refresh console while mouse is over'
        TabOrder = 0
      end
      object DontSave: TCheckBox
        Left = 3
        Top = 26
        Width = 451
        Height = 17
        Caption = 'Do not save last location and path'
        TabOrder = 1
      end
      object youtubedllocation: TEdit
        Left = 3
        Top = 93
        Width = 375
        Height = 21
        TabOrder = 2
        Text = 'youtubedllocation'
      end
      object ydbt: TButton
        Left = 384
        Top = 91
        Width = 75
        Height = 25
        Caption = 'Specify'
        TabOrder = 3
        OnClick = ydbtClick
      end
      object ffmpeglocation: TEdit
        Left = 3
        Top = 139
        Width = 375
        Height = 21
        TabOrder = 4
        Text = 'ffmpeglocation'
      end
      object ffbt: TButton
        Left = 384
        Top = 137
        Width = 75
        Height = 25
        Caption = 'Select'
        TabOrder = 5
        OnClick = ffbtClick
      end
      object aconvlocation: TEdit
        Left = 3
        Top = 185
        Width = 375
        Height = 21
        TabOrder = 6
        Text = 'aconvlocation'
      end
      object avbt: TButton
        Left = 384
        Top = 183
        Width = 75
        Height = 25
        Caption = 'Browse'
        TabOrder = 7
        OnClick = avbtClick
      end
      object RememberConfiguration: TCheckBox
        Left = 3
        Top = 49
        Width = 451
        Height = 17
        Caption = 'Remember last YouTube-Dl configuration'
        TabOrder = 8
      end
    end
    object SettingsLanguageSheet: TTabSheet
      Caption = 'Language settings'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lngPick: TGroupBox
        Left = 0
        Top = 0
        Width = 459
        Height = 100
        Caption = 'Pick language:'
        TabOrder = 0
        object lngENG: TRadioButton
          Left = 16
          Top = 24
          Width = 425
          Height = 17
          Caption = 'English'
          TabOrder = 0
          OnClick = lngENGClick
        end
        object lngPLK: TRadioButton
          Left = 16
          Top = 47
          Width = 425
          Height = 17
          Caption = 'Polski (niekompletny)'
          TabOrder = 1
          OnClick = lngPLKClick
        end
        object keepfunctionsnamesoriginal: TCheckBox
          Left = 16
          Top = 70
          Width = 425
          Height = 17
          Caption = 'Keep original settings names'
          TabOrder = 2
          OnClick = keepfunctionsnamesoriginalClick
        end
      end
    end
    object SettingsAboutSheet: TTabSheet
      Caption = 'About YouTube-DL GUI'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object AboutText: TMemo
        Left = 3
        Top = 3
        Width = 456
        Height = 208
        Lines.Strings = (
          'Command send!'
          'youtube-dl-gui --about-load...'
          '[about:ytdlgui] Getting about...'
          ''
          'Application to make youtube-dl easier and prettier!'
          ''
          'Authors:'
          
            'of youtube-dl are here: https://rg3.github.io/youtube-dl/about.h' +
            'tml'
          'of graphical interface: Alvinek'
          ''
          'And, of course, thanks for BETA-Testing to:'
          '- mruczek'
          '- franmo (author of Odkurzacz, check here: http://franmo.pl/)'
          '- Damcio918'
          '- everyone of Android-Root Team')
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
  end
  object BtOK: TButton
    Left = 320
    Top = 249
    Width = 75
    Height = 28
    Align = alRight
    Caption = 'OK'
    TabOrder = 1
    OnClick = BtOKClick
  end
  object BtCancel: TButton
    Left = 395
    Top = 249
    Width = 75
    Height = 28
    Align = alRight
    Caption = 'Cancel'
    TabOrder = 2
    OnClick = BtCancelClick
  end
end

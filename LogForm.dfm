object LogWindow: TLogWindow
  Left = 0
  Top = 0
  Width = 776
  Height = 317
  AutoScroll = True
  Caption = 'YouTube-DL GUI Log'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Log: TListBox
    Left = 0
    Top = 0
    Width = 760
    Height = 278
    Align = alClient
    ItemHeight = 13
    TabOrder = 0
    ExplicitWidth = 121
    ExplicitHeight = 97
  end
end

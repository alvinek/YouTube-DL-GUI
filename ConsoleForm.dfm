object Form5: TForm5
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'YTDL: Console'
  ClientHeight = 301
  ClientWidth = 779
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
  object location: TEdit
    Left = 49
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'location'
  end
  object parameters: TEdit
    Left = 176
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'parameters'
  end
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 779
    Height = 301
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    Lines.Strings = (
      'Memo1')
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 0
    WordWrap = False
  end
end

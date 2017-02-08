object Form7: TForm7
  Left = 0
  Top = 0
  Caption = 'YouTube-DL Queue'
  ClientHeight = 413
  ClientWidth = 807
  Color = clBtnFace
  DefaultMonitor = dmMainForm
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
  object QueueList: TListBox
    Left = 0
    Top = 0
    Width = 807
    Height = 380
    Align = alClient
    ItemHeight = 13
    TabOrder = 0
    OnClick = QueueListClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 380
    Width = 807
    Height = 33
    Align = alBottom
    TabOrder = 1
    object HideBt: TButton
      Left = 464
      Top = 1
      Width = 40
      Height = 31
      Align = alRight
      Caption = 'Hide'
      TabOrder = 0
      OnClick = HideBtClick
    end
    object RunAllDownloadBt: TButton
      Left = 504
      Top = 1
      Width = 140
      Height = 31
      Align = alRight
      Caption = 'Run download of all items'
      TabOrder = 1
      OnClick = RunAllDownloadBtClick
    end
    object RunDownloadBt: TButton
      Left = 644
      Top = 1
      Width = 162
      Height = 31
      Align = alRight
      Caption = 'Run download of selected item'
      TabOrder = 2
      OnClick = RunDownloadBtClick
    end
    object RemoveFromQueue: TButton
      Left = 1
      Top = 1
      Width = 112
      Height = 31
      Align = alLeft
      Caption = 'Remove from queue'
      TabOrder = 3
      OnClick = RemoveFromQueueClick
    end
    object MoveUPBt: TButton
      Left = 142
      Top = 1
      Width = 29
      Height = 31
      Align = alLeft
      Caption = #9651
      TabOrder = 4
      OnClick = MoveUPBtClick
    end
    object MoveDownBt: TButton
      Left = 113
      Top = 1
      Width = 29
      Height = 31
      Align = alLeft
      Caption = #9661
      TabOrder = 5
      OnClick = MoveDownBtClick
    end
    object ClearBt: TButton
      Left = 419
      Top = 1
      Width = 45
      Height = 31
      Align = alRight
      Caption = 'Clear'
      TabOrder = 6
      OnClick = ClearBtClick
    end
    object BatchListBt: TButton
      Left = 315
      Top = 1
      Width = 104
      Height = 31
      Align = alRight
      Caption = 'Save as BATCH file'
      TabOrder = 7
      OnClick = BatchListBtClick
    end
  end
  object QueueDownload: TTimer
    Enabled = False
    Interval = 110
    OnTimer = QueueDownloadTimer
    Left = 656
    Top = 176
  end
  object AutoRunQueue: TTimer
    Enabled = False
    Interval = 100
    OnTimer = AutoRunQueueTimer
    Left = 656
    Top = 248
  end
  object SaveBatch: TSaveDialog
    Filter = 'Batch file|*.bat'
    Left = 464
    Top = 240
  end
end

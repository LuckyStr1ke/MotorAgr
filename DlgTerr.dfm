inherited fmDlgTerr: TfmDlgTerr
  Width = 608
  Height = 301
  Caption = #1042#1099#1073#1086#1088' '#1090#1077#1088#1088#1080#1090#1086#1088#1080#1080' '#1089#1090#1088#1072#1093#1086#1074#1072#1085#1080#1103
  PixelsPerInch = 96
  TextHeight = 13
  inherited pNav: TPanel
    Width = 592
    Visible = False
  end
  object pnl1: TPanel
    Left = 0
    Top = 220
    Width = 592
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object bvl1: TBevel
      Left = 0
      Top = 0
      Width = 592
      Height = 2
      Align = alTop
      Shape = bsTopLine
    end
    object btnOk: TButton
      Left = 407
      Top = 11
      Width = 75
      Height = 25
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
      OnClick = btnOkClick
    end
    object btnCancel: TButton
      Left = 495
      Top = 11
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1054#1090#1084#1077#1085#1072
      ModalResult = 2
      TabOrder = 1
    end
  end
  inline frTerr1: TfrTerr
    Left = 0
    Top = 33
    Width = 592
    Height = 187
    Align = alClient
    TabOrder = 2
    inherited sBar: TStatusBar
      Top = 169
      Width = 592
    end
    inherited Panel1: TPanel
      Width = 592
      Height = 169
      inherited JPanel1: TJPanel
        Width = 582
      end
    end
    inherited qAddr: TClientDataSet
      BeforePost = frTerr1qAddrBeforePost
    end
  end
end

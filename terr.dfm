object frTerr: TfrTerr
  Left = 0
  Top = 0
  Width = 805
  Height = 179
  TabOrder = 0
  object sBar: TStatusBar
    Left = 0
    Top = 161
    Width = 805
    Height = 18
    Panels = <
      item
        Text = #1042#1099#1076#1077#1083#1077#1085#1086': 0'
        Width = 100
      end>
    object edTaskIsn: TEdit
      Left = 274
      Top = 3
      Width = 76
      Height = 13
      BorderStyle = bsNone
      Color = clBtnFace
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clInactiveCaption
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 805
    Height = 161
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 5
    Caption = 'Panel1'
    TabOrder = 1
    object JPanel1: TJPanel
      Left = 5
      Top = 5
      Width = 795
      Height = 115
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      MinButton = True
      MinCaption = '         '#1040#1076#1088#1077#1089
      MinOrientation = clVertical
      TabOrder = 0
      object Label1: TLabel
        Left = 40
        Top = 9
        Width = 36
        Height = 13
        Alignment = taRightJustify
        Caption = #1057#1090#1088#1072#1085#1072
      end
      object Label2: TLabel
        Left = 46
        Top = 35
        Width = 30
        Height = 13
        Alignment = taRightJustify
        Caption = #1043#1086#1088#1086#1076
      end
      object Label3: TLabel
        Left = 15
        Top = 63
        Width = 60
        Height = 13
        Alignment = taRightJustify
        Caption = #1048#1085#1076#1077#1082#1089'/ZIP'
      end
      object Label4: TLabel
        Left = 224
        Top = 52
        Width = 31
        Height = 13
        Caption = #1040#1076#1088#1077#1089
      end
      object l_street: TLabel
        Left = 224
        Top = 9
        Width = 32
        Height = 13
        Alignment = taRightJustify
        Caption = #1059#1083#1080#1094#1072
      end
      object l_house: TLabel
        Left = 228
        Top = 33
        Width = 23
        Height = 13
        Alignment = taRightJustify
        Caption = #1044#1086#1084
      end
      object sbFillAddr: TSpeedButton
        Left = 488
        Top = 65
        Width = 22
        Height = 20
        Hint = #1047#1072#1087#1086#1083#1085#1080#1090#1100' '#1087#1086#1083#1077' "'#1040#1076#1088#1077#1089'"'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500000000055
          555557777777775F55550FFFFFFFFF0555557F5555555F7FFF5F0FEEEEEE0000
          05007F555555777775770FFFFFF0BFBFB00E7F5F5557FFF557770F0EEEE000FB
          FB0E7F75FF57775555770FF00F0FBFBFBF0E7F57757FFFF555770FE0B00000FB
          FB0E7F575777775555770FFF0FBFBFBFBF0E7F5575FFFFFFF5770FEEE0000000
          FB0E7F555777777755770FFFFF0B00BFB0007F55557577FFF7770FEEEEE0B000
          05557F555557577775550FFFFFFF0B0555557FF5F5F57575F55500F0F0F0F0B0
          555577F7F7F7F7F75F5550707070700B055557F7F7F7F7757FF5507070707050
          9055575757575757775505050505055505557575757575557555}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
      end
      object Label6: TLabel
        Left = 398
        Top = 33
        Width = 21
        Height = 13
        Alignment = taRightJustify
        Caption = #1057#1090#1088'.'
      end
      object Label7: TLabel
        Left = 311
        Top = 33
        Width = 28
        Height = 13
        Alignment = taRightJustify
        Caption = #1050#1086#1088#1087'.'
      end
      object DBEdit2: TDBEditBtn
        Tag = 1
        Left = 80
        Top = 33
        Width = 126
        Height = 21
        Ctl3D = True
        DataField = 'cityname'
        DataSource = dsAddr
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
        ButtonCaption = '...'
        NumGlyphs = 1
        OnBtnClick = sbCountryClick
      end
      object DBEdit3: TDBEdit
        Left = 80
        Top = 60
        Width = 105
        Height = 21
        DataField = 'ZIP'
        DataSource = dsAddr
        TabOrder = 2
      end
      object DBMemo1: TDBMemo
        Left = 224
        Top = 65
        Width = 249
        Height = 44
        DataField = 'REMARK1'
        DataSource = dsAddr
        ScrollBars = ssVertical
        TabOrder = 3
      end
      object DBEdit1: TDBEditBtn
        Left = 80
        Top = 6
        Width = 126
        Height = 21
        Ctl3D = True
        DataField = 'cname'
        DataSource = dsAddr
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        ButtonCaption = '...'
        NumGlyphs = 1
        OnBtnClick = sbCountryClick
      end
      object Button1: TButton
        Left = 486
        Top = 6
        Width = 75
        Height = 25
        Caption = #1052#1086#1089#1082#1074#1072
        TabOrder = 4
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 486
        Top = 37
        Width = 75
        Height = 25
        Hint = #1040#1076#1088#1077#1089' '#1089#1090#1088#1072#1093#1086#1074#1072#1090#1077#1083#1103
        Caption = #1050#1083#1080#1077#1085#1090
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        Visible = False
      end
      object edb_Street: TDBEditBtn
        Left = 264
        Top = 6
        Width = 209
        Height = 21
        Ctl3D = True
        DataField = 'STREETNAME'
        DataSource = dsAddr
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 6
        ButtonCaption = '...'
        NumGlyphs = 1
      end
      object ed_House: TDBEdit
        Left = 264
        Top = 30
        Width = 45
        Height = 21
        DataField = 'HOUSE'
        DataSource = dsAddr
        TabOrder = 7
      end
      object DBEdit4: TDBEdit
        Left = 344
        Top = 30
        Width = 49
        Height = 21
        DataField = 'KORPUS'
        DataSource = dsAddr
        TabOrder = 8
      end
      object DBEdit5: TDBEdit
        Left = 424
        Top = 30
        Width = 45
        Height = 21
        DataField = 'STROENIE'
        DataSource = dsAddr
        TabOrder = 9
      end
    end
  end
  object qAddr: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftCursor
        Name = 'result'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'pagrisn'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'psort'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'paddisn'
        ParamType = ptInput
      end>
    ProviderName = 'dspAddrNew'
    BeforePost = qAddrBeforePost
    OnNewRecord = qAddrNewRecord
    BeforeApplyUpdates = qAddrBeforeApplyUpdates
    BeforeGetRecords = qAddrBeforeApplyUpdates
    Left = 432
    Top = 32
    object qAddrISN: TFloatField
      FieldName = 'ISN'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qAddrCLASSISN: TFloatField
      FieldName = 'CLASSISN'
    end
    object qAddrPLACEISN: TFloatField
      FieldName = 'PLACEISN'
    end
    object qAddrPERISN: TFloatField
      FieldName = 'PERISN'
    end
    object qAddrAGRISN: TFloatField
      FieldName = 'AGRISN'
    end
    object qAddrDISCR: TStringField
      FieldName = 'DISCR'
      Size = 1
    end
    object qAddrREMARK: TStringField
      FieldName = 'REMARK'
      Size = 255
    end
    object qAddrUPDATED: TDateTimeField
      FieldName = 'UPDATED'
    end
    object qAddrUPDATEDBY: TFloatField
      FieldName = 'UPDATEDBY'
    end
    object qAddrCOUNTRYISN: TFloatField
      FieldName = 'COUNTRYISN'
    end
    object qAddrCITYISN: TFloatField
      FieldName = 'CITYISN'
    end
    object qAddrCITY: TStringField
      FieldName = 'CITY'
      Size = 40
    end
    object qAddrZIP: TStringField
      FieldName = 'ZIP'
    end
    object qAddrOBJISN: TFloatField
      FieldName = 'OBJISN'
    end
    object qAddrINSUREDSUM: TFloatField
      FieldName = 'INSUREDSUM'
      DisplayFormat = '#,##0.##'
    end
    object qAddrLIMITSUM: TFloatField
      FieldName = 'LIMITSUM'
      DisplayFormat = '#,##0.##'
    end
    object qAddrCURRISN: TFloatField
      FieldName = 'CURRISN'
    end
    object qAddrREMARK1: TStringField
      FieldName = 'REMARK1'
      Size = 255
    end
    object qAddrCC: TStringField
      FieldName = 'CC'
      Size = 3
    end
    object qAddrCNAME: TStringField
      FieldName = 'CNAME'
      Size = 40
    end
    object qAddrCITYNAME: TStringField
      FieldName = 'CITYNAME'
      Size = 40
    end
    object qAddrADDR: TStringField
      FieldName = 'ADDR'
      Size = 255
    end
    object qAddrSTREETISN: TFloatField
      FieldName = 'STREETISN'
    end
    object qAddrHOUSE: TStringField
      FieldName = 'HOUSE'
    end
    object qAddrSTREETNAME: TStringField
      FieldName = 'STREETNAME'
      Size = 40
    end
    object qAddrKORPUS: TStringField
      FieldName = 'KORPUS'
      Size = 40
    end
    object qAddrSTROENIE: TStringField
      FieldName = 'STROENIE'
      Size = 40
    end
    object qAddrLIMITEVERYSUM: TFloatField
      DisplayLabel = #1051#1080#1084#1080#1090' '#1091#1073#1099#1090#1082#1086#1074
      FieldName = 'LIMITEVERYSUM'
      DisplayFormat = '#,##0.##'
    end
    object qAddrpml: TFloatField
      DisplayLabel = 'PML'
      FieldName = 'pml'
      DisplayFormat = '#,##0.##'
    end
    object qAddrcurrpmlisn: TFloatField
      FieldName = 'currpmlisn'
    end
    object qAddrlimitcomb: TFloatField
      DisplayLabel = #1054#1073#1097'.'#1050#1086#1084#1073'.'#1051#1080#1084#1080#1090
      FieldName = 'limitcomb'
      DisplayFormat = '#,##0.##'
    end
    object qAddrcurrcombisn: TFloatField
      FieldName = 'currcombisn'
    end
    object qAddrccurpml: TStringField
      DisplayLabel = #1042#1072#1083#1102#1090#1072' PML'
      FieldName = 'ccurpml'
      Size = 3
    end
    object qAddrccombpml: TStringField
      DisplayLabel = #1042#1072#1083#1102#1090#1072' '#1054#1050#1051
      FieldName = 'ccombpml'
      Size = 3
    end
    object qAddrSELECTION: TFloatField
      DisplayLabel = ' '
      FieldKind = fkInternalCalc
      FieldName = 'SELECTION'
    end
  end
  object qAddrObj: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftCursor
        Name = 'result'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'pagrisn'
        ParamType = ptInput
      end>
    ProviderName = 'dspAddrObj'
    BeforeGetRecords = qAddrBeforeApplyUpdates
    Left = 656
    Top = 128
    object qAddrObjID: TStringField
      FieldName = 'ID'
    end
    object qAddrObjNAME: TStringField
      FieldName = 'NAME'
      Size = 40
    end
    object qAddrObjDATEBEG: TDateTimeField
      FieldName = 'DATEBEG'
    end
    object qAddrObjDATEEND: TDateTimeField
      FieldName = 'DATEEND'
    end
    object qAddrObjISN2: TFloatField
      FieldName = 'ISN'
    end
    object qAddrObjADDRISN: TFloatField
      FieldName = 'ADDRISN'
    end
    object qAddrObjINSUREDSUM: TFloatField
      FieldName = 'INSUREDSUM'
      DisplayFormat = '#,##0.##'
    end
    object qAddrObjLIMITSUM: TFloatField
      FieldName = 'LIMITSUM'
      DisplayFormat = '#,##0.##'
    end
    object qAddrObjRCNT: TFloatField
      FieldName = 'RCNT'
    end
    object qAddrObjCODE: TStringField
      FieldName = 'CODE'
      Size = 3
    end
    object qAddrObjOBJISN: TFloatField
      FieldName = 'OBJISN'
    end
    object qAddrObjSELECTION: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'SELECTION'
    end
  end
  object dsAddr: TDataSource
    DataSet = qAddr
    Left = 480
    Top = 32
  end
  object dsAddrObj: TDataSource
    DataSet = qAddrObj
    Left = 712
    Top = 88
  end
  object q_Coordinates: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftCursor
        Name = 'RESULT'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'PADDRISN'
        ParamType = ptInput
      end>
    ProviderName = 'dspObjCoordinate'
    Left = 624
    Top = 72
    object q_CoordinatesISN: TFloatField
      FieldName = 'ISN'
    end
    object q_CoordinatesOBJISN: TFloatField
      FieldName = 'OBJISN'
    end
    object q_CoordinatesADDRISN: TFloatField
      FieldName = 'ADDRISN'
    end
    object q_CoordinatesORDERNO: TFloatField
      FieldName = 'ORDERNO'
    end
    object q_CoordinatesLATITUDE: TFloatField
      FieldName = 'LATITUDE'
    end
    object q_CoordinatesLONGITUDE: TFloatField
      FieldName = 'LONGITUDE'
    end
    object q_CoordinatesALTITUDE: TFloatField
      FieldName = 'ALTITUDE'
    end
    object q_CoordinatesLATITUDESTR: TStringField
      FieldName = 'LATITUDESTR'
      Size = 255
    end
    object q_CoordinatesLONGITUDESTR: TStringField
      FieldName = 'LONGITUDESTR'
      Size = 255
    end
    object q_CoordinatesREMARK: TStringField
      FieldName = 'REMARK'
      Size = 255
    end
    object q_CoordinatesUPDATED: TDateTimeField
      FieldName = 'UPDATED'
    end
    object q_CoordinatesUPDATEDBYNAME: TStringField
      FieldName = 'UPDATEDBYNAME'
      Size = 255
    end
    object q_CoordinatesUPDATEDBY: TFloatField
      FieldName = 'UPDATEDBY'
    end
  end
  object ds_Coordinates: TDataSource
    DataSet = q_Coordinates
    Left = 560
    Top = 96
  end
  object pmCoordinates: TPopupMenu
    Left = 480
    Top = 91
    object pmCoordinatesImport: TMenuItem
      Caption = #1048#1084#1087#1086#1088#1090' '#1082#1086#1086#1088#1076#1080#1085#1072#1090' '#1080#1079' '#1092#1072#1081#1083#1072
    end
    object pmCoordinatesShow: TMenuItem
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1085#1072' '#1082#1072#1088#1090#1077
    end
  end
  object OpenPictureDialog: TOpenPictureDialog
    Left = 416
    Top = 8
  end
  object pmTerr: TPopupMenu
    Left = 208
    Top = 48
    object mCopyTerr: TMenuItem
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1082#1086#1087#1080#1102
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object mSortTerrByObjNumber: TMenuItem
      Caption = #1059#1087#1086#1088#1103#1076#1086#1095#1080#1090#1100' '#1087#1086' '#1085#1086#1084#1077#1088#1072#1084' '#1087#1088#1080#1074#1103#1079#1072#1085#1085#1099#1093' '#1082' '#1090#1077#1088#1088#1080#1090#1086#1088#1080#1080' '#1086#1073#1098#1077#1082#1090#1086#1074
    end
    object mSortTerrByName: TMenuItem
      Caption = #1059#1087#1086#1088#1103#1076#1086#1095#1080#1090#1100' '#1087#1086' '#1072#1083#1092#1072#1074#1080#1090#1091
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object mDelSelTerr: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1074#1099#1073#1088#1072#1085#1085#1099#1077' '#1090#1077#1088#1088#1080#1090#1086#1088#1080#1080
    end
    object mDelTerrNotRefObj: TMenuItem
      Tag = 1
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1090#1077#1088#1088#1080#1090#1086#1088#1080#1080', '#1085#1077' '#1087#1088#1080#1074#1103#1079#1072#1085#1085#1099#1077' '#1082' '#1086#1073#1098#1077#1082#1090#1072#1084
    end
    object N8: TMenuItem
      Caption = '-'
    end
    object mHistory: TMenuItem
      Caption = #1048#1089#1090#1086#1088#1080#1103' '#1080#1079#1084#1077#1085#1077#1085#1080#1081
    end
    object N9: TMenuItem
      Caption = '-'
    end
    object mSelectAll: TMenuItem
      Caption = #1042#1099#1076#1077#1083#1080#1090#1100' '#1074#1089#1077
    end
    object mUnselectAll: TMenuItem
      Caption = #1057#1085#1103#1090#1100' '#1074#1089#1077' '#1086#1090#1084#1077#1090#1082#1080
    end
  end
  object qrAdd: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftCursor
        Name = 'Result'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'PAGRISN'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PSHOWPREM'
        ParamType = ptInput
      end>
    ProviderName = 'dspAdd2'
    BeforeGetRecords = qrAddBeforeApplyUpdates
    Left = 641
    Top = 20
    object qrAddISN: TFloatField
      FieldName = 'ISN'
    end
    object qrAddAGRISN: TFloatField
      FieldName = 'AGRISN'
    end
    object qrAddPARENTISN: TFloatField
      FieldName = 'PARENTISN'
    end
    object qrAddID: TStringField
      FieldName = 'ID'
      Size = 10
    end
    object qrAddDATEBEG: TDateTimeField
      FieldName = 'DATEBEG'
      DisplayFormat = 'DD.MM.YY'
      EditMask = '!99/99/00;1; '
    end
    object qrAddDATEEND: TDateTimeField
      FieldName = 'DATEEND'
      DisplayFormat = 'DD.MM.YY'
      EditMask = '!99/99/00;1; '
    end
    object qrAddDATESIGN: TDateTimeField
      FieldName = 'DATESIGN'
      DisplayFormat = 'DD.MM.YY'
      EditMask = '!99/99/00;1; '
    end
    object qrAddPREMIUMSUM: TFloatField
      FieldName = 'PREMIUMSUM'
      DisplayFormat = '#,##0.##'
    end
    object qrAddRULEISN: TFloatField
      FieldName = 'RULEISN'
    end
    object qrAddRULENAME: TStringField
      FieldName = 'RULENAME'
      Size = 40
    end
    object qrAddDATEISSUE: TDateTimeField
      FieldName = 'DATEISSUE'
      DisplayFormat = 'DD.MM.YY'
      EditMask = '!99/99/00;1; '
    end
    object qrAddSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object qrAddFULLSTATUS: TStringField
      FieldName = 'FULLSTATUS'
      Size = 40
    end
    object qrAddMONTHS: TStringField
      FieldName = 'MONTHS'
      Size = 30
    end
    object qrAddPREMSUMDELTA: TFloatField
      FieldName = 'PREMSUMDELTA'
      DisplayFormat = '+#,##0.##;-#,##0.##;0'
    end
    object qrAddDISCR: TStringField
      FieldName = 'DISCR'
      Size = 1
    end
    object qrAddNEXTADDISN: TFloatField
      FieldName = 'NEXTADDISN'
    end
    object qrAddEMPLISN: TFloatField
      FieldName = 'EMPLISN'
    end
    object qrAddEMPLNAME: TStringField
      FieldName = 'EMPLNAME'
      Size = 40
    end
    object qrAddCREATED: TDateTimeField
      FieldName = 'CREATED'
      DisplayFormat = 'DD.MM.YY HH:NN'
    end
    object qrAddREMARK: TMemoField
      FieldName = 'REMARK'
      BlobType = ftMemo
      Size = 1000
    end
    object qrAddDEPTISN: TFloatField
      FieldName = 'DEPTISN'
    end
    object qrAddNAME: TStringField
      FieldName = 'NAME'
      Size = 40
    end
    object qrAddINCOMEPREM: TFloatField
      FieldName = 'INCOMEPREM'
      DisplayFormat = '+#,##0.##;-#,##0.##;0'
    end
  end
  object dsAdd: TDataSource
    DataSet = qrAdd
    Left = 698
    Top = 28
  end
end

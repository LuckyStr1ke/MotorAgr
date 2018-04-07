inherited fmPreCalc: TfmPreCalc
  Left = 202
  Top = 131
  Width = 1198
  Height = 702
  Caption = #1050#1086#1090#1080#1088#1086#1074#1082#1072
  Constraints.MinHeight = 450
  Constraints.MinWidth = 750
  OldCreateOrder = True
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel [0]
    Left = 0
    Top = 124
    Width = 1182
    Height = 484
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object Splitter2: TSplitter
      Left = 927
      Top = 0
      Width = 5
      Height = 484
      Align = alRight
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 927
      Height = 484
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel1'
      TabOrder = 0
      object pnCL: TPanel
        Left = 0
        Top = 0
        Width = 927
        Height = 484
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Label1: TLabel
          Left = 273
          Top = 6
          Width = 172
          Height = 13
          Caption = #1052#1077#1089#1090#1086' '#1078#1080#1090#1077#1083#1100#1089#1090#1074#1072' '#1089#1086#1073#1089#1090#1074#1077#1085#1085#1080#1082#1072' '
        end
        object Label3: TLabel
          Left = 12
          Top = 214
          Width = 132
          Height = 13
          Caption = #1042#1086#1079#1088#1072#1089#1090' '#1080' '#1089#1090#1072#1078' '#1074#1086#1076#1080#1090#1077#1083#1103' '
        end
        object Label4: TLabel
          Left = 12
          Top = 258
          Width = 105
          Height = 13
          Caption = #1055#1077#1088#1080#1086#1076' '#1089#1090#1088#1072#1093#1086#1074#1072#1085#1080#1103
        end
        object Label5: TLabel
          Left = 168
          Top = 258
          Width = 136
          Height = 13
          Caption = #1055#1077#1088#1080#1086#1076' '#1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1085#1080#1103' '#1058#1057
        end
        object Label9: TLabel
          Left = 328
          Top = 215
          Width = 66
          Height = 13
          Caption = #1041#1086#1085#1091#1089'/'#1084#1072#1083#1091#1089
        end
        object edSbjCityName: TDBEditBtn
          Left = 272
          Top = 20
          Width = 251
          Height = 21
          DataField = 'SBJCITYNAME'
          DataSource = dsPreCalcCL
          TabOrder = 0
          OnEnter = EnterControl
          ButtonCaption = 'v'
          NumGlyphs = 1
          OnBtnClick = edSbjCityNameBtnClick
        end
        object rgSbjJuridical: TDBRadioGroup
          Left = 12
          Top = 0
          Width = 133
          Height = 52
          Caption = ' '#1057#1090#1072#1090#1091#1089' '#1089#1086#1073#1089#1090#1074#1077#1085#1085#1080#1082#1072' '
          Color = clBtnFace
          Ctl3D = True
          DataField = 'SBJJURIDICAL'
          DataSource = dsPreCalcCL
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Items.Strings = (
            #1060#1080#1079#1083#1080#1094#1086
            #1070#1088#1083#1080#1094#1086)
          ParentColor = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          Values.Strings = (
            '0'
            '1')
          OnEnter = EnterControl
        end
        object cbRiskCtgISN: TDBCheckBox
          Left = 12
          Top = 193
          Width = 196
          Height = 17
          Caption = #1054#1075#1088#1072#1085#1080#1095#1077#1085#1085#1099#1081' '#1089#1087#1080#1089#1086#1082' '#1074#1086#1076#1080#1090#1077#1083#1077#1081
          DataField = 'RISKCTGISN'
          DataSource = dsPreCalcCL
          TabOrder = 2
          ValueChecked = '1'
          ValueUnchecked = '0'
          OnEnter = EnterControl
        end
        object cbAgrPeriodTxt: TDBComboBox
          Left = 12
          Top = 272
          Width = 146
          Height = 21
          Style = csDropDownList
          DataField = 'AgrPeriodTxt'
          DataSource = dsPreCalcCL
          DropDownCount = 20
          ItemHeight = 13
          TabOrder = 3
          OnChange = cbAgrPeriodTxtChange
          OnEnter = EnterControl
        end
        object cbPeriodTxt: TDBComboBox
          Left = 168
          Top = 272
          Width = 146
          Height = 21
          Style = csDropDownList
          DataField = 'PeriodTxt'
          DataSource = dsPreCalcCL
          DropDownCount = 20
          ItemHeight = 13
          TabOrder = 4
          OnChange = cbPeriodTxtChange
          OnEnter = EnterControl
        end
        object gbCar: TGroupBox
          Left = 12
          Top = 54
          Width = 510
          Height = 131
          Caption = ' '#1058#1088#1072#1085#1089#1087#1086#1088#1090#1085#1086#1077' '#1089#1088#1077#1076#1089#1090#1074#1086' '
          TabOrder = 5
          object Label7: TLabel
            Left = 8
            Top = 64
            Width = 19
            Height = 13
            Caption = #1058#1080#1087
          end
          object Label8: TLabel
            Left = 231
            Top = 64
            Width = 97
            Height = 13
            Caption = #1052#1086#1097#1085#1086#1089#1090#1100' '#1083'.'#1089'./'#1082#1042#1090
          end
          object lbSeats: TLabel
            Left = 370
            Top = 64
            Width = 26
            Height = 13
            Caption = #1052#1077#1089#1090
          end
          object lbGrossWeigh: TLabel
            Left = 438
            Top = 64
            Width = 47
            Height = 13
            Caption = #1052#1072#1089#1089#1072' ('#1090')'
            FocusControl = edCarGrossWeigh
          end
          object Label19: TLabel
            Left = 292
            Top = 82
            Width = 5
            Height = 13
            Caption = '/'
          end
          object Label24: TLabel
            Left = 8
            Top = 16
            Width = 33
            Height = 13
            Caption = #1052#1072#1088#1082#1072
          end
          object Label25: TLabel
            Left = 131
            Top = 16
            Width = 39
            Height = 13
            Caption = #1052#1086#1076#1077#1083#1100
          end
          object Label26: TLabel
            Left = 320
            Top = 16
            Width = 64
            Height = 13
            Caption = #1043#1086#1076' '#1074#1099#1087#1091#1089#1082#1072
          end
          object Label27: TLabel
            Left = 402
            Top = 16
            Width = 60
            Height = 13
            Caption = #1055#1088#1086#1073#1077#1075' ('#1082#1084')'
            FocusControl = edCarGrossWeigh
          end
          object edCarCtgValName: TDBEditBtn
            Left = 8
            Top = 78
            Width = 212
            Height = 21
            DataField = 'CARCTGVALNAME'
            DataSource = dsPreCalcCL
            ReadOnly = True
            TabOrder = 0
            OnEnter = EnterControl
            ButtonCaption = '...'
            NumGlyphs = 1
            OnBtnClick = edCarCtgValNameBtnClick
          end
          object edCarEnginePowerHP: TDBEdit
            Left = 231
            Top = 78
            Width = 56
            Height = 21
            DataField = 'CARENGINEPOWERHP'
            DataSource = dsPreCalcCL
            TabOrder = 1
            OnEnter = EnterControl
          end
          object edCarSeats: TDBEdit
            Left = 370
            Top = 78
            Width = 56
            Height = 21
            DataField = 'CARSEATS'
            DataSource = dsPreCalcCL
            TabOrder = 2
            OnEnter = EnterControl
          end
          object edCarGrossWeigh: TDBEdit
            Left = 438
            Top = 78
            Width = 56
            Height = 21
            Hint = #1052#1072#1082#1089#1080#1084#1072#1083#1100#1085#1072#1103' '#1088#1072#1079#1088#1077#1096#1077#1085#1085#1072#1103' '#1084#1072#1089#1089#1072' ('#1090#1086#1085#1085#1099')'
            DataField = 'CARGROSSWEIGH'
            DataSource = dsPreCalcCL
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            OnEnter = EnterControl
          end
          object cbVehicleUsage: TDBCheckBox
            Left = 8
            Top = 105
            Width = 68
            Height = 17
            Caption = #1058#1072#1082#1089#1080
            DataField = 'VEHICLEUSAGE'
            DataSource = dsPreCalcCL
            TabOrder = 4
            ValueChecked = '1'
            ValueUnchecked = '0'
            OnEnter = EnterControl
          end
          object DBCheckBox1: TDBCheckBox
            Left = 76
            Top = 105
            Width = 85
            Height = 17
            Caption = #1048#1085#1086#1084#1072#1088#1082#1072
            DataField = 'CarDomestic'
            DataSource = dsPreCalcCL
            ParentShowHint = False
            ShowHint = True
            TabOrder = 5
            ValueChecked = '0'
            ValueUnchecked = '1'
            OnEnter = EnterControl
          end
          object cbVehicleUsagePSG: TDBCheckBox
            Left = 160
            Top = 105
            Width = 161
            Height = 17
            Caption = #1055#1072#1089#1089#1072#1078#1080#1088#1089#1082#1080#1077' '#1087#1077#1088#1077#1074#1086#1079#1082#1080
            DataField = 'VehicleUsagePSG'
            DataSource = dsPreCalcCL
            TabOrder = 6
            ValueChecked = '1'
            ValueUnchecked = '0'
            OnEnter = EnterControl
          end
          object cbUseWithTrailer: TDBCheckBox
            Left = 325
            Top = 105
            Width = 175
            Height = 17
            Caption = #1058#1057' '#1080#1089#1087#1086#1083#1100#1079#1091#1077#1090#1089#1103' '#1089' '#1087#1088#1080#1094#1077#1087#1086#1084
            DataField = 'UseWithTrailer'
            DataSource = dsPreCalcCL
            TabOrder = 7
            ValueChecked = '1'
            ValueUnchecked = '0'
            OnEnter = EnterControl
          end
          object edCarEnginePowerKW: TDBEdit
            Left = 303
            Top = 78
            Width = 56
            Height = 21
            Color = clBtnFace
            DataField = 'CARENGINEPOWERKW'
            DataSource = dsPreCalcCL
            ReadOnly = True
            TabOrder = 8
            OnEnter = EnterControl
          end
          object edMakeName: TDBEdit
            Left = 8
            Top = 30
            Width = 113
            Height = 21
            TabStop = False
            Color = clInfoBk
            DataField = 'CarMarkName'
            DataSource = dsPreCalcCL
            ReadOnly = True
            TabOrder = 9
            OnEnter = EnterControl
          end
          object edModelName: TDBEditBtn
            Left = 131
            Top = 30
            Width = 182
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CarModelName'
            DataSource = dsPreCalcCL
            TabOrder = 10
            OnEnter = EnterControl
            ButtonCaption = '...'
            NumGlyphs = 1
            OnBtnClick = edModelNameBtnClick
          end
          object edCarConstructed: TDBEdit
            Left = 320
            Top = 30
            Width = 73
            Height = 21
            DataField = 'CarConstructed'
            DataSource = dsPreCalcCL
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 11
            OnEnter = EnterControl
          end
          object edCarInsurKilometers: TDBEdit
            Left = 402
            Top = 30
            Width = 93
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CarInsurKilometers'
            DataSource = dsPreCalcCL
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 12
            OnEnter = EnterControl
          end
        end
        object cbSbjBirthDrive: TDBComboBox
          Left = 12
          Top = 230
          Width = 301
          Height = 21
          Style = csDropDownList
          DataField = 'SBJBIRTHDRIVE'
          DataSource = dsPreCalcCL
          ItemHeight = 13
          TabOrder = 6
          OnChange = cbSbjBirthDriveChange
          OnEnter = EnterControl
        end
        object edBonus: TDBEditBtn
          Left = 328
          Top = 230
          Width = 53
          Height = 21
          DataField = 'BONUSNAME'
          DataSource = dsPreCalcCL
          ReadOnly = True
          TabOrder = 7
          ButtonCaption = '...'
          NumGlyphs = 1
          OnBtnClick = edBonusBtnClick
        end
        object gbLiab: TGroupBox
          Left = 12
          Top = 300
          Width = 253
          Height = 85
          Caption = #1044#1043#1054
          TabOrder = 8
          object lbLimit: TLabel
            Left = 8
            Top = 36
            Width = 33
            Height = 13
            Caption = '&'#1051#1080#1084#1080#1090
            FocusControl = cbLimit
          end
          object dbcLiab: TDBCheckBox
            Left = 8
            Top = 16
            Width = 233
            Height = 17
            Caption = #1057#1074#1077#1088#1093' '#1087#1086#1082#1088#1099#1090#1080#1103' '#1054#1057#1040#1043#1054
            DataField = 'LiabExists'
            DataSource = dsPreCalcCL
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            ValueChecked = '1'
            ValueUnchecked = '0'
            OnClick = dbcLiabClick
            OnEnter = EnterControl
          end
          object cbLimit: TDBComboBox
            Left = 8
            Top = 52
            Width = 234
            Height = 21
            DataField = 'LimitSumLiab'
            DataSource = dsPreCalcCL
            ItemHeight = 13
            TabOrder = 1
            OnDropDown = cbLimitDropDown
            OnEnter = EnterControl
          end
        end
        object cbFollowToPlaceOfReg: TDBCheckBox
          Left = 237
          Top = 193
          Width = 188
          Height = 17
          Caption = #1057#1083#1077#1076#1086#1074#1072#1085#1080#1077' '#1082' '#1084#1077#1089#1090#1091' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080
          DataField = 'FollowToPlaceOfReg'
          DataSource = dsPreCalcCL
          TabOrder = 9
          ValueChecked = '1'
          ValueUnchecked = '0'
          OnEnter = EnterControl
        end
        object GroupBox1: TGroupBox
          Left = 12
          Top = 388
          Width = 510
          Height = 101
          Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1089#1090#1088#1072#1093#1086#1074#1072#1090#1077#1083#1103
          TabOrder = 10
          object Label22: TLabel
            Left = 8
            Top = 16
            Width = 121
            Height = 13
            Caption = #1060#1072#1084#1080#1083#1080#1103' '#1089#1090#1088#1072#1093#1086#1074#1072#1090#1077#1083#1103
          end
          object Label21: TLabel
            Left = 255
            Top = 16
            Width = 144
            Height = 13
            Caption = #1048#1084#1103' '#1054#1090#1095#1077#1089#1090#1074#1086' '#1089#1090#1088#1072#1093#1086#1074#1072#1090#1077#1083#1103
          end
          object Label23: TLabel
            Left = 8
            Top = 56
            Width = 140
            Height = 13
            Caption = #1042#1086#1079#1088#1072#1089#1090' '#1089#1090#1088#1072#1093#1086#1074#1072#1090#1077#1083#1103' ('#1083#1077#1090')'
          end
          object edFIO: TDBEdit
            Left = 8
            Top = 30
            Width = 242
            Height = 21
            DataField = 'FIO'
            DataSource = dsPreCalcCL
            TabOrder = 0
            OnEnter = EnterControl
          end
          object edCLIENTIO: TDBEdit
            Left = 256
            Top = 30
            Width = 241
            Height = 21
            DataField = 'CLIENTIO'
            DataSource = dsPreCalcCL
            TabOrder = 1
            OnEnter = EnterControl
          end
          object edINSURANTAGE: TDBEdit
            Left = 8
            Top = 70
            Width = 138
            Height = 21
            DataField = 'INSURANTAGE'
            DataSource = dsPreCalcCL
            TabOrder = 2
            OnEnter = EnterControl
          end
        end
        object grBreak: TGroupBox
          Left = 268
          Top = 300
          Width = 253
          Height = 85
          Caption = #1055#1086#1083#1086#1084#1082#1080
          TabOrder = 11
          object dbcRoadAssist: TDBCheckBox
            Left = 8
            Top = 16
            Width = 233
            Height = 17
            Caption = #1058#1055#1053#1044
            DataField = 'BreakageExists'
            DataSource = dsPreCalcCL
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            ValueChecked = '1'
            ValueUnchecked = '0'
            OnEnter = EnterControl
          end
        end
        object rgSbjResident: TDBRadioGroup
          Left = 153
          Top = 0
          Width = 112
          Height = 52
          Caption = #1043#1088#1072#1078#1076#1072#1085#1089#1090#1074#1086' '#1056#1060
          Color = clBtnFace
          Ctl3D = True
          DataField = 'SbjResident'
          DataSource = dsPreCalcCL
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Items.Strings = (
            #1056#1077#1079#1080#1076#1077#1085#1090
            #1053#1077#1088#1077#1079#1080#1076#1077#1085#1090)
          ParentColor = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 12
          Values.Strings = (
            '1'
            '0')
          OnEnter = EnterControl
        end
      end
      object pnMotor: TPanel
        Left = 0
        Top = 0
        Width = 927
        Height = 484
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 5
        TabOrder = 1
        object SplitterObj: TSplitter
          Left = 479
          Top = 5
          Width = 6
          Height = 474
        end
        object Splitter5: TSplitter
          Left = 5
          Top = 5
          Width = 6
          Height = 474
        end
        object Splitter1: TSplitter
          Left = 625
          Top = 5
          Width = 6
          Height = 474
        end
        object Splitter3: TSplitter
          Left = 375
          Top = 5
          Width = 6
          Height = 474
        end
        object pCascoObj: TPanel
          Left = 381
          Top = 5
          Width = 98
          Height = 474
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          Visible = False
          object g_CascoObj: TDBGrid
            Left = 0
            Top = 17
            Width = 98
            Height = 430
            Align = alClient
            Ctl3D = True
            DataSource = dsPreCalcParamObj
            ParentCtl3D = False
            TabOrder = 0
            TitleFont.Charset = RUSSIAN_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnCellClick = g_CascoObjCellClick
            OnDrawColumnCell = g_CascoObjDrawColumnCell
            OnDblClick = g_CascoDblClick
            OnEditButtonClick = g_CascoObjEditButtonClick
            OnEnter = EnterControl
            OnKeyDown = g_CascoKeyDown
            OnMouseDown = g_CascoObjMouseDown
            OnMouseUp = g_CascoMouseUp
            Columns = <
              item
                Expanded = False
                FieldName = 'VisField'
                Title.Caption = ' '
                Visible = False
              end
              item
                ButtonStyle = cbsEllipsis
                Color = clInfoBk
                Expanded = False
                FieldName = 'PARNAME'
                Title.Caption = #1055#1072#1088#1072#1084#1077#1090#1088
                Width = 122
                Visible = True
              end
              item
                ButtonStyle = cbsEllipsis
                Expanded = False
                FieldName = 'VALNAME'
                Title.Caption = #1047#1085#1072#1095#1077#1085#1080#1077
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'ROOT'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'DATATYPE'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'CLASSISN'
                Visible = False
              end
              item
                ButtonStyle = cbsEllipsis
                Expanded = False
                FieldName = 'GROUPID'
                Title.Caption = #1043#1088#1091#1087'.'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'NO'
                Title.Caption = #8470
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'ISN'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'VAL'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'AGRISN'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'UpdatedBy'
                Title.Caption = #1040#1074#1090#1086#1088' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'Updated'
                Title.Caption = #1042#1088#1077#1084#1103' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'CreatedBy'
                Title.Caption = #1040#1074#1090#1086#1088' '#1089#1086#1079#1076#1072#1085#1080#1103
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'Created'
                Title.Caption = #1042#1088#1077#1084#1103' '#1089#1086#1079#1076#1072#1085#1080#1103
                Visible = False
              end>
          end
          object Panel12: TPanel
            Left = 0
            Top = 0
            Width = 98
            Height = 17
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvNone
            Caption = #1054#1073#1098#1077#1082#1090#1099
            TabOrder = 1
          end
          object pnlShowProducts: TPanel
            Left = 0
            Top = 447
            Width = 98
            Height = 27
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 2
            Visible = False
            object btShowProducts: TButton
              Left = 8
              Top = 1
              Width = 121
              Height = 26
              Caption = #1057#1087#1080#1089#1086#1082' '#1087#1088#1086#1076#1091#1082#1090#1086#1074
              TabOrder = 0
              OnClick = btShowProductsClick
            end
          end
        end
        object pCasco: TPanel
          Left = 485
          Top = 5
          Width = 140
          Height = 474
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          object g_Casco: TDBGrid
            Left = 0
            Top = 17
            Width = 140
            Height = 457
            Align = alClient
            Ctl3D = True
            DataSource = dsPreCalcParam
            ParentCtl3D = False
            PopupMenu = pmAddGroup
            TabOrder = 0
            TitleFont.Charset = RUSSIAN_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnCellClick = g_CascoCellClick
            OnColEnter = g_CascoColEnter
            OnDrawColumnCell = g_CascoDrawColumnCell
            OnDblClick = g_CascoDblClick
            OnEditButtonClick = g_CascoEditButtonClick
            OnEnter = g_Casco1Enter
            OnExit = g_CascoExit
            OnKeyDown = g_CascoKeyDown
            OnKeyPress = g_CascoKeyPress
            OnKeyUp = g_CascoKeyUp
            OnMouseMove = g_CascoMouseMove
            OnMouseUp = g_CascoMouseUp
            Columns = <
              item
                Expanded = False
                FieldName = 'VisField'
                Title.Caption = ' '
                Visible = False
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'PARNAME'
                Title.Caption = #1055#1072#1088#1072#1084#1077#1090#1088
                Width = 122
                Visible = True
              end
              item
                ButtonStyle = cbsEllipsis
                Expanded = False
                FieldName = 'VALNAME'
                Title.Caption = #1047#1085#1072#1095#1077#1085#1080#1077
                Width = 78
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ROOT'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'DATATYPE'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'CLASSISN'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'GROUPID'
                Title.Caption = #1043#1088#1091#1087'.'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'NO'
                Title.Caption = #8470
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'ISN'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'VAL'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'AGRISN'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'UpdatedBy'
                Title.Caption = #1040#1074#1090#1086#1088' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'Updated'
                Title.Caption = #1042#1088#1077#1084#1103' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'CreatedBy'
                Title.Caption = #1040#1074#1090#1086#1088' '#1089#1086#1079#1076#1072#1085#1080#1103
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'Created'
                Title.Caption = #1042#1088#1077#1084#1103' '#1089#1086#1079#1076#1072#1085#1080#1103
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'PARENTISN'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'FullName'
                Visible = False
              end>
          end
          object Panel9: TPanel
            Left = 0
            Top = 0
            Width = 140
            Height = 17
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvNone
            Caption = #1054#1073#1098#1077#1082#1090#1099
            TabOrder = 1
          end
        end
        object pCasco1: TPanel
          Left = 631
          Top = 5
          Width = 291
          Height = 474
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 2
          object g_Casco1: TDBGrid
            Tag = 1
            Left = 0
            Top = 17
            Width = 291
            Height = 457
            Align = alClient
            DataSource = dsPreCalcParam1
            PopupMenu = pmAddGroup
            TabOrder = 0
            TitleFont.Charset = RUSSIAN_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnCellClick = g_Casco1CellClick
            OnColEnter = g_CascoColEnter
            OnDrawColumnCell = g_CascoDrawColumnCell
            OnDblClick = g_CascoDblClick
            OnEditButtonClick = g_CascoEditButtonClick
            OnEnter = g_Casco1Enter
            OnExit = g_CascoExit
            OnKeyDown = g_CascoKeyDown
            OnMouseUp = g_CascoMouseUp
            Columns = <
              item
                Expanded = False
                FieldName = 'VisField'
                Title.Caption = ' '
                Visible = False
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'PARNAME'
                ReadOnly = True
                Title.Caption = #1055#1072#1088#1072#1084#1077#1090#1088
                Width = 119
                Visible = True
              end
              item
                ButtonStyle = cbsEllipsis
                Expanded = False
                FieldName = 'VALNAME'
                Title.Caption = #1047#1085#1072#1095#1077#1085#1080#1077
                Width = 66
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ROOT'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'DATATYPE'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'CLASSISN'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'GROUPID'
                Title.Caption = #1043#1088#1091#1087'.'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'NO'
                Title.Caption = #8470
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'ISN'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'VAL'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'AGRISN'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'CreatedBy'
                Title.Caption = #1040#1074#1090#1086#1088' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'Created'
                Title.Caption = #1042#1088#1077#1084#1103' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'UpdatedBy'
                Title.Caption = #1040#1074#1090#1086#1088' '#1089#1086#1079#1076#1072#1085#1080#1103
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'Updated'
                Title.Caption = #1042#1088#1077#1084#1103' '#1089#1086#1079#1076#1072#1085#1080#1103
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'PARENTISN'
                Visible = False
              end>
          end
          object Panel10: TPanel
            Left = 0
            Top = 0
            Width = 291
            Height = 17
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvNone
            Caption = #1059#1089#1083#1086#1074#1080#1103
            TabOrder = 1
          end
        end
        object jpKotDKB: TJPanel
          Left = 11
          Top = 5
          Width = 364
          Height = 474
          Align = alLeft
          Alignment = taLeftJustify
          BevelOuter = bvNone
          MinButton = True
          MinOrientation = clHorizontal
          TabOrder = 3
          object pDogAdd: TPanel
            Left = 0
            Top = 0
            Width = 113
            Height = 474
            Align = alLeft
            BevelOuter = bvNone
            Caption = 'pDogAdd'
            TabOrder = 0
            object dbgDogAdd: TDBGrid
              Left = 0
              Top = 17
              Width = 113
              Height = 457
              Align = alClient
              Ctl3D = True
              DataSource = dsAgrAdd
              ParentCtl3D = False
              PopupMenu = pmCopyMenu
              TabOrder = 0
              TitleFont.Charset = RUSSIAN_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              Columns = <
                item
                  Color = clInfoBk
                  Expanded = False
                  FieldName = 'DOG'
                  ReadOnly = True
                  Title.Caption = #1044#1086#1075#1086#1074#1086#1088
                  Width = 70
                  Visible = True
                end>
            end
            object pDogTitle: TPanel
              Left = 0
              Top = 0
              Width = 113
              Height = 17
              Align = alTop
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Caption = #1044#1086#1082#1091#1084#1077#1085#1090#1099
              TabOrder = 1
            end
          end
          object pVariant: TPanel
            Left = 113
            Top = 0
            Width = 113
            Height = 474
            Align = alLeft
            BevelOuter = bvNone
            Caption = 'pVariant'
            TabOrder = 1
            object dbgVariant: TDBGrid
              Left = 0
              Top = 17
              Width = 113
              Height = 457
              Align = alClient
              DataSource = dsVariant
              PopupMenu = pmCopyMenu
              TabOrder = 0
              TitleFont.Charset = RUSSIAN_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              Columns = <
                item
                  Color = clInfoBk
                  Expanded = False
                  FieldName = 'ID'
                  ReadOnly = True
                  Title.Caption = #8470' '#1074#1077#1088#1089#1080#1080
                  Width = 70
                  Visible = True
                end>
            end
            object pVarTitle: TPanel
              Left = 0
              Top = 0
              Width = 113
              Height = 17
              Align = alTop
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Caption = #1042#1077#1088#1089#1080#1080
              TabOrder = 1
            end
          end
          object pTerr: TPanel
            Left = 226
            Top = 0
            Width = 138
            Height = 474
            Align = alClient
            BevelOuter = bvNone
            Caption = 'Panel11'
            TabOrder = 2
            object dbgTerr: TDBGrid
              Left = 0
              Top = 17
              Width = 138
              Height = 457
              Align = alClient
              Ctl3D = True
              DataSource = dsTerr
              Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
              ParentCtl3D = False
              PopupMenu = pmCopyMenu
              TabOrder = 0
              TitleFont.Charset = RUSSIAN_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnCellClick = dbgTerrCellClick
              OnDrawColumnCell = g_CascoDrawColumnCell
              OnDblClick = g_CascoDblClick
              OnEditButtonClick = dbgTerrEditButtonClick
              OnKeyDown = g_CascoKeyDown
              OnMouseDown = g_CascoObjMouseDown
              OnMouseUp = g_CascoMouseUp
              Columns = <
                item
                  Expanded = False
                  FieldName = 'VisField'
                  Title.Caption = ' '
                  Visible = False
                end
                item
                  ButtonStyle = cbsEllipsis
                  Color = clInfoBk
                  Expanded = False
                  FieldName = 'PARNAME'
                  Title.Caption = #1055#1072#1088#1072#1084#1077#1090#1088
                  Visible = False
                end
                item
                  ButtonStyle = cbsEllipsis
                  Color = clInfoBk
                  Expanded = False
                  FieldName = 'VALNAME'
                  Title.Caption = #1047#1085#1072#1095#1077#1085#1080#1077
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ROOT'
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'DATATYPE'
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'CLASSISN'
                  Visible = False
                end
                item
                  ButtonStyle = cbsEllipsis
                  Expanded = False
                  FieldName = 'GROUPID'
                  Title.Caption = #1043#1088#1091#1087'.'
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'NO'
                  Title.Caption = #8470
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'ISN'
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'VAL'
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'AGRISN'
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'UpdatedBy'
                  Title.Caption = #1040#1074#1090#1086#1088' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'Updated'
                  Title.Caption = #1042#1088#1077#1084#1103' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'CreatedBy'
                  Title.Caption = #1040#1074#1090#1086#1088' '#1089#1086#1079#1076#1072#1085#1080#1103
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'Created'
                  Title.Caption = #1042#1088#1077#1084#1103' '#1089#1086#1079#1076#1072#1085#1080#1103
                  Visible = False
                end>
            end
            object pTerrTitle: TPanel
              Left = 0
              Top = 0
              Width = 138
              Height = 17
              Align = alTop
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Caption = #1058#1077#1088#1088#1080#1090#1086#1088#1080#1080
              TabOrder = 1
            end
          end
        end
      end
    end
    object Panel4: TPanel
      Left = 932
      Top = 0
      Width = 250
      Height = 484
      Align = alRight
      BevelOuter = bvNone
      BorderWidth = 6
      TabOrder = 1
      object Panel5: TPanel
        Left = 6
        Top = 6
        Width = 238
        Height = 17
        Align = alTop
        Alignment = taLeftJustify
        Anchors = [akRight]
        BevelOuter = bvNone
        Caption = #1056#1072#1089#1095#1077#1090
        TabOrder = 0
      end
      object grPreCalcPrem: TDBGrid
        Left = 6
        Top = 23
        Width = 238
        Height = 105
        Align = alClient
        Color = clInfoBk
        DataSource = dsPreCalcPrem
        TabOrder = 1
        TitleFont.Charset = RUSSIAN_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = grPreCalcPremDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'ParamName'
            ReadOnly = True
            Title.Caption = #1055#1072#1088#1072#1084#1077#1090#1088
            Width = 131
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ParamVal'
            ReadOnly = True
            Title.Caption = #1047#1085#1072#1095#1077#1085#1080#1077
            Width = 68
            Visible = True
          end>
      end
      object pHint: TPanel
        Left = 6
        Top = 128
        Width = 238
        Height = 350
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 2
        Visible = False
        object mHint: TMemo
          Left = 0
          Top = 0
          Width = 238
          Height = 350
          Align = alClient
          Color = clInfoBk
          ReadOnly = True
          TabOrder = 0
        end
      end
    end
  end
  inherited pNav: TPanel
    Width = 1182
    Height = 35
    ParentShowHint = False
    ShowHint = True
    DesignSize = (
      1182
      35)
    inherited sb_Help: TSpeedButton
      Left = 1107
      Anchors = [akTop, akRight]
    end
    object Bevel1: TBevel [1]
      Left = 0
      Top = 33
      Width = 1182
      Height = 2
      Align = alBottom
    end
    object Bevel4: TBevel [2]
      Left = 253
      Top = 2
      Width = 3
      Height = 28
      Shape = bsLeftLine
    end
    object sbPackDoc: TSpeedButton [3]
      Left = 328
      Top = 4
      Width = 23
      Height = 22
      Hint = #1050#1086#1084#1087#1083#1077#1082#1090' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555000000
        000055555F77777777775555000FFFFFFFF0555F777F5FFFF55755000F0F0000
        FFF05F777F7F77775557000F0F0FFFFFFFF0777F7F7F5FFFFFF70F0F0F0F0000
        00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFFFFF70F0F0F0F0000
        00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFF55570F0F0F0F000F
        FFF07F7F7F7F77755FF70F0F0F0FFFFF00007F7F7F7F5FF577770F0F0F0F00FF
        0F057F7F7F7F77557F750F0F0F0FFFFF00557F7F7F7FFFFF77550F0F0F000000
        05557F7F7F77777775550F0F0000000555557F7F7777777555550F0000000555
        55557F7777777555555500000005555555557777777555555555}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = sbPackDocClick
    end
    object sbFraud: TSpeedButton [4]
      Left = 352
      Top = 4
      Width = 23
      Height = 22
      Hint = #1055#1088#1077#1076#1074#1072#1088#1080#1090#1077#1083#1100#1085#1072#1103' '#1087#1088#1086#1074#1077#1088#1082#1072' '#1082#1083#1080#1077#1085#1090#1072
      Flat = True
      Glyph.Data = {
        42010000424D4201000000000000760000002800000011000000110000000100
        040000000000CC00000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777700000007770777777777077700000007778777777777877700000007080
        0000000000807000000077700000000000777000000077700777077700777000
        0000777007770777007770000000777007770777007770000000777000000000
        0077700000007770077707770077700000007770077707770077700000007770
        0777077700777000000077700000000000777000000070800000000000807000
        0000777877777777787770000000777077777777707770000000777777777777
        777770000000}
      ParentShowHint = False
      ShowHint = True
      OnClick = sbFraudClick
    end
    object sbLoadDataFromXls: TSpeedButton [5]
      Left = 376
      Top = 4
      Width = 23
      Height = 22
      Hint = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1076#1072#1085#1085#1099#1077' '#1047#1072#1103#1074#1083#1077#1085#1080#1103' '#1085#1072' '#1089#1090#1088#1072#1093#1086#1074#1072#1085#1080#1077
      Flat = True
      Glyph.Data = {
        0E060000424D0E06000000000000360000002800000016000000160000000100
        180000000000D805000000000000000000000000000000000000F0F0F0F0F0F0
        F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
        F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F00000F0F0
        F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
        F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
        0000F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0000000F0F0F0F0F0F0
        000000F0F0F0F0F0F0000000F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
        F0F0F0F00000F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F00000000000
        00F0F0F0000000000000F0F0F0000000000000F0F0F0F0F0F0F0F0F0F0F0F0F0
        F0F0F0F0F0F0F0F00000F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F000
        0000FFFFFF000000000000FFFFFF000000000000FFFFFF000000F0F0F0F0F0F0
        F0F0F0F0F0F0F0F0F0F0F0F00000F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
        F0F0F0000000C0C0C0FFFFFF000000C0C0C0FFFFFF000000C0C0C0FFFFFF0000
        00F0F0F0F0F0F0F0F0F0F0F0F0F0F0F00000F0F0F0F0F0F0F0F0F0F0F0F0F0F0
        F0F0F0F0F0F0F0000000808080C0C0C0000000808080C0C0C0000000808080C0
        C0C0FFFFFF000000F0F0F0F0F0F0F0F0F0F0F0F00000F0F0F0F0F0F0F0F0F0F0
        F0F0F0F0F00000FF0000FF000000FFFFFF808080000000FFFFFF808080000000
        FFFFFF808080C0C0C0FFFFFF000000F0F0F0F0F0F0F0F0F00000F0F0F0F0F0F0
        F0F0F0F0F0F00000FF0000FF0000FF000000FFFFFFFFFFFF000000FFFFFFFFFF
        FF000000FFFFFFFFFFFF808080FFFFFF000000F0F0F0F0F0F0F0F0F00000F0F0
        F0F0F0F0F0F0F00000FF0000FF0000FF0000FF000000FFFFFFFFFFFF000000FF
        FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF000000F0F0F0F0F0F0F0F0F0
        0000F0F0F0F0F0F0F0F0F00000FF0000FF0000FFF0F0F0000000FFFFFFFFFFFF
        000000FFFFFFFFFFFF000000FFFFFFFFFFFFFFFF00FFFFFF000000F0F0F0F0F0
        F0F0F0F00000F0F0F0F0F0F0F0F0F00000FF0000FF0000FFF0F0F0F0F0F00000
        00FFFFFFFFFFFF000000FFFFFFFFFFFF000000FFFFFF00FF0000FF00000000F0
        F0F0F0F0F0F0F0F00000F0F0F0F0F0F0F0F0F00000FF0000FF0000FFF0F0F0F0
        F0F0F0F0F0000000FFFFFFFFFF00000000FFFFFFFFFF00000000FFFFFFFFFF00
        000000F0F0F0F0F0F0F0F0F00000F0F0F00000FF0000FF0000FF0000FF0000FF
        0000FF0000FFF0F0F0F0F0F0000000FFFFFF000000000000FFFFFF0000000000
        00FFFFFF000000F0F0F0F0F0F0F0F0F00000F0F0F0F0F0F00000FF0000FF0000
        FF0000FF0000FFF0F0F0F0F0F0F0F0F0F0F0F0000000000000F0F0F000000000
        0000F0F0F0000000000000F0F0F0F0F0F0F0F0F00000F0F0F0F0F0F0F0F0F000
        00FF0000FF0000FFF0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0000000F0F0F0
        F0F0F0000000F0F0F0F0F0F0000000F0F0F0F0F0F0F0F0F00000F0F0F0F0F0F0
        F0F0F0F0F0F00000FFF0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
        F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F00000F0F0
        F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
        F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
        0000F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
        F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
        F0F0F0F00000F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
        F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
        F0F0F0F0F0F0F0F00000F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
        F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
        F0F0F0F0F0F0F0F0F0F0F0F00000F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
        F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
        F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F00000}
      Layout = blGlyphBottom
      ParentShowHint = False
      ShowHint = True
      OnClick = sbLoadDataFromXlsClick
    end
    object cbMode: TComboBox
      Left = 406
      Top = 5
      Width = 145
      Height = 21
      Hint = #1056#1077#1078#1080#1084' '#1086#1090#1086#1073#1088#1072#1078#1077#1085#1080#1103' '#1082#1086#1090#1080#1088#1086#1074#1082#1080
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 1
      OnChange = cbModeChange
      Items.Strings = (
        #1054#1087#1090#1080#1084#1072#1083#1100#1085#1099#1081
        #1056#1072#1089#1096#1080#1088#1077#1085#1085#1099#1081)
    end
    object tbMain: TToolBar
      Left = 259
      Top = 4
      Width = 69
      Height = 22
      Align = alNone
      AutoSize = True
      Caption = 'tbMain'
      EdgeBorders = []
      Flat = True
      Images = ilMain
      TabOrder = 2
      object tbnCopyCalc: TToolButton
        Left = 0
        Top = 0
        Hint = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1082#1086#1090#1080#1088#1086#1074#1082#1091
        Caption = 'tbnCopyCalc'
        ImageIndex = 0
        ParentShowHint = False
        ShowHint = True
        OnClick = tbnCopyCalcClick
      end
      object tbnQueue: TToolButton
        Left = 23
        Top = 0
        Hint = #1054#1095#1077#1088#1077#1076#1100' '#1082' '#1082#1086#1090#1080#1088#1086#1074#1082#1077
        Caption = 'tbnQueue'
        ImageIndex = 1
        ParentShowHint = False
        ShowHint = True
        OnClick = tbnQueueClick
      end
      object tbnConvertCalc: TToolButton
        Left = 46
        Top = 0
        Hint = #1050#1086#1085#1074#1077#1088#1090#1080#1088#1086#1074#1072#1090#1100' '#1074' '#1054#1057#1040#1043#1054
        Caption = 'tbnConvertCalc'
        ImageIndex = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = tbnConvertCalcClick
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 608
    Width = 1182
    Height = 56
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      1182
      56)
    object Bevel3: TBevel
      Left = 0
      Top = 0
      Width = 1182
      Height = 2
      Align = alTop
    end
    object Label17: TLabel
      Left = 90
      Top = 13
      Width = 43
      Height = 13
      Caption = #1057#1086#1079#1076#1072#1085#1072
    end
    object Label16: TLabel
      Left = 8
      Top = 13
      Width = 18
      Height = 13
      Caption = 'ISN'
    end
    object Label18: TLabel
      Left = 206
      Top = 13
      Width = 72
      Height = 13
      Caption = #1052#1077#1090#1086#1076' '#1085#1072' '#1076#1072#1090#1091
      DragMode = dmAutomatic
      Transparent = True
      Visible = False
    end
    object btStoreCalcResultToAgr: TBitBtn
      Tag = 1
      Left = 857
      Top = 26
      Width = 210
      Height = 26
      Hint = #1055#1077#1088#1077#1085#1077#1089#1090#1080' '#1074' '#1076#1086#1075#1086#1074#1086#1088'/'#1082#1086#1090#1080#1088#1086#1074#1082#1091
      Anchors = [akRight, akBottom]
      Caption = #1055#1077#1088#1077#1085#1077#1089#1090#1080' '#1074' '#1076#1086#1075#1086#1074#1086#1088'/'#1082#1086#1090#1080#1088#1086#1074#1082#1091
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      Visible = False
      OnClick = btStoreCalcResultToAgrClick
      Glyph.Data = {
        42020000424D4202000000000000420000002800000010000000100000000100
        1000030000000002000000000000000000000000000000000000007C0000E003
        00001F0000001F7C1F7C1F7C1F7C000000000000000000000000000000000000
        0000000000001F7C1F7C1F7C1F7C0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7F00001F7C1F7C1F7C1F7C0000FF7F000000000000FF7F0000FF7F0000
        0000FF7F00001F7C1F7C1F7C1F7C0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7F00001F7C1F7C1F7C1F7C0000FF7F00000000FF7F00000000FF7F0000
        0000FF7F00001F7C1F7C1F7C1F7C0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7F00001F7C1F7C1F7C1F7C00000000FF7FFF7FFF7FFF7F00000000FF7F
        0000FF7F00001F7C1F7C1F7C0000FF7FE07F00000000FF7F0000FF7F0000FF7F
        FF7FFF7F00001F7C1F7C0000FF7FE07F0000E07FFF7F0000FF7FE07F0000FF7F
        0000FF7F00001F7C0000FF7FE07FFF7FE07FFF7F0000FF7FE07F0000FF7FFF7F
        FF7FFF7F00001F7C0000E07FFF7FE07FFF7F0000FF7FE07F0000FF7FFF7FFF7F
        FF7FFF7F000000000000FF7FE07FFF7FE07FFF7FE07F0000FF7FFF7FFF7F0000
        000000000000FF030000E07FFF7FE07FFF7FE07F000000000000FF7FFF7F0000
        FF7FFF7F0000FF03FF030000E07FFF7FE07F0000E07FFF7FE07F0000FF7F0000
        FF7F00001F7CFF03FF03FF030000E07FFF7FE07FFF7F00000000FF7FFF7F0000
        00001F7C1F7CFF03FF03FF03FF03000000000000000000000000000000000000
        1F7C1F7C1F7C}
    end
    object btCalcPrem: TBitBtn
      Left = 734
      Top = 26
      Width = 109
      Height = 26
      Hint = #1056#1072#1089#1089#1095#1080#1090#1072#1090#1100' '#1087#1088#1077#1084#1080#1102' (F9)'
      Anchors = [akRight, akBottom]
      Caption = #1056#1072#1089#1089#1095#1080#1090#1072#1090#1100' (F9) '
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = btCalcPremClick
      Glyph.Data = {
        66010000424D6601000000000000760000002800000014000000140000000100
        040000000000F000000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777700007777777777777777777700007777777777777777777700007777
        7777777777777777000077777777777777777777000077777777777777777777
        0000777770000000007777770000777777007777707777770000777777700777
        7777777700007777777700777777777700007777777770077777777700007777
        7777007777777777000077777770077777777777000077777700777770777777
        0000777770000000007777770000777777777777777777770000777777777777
        7777777700007777777777777777777700007777777777777777777700007777
        77777777777777770000}
      Spacing = 0
    end
    object btPrint: TBitBtn
      Left = 986
      Top = 26
      Width = 74
      Height = 26
      Anchors = [akRight, akBottom]
      Caption = #1055#1077#1095#1072#1090#1100'... '
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = btPrintClick
      Glyph.Data = {
        66010000424D6601000000000000760000002800000014000000140000000100
        040000000000F000000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777700007777777777777777777700007777777777777777777700007777
        7777777777777777000077770000000000077777000077707777777770707777
        0000770000000000000707770000770777777BBB770007770000770777777888
        7707077700007700000000000007707700007707777777777070707700007770
        0000000007070077000077770FFFFFFFF07070770000777770F00000F0000777
        0000777770FFFFFFFF07777700007777770F00000F07777700007777770FFFFF
        FFF0777700007777777000000000777700007777777777777777777700007777
        77777777777777770000}
      Spacing = 3
    end
    object btNewAgr: TBitBtn
      Tag = 1
      Left = 1066
      Top = 26
      Width = 112
      Height = 26
      Hint = #1057#1086#1079#1076#1072#1090#1100' '#1076#1086#1075#1086#1074#1086#1088' '#1085#1072' '#1086#1089#1085#1086#1074#1077' '#1082#1086#1090#1080#1088#1086#1074#1082#1080
      Anchors = [akRight, akBottom]
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1076#1086#1075#1086#1074#1086#1088' '
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = btNewAgrClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000010000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
        0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
        0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
        33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
        B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
        3BB33773333773333773B333333B3333333B7333333733333337}
      NumGlyphs = 2
    end
    object btCreateAgr: TBitBtn
      Left = 906
      Top = 26
      Width = 76
      Height = 26
      Hint = #1057#1086#1079#1076#1072#1090#1100' '#1085#1086#1074#1091#1102' '#1082#1086#1090#1080#1088#1086#1074#1082#1091
      Anchors = [akRight, akBottom]
      Caption = #1057#1086#1079#1076#1072#1090#1100'...'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = btCreateAgrClick
      Glyph.Data = {
        66010000424D6601000000000000760000002800000014000000140000000100
        040000000000F0000000CE0E0000D80E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777700007777777777777777777700007777777777777777777700007777
        0000000000077777000077770FFFFFFFFF077777000077770FFFFFFFFF077777
        000077770FFFFFFFFF077777000077770FFFFFFFFF077777000077770FFFFFFF
        FF077777000077770FFFFFFFFF077777000077770FFFFFFFFF07777700007777
        0FFFFFFFFF077777000077770FFFFFF000077777000077770FFFFFF0F0777777
        000077770FFFFFF0077777770000777700000000777777770000777777777777
        7777777700007777777777777777777700007777777777777777777700007777
        77777777777777770000}
      Spacing = 0
    end
    object edName: TDBEdit
      Left = 743
      Top = 3
      Width = 218
      Height = 21
      Anchors = [akRight, akBottom]
      DataField = 'Name'
      DataSource = dsPreCalcHead
      TabOrder = 0
    end
    object btMVC: TBitBtn
      Left = 849
      Top = 26
      Width = 51
      Height = 26
      Hint = #1052#1085#1086#1075#1086#1074#1072#1088#1080#1072#1085#1090#1085#1099#1081' '#1088#1072#1089#1095#1077#1090
      Anchors = [akRight, akBottom]
      Caption = #1052#1042#1056
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = btMVCClick
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888800088888800088880004444440008888000888888000888884888888
        8848000884888888884800044488888888480008848888888848818884888888
        8848818800088888800081880001111110008188000881888000818888888188
        8888000888880008888800011111000888880008888800088888}
    end
    object cbTestCalc: TCheckBox
      Left = 970
      Top = 5
      Width = 93
      Height = 17
      Anchors = [akRight, akBottom]
      Caption = #1058#1077#1089#1090#1080#1088#1086#1074#1072#1085#1080#1077
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      Visible = False
    end
    object cbShowLog: TCheckBox
      Left = 1067
      Top = 5
      Width = 116
      Height = 17
      Anchors = [akRight, akBottom]
      Caption = #1055#1088#1086#1090#1086#1082#1086#1083' '#1088#1072#1089#1095#1077#1090#1072
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object DBEdit2: TDBEdit
      Left = 89
      Top = 31
      Width = 111
      Height = 19
      TabStop = False
      Anchors = [akLeft, akBottom]
      Color = clBtnFace
      Ctl3D = False
      DataField = 'Created'
      DataSource = dsPreCalcHead
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 8
    end
    object DBEdit1: TDBEdit
      Left = 6
      Top = 31
      Width = 76
      Height = 19
      TabStop = False
      Anchors = [akLeft, akBottom]
      Color = clBtnFace
      Ctl3D = False
      DataField = 'ISN'
      DataSource = dsPreCalcHead
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 9
    end
    object dbeLoadMethod: TDBEdit
      Left = 205
      Top = 31
      Width = 75
      Height = 19
      TabStop = False
      Anchors = [akLeft, akBottom]
      Color = clBtnFace
      Ctl3D = False
      DataField = 'DATELOADMETHOD'
      DataSource = dsPreCalcHead
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 10
      Visible = False
    end
    object MeImportExcel: TMemo
      Left = 312
      Top = 8
      Width = 33
      Height = 41
      Lines.Strings = (
        'MeIm'
        'portE'
        'xcel')
      TabOrder = 12
      Visible = False
    end
  end
  object Panel7: TPanel
    Left = 0
    Top = 35
    Width = 1182
    Height = 89
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    object Bevel2: TBevel
      Left = 0
      Top = 87
      Width = 1182
      Height = 2
      Align = alBottom
    end
    object Panel6: TPanel
      Left = 603
      Top = 0
      Width = 579
      Height = 87
      Align = alClient
      BevelOuter = bvNone
      BorderWidth = 5
      TabOrder = 0
      object Label15: TLabel
        Left = 5
        Top = 5
        Width = 569
        Height = 13
        Align = alTop
        Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
      end
      object edRemark: TDBMemo
        Left = 5
        Top = 18
        Width = 569
        Height = 64
        Align = alClient
        DataField = 'Remark'
        DataSource = dsPreCalcHead
        ScrollBars = ssVertical
        TabOrder = 0
        OnEnter = EnterControl
      end
      object memConvertCall: TMemo
        Left = 32
        Top = 24
        Width = 129
        Height = 49
        Lines.Strings = (
          'memConvertCall')
        TabOrder = 1
        Visible = False
      end
    end
    object Panel8: TPanel
      Left = 0
      Top = 0
      Width = 603
      Height = 87
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        603
        87)
      object lVariantValuation: TLabel
        Left = 8
        Top = 42
        Width = 81
        Height = 13
        Caption = #1042#1072#1088#1080#1072#1085#1090' '#1086#1094#1077#1085#1082#1080
        Visible = False
      end
      object Label2: TLabel
        Left = 8
        Top = 4
        Width = 34
        Height = 13
        Caption = #1053#1086#1084#1077#1088
      end
      object Label12: TLabel
        Left = 8
        Top = 42
        Width = 34
        Height = 13
        Caption = #1057#1090#1072#1090#1091#1089
      end
      object Label20: TLabel
        Left = 110
        Top = 42
        Width = 36
        Height = 13
        Caption = #1050#1083#1080#1077#1085#1090
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label83: TLabel
        Left = 91
        Top = 4
        Width = 69
        Height = 13
        Caption = #1044#1072#1090#1072' '#1088#1072#1089#1095#1077#1090#1072
      end
      object Label13: TLabel
        Left = 167
        Top = 4
        Width = 38
        Height = 13
        Caption = #1042#1072#1083#1102#1090#1072
      end
      object Label14: TLabel
        Left = 256
        Top = 42
        Width = 112
        Height = 13
        Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090' '#1086#1073#1088#1072#1097#1077#1085#1080#1103
      end
      object Label11: TLabel
        Left = 227
        Top = 4
        Width = 42
        Height = 13
        Caption = #1055#1088#1086#1076#1091#1082#1090
      end
      object Label6: TLabel
        Left = 329
        Top = 4
        Width = 41
        Height = 13
        Caption = #1050#1091#1088#1072#1090#1086#1088
      end
      object Label10: TLabel
        Left = 389
        Top = 42
        Width = 44
        Height = 13
        Caption = #1044#1086#1075#1086#1074#1086#1088
      end
      object lbClientsSource: TLabel
        Left = 494
        Top = 42
        Width = 97
        Height = 13
        Caption = #1048#1089#1090#1086#1095#1085#1080#1082' '#1088#1077#1082#1083#1072#1084#1099
      end
      object edVariantValuation: TDBEditBtn
        Left = 8
        Top = 56
        Width = 177
        Height = 21
        DataField = 'VariantValuationName'
        DataSource = dsPreCalcHead
        ReadOnly = True
        TabOrder = 11
        Visible = False
        OnEnter = EnterControl
        ButtonCaption = 'v'
        NumGlyphs = 1
        OnBtnClick = edVariantValuationBtnClick
      end
      object edID: TDBEdit
        Left = 8
        Top = 18
        Width = 80
        Height = 21
        DataField = 'ID'
        DataSource = dsPreCalcHead
        ReadOnly = True
        TabOrder = 0
        OnEnter = EnterControl
      end
      object edAgrStatus: TDBEditBtn
        Left = 8
        Top = 56
        Width = 100
        Height = 21
        DataField = 'StatusName'
        DataSource = dsPreCalcHead
        ReadOnly = True
        TabOrder = 1
        OnEnter = EnterControl
        ButtonCaption = 'v'
        NumGlyphs = 1
        OnBtnClick = edAgrStatusBtnClick
      end
      object edClientFullName: TDBEditBtn
        Left = 110
        Top = 56
        Width = 144
        Height = 21
        DataField = 'ClientName'
        DataSource = dsPreCalcHead
        ReadOnly = True
        TabOrder = 2
        OnDblClick = edClientFullNameBtnClick
        OnEnter = EnterControl
        OnKeyDown = edClientFullNameKeyDown
        ButtonCaption = '...'
        NumGlyphs = 1
        OnBtnClick = edClientFullNameBtnClick
      end
      object edDATECALC: TDBDateEdit
        Left = 91
        Top = 18
        Width = 74
        Height = 21
        DataField = 'DateCalc'
        DataSource = dsPreCalcHead
        ReadOnly = True
        Color = clInfoBk
        MaskType = mtShort
        MaxLength = 8
        TabOrder = 3
        OnEnter = EnterControl
      end
      object edCurrName: TDBEditBtn
        Left = 167
        Top = 18
        Width = 58
        Height = 21
        DataField = 'CurrName'
        DataSource = dsPreCalcHead
        ReadOnly = True
        TabOrder = 4
        OnEnter = EnterControl
        ButtonCaption = '...'
        NumGlyphs = 1
        OnBtnClick = edCurrNameBtnClick
      end
      object edClientReplyName: TDBEditBtn
        Left = 256
        Top = 56
        Width = 131
        Height = 21
        DataField = 'ClientReplyName'
        DataSource = dsPreCalcHead
        TabOrder = 5
        OnEnter = EnterControl
        ButtonCaption = '...'
        NumGlyphs = 1
        OnBtnClick = edClientReplyNameBtnClick
      end
      object edRuleName: TDBEditBtn
        Left = 227
        Top = 18
        Width = 101
        Height = 21
        DataField = 'RULENAME'
        DataSource = dsPreCalcHead
        ReadOnly = True
        TabOrder = 6
        OnEnter = EnterControl
        ButtonCaption = '...'
        NumGlyphs = 1
        OnBtnClick = edRuleNameBtnClick
      end
      object edEmplName: TDBEditBtn
        Left = 329
        Top = 18
        Width = 136
        Height = 21
        DataField = 'EmplName'
        DataSource = dsPreCalcHead
        ReadOnly = True
        TabOrder = 7
        OnEnter = EnterControl
        ButtonCaption = '...'
        NumGlyphs = 1
        OnBtnClick = edEmplNameBtnClick
      end
      object edAgrID: TDBEditBtn
        Left = 389
        Top = 56
        Width = 102
        Height = 21
        Color = clInfoBk
        DataField = 'AgrID'
        DataSource = dsPreCalcHead
        ReadOnly = True
        TabOrder = 8
        OnDblClick = edAgrIDDblClick
        OnEnter = EnterControl
        ButtonCaption = '...'
        NumGlyphs = 1
        OnBtnClick = edAgrIDDblClick
      end
      object chbGTotal: TDBCheckBox
        Left = 469
        Top = 19
        Width = 116
        Height = 18
        Hint = #1055#1077#1088#1074#1080#1095#1085#1099#1081' '#1088#1072#1089#1095#1077#1090
        Caption = #1055#1077#1088#1074#1080#1095#1085#1099#1081' '#1088#1072#1089#1095#1077#1090
        DataField = 'FirstCalc'
        DataSource = dsPreCalcHead
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        ValueChecked = 'Y'
        ValueUnchecked = 'N'
        OnEnter = EnterControl
      end
      object edClientSource: TDBEditBtn
        Left = 494
        Top = 56
        Width = 107
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DataField = 'ClientsSourceName'
        DataSource = dsPreCalcHead
        ReadOnly = True
        TabOrder = 10
        OnEnter = EnterControl
        OnKeyDown = edClientSourceKeyDown
        ButtonCaption = '...'
        NumGlyphs = 1
        OnBtnClick = edClientSourceBtnClick
      end
    end
  end
  object dsPreCalcCL: TDataSource
    DataSet = qrPreCalcCL
    Left = 585
    Top = 250
  end
  object dsGetRulTariffTxt: TDataSource
    DataSet = qrGetRulTariffTxt
    Left = 593
    Top = 314
  end
  object pmSbjCityName: TPopupMenu
    Left = 509
    Top = 181
  end
  object dsFillSbjCity: TDataSource
    DataSet = qrFillSbjCity
    Left = 585
    Top = 366
  end
  object dsPreCalcPrem: TDataSource
    DataSet = qrPreCalcPrem
    Left = 1029
    Top = 346
  end
  object dsPreCalcParam: TDataSource
    DataSet = qrPreCalcParam
    OnStateChange = dsPreCalcParamStateChange
    OnDataChange = dsPreCalcParamDataChange
    Left = 213
    Top = 318
  end
  object dsPreCalcHead: TDataSource
    DataSet = qrPreCalcHead
    Left = 613
    Top = 5
  end
  object pmAddGroup: TPopupMenu
    Left = 209
    Top = 374
    object mAddDrv: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1075#1088#1091#1087#1087#1091
      OnClick = mAddDrvClick
    end
    object mDelDrv: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1075#1088#1091#1087#1087#1091
      OnClick = mAddDrvClick
    end
  end
  object dsPreCalcParam1: TDataSource
    DataSet = qrPreCalcParam1
    OnStateChange = dsPreCalcParamStateChange
    OnDataChange = dsPreCalcParamDataChange
    Left = 345
    Top = 318
  end
  object ppStatus: TPopupMenu
    OnPopup = ppStatusPopup
    Left = 442
    Top = 277
  end
  object pmAllowValue: TPopupMenu
    Left = 184
    Top = 436
  end
  object qrPreCalcCL: TClientDataSetN
    Aggregates = <>
    Params = <
      item
        DataType = ftCursor
        Name = 'RESULT'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'PISN'
        ParamType = ptInput
      end>
    ProviderName = 'dspPreCalcCL'
    AfterOpen = qrPreCalcCLAfterOpen
    AfterPost = qrPreCalcCLAfterPost
    AfterCancel = DSAfterCancel
    BeforeDelete = DSBeforeDelete
    AfterDelete = DSAfterDelete
    AfterRefresh = qrPreCalcCLAfterRefresh
    OnReconcileError = DSReconcileError
    BeforeApplyUpdates = qrPreCalcCLBeforeGetRecords
    AfterApplyUpdates = DSAfterApplyUpdates
    BeforeGetRecords = qrPreCalcCLBeforeGetRecords
    Left = 513
    Top = 224
    object qrPreCalcCLID: TStringField
      DisplayWidth = 20
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate]
    end
    object qrPreCalcCLISN: TFloatField
      DisplayWidth = 10
      FieldName = 'ISN'
      ProviderFlags = [pfInUpdate]
    end
    object qrPreCalcCLAGRISN: TFloatField
      DisplayWidth = 10
      FieldName = 'AGRISN'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrPreCalcCLCARENGINEPOWERHP: TFloatField
      DisplayWidth = 10
      FieldName = 'CARENGINEPOWERHP'
      ProviderFlags = [pfInUpdate]
    end
    object qrPreCalcCLCARSEATS: TFloatField
      DisplayWidth = 10
      FieldName = 'CARSEATS'
      ProviderFlags = [pfInUpdate]
    end
    object qrPreCalcCLCARGROSSWEIGH: TFloatField
      DisplayWidth = 10
      FieldName = 'CARGROSSWEIGH'
      ProviderFlags = [pfInUpdate]
    end
    object qrPreCalcCLCARCTGVALISN: TFloatField
      DisplayWidth = 10
      FieldName = 'CARCTGVALISN'
      ProviderFlags = [pfInUpdate]
    end
    object qrPreCalcCLCARCTGVALNAME: TStringField
      DisplayWidth = 255
      FieldName = 'CARCTGVALNAME'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object qrPreCalcCLVEHICLEUSAGE: TFloatField
      DisplayWidth = 10
      FieldName = 'VEHICLEUSAGE'
      ProviderFlags = [pfInUpdate]
    end
    object qrPreCalcCLMODEUSECLISN: TFloatField
      DisplayWidth = 10
      FieldName = 'MODEUSECLISN'
      ProviderFlags = [pfInUpdate]
    end
    object qrPreCalcCLMODEUSECLNAME: TStringField
      DisplayWidth = 255
      FieldName = 'MODEUSECLNAME'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object qrPreCalcCLSBJJURIDICAL: TFloatField
      DisplayWidth = 10
      FieldName = 'SBJJURIDICAL'
      ProviderFlags = [pfInUpdate]
    end
    object qrPreCalcCLSBJCITYISN: TFloatField
      DisplayWidth = 10
      FieldName = 'SBJCITYISN'
      ProviderFlags = [pfInUpdate]
    end
    object qrPreCalcCLSBJCITYCLASSISN: TFloatField
      DisplayWidth = 10
      FieldName = 'SBJCITYCLASSISN'
      ProviderFlags = [pfInUpdate]
    end
    object qrPreCalcCLSBJCITYNAME: TStringField
      DisplayWidth = 255
      FieldName = 'SBJCITYNAME'
      ProviderFlags = [pfInUpdate]
      OnSetText = qrPreCalcCLSBJCITYNAMESetText
      Size = 255
    end
    object qrPreCalcCLSBJBIRTHDATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'SBJBIRTHDATE'
      ProviderFlags = [pfInUpdate]
    end
    object qrPreCalcCLSBJDRIVINGDATEBEG: TDateTimeField
      DisplayWidth = 18
      FieldName = 'SBJDRIVINGDATEBEG'
      ProviderFlags = [pfInUpdate]
    end
    object qrPreCalcCLRISKCTGISN: TFloatField
      DisplayWidth = 10
      FieldName = 'RISKCTGISN'
      ProviderFlags = [pfInUpdate]
    end
    object qrPreCalcCLRISKCTGNAME: TStringField
      DisplayWidth = 255
      FieldName = 'RISKCTGNAME'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object qrPreCalcCLAGRDATEBEG: TDateTimeField
      DisplayWidth = 18
      FieldName = 'AGRDATEBEG'
      ProviderFlags = [pfInUpdate]
    end
    object qrPreCalcCLDATEBEG: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DATEBEG'
      ProviderFlags = [pfInUpdate]
    end
    object qrPreCalcCLAGRDATEEND: TDateTimeField
      DisplayWidth = 18
      FieldName = 'AGRDATEEND'
      ProviderFlags = [pfInUpdate]
    end
    object qrPreCalcCLDATEEND: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DATEEND'
      ProviderFlags = [pfInUpdate]
    end
    object qrPreCalcCLAGRPERIODTXT: TStringField
      DisplayWidth = 32
      FieldName = 'AGRPERIODTXT'
      ProviderFlags = [pfInUpdate]
      Size = 32
    end
    object qrPreCalcCLAGRPERIODM: TFloatField
      DisplayWidth = 10
      FieldName = 'AGRPERIODM'
      ProviderFlags = [pfInUpdate]
    end
    object qrPreCalcCLPERIODTXT: TStringField
      DisplayWidth = 32
      FieldName = 'PERIODTXT'
      ProviderFlags = [pfInUpdate]
      Size = 32
    end
    object qrPreCalcCLPERIODM: TFloatField
      DisplayWidth = 10
      FieldName = 'PERIODM'
      ProviderFlags = [pfInUpdate]
    end
    object qrPreCalcCLDATECALC: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DATECALC'
      ProviderFlags = [pfInUpdate]
    end
    object qrPreCalcCLSBJBIRTHDRIVE: TStringField
      DisplayWidth = 32
      FieldName = 'SBJBIRTHDRIVE'
      ProviderFlags = [pfInUpdate]
      Size = 32
    end
    object qrPreCalcCLSBJBIRTHAGE: TFloatField
      DisplayWidth = 10
      FieldName = 'SBJBIRTHAGE'
      ProviderFlags = [pfInUpdate]
    end
    object qrPreCalcCLSBJDRIVINGAGE: TFloatField
      DisplayWidth = 10
      FieldName = 'SBJDRIVINGAGE'
      ProviderFlags = [pfInUpdate]
    end
    object qrPreCalcCLBIRTHDRIVINGVRULISN: TFloatField
      DisplayWidth = 10
      FieldName = 'BIRTHDRIVINGVRULISN'
      ProviderFlags = [pfInUpdate]
    end
    object qrPreCalcCLEMPLISN: TFloatField
      DisplayWidth = 10
      FieldName = 'EMPLISN'
      ProviderFlags = [pfInUpdate]
    end
    object qrPreCalcCLEMPLNAME: TStringField
      DisplayWidth = 40
      FieldName = 'EMPLNAME'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object qrPreCalcCLBONUSISN: TFloatField
      DisplayWidth = 10
      FieldName = 'BONUSISN'
      ProviderFlags = [pfInUpdate]
    end
    object qrPreCalcCLBONUSNAME: TStringField
      DisplayWidth = 20
      FieldName = 'BONUSNAME'
      ProviderFlags = [pfInUpdate]
    end
    object qrPreCalcCLAGR_ID: TStringField
      DisplayWidth = 32
      FieldName = 'AGR_ID'
      ProviderFlags = [pfInUpdate]
      Size = 32
    end
    object qrPreCalcCLAgr_ISN: TFloatField
      DisplayWidth = 10
      FieldName = 'AGR_ISN'
      ProviderFlags = [pfInUpdate]
    end
    object qrPreCalcCLFullName: TStringField
      DisplayWidth = 32
      FieldName = 'FullName'
      ProviderFlags = [pfInUpdate]
      Size = 32
    end
    object qrPreCalcCLClientISN: TFloatField
      DisplayWidth = 10
      FieldName = 'ClientISN'
      ProviderFlags = [pfInUpdate]
    end
    object qrPreCalcCLPREMIUMSUM: TFloatField
      DisplayWidth = 10
      FieldName = 'PREMIUMSUM'
      ProviderFlags = [pfInUpdate]
    end
    object qrPreCalcCLLiabExists: TFloatField
      DisplayWidth = 10
      FieldName = 'LiabExists'
    end
    object qrPreCalcCLLimitSumLiab: TFloatField
      DisplayWidth = 10
      FieldName = 'LimitSumLiab'
    end
    object qrPreCalcCLCarDomestic: TFloatField
      DisplayWidth = 10
      FieldName = 'CarDomestic'
    end
    object qrPreCalcCLUseWithTrailer: TFloatField
      FieldName = 'UseWithTrailer'
    end
    object qrPreCalcCLVehicleUsagePSG: TFloatField
      FieldName = 'VehicleUsagePSG'
    end
    object qrPreCalcCLFollowToPlaceOfReg: TFloatField
      FieldName = 'FollowToPlaceOfReg'
    end
    object qrPreCalcCLCARENGINEPOWERKW: TFloatField
      FieldName = 'CARENGINEPOWERKW'
    end
    object qrPreCalcCLFIO: TStringField
      FieldName = 'FIO'
      Size = 255
    end
    object qrPreCalcCLCLIENTIO: TStringField
      FieldName = 'CLIENTIO'
      Size = 255
    end
    object qrPreCalcCLINSURANTAGE: TStringField
      FieldName = 'INSURANTAGE'
      Size = 255
    end
    object qrPreCalcCLBreakageExists: TFloatField
      FieldName = 'BreakageExists'
    end
    object qrPreCalcCLCarInsurKilometers: TFloatField
      FieldName = 'CarInsurKilometers'
    end
    object qrPreCalcCLCarConstructed: TFloatField
      FieldName = 'CarConstructed'
    end
    object qrPreCalcCLCarModifISN: TFloatField
      FieldName = 'CarModifISN'
    end
    object qrPreCalcCLCarMarkISN: TFloatField
      FieldName = 'CarMarkISN'
    end
    object qrPreCalcCLCarModelISN: TFloatField
      FieldName = 'CarModelISN'
    end
    object qrPreCalcCLCarMarkName: TStringField
      FieldName = 'CarMarkName'
      Size = 40
    end
    object qrPreCalcCLCarModelName: TStringField
      FieldName = 'CarModelName'
      Size = 40
    end
    object qrPreCalcCLREADONLYFIELDS: TMemoField
      FieldName = 'READONLYFIELDS'
      BlobType = ftMemo
      Size = 4000
    end
    object qrPreCalcCLDISABLEDFIELDS: TMemoField
      FieldName = 'DISABLEDFIELDS'
      BlobType = ftMemo
      Size = 4000
    end
    object qrPreCalcCLSbjResident: TFloatField
      FieldName = 'SbjResident'
    end
  end
  object qrGetRulTariffTxt: TClientDataSetN
    Aggregates = <>
    Params = <
      item
        DataType = ftCursor
        Name = 'RESULT'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'PCLASSISN'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'PDATE'
        ParamType = ptInput
      end>
    ProviderName = 'dspGetRulTariffTxt'
    BeforeGetRecords = qrGetRulTariffTxtBeforeGetRecords
    Left = 529
    Top = 314
    object qrGetRulTariffTxtISN: TFloatField
      DisplayWidth = 10
      FieldName = 'ISN'
    end
    object qrGetRulTariffTxtTXT: TStringField
      DisplayWidth = 1
      FieldName = 'TXT'
      Size = 1
    end
    object qrGetRulTariffTxtXX1: TFloatField
      DisplayWidth = 10
      FieldName = 'XX1'
    end
    object qrGetRulTariffTxtXX2: TFloatField
      DisplayWidth = 10
      FieldName = 'XX2'
    end
    object qrGetRulTariffTxtTariffISN: TFloatField
      DisplayWidth = 10
      FieldName = 'TariffISN'
    end
  end
  object qrFillSbjCity: TClientDataSetN
    Aggregates = <>
    Params = <
      item
        DataType = ftCursor
        Name = 'Result'
        ParamType = ptResult
      end
      item
        DataType = ftDateTime
        Name = 'pDate'
        ParamType = ptInput
      end>
    ProviderName = 'dspFillSbjCity'
    BeforeGetRecords = qrFillSbjCityBeforeGetRecords
    Left = 533
    Top = 366
    object qrFillSbjCitySORT: TFloatField
      DisplayWidth = 10
      FieldName = 'SORT'
    end
    object qrFillSbjCitySbjCityISN: TFloatField
      DisplayWidth = 10
      FieldName = 'SbjCityISN'
    end
    object qrFillSbjCitySbjCityName: TStringField
      FieldName = 'SbjCityName'
      Size = 0
    end
    object qrFillSbjCitySbjCityClassISN: TFloatField
      DisplayWidth = 10
      FieldName = 'SbjCityClassISN'
    end
    object qrFillSbjCityModeUseCLISN: TFloatField
      DisplayWidth = 10
      FieldName = 'ModeUseCLISN'
    end
  end
  object qrPreCalcPrem: TClientDataSetN
    Aggregates = <>
    Filtered = True
    FieldDefs = <>
    IndexDefs = <>
    Params = <
      item
        DataType = ftCursor
        Name = 'RESULT'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'PAGRISN'
        ParamType = ptInput
      end>
    ProviderName = 'dspPreCalcPrem'
    StoreDefs = True
    BeforeInsert = DSAfterCancel
    BeforeEdit = DSAfterCancel
    AfterEdit = DSAfterCancel
    BeforePost = DSAfterCancel
    AfterPost = DSAfterCancel
    BeforeCancel = DSAfterCancel
    AfterCancel = DSAfterCancel
    BeforeDelete = DSAfterCancel
    AfterDelete = DSAfterCancel
    OnReconcileError = DSReconcileError
    BeforeGetRecords = qrPreCalcPremBeforeGetRecords
    Left = 1005
    Top = 282
    object qrPreCalcPremParamName: TStringField
      DisplayWidth = 20
      FieldName = 'ParamName'
    end
    object qrPreCalcPremParamVal: TStringField
      Alignment = taRightJustify
      FieldName = 'ParamVal'
      Size = 0
    end
    object qrPreCalcPremSort: TFloatField
      DisplayWidth = 10
      FieldName = 'Sort'
    end
    object qrPreCalcPremSort1: TFloatField
      DisplayWidth = 10
      FieldName = 'Sort1'
    end
    object qrPreCalcPremParentISN: TFloatField
      DisplayWidth = 10
      FieldName = 'ParentIsn'
    end
  end
  object qrPreCalcParam: TClientDataSetN
    Aggregates = <>
    Filter = 'GROUPID<=100 and GROUPID>0 and VisField=1'
    Filtered = True
    Params = <
      item
        DataType = ftCursor
        Name = 'RESULT'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'PAGRISN'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspPreCalcParam'
    BeforeInsert = qrPreCalcParamBeforeInsert
    AfterInsert = qrPreCalcParamAfterInsert
    BeforePost = qrPreCalcParamBeforePost
    AfterPost = qrPreCalcParamAfterPost
    AfterCancel = DSAfterCancel
    BeforeDelete = DSBeforeDelete
    AfterDelete = DSAfterDelete
    BeforeScroll = qrPreCalcParam1BeforeScroll
    AfterScroll = qrPreCalcParamAfterScroll
    AfterRefresh = qrPreCalcParamAfterRefresh
    OnReconcileError = DSReconcileError
    BeforeApplyUpdates = qrPreCalcParamBeforeGetRecords
    AfterApplyUpdates = qrPreCalcParamAfterApplyUpdates
    BeforeGetRecords = qrPreCalcParamBeforeGetRecords
    Left = 216
    Top = 269
    object qrPreCalcParamPARNAME: TStringField
      DisplayWidth = 200
      FieldName = 'PARNAME'
      Size = 200
    end
    object qrPreCalcParamVALNAME: TStringField
      DisplayWidth = 200
      FieldName = 'VALNAME'
      OnGetText = qrPreCalcParamVALNAMEGetText
      OnSetText = qrPreCalcParamVALNAMESetText
      Size = 200
    end
    object qrPreCalcParamROOT: TFloatField
      DisplayWidth = 10
      FieldName = 'ROOT'
    end
    object qrPreCalcParamDATATYPE: TStringField
      DisplayWidth = 10
      FieldName = 'DATATYPE'
      Size = 10
    end
    object qrPreCalcParamCLASSISN: TFloatField
      DisplayWidth = 10
      FieldName = 'CLASSISN'
    end
    object qrPreCalcParamGROUPID: TFloatField
      DisplayWidth = 10
      FieldName = 'GROUPID'
    end
    object qrPreCalcParamNO: TFloatField
      DisplayWidth = 10
      FieldName = 'NO'
    end
    object qrPreCalcParamISN: TFloatField
      DisplayWidth = 10
      FieldName = 'ISN'
    end
    object qrPreCalcParamVAL: TStringField
      DisplayWidth = 40
      FieldName = 'VAL'
      Size = 200
    end
    object qrPreCalcParamAGRISN: TFloatField
      DisplayWidth = 10
      FieldName = 'AGRISN'
    end
    object qrPreCalcParamDISCR: TStringField
      DisplayWidth = 1
      FieldName = 'DISCR'
      Size = 1
    end
    object qrPreCalcParamMODIFISN: TFloatField
      DisplayWidth = 10
      FieldName = 'MODIFISN'
    end
    object qrPreCalcParamCTGISN: TFloatField
      DisplayWidth = 10
      FieldName = 'CTGISN'
    end
    object qrPreCalcParamMAKEISN: TFloatField
      DisplayWidth = 10
      FieldName = 'MAKEISN'
    end
    object qrPreCalcParamMODELISN: TFloatField
      DisplayWidth = 10
      FieldName = 'MODELISN'
    end
    object qrPreCalcParamAddGroup: TFloatField
      DisplayWidth = 10
      FieldName = 'AddGroup'
    end
    object qrPreCalcParamPremiumSum: TFloatField
      DisplayWidth = 10
      FieldName = 'PremiumSum'
    end
    object qrPreCalcParamCLASSCONSTNAME: TStringField
      DisplayWidth = 20
      FieldName = 'CLASSCONSTNAME'
    end
    object qrPreCalcParamCreatedBy: TStringField
      FieldName = 'CreatedBy'
      Size = 0
    end
    object qrPreCalcParamCreated: TDateTimeField
      DisplayWidth = 18
      FieldName = 'Created'
    end
    object qrPreCalcParamUpdatedBy: TStringField
      FieldName = 'UpdatedBy'
      Size = 0
    end
    object qrPreCalcParamUpdated: TDateTimeField
      DisplayWidth = 18
      FieldName = 'Updated'
    end
    object qrPreCalcParamAllowValue: TMemoField
      DisplayWidth = 10
      FieldName = 'AllowValue'
      BlobType = ftMemo
    end
    object qrPreCalcParamCarBodyIsn: TFloatField
      DisplayWidth = 10
      FieldName = 'CarBodyIsn'
    end
    object qrPreCalcParamIsBodyDisc: TFloatField
      DisplayWidth = 10
      FieldName = 'IsBodyDisc'
    end
    object qrPreCalcParamIsPrevAgrPres: TFloatField
      DisplayWidth = 10
      FieldName = 'IsPrevAgrPres'
    end
    object qrPreCalcParamVisField: TFloatField
      FieldName = 'VisField'
    end
    object qrPreCalcParamIsReadOnly: TFloatField
      FieldName = 'IsReadOnly'
    end
    object qrPreCalcParamTypeAccessDetail: TFloatField
      FieldName = 'TypeAccessDetail'
    end
    object qrPreCalcParamPARENTISN: TFloatField
      FieldName = 'PARENTISN'
    end
    object qrPreCalcParamGr0ReadOnlyNo: TFloatField
      FieldName = 'Gr0ReadOnlyNo'
    end
    object qrPreCalcParamRemark: TStringField
      FieldName = 'Remark'
      Size = 255
    end
    object qrPreCalcParamFullName: TStringField
      FieldName = 'FullName'
    end
  end
  object qrPreCalcHead: TClientDataSetN
    Aggregates = <>
    Params = <
      item
        DataType = ftCursor
        Name = 'RESULT'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'PISN'
        ParamType = ptInput
      end>
    ProviderName = 'dspPreCalcHead'
    AfterOpen = qrPreCalcHeadAfterOpen
    AfterPost = qrPreCalcHeadAfterPost
    AfterCancel = DSAfterCancel
    BeforeDelete = DSBeforeDelete
    AfterDelete = DSAfterDelete
    AfterScroll = qrPreCalcHeadAfterScroll
    OnReconcileError = DSReconcileError
    BeforeApplyUpdates = qrPreCalcHeadBeforeGetRecords
    AfterApplyUpdates = DSAfterApplyUpdates
    BeforeGetRecords = qrPreCalcHeadBeforeGetRecords
    Left = 557
    Top = 53
    object qrPreCalcHeadISN: TFloatField
      DisplayWidth = 10
      FieldName = 'ISN'
    end
    object qrPreCalcHeadID: TStringField
      DisplayWidth = 20
      FieldName = 'ID'
    end
    object qrPreCalcHeadDateCalc: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DateCalc'
    end
    object qrPreCalcHeadEmplISN: TFloatField
      DisplayWidth = 10
      FieldName = 'EmplISN'
    end
    object qrPreCalcHeadEmplName: TStringField
      DisplayWidth = 22
      FieldName = 'EmplName'
      Size = 22
    end
    object qrPreCalcHeadClientISN: TFloatField
      DisplayWidth = 10
      FieldName = 'ClientISN'
    end
    object qrPreCalcHeadClientName: TStringField
      DisplayWidth = 22
      FieldName = 'ClientName'
      Size = 22
    end
    object qrPreCalcHeadAgrISN: TFloatField
      DisplayWidth = 10
      FieldName = 'AgrISN'
    end
    object qrPreCalcHeadAgrID: TStringField
      DisplayWidth = 22
      FieldName = 'AgrID'
      Size = 22
    end
    object qrPreCalcHeadRULEISN: TFloatField
      DisplayWidth = 10
      FieldName = 'RULEISN'
    end
    object qrPreCalcHeadRULENAME: TStringField
      DisplayWidth = 20
      FieldName = 'RULENAME'
    end
    object qrPreCalcHeadDiscr: TStringField
      DisplayWidth = 1
      FieldName = 'Discr'
      Size = 1
    end
    object qrPreCalcHeadStatus: TStringField
      DisplayWidth = 1
      FieldName = 'Status'
      Size = 1
    end
    object qrPreCalcHeadStatusName: TStringField
      DisplayWidth = 20
      FieldName = 'StatusName'
    end
    object qrPreCalcHeadCurrISN: TFloatField
      DisplayWidth = 10
      FieldName = 'CurrISN'
    end
    object qrPreCalcHeadRemark: TMemoField
      DisplayWidth = 10
      FieldName = 'Remark'
      BlobType = ftMemo
    end
    object qrPreCalcHeadCurrName: TStringField
      DisplayWidth = 3
      FieldName = 'CurrName'
      Size = 3
    end
    object qrPreCalcHeadClientReplyISN: TFloatField
      DisplayWidth = 10
      FieldName = 'ClientReplyISN'
    end
    object qrPreCalcHeadClientReplyName: TStringField
      DisplayWidth = 20
      FieldName = 'ClientReplyName'
      OnSetText = qrPreCalcHeadClientReplyNameSetText
    end
    object qrPreCalcHeadPremiumSum: TFloatField
      DisplayWidth = 10
      FieldName = 'PremiumSum'
    end
    object qrPreCalcHeadName: TStringField
      DisplayWidth = 250
      FieldName = 'Name'
      Size = 250
    end
    object qrPreCalcHeadCreated: TDateTimeField
      Alignment = taRightJustify
      FieldName = 'Created'
    end
    object qrPreCalcHeadDATELOADMETHOD: TStringField
      Alignment = taRightJustify
      FieldName = 'DATELOADMETHOD'
      Size = 10
    end
    object qrPreCalcHeadFirstCalc: TStringField
      FieldName = 'FirstCalc'
      Size = 1
    end
    object qrPreCalcHeadClientsSourceISN: TFloatField
      FieldName = 'ClientsSourceISN'
    end
    object qrPreCalcHeadClientsSourceName: TStringField
      FieldName = 'ClientsSourceName'
      Size = 40
    end
    object qrPreCalcHeadReadOnlyFields: TMemoField
      FieldName = 'ReadOnlyFields'
      BlobType = ftMemo
    end
    object qrPreCalcHeadDisabledFields: TMemoField
      FieldName = 'DisabledFields'
      BlobType = ftMemo
    end
    object qrPreCalcHeadFormIsn: TFloatField
      FieldName = 'AgrFormIsn'
    end
    object qrPreCalcHeadVariantValuation: TFloatField
      FieldName = 'VariantValuation'
    end
    object qrPreCalcHeadVariantValuationName: TStringField
      FieldName = 'VariantValuationName'
      Size = 40
    end
    object qrPreCalcHeadTemplateisn: TFloatField
      FieldName = 'Templateisn'
    end
    object qrPreCalcHeadObjClassIsn: TFloatField
      FieldName = 'ObjClassIsn'
    end
    object qrPreCalcHeadIsFire: TFloatField
      FieldName = 'IsFire'
    end
  end
  object qrPreCalcParam1: TClientDataSetN
    Aggregates = <>
    Filter = 'GROUPID>100 and VisField=1'
    Filtered = True
    Params = <
      item
        DataType = ftCursor
        Name = 'RESULT'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'PAGRISN'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspPreCalcParam'
    AfterOpen = qrPreCalcParam1AfterOpen
    BeforeInsert = qrPreCalcParamBeforeInsert
    AfterInsert = qrPreCalcParamAfterInsert
    BeforePost = qrPreCalcParamBeforePost
    AfterPost = qrPreCalcParamAfterPost
    AfterCancel = DSAfterCancel
    BeforeDelete = DSBeforeDelete
    AfterDelete = DSAfterDelete
    BeforeScroll = qrPreCalcParam1BeforeScroll
    AfterScroll = qrPreCalcParamAfterScroll
    OnReconcileError = DSReconcileError
    BeforeApplyUpdates = qrPreCalcParamBeforeGetRecords
    AfterApplyUpdates = qrPreCalcParam1AfterApplyUpdates
    BeforeGetRecords = qrPreCalcParamBeforeGetRecords
    Left = 341
    Top = 261
    object qrPreCalcParam1PARNAME: TStringField
      DisplayWidth = 200
      FieldName = 'PARNAME'
      Size = 200
    end
    object qrPreCalcParam1VALNAME: TStringField
      DisplayWidth = 200
      FieldName = 'VALNAME'
      OnGetText = qrPreCalcParamVALNAMEGetText
      OnSetText = qrPreCalcParamVALNAMESetText
      Size = 200
    end
    object qrPreCalcParam1ROOT: TFloatField
      DisplayWidth = 10
      FieldName = 'ROOT'
    end
    object qrPreCalcParam1DATATYPE: TStringField
      DisplayWidth = 10
      FieldName = 'DATATYPE'
      Size = 10
    end
    object qrPreCalcParam1CLASSISN: TFloatField
      DisplayWidth = 10
      FieldName = 'CLASSISN'
    end
    object qrPreCalcParam1NO: TFloatField
      DisplayWidth = 10
      FieldName = 'NO'
    end
    object qrPreCalcParam1ISN: TFloatField
      DisplayWidth = 10
      FieldName = 'ISN'
    end
    object qrPreCalcParam1VAL: TStringField
      DisplayWidth = 40
      FieldName = 'VAL'
      Size = 40
    end
    object qrPreCalcParam1AGRISN: TFloatField
      DisplayWidth = 10
      FieldName = 'AGRISN'
    end
    object qrPreCalcParam1DISCR: TStringField
      DisplayWidth = 1
      FieldName = 'DISCR'
      Size = 1
    end
    object qrPreCalcParam1MODIFISN: TFloatField
      DisplayWidth = 10
      FieldName = 'MODIFISN'
    end
    object qrPreCalcParam1CTGISN: TFloatField
      DisplayWidth = 10
      FieldName = 'CTGISN'
    end
    object qrPreCalcParam1MAKEISN: TFloatField
      DisplayWidth = 10
      FieldName = 'MAKEISN'
    end
    object qrPreCalcParam1MODELISN: TFloatField
      DisplayWidth = 10
      FieldName = 'MODELISN'
    end
    object qrPreCalcParam1GROUPID: TFloatField
      DisplayWidth = 10
      FieldName = 'GROUPID'
    end
    object qrPreCalcParam1AddGroup: TFloatField
      DisplayWidth = 10
      FieldName = 'AddGroup'
    end
    object qrPreCalcParam1PremiumSum: TFloatField
      DisplayWidth = 10
      FieldName = 'PremiumSum'
    end
    object qrPreCalcParam1CLASSCONSTNAME: TStringField
      DisplayWidth = 20
      FieldName = 'CLASSCONSTNAME'
    end
    object qrPreCalcParam1UpdatedBy: TStringField
      FieldName = 'UpdatedBy'
      Size = 0
    end
    object qrPreCalcParam1Updated: TDateTimeField
      DisplayWidth = 18
      FieldName = 'Updated'
    end
    object qrPreCalcParam1CreatedBy: TStringField
      DisplayWidth = 20
      FieldName = 'CreatedBy'
    end
    object qrPreCalcParam1Created: TDateTimeField
      DisplayWidth = 18
      FieldName = 'Created'
    end
    object qrPreCalcParam1AllowValue: TMemoField
      DisplayWidth = 10
      FieldName = 'AllowValue'
      BlobType = ftMemo
    end
    object qrPreCalcParam1VisField: TFloatField
      FieldName = 'VisField'
    end
    object qrPreCalcParam1IsReadOnly: TFloatField
      FieldName = 'IsReadOnly'
    end
    object qrPreCalcParam1TypeAccessDetail: TFloatField
      FieldName = 'TypeAccessDetail'
    end
    object qrPreCalcParam1PARENTISN: TFloatField
      FieldName = 'PARENTISN'
    end
    object qrPreCalcParam1Gr0ReadOnlyNo: TFloatField
      FieldName = 'Gr0ReadOnlyNo'
    end
    object qrPreCalcParam1Remark: TStringField
      FieldName = 'Remark'
      Size = 255
    end
  end
  object cdsProtectFunc: TClientDataSetN
    Aggregates = <>
    Params = <
      item
        DataType = ftWideString
        Name = 'pFuncName'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'pUserISN'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'Result'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSP_PROTECTFUNC'
    BeforeGetRecords = DSBeforeGetRecords
    BeforeExecute = DSBeforeGetRecords
    Left = 391
    Top = 305
  end
  object pmAddInvisibleFields: TPopupMenu
    Left = 97
    Top = 278
    object mAddInvisible: TMenuItem
      Caption = #1057#1082#1088#1099#1074#1072#1090#1100' '#1074' "'#1054#1087#1090#1080#1084#1072#1083#1100#1085#1086#1084'" '#1088#1077#1078#1080#1084#1077
      OnClick = mAddInvisibleClick
    end
    object mDeleteInvisible: TMenuItem
      Caption = #1054#1090#1086#1073#1088#1072#1078#1072#1090#1100' '#1074' "'#1054#1087#1090#1080#1084#1072#1083#1100#1085#1086#1084'" '#1088#1077#1078#1080#1084#1077
      OnClick = mAddInvisibleClick
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 255
    Top = 265
    object miShowLog: TMenuItem
      AutoCheck = True
      Caption = #1055#1088#1086#1090#1086#1082#1086#1083' '#1088#1072#1089#1095#1077#1090#1072
    end
  end
  object ilMain: TImageList
    Left = 93
    Top = 329
    Bitmap = {
      494C010105000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B7B7B007B7B7B007B7B7B00FFFFFF00000000000000
      000000000000000000007B7B7B007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B7B7B007B7B7B007B7B7B00FFFFFF00000000000000
      000000000000000000007B7B7B007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B7B7B007B7B7B007B7B7B00FFFFFF00000000000000
      000000000000000000007B7B7B007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF007B7B7B007B7B7B007B7B7B00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF007B7B7B007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B00FFFFFF00000000000000
      000000000000000000000000000000000000000000007B7B7B00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF007B7B7B007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B00FFFFFF0000000000FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF007B7B7B007B7B7B00FFFF
      FF00FFFFFF007B7B7B007B7B7B007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B00FFFFFF007B7B7B007B7B
      7B00000000007B7B7B007B7B7B007B7B7B00000000007B7B7B007B7B7B007B7B
      7B007B7B7B00FFFFFF007B7B7B007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF007B7B7B00FFFFFF007B7B
      7B007B7B7B007B7B7B00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B00FFFFFF007B7B7B007B7B
      7B007B7B7B007B7B7B00000000007B7B7B00000000007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B00FFFFFF0000000000FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B00FFFFFF007B7B7B007B7B
      7B00000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B00000000007B7B
      7B007B7B7B007B7B7B00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B00FFFFFF0000000000FFFF
      FF00FFFFFF007B7B7B00FFFFFF00000000007B7B7B0000000000000000007B7B
      7B007B7B7B007B7B7B00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B00FFFFFF007B7B7B007B7B
      7B00000000007B7B7B00FFFFFF007B7B7B0000000000FFFFFF007B7B7B007B7B
      7B007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF007B7B7B007B7B7B00000000007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF007B7B7B00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B000000000000000000000000000000
      000000000000000000000000000000FFFF007B7B7B00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000084848400C6C6C600848484008484
      8400C6C6C6008484840084848400000000000000000000000000000000000000
      00007B7B7B00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF007B7B7B000000000000000000000000000000
      000000000000000000000000000000FFFF007B7B7B00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      000000000000FFFFFF00000000000000000000000000FFFFFF0000000000FFFF
      FF000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000000000008484
      8400000000000000000084848400000000000000000000000000000000000000
      00007B7B7B00FFFFFF007B7B7B007B7B7B007B7B7B00000000007B7B7B000000
      00007B7B7B007B7B7B00000000007B7B7B000000000000000000000000000000
      000000000000000000000000000000FFFF007B7B7B00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000008484840000000000C6C6C60000000000C6C6
      C6008484840000000000C6C6C600000000000000000000000000000000000000
      00007B7B7B00FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF007B7B7B000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B007B7B
      7B0000000000000000007B7B7B00000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000FFFFFF000000000000000000FFFF
      FF000000000000000000FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000084848400C6C6C60000000000C6C6C600C6C6
      C600C6C6C6008484840084848400000000000000000000000000000000000000
      00007B7B7B00FFFFFF007B7B7B007B7B7B00000000007B7B7B007B7B7B000000
      00007B7B7B007B7B7B00000000007B7B7B0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      00007B7B7B007B7B7B0000FFFF00000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000008484840000000000000000000000
      000000000000000000000000000084848400C6C6C60000000000C6C6C600C6C6
      C600000000000000000084848400000000000000000000000000000000000000
      00007B7B7B00FFFFFF00FFFFFF0000000000000000000000000000000000FFFF
      FF00FFFFFF0000000000FFFFFF007B7B7B0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      00007B7B7B0000FFFF0000FFFF00000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000FFFFFF0000000000FFFFFF00000000008484840000000000000000000000
      00000000000000000000000000008484840000000000C6C6C600000000000000
      0000C6C6C60000000000C6C6C600000000000000000000000000000000000000
      00007B7B7B007B7B7B0000000000FFFFFF00FFFFFF00000000007B7B7B007B7B
      7B00FFFFFF007B7B7B00000000007B7B7B0000000000FFFFFF00000000000000
      0000FFFFFF00000000000000000000000000FFFFFF0000000000000000000000
      00000000FF0000000000000000007B7B7B000000000000000000000000000000
      0000FFFFFF0000FFFF000000000000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00000000008484840000000000C6C6C6000000
      0000C6C6C600000000000000000084848400C6C6C60000000000C6C6C600C6C6
      C600000000000000000084848400000000000000000000000000000000007B7B
      7B0000000000000000007B7B7B007B7B7B00000000007B7B7B00000000007B7B
      7B00FFFFFF0000000000FFFFFF007B7B7B0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      FF000000FF000000FF000000000000000000000000000000000000000000FFFF
      FF0000FFFF000000000000FFFF00FFFFFF0000000000FFFFFF0000FFFF000000
      0000FFFFFF0000000000FFFFFF00000000008484840000000000000000000000
      0000000000000084000000FF000000000000FF000000C6C6C600848484008484
      8400C6C6C60000000000848484000000000000000000000000007B7B7B000000
      0000000000007B7B7B0000000000000000007B7B7B0000000000000000007B7B
      7B00000000007B7B7B00000000007B7B7B0000000000FFFFFF00000000000000
      00000000000000000000FFFFFF0000000000FFFFFF00000000000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000000000FFFFFF0000FFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000084848400000000000000000000FF
      000000FF000000FF000000FF000000FF00000000000000000000000000000000
      00000000000000000000C6C6C60000000000000000007B7B7B00FFFFFF000000
      00000000000000000000000000007B7B7B0000000000000000007B7B7B000000
      00000000000000000000000000007B7B7B0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF00000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000FFFFFF0000FFFF0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000848484000000000000FF000000FF
      0000000000000084000000FF000000000000FF000000C6C6C600848484000000
      000000000000000000008484840000000000000000007B7B7B00FFFFFF000000
      000000000000000000007B7B7B0000000000000000007B7B7B00000000000000
      000000000000FFFFFF00FFFFFF007B7B7B0000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF0000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000008484840000000000000000000000
      0000000000000000000000000000848484008484840084848400848484008484
      8400848484008484840000000000000000007B7B7B007B7B7B00FFFFFF000000
      0000000000000000000000000000000000007B7B7B00FFFFFF00FFFFFF000000
      00007B7B7B007B7B7B007B7B7B007B7B7B0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF000000000000000000000000000000
      FF000000FF000000FF000000000000000000FFFF00000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00000000008484840000000000C6C6C6008484
      8400C6C6C600C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B007B7B7B00FFFFFF00FFFF
      FF000000000000000000000000007B7B7B007B7B7B007B7B7B0000000000FFFF
      FF007B7B7B00FFFFFF00000000007B7B7B0000000000FFFFFF0000000000BDBD
      BD00FFFFFF0000000000FFFFFF000000000000000000000000007B7B7B000000
      FF000000FF000000FF000000000000000000FFFF0000FFFF00000000000000FF
      FF00FFFFFF0000FFFF000000000000FFFF00FFFFFF0000FFFF0000000000FFFF
      FF0000000000FFFFFF0000000000000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B007B7B7B007B7B7B00FFFF
      FF00FFFFFF00000000007B7B7B000000000000000000FFFFFF007B7B7B000000
      00007B7B7B00FFFFFF007B7B7B000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF00000000000000000000000000FFFF0000FFFF0000FFFF00000000
      000000FFFF00FFFFFF0000FFFF00FFFFFF000000000000000000FFFFFF00FFFF
      FF00000000000000000000000000000000008484840000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B007B7B7B007B7B7B007B7B
      7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B7B007B7B7B00FFFFFF00FFFF
      FF007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B00000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FC3C000000000000FC3C000000000000
      FC3C000000000000800000000000000000000000000000003F80000000000000
      2400000000000000088000000000000021000000000000000280000000000000
      2400000000000000082100000000000021610000000000000883000000000000
      010700000000000003FF000000000000FC00F000FF00F000FC00F000FF00F228
      FC00F000FEECF052FC00F000FEA4F2480000F000FE40F0920000F000004CF1E4
      0000F0007EB4F2420000E000524CECA40023C0006004DB6A0001800040FC9EDE
      00008000401C9DB8002300007A031F100063000042FF0E2200C3000178FF0591
      010700037BFF000303FF000707FF000700000000000000000000000000000000
      000000000000}
  end
  object qrPreCalcParamObj: TClientDataSetN
    Aggregates = <>
    Filter = 'GROUPID=-1 and VisField=1'
    Filtered = True
    Params = <
      item
        DataType = ftCursor
        Name = 'RESULT'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'PAGRISN'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspPreCalcParam'
    BeforeInsert = qrPreCalcParamBeforeInsert
    AfterInsert = qrPreCalcParamAfterInsert
    BeforePost = qrPreCalcParamBeforePost
    AfterPost = qrPreCalcParamAfterPost
    AfterCancel = DSAfterCancel
    BeforeDelete = DSBeforeDelete
    AfterDelete = qrPreCalcParamObjAfterDelete
    BeforeScroll = qrPreCalcParam1BeforeScroll
    AfterScroll = qrPreCalcParamAfterScroll
    AfterRefresh = qrPreCalcParamObjAfterRefresh
    OnReconcileError = DSReconcileError
    BeforeApplyUpdates = qrPreCalcParamBeforeGetRecords
    AfterApplyUpdates = qrPreCalcParamAfterApplyUpdates
    BeforeGetRecords = qrPreCalcParamBeforeGetRecords
    Left = 32
    Top = 205
    object qrPreCalcParamObjPARNAME: TStringField
      DisplayWidth = 200
      FieldName = 'PARNAME'
      Size = 200
    end
    object qrPreCalcParamObjVALNAME: TStringField
      DisplayWidth = 200
      FieldName = 'VALNAME'
      OnGetText = qrPreCalcParamVALNAMEGetText
      OnSetText = qrPreCalcParamVALNAMESetText
      Size = 200
    end
    object qrPreCalcParamObjROOT: TFloatField
      DisplayWidth = 10
      FieldName = 'ROOT'
    end
    object qrPreCalcParamObjDATATYPE: TStringField
      DisplayWidth = 10
      FieldName = 'DATATYPE'
      Size = 10
    end
    object qrPreCalcParamObjCLASSISN: TFloatField
      DisplayWidth = 10
      FieldName = 'CLASSISN'
    end
    object qrPreCalcParamObjGROUPID: TFloatField
      DisplayWidth = 10
      FieldName = 'GROUPID'
    end
    object qrPreCalcParamObjNO: TFloatField
      DisplayWidth = 10
      FieldName = 'NO'
    end
    object qrPreCalcParamObjISN: TFloatField
      DisplayWidth = 10
      FieldName = 'ISN'
    end
    object qrPreCalcParamObjVAL: TStringField
      DisplayWidth = 40
      FieldName = 'VAL'
      Size = 40
    end
    object qrPreCalcParamObjAGRISN: TFloatField
      DisplayWidth = 10
      FieldName = 'AGRISN'
    end
    object qrPreCalcParamObjDISCR: TStringField
      DisplayWidth = 1
      FieldName = 'DISCR'
      Size = 1
    end
    object qrPreCalcParamObjMODIFISN: TFloatField
      DisplayWidth = 10
      FieldName = 'MODIFISN'
    end
    object qrPreCalcParamObjCTGISN: TFloatField
      DisplayWidth = 10
      FieldName = 'CTGISN'
    end
    object qrPreCalcParamObjMAKEISN: TFloatField
      DisplayWidth = 10
      FieldName = 'MAKEISN'
    end
    object qrPreCalcParamObjMODELISN: TFloatField
      DisplayWidth = 10
      FieldName = 'MODELISN'
    end
    object qrPreCalcParamObjAddGroup: TFloatField
      DisplayWidth = 10
      FieldName = 'AddGroup'
    end
    object qrPreCalcParamObjPremiumSum: TFloatField
      DisplayWidth = 10
      FieldName = 'PremiumSum'
    end
    object qrPreCalcParamObjCLASSCONSTNAME: TStringField
      DisplayWidth = 20
      FieldName = 'CLASSCONSTNAME'
    end
    object qrPreCalcParamObjCreatedBy: TStringField
      FieldName = 'CreatedBy'
      Size = 0
    end
    object qrPreCalcParamObjCreated: TDateTimeField
      DisplayWidth = 18
      FieldName = 'Created'
    end
    object qrPreCalcParamObjUpdatedBy: TStringField
      FieldName = 'UpdatedBy'
      Size = 0
    end
    object qrPreCalcParamObjUpdated: TDateTimeField
      DisplayWidth = 18
      FieldName = 'Updated'
    end
    object qrPreCalcParamObjAllowValue: TMemoField
      DisplayWidth = 10
      FieldName = 'AllowValue'
      BlobType = ftMemo
    end
    object qrPreCalcParamObjCarBodyIsn: TFloatField
      DisplayWidth = 10
      FieldName = 'CarBodyIsn'
    end
    object qrPreCalcParamObjIsBodyDisc: TFloatField
      DisplayWidth = 10
      FieldName = 'IsBodyDisc'
    end
    object qrPreCalcParamObjIsPrevAgrPres: TFloatField
      DisplayWidth = 10
      FieldName = 'IsPrevAgrPres'
    end
    object qrPreCalcParamObjVisField: TFloatField
      FieldName = 'VisField'
    end
    object qrPreCalcParamObjIsReadOnly: TFloatField
      FieldName = 'IsReadOnly'
    end
    object qrPreCalcParamObjTypeAccessDetail: TFloatField
      FieldName = 'TypeAccessDetail'
    end
    object qrPreCalcParamObjPARENTISN: TFloatField
      FieldName = 'PARENTISN'
    end
    object qrPreCalcParamObjGr0ReadOnlyNo: TFloatField
      FieldName = 'Gr0ReadOnlyNo'
    end
  end
  object dsPreCalcParamObj: TDataSource
    DataSet = qrPreCalcParamObj
    OnDataChange = dsPreCalcParamDataChange
    Left = 37
    Top = 246
  end
  object SaveDialog: TSaveDialog
    DefaultExt = 'csv'
    Filter = '*.csv|*.csv'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofNoNetworkButton, ofEnableSizing]
    Left = 271
    Top = 425
  end
  object pmMVC: TPopupMenu
    OnPopup = pmMVCPopup
    Left = 281
    Top = 374
    object miMVCSetFilial: TMenuItem
      Caption = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1092#1080#1083#1080#1072#1083#1099
      OnClick = mSetMVCCalcClick
    end
    object miMVCDelFilial: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1092#1080#1083#1080#1072#1083#1099
      OnClick = miMVCDelFilialClick
    end
    object miMVCSetModif: TMenuItem
      Caption = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1084#1086#1076#1080#1092#1080#1082#1072#1094#1080#1080
      OnClick = miMVCSetModifClick
    end
    object miMVCDelModif: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1084#1086#1076#1080#1092#1080#1082#1072#1094#1080#1080
      OnClick = miMVCDelModifClick
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object miMVCRun: TMenuItem
      Caption = #1047#1072#1087#1091#1089#1090#1080#1090#1100' '#1088#1072#1089#1095#1077#1090
      OnClick = mRunMVCClick
    end
  end
  object pmCalculator: TPopupMenu
    OnPopup = pmCalculatorPopup
    Left = 445
    Top = 369
    object miCalculator: TMenuItem
      Caption = #1050#1072#1083#1100#1082#1091#1083#1103#1090#1086#1088' '#1086#1094#1077#1085#1082#1080
      OnClick = miCalculatorClick
    end
    object miAddGroup: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1075#1088#1091#1087#1087#1091
      OnClick = miAddGroupClick
    end
    object miAddTemplGroup: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1075#1088#1091#1087#1087#1091
      object miAddGroupWalls: TMenuItem
        Tag = 1
        Caption = #1054#1073#1098#1077#1082#1090' '#171#1057#1090#1077#1085#1099#187
        OnClick = miAddGroupClick
      end
      object miAddGroupFoundation: TMenuItem
        Tag = 2
        Caption = #1054#1073#1098#1077#1082#1090' '#171#1060#1091#1085#1076#1072#1084#1077#1085#1090#187
        OnClick = miAddGroupClick
      end
      object miAddGroupRoof: TMenuItem
        Tag = 3
        Caption = #1054#1073#1098#1077#1082#1090' '#171#1050#1088#1086#1074#1083#1103#187
        OnClick = miAddGroupClick
      end
    end
    object miDelGroup: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1075#1088#1091#1087#1087#1091
      OnClick = mAddDrvClick
    end
  end
  object ppVariantValuation: TPopupMenu
    OnPopup = ppVariantValuationPopup
    Left = 442
    Top = 325
  end
  object qrGetFileIsn: TClientDataSetN
    Aggregates = <>
    Params = <
      item
        DataType = ftFloat
        Name = 'pdocisn'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'pclassisn'
        ParamType = ptInput
      end>
    ProviderName = 'dspGetFileIsn'
    Left = 216
    Top = 221
  end
  object cdsAgrAdd: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftFloat
        Name = 'XISN'
        ParamType = ptInput
      end>
    ProviderName = 'dspAgrAdd'
    ReadOnly = True
    Left = 53
    Top = 513
  end
  object cdsVariant: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftFloat
        Name = 'XISN'
        ParamType = ptInput
      end>
    ProviderName = 'dspVariant'
    ReadOnly = True
    Left = 141
    Top = 521
  end
  object cdsTerr: TClientDataSet
    Aggregates = <>
    Filter = '(GROUPID <= -10 and GROUPID >= -11) and VisField=1'
    Filtered = True
    Params = <
      item
        DataType = ftCursor
        Name = 'RESULT'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'PAGRISN'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspPreCalcParam'
    AfterInsert = qrPreCalcParamAfterInsert
    BeforePost = qrPreCalcParamBeforePost
    AfterPost = qrPreCalcParamAfterPost
    AfterCancel = DSAfterCancel
    BeforeDelete = DSBeforeDelete
    AfterDelete = qrPreCalcParamObjAfterDelete
    BeforeScroll = qrPreCalcParam1BeforeScroll
    AfterScroll = qrPreCalcParamAfterScroll
    AfterRefresh = qrPreCalcParamObjAfterRefresh
    OnReconcileError = DSReconcileError
    BeforeApplyUpdates = qrPreCalcParamBeforeGetRecords
    AfterApplyUpdates = qrPreCalcParamAfterApplyUpdates
    BeforeGetRecords = qrPreCalcParamBeforeGetRecords
    Left = 245
    Top = 529
    object cdsTerrPARNAME: TStringField
      DisplayWidth = 200
      FieldName = 'PARNAME'
      Size = 200
    end
    object cdsTerrVALNAME: TStringField
      DisplayWidth = 200
      FieldName = 'VALNAME'
      OnGetText = qrPreCalcParamVALNAMEGetText
      OnSetText = qrPreCalcParamVALNAMESetText
      Size = 200
    end
    object cdsTerrROOT: TFloatField
      DisplayWidth = 10
      FieldName = 'ROOT'
    end
    object cdsTerrDATATYPE: TStringField
      DisplayWidth = 10
      FieldName = 'DATATYPE'
      Size = 10
    end
    object cdsTerrCLASSISN: TFloatField
      DisplayWidth = 10
      FieldName = 'CLASSISN'
    end
    object cdsTerrGROUPID: TFloatField
      DisplayWidth = 10
      FieldName = 'GROUPID'
    end
    object cdsTerrNO: TFloatField
      DisplayWidth = 10
      FieldName = 'NO'
    end
    object cdsTerrISN: TFloatField
      DisplayWidth = 10
      FieldName = 'ISN'
    end
    object cdsTerrVAL: TStringField
      DisplayWidth = 40
      FieldName = 'VAL'
      Size = 40
    end
    object cdsTerrAGRISN: TFloatField
      DisplayWidth = 10
      FieldName = 'AGRISN'
    end
    object cdsTerrDISCR: TStringField
      DisplayWidth = 1
      FieldName = 'DISCR'
      Size = 1
    end
    object cdsTerrMODIFISN: TFloatField
      DisplayWidth = 10
      FieldName = 'MODIFISN'
    end
    object cdsTerrCTGISN: TFloatField
      DisplayWidth = 10
      FieldName = 'CTGISN'
    end
    object cdsTerrMAKEISN: TFloatField
      DisplayWidth = 10
      FieldName = 'MAKEISN'
    end
    object cdsTerrMODELISN: TFloatField
      DisplayWidth = 10
      FieldName = 'MODELISN'
    end
    object cdsTerrAddGroup: TFloatField
      DisplayWidth = 10
      FieldName = 'AddGroup'
    end
    object cdsTerrPremiumSum: TFloatField
      DisplayWidth = 10
      FieldName = 'PremiumSum'
    end
    object cdsTerrCLASSCONSTNAME: TStringField
      DisplayWidth = 20
      FieldName = 'CLASSCONSTNAME'
    end
    object cdsTerrCreatedBy: TStringField
      FieldName = 'CreatedBy'
      Size = 0
    end
    object cdsTerrCreated: TDateTimeField
      DisplayWidth = 18
      FieldName = 'Created'
    end
    object cdsTerrUpdatedBy: TStringField
      FieldName = 'UpdatedBy'
      Size = 0
    end
    object cdsTerrUpdated: TDateTimeField
      DisplayWidth = 18
      FieldName = 'Updated'
    end
    object cdsTerrAllowValue: TMemoField
      DisplayWidth = 10
      FieldName = 'AllowValue'
      BlobType = ftMemo
    end
    object cdsTerrCarBodyIsn: TFloatField
      DisplayWidth = 10
      FieldName = 'CarBodyIsn'
    end
    object cdsTerrIsBodyDisc: TFloatField
      DisplayWidth = 10
      FieldName = 'IsBodyDisc'
    end
    object cdsTerrIsPrevAgrPres: TFloatField
      DisplayWidth = 10
      FieldName = 'IsPrevAgrPres'
    end
    object cdsTerrVisField: TFloatField
      FieldName = 'VisField'
    end
    object cdsTerrIsReadOnly: TFloatField
      FieldName = 'IsReadOnly'
    end
    object cdsTerrTypeAccessDetail: TFloatField
      FieldName = 'TypeAccessDetail'
    end
    object cdsTerrPARENTISN: TFloatField
      FieldName = 'PARENTISN'
    end
    object cdsTerrGr0ReadOnlyNo: TFloatField
      FieldName = 'Gr0ReadOnlyNo'
    end
  end
  object dsTerr: TDataSource
    DataSet = cdsTerr
    OnDataChange = dsPreCalcParamDataChange
    Left = 253
    Top = 489
  end
  object dsAgrAdd: TDataSource
    DataSet = cdsAgrAdd
    OnDataChange = dsAgrAddDataChange
    Left = 53
    Top = 449
  end
  object dsVariant: TDataSource
    DataSet = cdsVariant
    OnDataChange = dsVariantDataChange
    Left = 119
    Top = 441
  end
  object qrPreCalcParamList: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftFloat
        Name = 'AGRISN'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'ParentISN'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspPreCalcParamList'
    BeforeGetRecords = qrPreCalcParamBeforeGetRecords
    Left = 679
    Top = 289
  end
  object pmPreCalcGroup: TPopupMenu
    Left = 759
    Top = 329
  end
  object pmCopyMenu: TPopupMenu
    OnPopup = pmCopyMenuPopup
    Left = 51
    Top = 377
    object miCopyAs: TMenuItem
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1082#1072#1082
      object miCopyAsPreCalc: TMenuItem
        Caption = #1050#1086#1090#1080#1088#1086#1074#1082#1091
      end
      object miCopyAsAdd: TMenuItem
        Caption = #1040#1076#1076#1077#1085#1076#1091#1084
      end
      object miCopyAsVar: TMenuItem
        Caption = #1042#1077#1088#1089#1080#1102
      end
      object miCopyAsTerr: TMenuItem
        Caption = #1058#1077#1088#1088#1080#1090#1086#1088#1080#1102
      end
    end
    object miCopyAll: TMenuItem
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100
    end
  end
end

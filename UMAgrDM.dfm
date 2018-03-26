inherited MAgrDM: TMAgrDM
  OldCreateOrder = True
  Left = 313
  Top = 92
  Height = 728
  Width = 1362
  inherited OraSession: TOracleSession
    BeforeLogOn = OraSessionBeforeLogOn
    Cursor = crIBeam
    LogonUsername = 'aislogin'
    LogonPassword = ''
    LogonDatabase = 'orasrv'
    Preferences.IntegerPrecision = 1
    Left = 12
    Top = 0
  end
  inherited spSetUser: TOracleQuery
    Left = 68
    Top = 0
  end
  inherited qrAnySQL: TOracleQuery
    Left = 120
    Top = 0
  end
  inherited spSetUserODAC: TOraStoredProc
    CommandStoredProcName = 'AIS2000.SETUSER:0'
  end
  object dspAgr: TDataSetProvider
    DataSet = qrAgr
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = DSPSetParams
    BeforeGetRecords = DSPSetParams
    Left = 36
    Top = 44
  end
  object dspSubj: TDataSetProvider
    DataSet = qrSubj
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = dspSubjBeforeApplyUpdates
    AfterApplyUpdates = dspSubjAfterApplyUpdates
    BeforeGetRecords = DSPSetParams
    Left = 149
    Top = 91
  end
  object dspCond: TDataSetProvider
    DataSet = qrCond
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = DSPSetParams
    BeforeGetRecords = DSPSetParams
    Left = 44
    Top = 134
  end
  object dspEquip: TDataSetProvider
    DataSet = qrEquip
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = DSPSetParams
    BeforeGetRecords = DSPSetParams
    Left = 48
    Top = 178
  end
  object dspAdd: TDataSetProvider
    DataSet = qrAdd
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = dspAddBeforeApplyUpdates
    BeforeGetRecords = DSPSetParams
    Left = 40
    Top = 90
  end
  object dspCar: TDataSetProvider
    DataSet = qrCar
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = dspCarBeforeApplyUpdates
    AfterApplyUpdates = dspCarAfterApplyUpdates
    BeforeGetRecords = dspCarBeforeApplyUpdates
    Left = 36
    Top = 220
  end
  object dspModelBranch: TDataSetProvider
    DataSet = qrModelBranch
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeGetRecords = DSPSetParams
    Left = 95
    Top = 267
  end
  object dspModif: TDataSetProvider
    DataSet = qrModif
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = DSPSetParams
    BeforeGetRecords = DSPSetParams
    Left = 47
    Top = 311
  end
  object dspPhone: TDataSetProvider
    DataSet = qrPhone
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = DSPSetParams
    BeforeGetRecords = DSPSetParams
    Left = 172
    Top = 135
  end
  object dspTmplList: TDataSetProvider
    DataSet = qrTmplList
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeGetRecords = DSPSetParams
    Left = 322
    Top = 357
  end
  object dspFSubj: TDataSetProvider
    DataSet = qrFSubj
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeGetRecords = DSPSetParams
    Left = 324
    Top = 223
  end
  object dspFCar: TDataSetProvider
    DataSet = qrFCar
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeGetRecords = DSPSetParams
    Left = 324
    Top = 267
  end
  object dspFModel: TDataSetProvider
    DataSet = qrFModel
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeGetRecords = DSPSetParams
    Left = 324
    Top = 311
  end
  object dspRiskCtg: TDataSetProvider
    DataSet = qrRiskCtg
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeGetRecords = DSPSetParams
    Left = 161
    Top = 45
  end
  object dspCarDoc: TDataSetProvider
    DataSet = qrCarDoc
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = DSPSetParams
    AfterApplyUpdates = dspCarDocAfterApplyUpdates
    BeforeGetRecords = DSPSetParams
    Left = 172
    Top = 180
  end
  object dspCarSurvey: TDataSetProvider
    DataSet = qrCarSurvey
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = DSPSetParams
    BeforeGetRecords = DSPSetParams
    Left = 179
    Top = 224
  end
  object dspCarDamage: TDataSetProvider
    DataSet = qrCarDamage
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = DSPSetParams
    BeforeGetRecords = DSPSetParams
    Left = 172
    Top = 266
  end
  object dspCarEquip: TDataSetProvider
    DataSet = qrCarEquip
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = DSPSetParams
    BeforeGetRecords = DSPSetParams
    Left = 172
    Top = 310
  end
  object dspWarn: TDataSetProvider
    DataSet = qrWarn
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = DSPSetParams
    BeforeGetRecords = DSPSetParams
    Left = 390
    Top = 44
  end
  object dspAgrTmpl: TDataSetProvider
    DataSet = qrAgrTmpl
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeGetRecords = DSPSetParams
    Left = 326
    Top = 180
  end
  object dspEngaged: TDataSetProvider
    DataSet = qrEngaged
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeGetRecords = DSPSetParams
    Left = 175
    Top = 448
  end
  object dspBM: TDataSetProvider
    DataSet = qrBM
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeGetRecords = DSPSetParams
    Left = 168
    Top = 492
  end
  object dspRefund: TDataSetProvider
    DataSet = qrRefund
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeGetRecords = DSPSetParams
    Left = 177
    Top = 405
  end
  object dspModelDicti: TDataSetProvider
    DataSet = qrModelDicti
    ResolveToDataSet = True
    BeforeApplyUpdates = DSPSetParams
    BeforeGetRecords = DSPSetParams
    Left = 47
    Top = 356
  end
  object dspFCarHist: TDataSetProvider
    DataSet = qrFCarHist
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeGetRecords = DSPSetParams
    Left = 419
    Top = 355
  end
  object dspProlongHist: TDataSetProvider
    DataSet = qrProlongHist
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeGetRecords = DSPSetParams
    Left = 656
    Top = 177
  end
  object dspCAAdd: TDataSetProvider
    DataSet = qrCAAdd
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeGetRecords = DSPSetParams
    Left = 424
    Top = 179
  end
  object dspModelTSet: TDataSetProvider
    DataSet = qrModelTSet
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeGetRecords = DSPSetParams
    Left = 424
    Top = 224
  end
  object dspModelTariff: TDataSetProvider
    DataSet = qrModelTariff
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = DSPSetParams
    BeforeGetRecords = DSPSetParams
    Left = 408
    Top = 268
  end
  object dspNewAgrRule: TDataSetProvider
    DataSet = qrNewAgrRule
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeGetRecords = DSPSetParams
    Left = 454
    Top = 132
  end
  object qrAgr: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      ' :Result:=AGRC.FCUR_AGR(:pISN);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000002000000070000003A524553554C5474000000000000000000000005
      0000003A5049534E040000000000000000000000}
    OracleDictionary.RequiredFields = False
    QBEDefinition.QBEFieldDefs = {
      040000004F0000000300000049534E0100000000000200000049440100000000
      0009000000504152454E5449534E01000000000008000000444154455349474E
      010000000000070000005052455649534E010000000000090000004441544549
      5353554501000000000008000000434C41535349534E01000000000007000000
      444154454245470100000000000700000052554C4549534E0100000000000700
      000044415445454E44010000000000070000004445505449534E010000000000
      07000000454D504C49534E01000000000009000000434C49454E5449534E0100
      0000000007000000555044415445440100000000000900000055504441544544
      4259010000000000070000004355525249534E010000000000040000004E414D
      450100000000000A000000504F4C494359594541520100000000000900000052
      45494E53594541520100000000000A000000494E535552454453554D01000000
      000009000000524546554E4453554D0100000000000900000052455455524E53
      554D01000000000009000000494E434F4D4553554D0100000000000E00000049
      4E434F4D495353494F4E53554D0100000000000E000000424153455052454D49
      554D53554D0100000000000F0000004E4554544F5052454D49554D53554D0100
      00000000080000005155414E5449545901000000000006000000535441545553
      0100000000000B0000005245494E535354415455530100000000000500000044
      495343520100000000000600000052454D41524B01000000000009000000434F
      4D495353494F4E010000000000080000004150504C4441544501000000000007
      00000053484152455043010000000000070000005245494E5350430100000000
      00070000004352454154454401000000000006000000524F554E444D01000000
      0000060000004150504C49440100000000000800000044415445424153450100
      00000000040000005649534E010000000000070000005345435449534E010000
      00000007000000464F524D49534E0100000000000A0000005052454D49554D53
      554D010000000000080000004C494D495453554D0100000000000D0000004C49
      4D4954455645525953554D0100000000000A00000046554C4C53544154555301
      00000000000F00000046554C4C5245494E535354415455530100000000000800
      0000504152454E5449440100000000000E000000504152454E54444154455349
      474E0100000000000D000000504152454E54444154454245470100000000000D
      000000504152454E5444415445454E4401000000000006000000505245564944
      0100000000000C00000050524556444154455349474E0100000000000B000000
      50524556444154454245470100000000000B0000005052455644415445454E44
      0100000000000800000043555252434F44450100000000000800000044455054
      4E414D4501000000000008000000454D504C4E414D4501000000000008000000
      52554C454E414D450100000000000A000000434C49454E544E414D4501000000
      000009000000434C4153534E414D45010000000000070000005550444E414D45
      010000000000070000004352454E414D45010000000000060000004D4F4E5448
      530100000000000700000054494D454245470100000000000700000054494D45
      454E44010000000000040000004D41534B010000000000050000004D41534B32
      010000000000090000004147454E544E414D4501000000000007000000414745
      4E545043010000000000070000004E45585449534E010000000000060000004E
      45585449440100000000000B000000494E53555245524E414D45010000000000
      0600000049444D41534B0100000000000D00000052554C45504152454E544953
      4E010000000000070000004144445249534E0100000000000800000041444452
      4E414D450100000000000C00000050524F4C4F4E474154494F4E010000000000
      0600000042495A464C47010000000000}
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 5
    Top = 44
  end
  object spAgr: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  AGRC.UpdateAgr(:pEx, :ISN, :ID, :PARENTISN, '
      ' :DATESIGN, :PREVISN, :DATEISSUE, :CLASSISN, '
      ' :DATEBEG, :DATEEND, :EMPLISN, :CLIENTISN, '
      ' :CURRISN, :NAME, :POLICYYEAR, :REINSYEAR, '
      ' :FULLSTATUS, :REINSSTATUS, :DISCR, :APPLDATE, '
      ' :ROUNDM, :APPLID, :FORMISN, :RuleISN, '
      
        ' :REMARK,:AddrISN, :Prolongation, pBizFlg=>:BizFlg,pREMARKMemo=>' +
        ' :REMARKMemo,'
      
        ' pSalesChannelISN=>:SALESCHANNELISN, pAgrTypeCBISN=>:AgrTypeCBIS' +
        'N,'
      
        ' pNoSegmentISN=>:NoSegmentISN, pNoSegmentACISN=>:NoSegmentACISN,' +
        ' pIMEIMS=>:IMEIMS);'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {0300000001000000040000003A504558050000000000000000000000}
    Left = 68
    Top = 44
  end
  object qrCar: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      ' :Result:=MAGRCAR.FCUR_CAR(:pCarISN,:pAgrISN,:pAddISN);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000004000000070000003A524553554C5474000000000000000000000008
      0000003A5043415249534E040000000000000000000000080000003A50414752
      49534E040000000000000000000000080000003A5041444449534E0400000000
      00000000000000}
    OracleDictionary.RequiredFields = False
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 4
    Top = 221
  end
  object spCar: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  MAGRCAR.UPDATECAR(:ISN, :TarifISN,'
      '    :RegNo, :Constructed, :Remark,'
      '    :ColorISN, :CurrISN, :OrigPrice, :ChassisID,'
      '    :BodyID, :VIN, :EngineType, :EnginePowerKW,'
      '    :EnginePowerHP, :EngineID, :EngineVolume,'
      '    :Doors, :Seats, :MaxLoad, :OwnershipISN,'
      '    :CustomISN, :StandISN, :KeyNum, :Owner,'
      '    :Modification, :TariffGroupISN, :TarifNo,'
      
        '     NVL(:pAgrISN, :AgrISN), -- Yunin V.A. 09/11/05 add NVL(:pAg' +
        'rISN'
      '    :CheckValues, :pEx, :SteeringSide, :ProtectionISN,'
      '    :DateRun, :CategoryISN, :GrossWeigh, :BodyModelISN,'
      '    :BodyTypeISN, :Transmission,'
      
        '    :NetWeight, :ConstructedYear, :InsurKilometers, :WarrantyDat' +
        'e, :pAddISN,'
      '    :CountryISN,'
      '    :WarrantyPeriod,'
      '    :WarrantyKilometrage,'
      '    :RegionISN, -- '#1084#1077#1089#1090#1086' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080' '#1058#1057','
      '     null,'
      '    :seatscount,'
      '    :passagevolume'
      '    ,:specialcolor  --29.09.2014 Golodnyuk task 70980259803'
      '    ,:EngineTechIsn'
      '    ,:EngineTechSkyActive'
      '    );'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000035000000040000003A50455805000000000000000000000008000000
      3A5041475249534E040000000000000000000000040000003A49534E04000000
      0000000000000000090000003A544152494649534E0400000000000000000000
      00060000003A5245474E4F0500000000000000000000000C0000003A434F4E53
      545255435445440C0000000000000000000000070000003A52454D41524B0500
      00000000000000000000090000003A434F4C4F5249534E040000000000000000
      000000080000003A4355525249534E0400000000000000000000000A0000003A
      4F52494750524943450400000000000000000000000A0000003A434841535349
      534944050000000000000000000000070000003A424F44594944050000000000
      000000000000040000003A56494E0500000000000000000000000B0000003A45
      4E47494E45545950450500000000000000000000000E0000003A454E47494E45
      504F5745524B570400000000000000000000000E0000003A454E47494E45504F
      5745524850040000000000000000000000090000003A454E47494E4549440500
      000000000000000000000D0000003A454E47494E45564F4C554D450400000000
      00000000000000060000003A444F4F5253040000000000000000000000060000
      003A5345415453040000000000000000000000080000003A4D41584C4F414404
      00000000000000000000000D0000003A4F574E45525348495049534E04000000
      00000000000000000A0000003A435553544F4D49534E04000000000000000000
      0000090000003A5354414E4449534E040000000000000000000000070000003A
      4B45594E554D040000000000000000000000060000003A4F574E455205000000
      00000000000000000D0000003A4D4F44494649434154494F4E05000000000000
      00000000000F0000003A54415249464647524F555049534E0400000000000000
      00000000080000003A54415249464E4F04000000000000000000000007000000
      3A41475249534E0400000000000000000000000C0000003A434845434B56414C
      5545530300000000000000000000000D0000003A5354454552494E4753494445
      0500000000000000000000000E0000003A50524F54454354494F4E49534E0400
      00000000000000000000080000003A4441544552554E0C000000000000000000
      00000C0000003A43415445474F525949534E0400000000000000000000000B00
      00003A47524F535357454947480400000000000000000000000D0000003A424F
      44594D4F44454C49534E0400000000000000000000000C0000003A424F445954
      59504549534E0400000000000000000000000D0000003A5452414E534D495353
      494F4E0500000000000000000000000A0000003A4E4554574549474854040000
      000000000000000000100000003A434F4E535452554354454459454152050000
      000000000000000000100000003A494E5355524B494C4F4D4554455253050000
      0000000000000000000D0000003A57415252414E545944415445050000000000
      0000000000000B0000003A434F554E54525949534E0400000000000000000000
      00080000003A5041444449534E0400000000000000000000000F0000003A5741
      5252414E5459504552494F44040000000000000000000000140000003A574152
      52414E54594B494C4F4D4554524147450400000000000000000000000A000000
      3A524547494F4E49534E0400000000000000000000000B0000003A5345415453
      434F554E540400000000000000000000000E0000003A50415353414745564F4C
      554D450400000000000000000000000D0000003A5350454349414C434F4C4F52
      0500000000000000000000000E0000003A454E47494E455445434849534E0400
      00000000000000000000140000003A454E47494E4554454348534B5941435449
      5645050000000000000000000000}
    Left = 68
    Top = 220
  end
  object qrModelBranch: TOracleDataSet
    SQL.Strings = (
      
        '-- Yunin V.A. 07/05/07 '#1087#1077#1088#1077#1085#1077#1089' '#1085#1072' '#1089#1077#1088#1074#1077#1088' + '#1076#1086#1073#1072#1074#1080#1083' '#1092#1080#1083#1100#1090#1088#1072#1094#1080#1102' '#1087#1086 +
        ' '#1089#1090#1072#1090#1091#1089#1091
      '/*'
      'SELECT'
      ' ISN,'
      
        ' SubStr(Decode(NVL(Upper(FullName), ShortName), Name, NVL(FullNa' +
        'me, InitCapFirst(ShortName)), Name),1,100) AS Name,'
      ' N_Children,'
      ' Active'
      'FROM'
      '('
      ' SELECT'
      '  ISN,'
      
        '  SubStr(LocDictName(ISN, NVL(FullName, InitCapFirst(ShortName))' +
        '),1,40) AS Name,'
      '  FullName, ShortName,'
      '  N_Children, Active'
      ' FROM Dicti Di'
      ' WHERE'
      '  Di.ParentISN=:pISN'
      '  -- AND Active IS NOT NULL'
      '  AND'
      '    ('
      '      Active=:pActive'
      '      OR EXISTS (SELECT NULL'
      '                 FROM DICTI START WITH ISN=Di.ParentISN'
      '                 Connect By Prior ISN=ParentISN )'
      '    )'
      ''
      ')'
      'ORDER BY NAME'
      '*/'
      ''
      'BEGIN'
      
        '  :RESULT:=MAgrCar.FCur_Branch(:pISN, :pActive, :pAgrIsn, :pIsUs' +
        'eFromAgreement);'
      'END;'
      '')
    Optimize = False
    Variables.Data = {
      0300000004000000070000003A524553554C5474000000000000000000000005
      0000003A5049534E040000000000000000000000080000003A50414354495645
      050000000000000000000000080000003A5041475249534E0500000000000000
      00000000}
    OracleDictionary.RequiredFields = False
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 32
    Top = 299
  end
  object qrModif: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      
        '  :Result:=MAGRCAR.FCUR_MODIF(:pExpertMode,:pModelISN, :pAgrIsn,' +
        ' :pIsUseFromAgreement);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000005000000070000003A524553554C547400000000000000000000000C
      0000003A504558504552544D4F44450400000000000000000000000A0000003A
      504D4F44454C49534E040000000000000000000000080000003A504147524953
      4E050000000000000000000000140000003A50495355534546524F4D41475245
      454D454E54050000000000000000000000}
    OracleDictionary.RequiredFields = False
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 4
    Top = 311
  end
  object spModif: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  MAGRCAR.UPDATEMODIF('
      ' :pEx, :ISN, :ClassISN, :Modification,'
      ' :BodyType, :EngType, :EnginePowerKW,'
      ' :EnginePowerHP, :EngineVolume, :EngineMaxVol,'
      ' :Doors, :Seats, :MaxLoad, :CountryISN,'
      ' :CurrISN, :Price, :TariffGroupISN,'
      ' :Transmission, :TypeISN, :ProtectionISN,'
      ' :GrossWeigh,'
      ' :DateBeg,'
      ' :DateEnd,'
      ' :NetWeight,'
      ' :Status,'
      ' :WarrantyPeriod,'
      ' :WarrantyKilometrage'
      ');'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {0300000001000000040000003A504558050000000000000000000000}
    Left = 92
    Top = 311
  end
  object qrCAAdd: TOracleDataSet
    SQL.Strings = (
      '-- MotorAddDlg.qrCAAdd - AL'
      'SELECT  '
      '  ISN,'
      
        ' '#39'('#39'||ID||'#39')  '#39'||To_Char(DateBeg, '#39'DD.MM.YYYY'#39')||'#39' - '#39'||To_Char(' +
        'DateEnd, '#39'DD.MM.YYYY'#39') AS ListField'
      'FROM Agreement '
      'WHERE ParentISN=:pAgrISN'
      '  AND Discr='#39#1040#39
      '  AND RuleISN=C.Get('#39'AddCascoAbroad'#39')'
      '  AND Status IN ('#39'C'#39', '#39#1042#39')'
      'ORDER BY ID')
    Optimize = False
    Variables.Data = {
      0300000001000000080000003A5041475249534E040000000000000000000000}
    OracleDictionary.RequiredFields = False
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 376
    Top = 179
  end
  object qrModelTSet: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      '  :Result:=MAGRCAR.FCUR_MTARIFFSET;'
      'END;')
    Optimize = False
    Variables.Data = {0300000001000000070000003A524553554C54740000000000000000000000}
    OracleDictionary.RequiredFields = False
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 377
    Top = 224
  end
  object qrModelTariff: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      '  :Result:=MAGRCAR.FCUR_MODELTARIFF(:pClassISN,:pModelISN);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000003000000070000003A524553554C547400000000000000000000000A
      0000003A50434C41535349534E0400000000000000000000000A0000003A504D
      4F44454C49534E040000000000000000000000}
    OracleDictionary.RequiredFields = False
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 374
    Top = 268
  end
  object spModelTariff: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  MAGRCAR.UPDATEMODELTARIFF('
      ' :pEx, :ISN, :DateBeg,'
      ' :DateEnd, :X1, :X2, NULL,'
      ' :Tariff, :TariffISN, NULL);'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {0300000001000000040000003A504558050000000000000000000000}
    Left = 442
    Top = 268
  end
  object qrModelDicti: TOracleDataSet
    SQL.Strings = (
      '-- AIS2000 - UMAgrDM.qrModelDicti - AL - 16/05/01'
      'SELECT --+ ORDERED USE_NL(D E)'
      ' D.ISN, D.ParentISN, D.N_Children, D.Active, '
      ' D.ShortName,'
      ' SubStr(NVL(D.FullName, InitCap(D.ShortName)),1,40) AS Name,'
      
        ' SubStr(NVL(E.FullName, InitCap(E.ShortName))||'#39' '#39'||NVL(D.FullNa' +
        'me, InitCap(D.ShortName)),1,255) AS FullModelName'
      'FROM Dicti D, Dicti E '
      'WHERE D.ISN=:pISN  AND D.ParentISN=E.ISN(+)')
    Optimize = False
    Variables.Data = {0300000001000000050000003A5049534E040000000000000000000000}
    OracleDictionary.RequiredFields = False
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 4
    Top = 356
  end
  object spModelDicti: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      ' MAGRCAR.UPDATEMODEL('
      ' :pEx, :ISN, :ParentISN,'
      ' :Name, :N_Children);'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {0300000001000000040000003A504558050000000000000000000000}
    Left = 92
    Top = 356
  end
  object qrRefund: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      ' :Result:=CLAIM.FCur_AgrRefund(:pAgrISN, :pPrev);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000003000000070000003A524553554C5474000000000000000000000008
      0000003A5041475249534E040000000000000000000000060000003A50505245
      56040000000000000000000000}
    OracleDictionary.RequiredFields = False
    Session = OraSession
    AfterOpen = qrRefundAfterOpen
    Left = 136
    Top = 402
  end
  object qrEngaged: TOracleDataSet
    SQL.Strings = (
      '-- UMAgrDM - AL - Feb 01'
      'SELECT --+ ORDERED INDEX(C) USE_NL(C R K Y O N A)'
      
        ' R.ISN, ClaimISN, SubStr(MAgrF.RefundRuleCode(R.ISN),1,2) AS Rul' +
        'eCode, '
      ' SubStr(InitCapFirst(LocDictName(R.ClassISN)),1,40) AS RiskName,'
      ' DateEvent, DateRefund,'
      ' Regress, Guilty,'
      ' SubStr(InitCap(LocSubjName(R.EmplISN)),1,40) AS EmplName,'
      ' R.ClaimSum, R.RefundSum, Y.Code AS CurrCode,'
      ' SubStr(AgrN.DecodeRefundStatus(R.Status),1,40) AS FullStatus,'
      
        ' SubStr(Decode(O.DescISN, NULL, InitCapFirst(O.Name), O.Name),1,' +
        '40) AS ObjName,'
      ' N.ID AS AgrID,'
      ' R.Status,'
      ' A.ID AS RefundAgrID'
      'FROM ClaimRefundCar C, AgrRefund R, AgrRisk K,'
      '  Currency Y, AgrObject O, Agreement N, Agreement A'
      'WHERE R.ISN=C.ISN'
      ' AND R.RiskISN=K.ISN(+) AND R.CurrISN=Y.ISN'
      ' AND R.ObjISN=O.ISN(+) AND R.AgrISN=A.ISN'
      ' AND C.NextAgrISN=N.ISN AND C.NextAgrISN IN'
      '  ('
      '   SELECT ISN FROM Agreement WHERE ISN=:pAgrISN OR 0<>:pPrev'
      '    START WITH ISN=:pAgrISN CONNECT BY PRIOR PrevISN=ISN'
      '  )'
      'ORDER BY DateEvent, RuleCode, RiskName')
    Optimize = False
    Variables.Data = {
      0300000002000000080000003A5041475249534E040000000000000000000000
      060000003A5050524556040000000000000000000000}
    OracleDictionary.RequiredFields = False
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 136
    Top = 448
  end
  object qrBM: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      '  :Result:=MAGRBM.FCUR_BM(:pObjISN);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000002000000070000003A524553554C5474000000000000000000000008
      0000003A504F424A49534E040000000000000000000000}
    OracleDictionary.RequiredFields = False
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 136
    Top = 492
  end
  object qrFSubj: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      '  :Result := MAGRFC.FCUR_FINDSUBJ('
      '  :pJur,'
      '  :pName,'
      '  :pPhone, '
      '  :pBirthday,'
      '  :pINN,'
      '  :pFID,'
      '  :pCode,'
      '  :pShortSrch, '
      '  :pParentISN, '
      '  :pStreetISN, '
      '  :pCityISN,'
      '  :pOrgFormISN, '
      '  :pHouse, '
      '  :pBuilding, '
      '  :pSearchMode,'
      '  :pSubjISN, '
      '  :pDocClassISN, '
      '  :pDocSer,'
      '  :pDocNo'
      ' );'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000014000000070000003A524553554C5474000000000000000000000005
      0000003A504A5552050000000000000000000000060000003A504E414D450500
      00000000000000000000070000003A5050484F4E450500000000000000000000
      000A0000003A5042495254484441590C0000000000000000000000050000003A
      50494E4E050000000000000000000000050000003A5046494404000000000000
      0000000000060000003A50434F44450500000000000000000000000B0000003A
      5053484F5254535243480500000000000000000000000B0000003A5050415245
      4E5449534E0400000000000000000000000B0000003A5053545245455449534E
      040000000000000000000000090000003A504349545949534E04000000000000
      00000000000C0000003A504F5247464F524D49534E0400000000000000000000
      00070000003A50484F5553450500000000000000000000000A0000003A504255
      494C44494E470500000000000000000000000C0000003A505345415243484D4F
      4445040000000000000000000000090000003A505355424A49534E0400000000
      000000000000000D0000003A50444F43434C41535349534E0400000000000000
      00000000080000003A50444F4353455205000000000000000000000007000000
      3A50444F434E4F050000000000000000000000}
    OracleDictionary.RequiredFields = False
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 279
    Top = 223
  end
  object qrFCar: TOracleDataSet
    SQL.Strings = (
      '-- FFind.qrFCar - AL'
      'SELECT --+ FIRST_ROWS ORDERED USE_NL(D)'
      ' V.ISN, '
      ' SubStr(MAgrCar.CarName(V.ISN),1,122) AS ModelName,'
      ' V.RegNo, V.VIN, V.Constructed, V.ColorName, V.EngineID,'
      ' V.EnginePowerHP, V.EngineVolume, V.MaxLoad'
      'FROM '
      '('
      
        ' SELECT ISN FROM ObjCar WHERE VINR LIKE Decode(:pVIN, '#39#39', '#39#39', St' +
        'rings.Reverse(:pVIN)||'#39'%'#39')'
      ' UNION'
      
        ' SELECT ISN FROM ObjCar WHERE EngineID LIKE Decode(:pEngineID, '#39 +
        #39', '#39#39', :pEngineID ||'#39'%'#39')'
      ' UNION'
      
        ' SELECT /*+USE_CONCAT*/  ISN FROM ObjAgr WHERE ((ShortName LIKE ' +
        'Decode(:pShortName, '#39#39', '#39#39', :pShortName ||'#39'%'#39')) or (ShortName LI' +
        'KE Decode(:pShortName, '#39#39', '#39#39', MAgrCar.Convert2LatSetF(:pShortNa' +
        'me) ||'#39'%'#39')))'
      ' UNION '
      ' SELECT DescISN FROM AgrObject WHERE AgrISN IN'
      
        '  (SELECT ISN FROM Agreement WHERE Status<>'#39#1040#39' AND ClientISN=:pC' +
        'lientISN)'
      ') D, VX_Car V'
      
        'WHERE D.ISN=V.ISN AND V.Active IS NOT NULL AND V.ObjCarISN IS NO' +
        'T NULL'
      'ORDER BY ModelName'
      '')
    Optimize = False
    Variables.Data = {
      0300000004000000050000003A5056494E0500000000000000000000000A0000
      003A50454E47494E4549440500000000000000000000000B0000003A5053484F
      52544E414D450500000000000000000000000B0000003A50434C49454E544953
      4E040000000000000000000000}
    OracleDictionary.RequiredFields = False
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 280
    Top = 267
  end
  object qrFModel: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      '  :Result:=MAGRCAR.FCUR_FMODEL(:pPattern);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000002000000070000003A524553554C5474000000000000000000000009
      0000003A505041545445524E050000000000000000000000}
    OracleDictionary.RequiredFields = False
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 276
    Top = 311
  end
  object qrTmplList: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      '  :Result:=MAGRP.DOCTMPLLIST(:pAgrRuleISN);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000002000000070000003A524553554C547400000000000000000000000C
      0000003A5041475252554C4549534E040000000000000000000000}
    OracleDictionary.RequiredFields = False
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 274
    Top = 357
  end
  object qrFCarHist: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      '  :Result:=MAGRCAR.FCUR_HIST(:pISN);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000002000000070000003A524553554C5474000000000000000000000005
      0000003A5049534E040000000000000000000000}
    OracleDictionary.RequiredFields = False
    Session = OraSession
    AfterOpen = qrFCarHistAfterOpen
    Left = 382
    Top = 355
  end
  object qrEquip: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      '  :Result:=MAGRFC.FCUR_EQUIP(:pAgrISN,:pAddISN,:pObjISN);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000004000000070000003A524553554C5474000000000000000000000008
      0000003A5041475249534E040000000000000000000000080000003A50414444
      49534E040000000000000000000000080000003A504F424A49534E0400000000
      00000000000000}
    OracleDictionary.RequiredFields = False
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = qrEquipAfterOpen
    Left = 4
    Top = 178
  end
  object spEquip: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  MAGRFC.UPDATEEQUIP('
      ' :State, :ISN, :ParentISN, '
      ' :AgrISN, :AddISN, :CondISN, :ClassISN, '
      ' :Model, :Constructed, :Price, :Cost, :Discount, '
      ' :CurrISN, :PremSum, :pEx,'
      ' :Discount2Equip --Yunin V.A. 29/12/04'
      ' );'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {0300000001000000040000003A504558050000000000000000000000}
    Left = 92
    Top = 178
  end
  object qrCond: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      '  :Result:=MAGRFC.FCUR_COND(:pAgrISN,:pAddISN);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000003000000070000003A524553554C5474000000000000000000000008
      0000003A5041475249534E040000000000000000000000080000003A50414444
      49534E040000000000000000000000}
    OracleDictionary.RequiredFields = False
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 4
    Top = 134
  end
  object qrAdd: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      '  :Result:=AGRC.FCUR_ADD(:pAgrISN,:pShowPrem);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000003000000070000003A524553554C5474000000000000000000000008
      0000003A5041475249534E0400000000000000000000000A0000003A5053484F
      575052454D040000000000000000000000}
    OracleDictionary.RequiredFields = False
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 4
    Top = 90
  end
  object spAdd: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  MAGRF.UPDATEADD2(:pEx, :ISN, :AgrISN, :RuleISN, :DateBeg, '
      
        ' :DateEnd, :DateSign, :DateIssue, :FullStatus,  :Remark, :AddPar' +
        'am,'
      ' :EmplISN, --Yunin V.A. 11/01/05 '#1082#1091#1088#1072#1090#1086#1088' '#1072#1076#1076#1077#1085#1076#1091#1084#1072
      ' :ID -- '#1052#1072#1088#1080#1085' '#1040'.'#1042'. 20.02.2006 - ID '#1072#1076#1076#1077#1085#1076#1091#1084#1072
      ', pAddrisn => :addrisn -- 129439090403 26.04.2017 '#1064#1091#1089#1090#1086#1074
      ''
      ' );'
      '  COMMIT;'
      'END;'
      ''
      '/*'
      'BEGIN'
      '  MAGRF.UPDATEADD('
      ' ISN, AgrISN, RuleISN, DateBeg, '
      ' DateEnd, DateSign, DateIssue, FullStatus, '
      ' Remark, AddToCancel, Equip, Method, '
      ' pEx, Discount);'
      '  COMMIT;'
      'END;'
      '*/')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000002000000040000003A50455805000000000000000000000009000000
      3A414444504152414D050000000000000000000000}
    Left = 76
    Top = 90
  end
  object spCond: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  MAGRFC.UPDATECOND('
      ' :AgrISN, :AddISN, :DateBeg, '
      ' :DateEnd, :DateCalc, NULL, :ObjISN, '
      ' :ECasco, :ELiab, :ELife, :CascoRiskISN, '
      ' :StealRiskISN, :LiabRiskISN, :LifeRiskISN, '
      ' :DisabRiskISN, :MedRiskISN, :RCasco, :RSteal, '
      ' :RAcc, :RStroke, :RFire, :RTPA, '
      ' :RCat, :RHire, :RLiab, :RLife, '
      ' :RDisab, :RMed, '
      ' :InsuredCost, :InsuredSum, :FranchSum, :LimitSum, '
      ' :LifeSum, :DisabSum, :MedSum, :InsCurrISN, '
      ' :LifeCurrISN, :SSys, :Quantity, :CBonusISN, '
      ' :LBonusISN, :DiscountCasco, :DiscountLiab, '
      ' :DiscountLife, :CClsCtgISN, :LClsCtgISN, '
      '  NULL, :GTotal, :LcAgeC, :CYoung, :LNonres, '
      ' :LLocalMake, :LcAgeL, :LYoung,  NULL, :TCarAge, '
      ' :PremCasco, :PremLiab, :PremLife, '
      ' :FranchType, :LiabCurrISN, :RefundSysISN, :RefundLimISN,  '
      ' :RefundFormISN, :TotalAdjISN, :FranchTariff, :KDeprec,'
      ' :StdHourRate, :StdHourCurrISN,            -- AL 20/05/03'
      ' :AgrDateBeg, :AgrDateEnd,                 -- AL ??/06/03'
      ' :VUsageFlags, :AbuseCharge, :LFranchSum,  -- AL 16/06/03'
      ' :DateBeg2, :DateEnd2,                     -- AL 12/07/03'
      ' :AntitheftISN,                            -- AL 04/09/03'
      
        ' :AbuseChargeISN, :PurposeISN, :TZoneISN, :CarZeroAge, -- AL 3/0' +
        '6/04'
      
        ' :Discount2Casco, :Discount2Liab,  :Discount2Life, -- Yunin V.A.' +
        ' 29/12/04'
      
        ' :FranchCurrISN,                                                ' +
        '       -- Yunin V.A. 23/09/05'
      ' :ModeUseCLISN,'
      ' -- Yunin V.A. 06/12/06 '#1089#1090#1088#1072#1093#1086#1074#1072#1085#1080#1077' '#1058#1057' '#1086#1090' '#1087#1086#1083#1086#1084#1086#1082
      ' :RiskMotorBreakage,'
      ' :RiskMotorRoadAss,'
      ' :RiskMotorExtndWarr,'
      ' :RiskMotorRoadAssFormISN,'
      ' :RiskMotorRoadAssLimitISN,'
      ' :RiskMotorRoadAssCount,'
      ' :RiskMotorExtndWarrFormISN,'
      ' :RiskMotorExtndWarrLimitISN,'
      ' -- Yunin V.A. 08/12/06 '#1086#1082#1086#1083#1086#1089#1090#1088#1072#1093#1086#1074#1099#1077' '#1091#1089#1083#1091#1075#1080' '#1050#1040#1057#1050#1054
      ' :RiskMotorAvarCom,'
      ' :RiskMotorDocCollecting,'
      
        ' -- Yunin V.A. 08/12/06 '#1087#1088#1077#1084#1080#1103' '#1087#1086' '#1087#1088#1072#1074#1080#1083#1091' '#1089#1090#1088#1072#1093#1086#1074#1072#1085#1080#1077' '#1058#1057' '#1086#1090' '#1087#1086#1083#1086 +
        #1084#1086#1082
      ' :PremRuleMotorBreakage,'
      ' -- Yunin V.A. 08/12/06 '#1087#1088#1077#1084#1080#1103' '#1086#1082#1086#1083#1086#1089#1090#1088#1072#1093#1086#1074#1099#1077' '#1091#1089#1083#1091#1075#1080' '#1050#1040#1057#1050#1054
      ' -- '#1087#1088#1077#1084#1080#1103' '#1072#1074#1072#1088#1082#1086#1084
      ' :PremRiskMotorAvarCom,'
      ' -- '#1087#1088#1077#1084#1080#1103' '#1089#1073#1086#1088' '#1089#1087#1088#1072#1074#1086#1082
      ' :PremRiskMotorDocCollecting,'
      ' -- '#1087#1088#1077#1084#1080#1103' '#1087#1088#1086#1082#1072#1090
      ' :PremRiskMotorHire,'
      ' -- '#1087#1088#1077#1084#1080#1103' '#1087#1086#1084#1086#1097#1100' '#1085#1072' '#1076#1086#1088#1086#1075#1077
      ' :PREMRISKMOTORROADASS,'
      ' -- '#1087#1088#1077#1084#1080#1103' '#1076#1086#1087' '#1075#1072#1088#1072#1085#1090#1080#1080
      ' :PREMRISKMOTOREXTNDWARR,'
      ' -- Yankovsky/EPAM - '#1076#1077#1081#1089#1090#1074#1080#1103' '#1078#1080#1074#1086#1090#1085#1099#1093
      ' :RANIM,'
      ' -- Yunin V.A. 26/11/08 '#1054#1057#1040#1043#1054' 3 '#1087#1077#1088#1080#1086#1076#1072
      ' :DateBeg3,'
      ' :DateEnd3,'
      ' :PurposeVUseISN,'
      
        ' :RiskMotorSelfFire,'#9'-- 26.02.2010 '#1052#1077#1088#1079#1083#1103#1082#1086#1074' '#1052'. '#1052'. '#1079#1072#1076#1072#1095#1072' 136247' +
        '55303 '#1057#1072#1084#1086#1074#1086#1079#1075#1086#1088#1072#1085#1080#1077
      
        ' :RepairTermISN,'#9'-- 16.11.2010 '#1052#1077#1088#1079#1083#1103#1082#1086#1074' '#1052'. '#1052'. '#1079#1072#1076#1072#1095#1072' 1840974050' +
        '3 '#1059#1089#1083#1086#1074#1080#1103' '#1085#1072#1087#1088#1072#1074#1083#1077#1085#1080#1103' '#1085#1072' '#1088#1077#1084#1086#1085#1090
      ' :CBonusManual,'
      ' :DISTANCE,'
      ' :NOAMORT,'
      '  :LLIABREFUNDLIMISN,'
      '  :NoAmortLiab,'
      '  :RLifeInjuryNS,'
      '  :LifeRefundLimISN,'
      '  :EGap,'
      '  :RGap, '
      '  :RiskGap,'
      '  :INSUREDSUMGAP,'
      '  :GapCSum,'
      '  :GapCFranch,'
      '  :GapCurrIsn,'
      '  :RefundGapIsn,'
      '  :RefundGapCIsn,'
      '  :RefundFormIsnGAP,'
      '  :RefundLimGAPisn,'
      '  :RStealWithDocs,'
      '  :RAccMlt,'
      '  :RFall,'
      '  :RAccTechn,'
      '  :RAccNoMlt,'
      '  :RStealNoDocs,'
      '  :Total,'
      '  :RTaxi,'
      '  :TaxiLimitSum,'
      '  :PremTaxi,'
      '  :CClsCtgMLISN, -- 25.07.2013 Kuznetsov S.M. Task 45654479003'
      
        '  :RAccLowSum, --12.11.2013 '#1057#1086#1073#1086#1083#1077#1074' '#1040'.'#1042'. '#1047#1072#1076#1072#1095#1072' 55576659903 1.6 ' +
        #1056#1077#1072#1083#1080#1079#1086#1074#1072#1090#1100' '#1058#1047' '#1087#1086' "'#1055#1088#1072#1075#1084#1072#1090#1080#1082'+"'
      '  :INSUREDSUMPP'
      
        '  ,:RiskMotorExtndWarrUSEPURPISN  --04.02.2014 Golodnyuk task 59' +
        '141044903'
      
        '  ,:RiskMotorExtndWarrCLSCTGISN  --04.02.2014 Golodnyuk task 591' +
        '41044903'
      
        '  ,:RiskExtndWarrRefundSysISN  --26.02.2014 Golodnyuk task 58197' +
        '132303'
      
        '  ,:RiskExtndWarrRepairTermISN --26.02.2014 Golodnyuk task 58197' +
        '132303'
      
        '  ,:RiskExtndWarrVariantISN    --26.02.2014 Golodnyuk task 58197' +
        '132303'
      
        '  ,:RiskExtndWarrOsagoISN        --17.03.2014 Golodnyuk task 581' +
        '97132303'
      
        '  ,:RiskExtndWarrFranchSum  --02.06.2014 Golodnyuk task 65750483' +
        '703'
      '  ,:GapAmortRate  --04.06.2014 Golodnyuk task 65811425603'
      '  ,:PaymentsISN   --11.06.2014 Golodnyuk task 59996188303'
      '  ,:RNoAmort      --21.07.2014 Golodnyuk task 68458582603'
      '  ,:RAccInsured   --17/09/2014 Golodnyuk task 70713760503'
      '  ,:LimitSumAcc --17/09/2014 Golodnyuk task 70713760503'
      '  ,:UseWithTrailer -- '#1058#1057' '#1080#1089#1087#1086#1083#1100#1079#1091#1077#1090#1089#1103' '#1089' '#1087#1088#1080#1094#1077#1087#1086#1084
      '  ,:PlaceISN --02.10.2014 Golodnyuk task 70980259803'
      '  -- 16.04.2015 '#1052#1077#1088#1079#1083#1103#1082#1086#1074' '#1052'. '#1052'. '#1079#1072#1076#1072#1095#1072' 80740267703 '#1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1058#1044
      '  ,:MWCarPrice'
      '  ,:MWCarPriceISN'
      
        '  ,:Raccthirds --15.01.2016 Golodnyuk task 94194409803 '#1044#1058#1055' '#1087#1086' '#1074#1080 +
        #1085#1077' '#1090#1088#1077#1090#1100#1080#1093' '#1083#1080#1094
      '  ,:Limitsumthirds'
      '  ,:Servicing'
      '  -- 30.01.2017 Shikov Task 112901902103 '#1040#1074#1090#1086#1079#1072#1097#1080#1090#1072
      '  ,:EProtect'
      '  ,:RProtect'
      '  ,:RiskProtect'
      '  ,:INSUREDSUMProtect'
      '  ,:CtgISNProtect'
      '  ,:ProtectCurrIsn'
      '  ,:RefundFormIsnProtect'
      '  ,:RefundLimProtectIsn'
      '  ,:VUProtectFlags'
      
        '  ,:InsSumTypeISN /* 01.12.2017, Sevryugin, Task 177110003703, '#1052 +
        #1085#1086#1075#1086#1083#1077#1090#1085#1080#1081' GAP - '#1058#1080#1087' '#1089#1090#1088#1072#1093#1086#1074#1086#1081' '#1089#1091#1084#1084#1099'*/'
      ' );'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Left = 84
    Top = 134
  end
  object qrRiskCtg: TOracleDataSet
    SQL.Strings = (
      
        '/*SELECT ISN, SubStr(InitCapFirst(LocDictName(ISN, ShortName)),1' +
        ',20) AS Name'
      'FROM Dicti'
      'WHERE ParentISN=C.Get('#39'clsMotorRisk'#39') AND Active IS NOT NULL'
      'ORDER BY Code*/'
      ''
      '--08.08.2013 Kuznetsov S.M. Task 45654479003'
      '--'#1059' '#1082#1072#1090#1077#1075#1086#1088#1080#1081' '#1088#1080#1089#1082#1086#1074' (level = 1) '#1084#1086#1075#1091#1090' '#1073#1099#1090#1100' '#1091#1089#1083#1086#1074#1080#1103' (level = 2)'
      '      '
      
        'select level, isn, parentisn, SubStr(InitCapFirst(LocDictName(IS' +
        'N, ShortName)),1,40) AS Name, decode(level, 1, isn, 2, parentisn' +
        ') as CISN'
      'from dicti'
      
        'connect by prior isn = parentisn start with ParentISN=C.Get('#39'cls' +
        'MotorRisk'#39')'
      'order by level, code')
    Optimize = False
    OracleDictionary.RequiredFields = False
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 107
    Top = 45
  end
  object qrSubj: TOracleDataSet
    SQL.Strings = (
      'SELECT X.*, To_Number(NULL) AS AgrISN'
      '  FROM VX_SUBJ X'
      '   WHERE ISN=:pSubjISN  AND RowNum<=1')
    Optimize = False
    Variables.Data = {
      0300000001000000090000003A505355424A49534E0400000000000000000000
      00}
    OracleDictionary.RequiredFields = False
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 120
    Top = 91
  end
  object spSubj: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  MAGRSUBJ.UPDATESUBJ('
      ' :ISN, :ShortName, :FullName, '
      ' :Juridical, :Resident, :CountryISN, :CityISN, '
      ' :PostCode, :Address, :Birthday, :Sex, '
      ' :DocNo, :DocSer, :DocIssuedBy, :DocDate, '
      ' :FamilyStateISN, :N_Kids, :ProfessionISN, '
      ' :EducationISN, :OrgName, :PosName, '
      ' :DrivingDateBeg, :Remark, :INN, :OKPO, '
      ' :OKOHX, :ClassISN, :OrgFormISN, :NameLat, '
      ' :AgrISN, :AddrISN, :RoleClassISN, :CopyAddr, :ParentISN, '
      ' :DocDateEnd, :DocIssuedCode);'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000001000000090000003A434F5059414444520500000000000000000000
      00}
    Left = 175
    Top = 91
  end
  object qrPhone: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      '  :Result:=MAGRSUBJ.FCUR_PHONE(:pSubjISN);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000002000000070000003A524553554C5474000000000000000000000009
      0000003A505355424A49534E040000000000000000000000}
    OracleDictionary.RequiredFields = False
    OnApplyRecord = qrPhoneApplyRecord
    Session = OraSession
    AfterOpen = qrPhoneAfterOpen
    Left = 130
    Top = 135
  end
  object spPhone: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  MAGRSUBJ.UPDATEPHONE(:pEx,:ISN,:SubjISN,:ClassISN,'
      '  :Phone,:Contact);'
      '  COMMIT;  '
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {0300000001000000040000003A504558050000000000000000000000}
    Left = 223
    Top = 135
  end
  object qrCarDoc: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      
        '  :Result:=MAGRFC.FCUR_CARDOC(:pCarISN,:pAgrISN,:pAddISN, :pDate' +
        'Loss);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000005000000070000003A524553554C5474000000000000000000000008
      0000003A5043415249534E040000000000000000000000080000003A50414752
      49534E040000000000000000000000080000003A5041444449534E0400000000
      000000000000000A0000003A50444154454C4F53530C00000000000000000000
      00}
    OracleDictionary.RequiredFields = False
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 131
    Top = 180
  end
  object spCarDoc: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  MAGRFC.UPDATECARDOC('
      ' :pEx, :ISN, :ClassISN, '
      ' :ID, :DocDate, :DateEnd, :Remark, '
      ' :ObjISN, :SubjISN, :AgrISN, :AddISN, '
      ' :State, :RegionISN, :Ser, :CheckDoc, :Amount, :pMessagText,'
      ' :SubjCarBMISN,'
      ' :KBMOSAGOISN,'
      ' :RefreshBonusOSAGO,'
      ' :ChildrenCount, -- '#1082#1086#1083'-'#1074#1086' '#1076#1077#1090#1077#1081' '
      ' :FamState, -- '#1089#1086#1089#1090#1086#1080#1090' '#1074' '#1073#1088#1072#1082#1077' (0-'#1085#1077#1090', 1-'#1076#1072')'
      ' :FamStateISN, -- '#1089#1077#1084#1077#1081#1085#1086#1077' '#1087#1086#1083#1086#1078#1077#1085#1080#1077
      ' pChgFlg=>:ChgFlg, -- '#1080#1089#1090#1086#1095#1085#1080#1082' '#1050#1041#1052
      ' pRequestID=>:RequestID -- '#1048#1044' '#1079#1072#1087#1088#1086#1089#1072
      ' ,pBirthday=>:Birthday'
      ' ,pDrivingDateBeg=>:DrivingDateBeg'
      ' );'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000002000000040000003A5045580500000000000000000000000C000000
      3A504D455353414754455854050000000000000000000000}
    Left = 224
    Top = 180
  end
  object qrCarSurvey: TOracleDataSet
    SQL.Strings = (
      'begin'
      '  MAGRCAR.PCur_Survey(:pCarISN,:pObjISN,:pResult);'
      'end;')
    Optimize = False
    Variables.Data = {
      0300000003000000080000003A5043415249534E040000000000000000000000
      080000003A504F424A49534E040000000000000000000000080000003A505245
      53554C54740000000000000000000000}
    OracleDictionary.RequiredFields = False
    QBEDefinition.QBEFieldDefs = {
      04000000090000000300000049534E0100000000000600000043415249534E01
      0000000000070000004441544552454701000000000007000000454D504C4953
      4E0100000000000600000041475249534E0100000000000600000052454D4152
      4B01000000000008000000454D504C4E414D450100000000000700000043414C
      4349534E010000000000060000004F424A49534E010000000000}
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 127
    Top = 224
  end
  object spCarSurvey: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      ' if :pEx='#39'I'#39' then'
      
        '  INSERT INTO CarSurvey(ISN, CarISN, AgrISN, EmplISN, DateReg, R' +
        'emark, ObjISN, RefundISN)'
      
        '    VALUES(:ISN, :CarISN, :AgrISN, :EmplISN, :DateReg, :Remark, ' +
        ':ObjISN, :RefundISN);'
      ' elsif :pEx='#39'U'#39' then'
      '  UPDATE CarSurvey SET EmplISN=:EmplISN, DateReg=:DateReg, '
      '    Remark=:Remark, RefundISN=:RefundISN WHERE ISN=:ISN;'
      ' elsif :pEx='#39'D'#39' then'
      '  DELETE FROM CarSurvey WHERE ISN=:ISN;'
      ' end if;'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {0300000001000000040000003A504558050000000000000000000000}
    Left = 224
    Top = 224
  end
  object qrCarDamage: TOracleDataSet
    SQL.Strings = (
      'begin'
      '  MAGRCAR.PCur_CarDamage(:ISN, :pResult);'
      'end;'
      ' '
      '')
    Optimize = False
    Variables.Data = {
      0300000002000000040000003A49534E04000000000000000000000008000000
      3A50524553554C54740000000000000000000000}
    OracleDictionary.RequiredFields = False
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 128
    Top = 266
  end
  object spCarDamage: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      ' if :pEx='#39'I'#39' then'
      
        '  INSERT INTO CarDamage(ISN, SurveyISN, PartISN, DamageISN, Degr' +
        'ee, Remark)'
      
        '    VALUES(:ISN, :SurveyISN, :PartISN, :DamageISN, :Degree, :Rem' +
        'ark);'
      ' elsif :pEx='#39'U'#39' then'
      
        '  UPDATE CarDamage SET PartISN=:PartISN, DamageISN=:DamageISN, D' +
        'egree=:Degree, '
      '    Remark=:Remark  WHERE ISN=:ISN;'
      ' elsif :pEx='#39'D'#39' then'
      '  DELETE FROM CarDamage WHERE ISN=:ISN;'
      ' end if;'
      '  COMMIT;'
      'END;'
      '')
    Session = OraSession
    Optimize = False
    Variables.Data = {0300000001000000040000003A504558050000000000000000000000}
    Left = 224
    Top = 266
  end
  object qrCarEquip: TOracleDataSet
    SQL.Strings = (
      '-- UMAgrDM.qrCarEquip - AL - Feb 01'
      '-- ZK 02.02.2007 '#1044#1048#1058'-07-1-028189'
      'BEGIN'
      '  MAGRCAR.PCur_CarEquip(:ISN, :pResult, :pClassISN);'
      'end;'
      '/*'
      'SELECT --+USE_NL(C D1 D2)'
      ' C.ISN, SurveyISN, ClassISN, ManufactISN, Remark,'
      
        ' SubStr(InitCapFirst(LocDictName(C.ClassISN)),1,40) AS EquipName' +
        ','
      
        ' SubStr(InitCapFirst(LocDictName(C.ManufactISN)),1,40) AS Manufa' +
        'ctName'
      'FROM CarEquip C'
      'WHERE SurveyISN=:ISN'
      
        '  AND C.ClassISN IN (SELECT ISN FROM Dicti START WITH ISN=:pClas' +
        'sISN CONNECT BY PRIOR ISN=ParentISN)'
      'ORDER BY EquipName'
      '*/ -- ZK 02.02.2007 '#1044#1048#1058'-07-1-028189')
    Optimize = False
    Variables.Data = {
      0300000003000000040000003A49534E0400000000000000000000000A000000
      3A50434C41535349534E040000000000000000000000080000003A5052455355
      4C54740000000000000000000000}
    OracleDictionary.RequiredFields = False
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 128
    Top = 310
  end
  object spCarEquip: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      ' if :pEx='#39'I'#39' then'
      
        '  INSERT INTO CarEquip(ISN, SurveyISN, ClassISN, ManufactISN, Re' +
        'mark)'
      '    VALUES(:ISN, :SurveyISN, :ClassISN, :ManufactISN, :Remark);'
      ' elsif :pEx='#39'U'#39' then'
      
        '  UPDATE CarEquip SET ClassISN=:ClassISN, ManufactISN=:ManufactI' +
        'SN, '
      '    Remark=:Remark WHERE ISN=:ISN;'
      ' elsif :pEx='#39'D'#39' then'
      '  DELETE FROM CarEquip WHERE ISN=:ISN;'
      ' end if;'
      '  COMMIT;'
      'END;'
      ''
      '')
    Session = OraSession
    Optimize = False
    Variables.Data = {0300000001000000040000003A504558050000000000000000000000}
    Left = 224
    Top = 310
  end
  object spMoveModif: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  MAGRCAR.MOVEMODIF(:pModifISN, :pModelISN);'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      03000000020000000A0000003A504D4F44494649534E04000000000000000000
      00000A0000003A504D4F44454C49534E040000000000000000000000}
    Left = 740
    Top = 64
  end
  object spModifMerge: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  MAGRCAR.MERGEMODIF(:pSrcModifISN, :pDstModifISN, :pDelSrc);'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      03000000030000000D0000003A505352434D4F44494649534E04000000000000
      00000000000D0000003A504453544D4F44494649534E04000000000000000000
      0000080000003A5044454C535243040000000000000000000000}
    Left = 700
    Top = 88
  end
  object qrProlongHist: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      ' :Result:=MAgrF.FCur_ProlongHist(:pAgrISN);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000002000000070000003A524553554C5474000000000000000000000008
      0000003A5041475249534E040000000000000000000000}
    OracleDictionary.RequiredFields = False
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 620
    Top = 177
  end
  object spGetPrice: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      
        '  MAGRCAR.GetPriceCurrC(:pCarISN,:pDateCalc,:pPrice,:pCurrISN,:p' +
        'CurrCode);'
      'END;'
      ' ')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000005000000080000003A5043415249534E040000000000000000000000
      0A0000003A504441544543414C430C0000000000000000000000070000003A50
      5052494345040000000000000000000000090000003A504355525249534E0400
      000000000000000000000A0000003A5043555252434F44450500000000000000
      00000000}
    Left = 312
    Top = 92
  end
  object spSetSums: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  AGRN.SETSUMS(:pAgrISN);'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000001000000080000003A5041475249534E040000000000000000000000}
    Left = 340
    Top = 92
  end
  object spCheckAgent: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  :Result:=MAGRF.CHECKAGENT(:pAgrISN);'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000002000000070000003A524553554C5404000000000000000000000008
      0000003A5041475249534E040000000000000000000000}
    Left = 524
    Top = 86
  end
  object qrTFranch: TOracleDataSet
    SQL.Strings = (
      'begin'
      ' :Result := magrfc.ffranch_sum_for_curr(:p_curr_isn, :pAgrIsn);'
      'end;'
      '')
    Optimize = False
    Variables.Data = {
      03000000030000000B0000003A505F435552525F49534E040000000000000000
      000000070000003A524553554C54740000000000000000000000080000003A50
      41475249534E040000000000000000000000}
    OracleDictionary.RequiredFields = False
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 184
  end
  object qrTLim: TOracleDataSet
    SQL.Strings = (
      ' -- UMAgrDM.qrTLim - AL - Jan 01'
      'SELECT /*+INDEX(T X_RULTARIFF_CLASS)*/'
      
        ' DISTINCT X1, Decode(TariffISN, C.Get('#39'TRF_PerehodXCL_RUR'#39'), '#39'RU' +
        'R'#39', '#39'USD'#39') AS CurrCode'
      'FROM RulTariff T'
      
        'WHERE TariffISN IN (C.Get('#39'TRF_Perehod'#39'), C.Get('#39'TRF_PerehodXCL'#39 +
        '), C.Get('#39'TRF_PerehodXCL_RUR'#39'))'
      'ORDER BY X1'
      ' ')
    Optimize = False
    OracleDictionary.RequiredFields = False
    Session = OraSession
    Left = 224
  end
  object qrTStatus: TOracleDataSet
    SQL.Strings = (
      '-- UMAgrDM.qrTStatus - AL - Feb 01'
      'SELECT'
      ' Code,'
      ' SubStr(InitCapFirst(LocDictName(ISN, ShortName)),1,40) AS Name,'
      ' Isn,'
      ' FullName'
      'FROM Dicti'
      'WHERE ParentISN=:pParentISN AND Active IS NOT NULL ')
    Optimize = False
    Variables.Data = {
      03000000010000000B0000003A50504152454E5449534E040000000000000000
      000000}
    OracleDictionary.RequiredFields = False
    Session = OraSession
    Left = 306
    Top = 44
  end
  object spCalcPrem: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  -- '#1072#1074#1090#1086
      '  MagrScoring.GetStraxSkoring(:pAgrISN);'
      '  COMMIT;  '
      '  MAGRT.CALCPREMIUM( :pAgrISN, :pAddISN, :pObjISN,  :pXMode);'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000004000000080000003A5041475249534E040000000000000000000000
      080000003A5041444449534E040000000000000000000000080000003A504F42
      4A49534E040000000000000000000000070000003A50584D4F44450400000000
      00000000000000}
    Left = 788
    Top = 174
  end
  object qrWarn: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      '  :Result:=AGRC.FCUR_WARNN(:pSubjISN,:pAgrISN,:pObjISN);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000004000000070000003A524553554C5474000000000000000000000009
      0000003A505355424A49534E040000000000000000000000080000003A504147
      5249534E040000000000000000000000080000003A504F424A49534E04000000
      0000000000000000}
    OracleDictionary.RequiredFields = False
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 349
    Top = 44
  end
  object spWarn: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  AGRC.UPDATEWARN( :pEx, :ISN, :ObjISN,'
      ' :Message, :Request, :ObjISN2, :FormISN);'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {0300000001000000040000003A504558050000000000000000000000}
    Left = 431
    Top = 44
  end
  object spCreateAgr: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      
        '  AGRN.CREATEWITHTEMPLATE(:pTemplISN, :pAgrISN, :pFormISN, :pID,' +
        ' :pSaveParam,'
      '  :pAddrISN, :pStatus, :pParentISN);'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      03000000080000000A0000003A5054454D504C49534E04000000000000000000
      0000080000003A5041475249534E040000000000000000000000090000003A50
      464F524D49534E040000000000000000000000040000003A5049440500000000
      000000000000000B0000003A5053415645504152414D05000000000000000000
      0000090000003A504144445249534E0400000000000000000000000B0000003A
      50504152454E5449534E040000000000000000000000080000003A5053544154
      5553610000000000000000000000}
    Left = 284
  end
  object spAgrSubj: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  MAGRF.UPDATEAGRSUBJ(:pAgrISN, :pSubjISN, :pChangeOwner);'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000003000000080000003A5041475249534E040000000000000000000000
      090000003A505355424A49534E0400000000000000000000000D0000003A5043
      48414E47454F574E4552040000000000000000000000}
    Left = 340
  end
  object spAgrObj: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  MAGRF.UPDATEAGROBJ(:pAgrISN,:pCarISN, '
      '  :vObjISN, :vPerISN'
      
        '  ,pEx => :pEx /*21.11.2017, Sevryugin, Task 175946560603, '#1074#1089#1090#1072#1074 +
        #1082#1072' '#1058#1057' '#1074' '#1087#1072#1088#1082#1086#1074#1099#1081' '#1076#1086#1075#1086#1074#1086#1088'*/'
      
        '  ,pUpdCategory=>1); /*07.11.2017, Sevryugin, 173506900103/16200' +
        '0501903*/'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000005000000080000003A5041475249534E040000000000000000000000
      080000003A5043415249534E040000000000000000000000080000003A564F42
      4A49534E040000000000000000000000080000003A5650455249534E04000000
      0000000000000000040000003A504558050000000000000000000000}
    Left = 388
  end
  object spCalcAmort: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      
        '  :Result:=MAGRT_CALCAMORT.CALCAMORT(:pS1, :pD0, :pD1, :pD2, :pS' +
        'cheme, :pDateExt);'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000007000000070000003A524553554C5404000000000000000000000004
      0000003A505331040000000000000000000000040000003A5044300C00000000
      00000000000000080000003A50534348454D4504000000000000000000000004
      0000003A5044310C0000000000000000000000040000003A5044320C00000000
      00000000000000090000003A50444154454558540C0000000000000000000000}
    Left = 492
    Top = 44
  end
  object qrAgrTmpl: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      '  :Result:=AGRN.AGRTMPLLIST(:pDeptISN,:pUserISN,:pFormISN);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000004000000070000003A524553554C5474000000000000000000000009
      0000003A504445505449534E040000000000000000000000090000003A505553
      455249534E040000000000000000000000090000003A50464F524D49534E0400
      00000000000000000000}
    OracleDictionary.RequiredFields = False
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 272
    Top = 180
  end
  object qrNewAgrRule: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      '  :Result:=MAGRF.FCUR_NEWAGRRULE(:pAgrISN);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000002000000070000003A524553554C5474000000000000000000000008
      0000003A5041475249534E040000000000000000000000}
    OracleDictionary.RequiredFields = False
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 400
    Top = 132
  end
  object spAmortScheme: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      
        '  :Result:=MAGRT_CALCAMORT.GETAMORTSCHEME(:pAgrRuleISN, :pObjPar' +
        'entISN, :pDate);'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000004000000070000003A524553554C540300000000000000000000000C
      0000003A5041475252554C4549534E0400000000000000000000000E0000003A
      504F424A504152454E5449534E040000000000000000000000060000003A5044
      4154450C0000000000000000000000}
    Left = 449
    Top = 88
  end
  object spDecodeVIN: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  MAGRCAR.DECODEVIN(:pVIN, :pCtgISN, :pMakeISN,'
      ' :pModelISN, :pModifISN, :pConstructed);'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000006000000050000003A5056494E050000000000000000000000080000
      003A5043544749534E040000000000000000000000090000003A504D414B4549
      534E0400000000000000000000000A0000003A504D4F44454C49534E04000000
      00000000000000000A0000003A504D4F44494649534E04000000000000000000
      00000D0000003A50434F4E53545255435445440C0000000000000000000000}
    Left = 645
    Top = 44
  end
  object spProlongAgr: TOracleQuery
    SQL.Strings = (
      
        '-- Yunin V.A. 05/03/07 '#1076#1086#1073#1072#1074#1080#1083#1080#1089#1100' '#1087#1088#1086#1076#1091#1082#1090#1099' '#1087#1086' '#1080#1084#1091#1097#1077#1089#1090#1074#1091', '#1076#1088#1091#1075#1072#1103' ' +
        #1074#1077#1090#1082#1072
      '/*'
      'BEGIN'
      ':Result:=MAGRF.PROLONGAGR(:pSrcAgrISN, :pNewAgrISN,'
      
        ':pID, :pObjISN, :pNewAgrRuleISN, :pAddrISN, :pDeleteAgent, pClie' +
        'ntUseBanRule=>:pClientUseBanRule);'
      'COMMIT;'
      'END;'
      '*/'
      'DECLARE'
      'vC number;'
      'BEGIN'
      '-- AL 17/04/03'
      
        '-- '#1054#1087#1088#1077#1076#1077#1083#1103#1077#1084', '#1095#1090#1086' '#1076#1086#1075#1086#1074#1086#1088' '#1103#1074#1083#1103#1077#1090#1089#1103' '#1076#1086#1075#1086#1074#1086#1088#1086#1084' '#1089#1090#1088#1072#1093#1086#1074#1072#1085#1080#1103' '#1072#1074#1090#1086#1090#1088 +
        #1072#1085#1089#1087#1086#1088#1090#1072
      'SELECT COUNT(*) INTO vC FROM Dicti WHERE ISN=C.Get('#39'AgrMotor'#39')'
      
        'START WITH ISN=(SELECT RuleISN FROM Agreement WHERE ISN=:pSrcAgr' +
        'ISN)'
      'CONNECT BY PRIOR ParentISN=ISN;'
      '--'
      'if vC>0 then'
      ':Result:=MAgrF.ProlongAgr(:pSrcAgrISN, :pNewAgrISN,'
      
        ':pID, :pObjISN, :pNewAgrRuleISN, :pAddrISN, :pDeleteAgent, pClie' +
        'ntUseBanRule=>:pClientUseBanRule, pCopyEmittent => :pCopyEmitten' +
        't);'
      'else'
      
        'FIREAGR.PROLONGAGR(:pSrcAgrISN, :pNewAgrISN, :pID, :pObjISN, :pA' +
        'ddrISN, :pMsg, :pDeleteAgent,'
      
        #9#9'     pClientUseBanRule=>:pClientUseBanRule, pCopyEmittent => :' +
        'pCopyEmittent'
      
        '                  ,pNewAgrRuleISN => :pNewAgrRuleISN /*02.06.201' +
        '4 '#1057#1091#1088#1072#1077#1074' 61164504203*/'
      '                     );'
      'end if;'
      '--'
      'COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      030000000B000000070000003A524553554C540400000000000000000000000B
      0000003A5053524341475249534E0400000000000000000000000B0000003A50
      4E455741475249534E040000000000000000000000040000003A504944050000
      000000000000000000080000003A504F424A49534E0400000000000000000000
      000F0000003A504E455741475252554C4549534E040000000000000000000000
      090000003A504144445249534E0400000000000000000000000D0000003A5044
      454C4554454147454E54050000000000000000000000050000003A504D534705
      0000000000000000000000120000003A50434C49454E5455534542414E52554C
      4505000000020000005800000000000E0000003A50434F5059454D495454454E
      54050000000000000000000000}
    Left = 447
  end
  object spSetPrem: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  vRuleISN number;'
      'BEGIN'
      
        '  select ruleisn into vRuleISN from agreement where isn = :pAgrI' +
        'SN;'
      
        '  if vRULEISN in (4470148003, 4442388103) then -- 09.04.2014 Kuz' +
        'netsov S.M. Task 62235852103'
      '    FIREAGR.SETPREM(:pAgrISN, :pAddISN, :pCascoPrem);'
      
        '  elsif vRULEISN in (4156748803,4156694903,4810640203,5173744303' +
        ') then -- 28.02.2017 '#1058#1072#1083#1072#1083#1072#1077#1074' '#1070'.'#1040'. 132845641703'
      '    FIREAGR.SETPREM(:pAgrISN, :pAddISN, :pCascoPrem);'
      '  else'
      '    MAGRT.SETPREM(:pAgrISN, :pCascoPrem, :pEquipPrem,'
      
        '    :pLiabPrem, :pLifePrem, :pAddISN, :pDiscountReason, pTimeSca' +
        'le =>:pTimeScale, pDiscountBase =>:pDiscountBase,'
      
        '    pGapPrem =>:pGapPrem, pMotorBreakagePrem =>:pMotorBreakagePr' +
        'em);'
      '  end if;'
      '  COMMIT;'
      'END;'
      ''
      '/*BEGIN'
      '  MAGRT.SETPREM(:pAgrISN, :pCascoPrem, :pEquipPrem,'
      
        '  :pLiabPrem, :pLifePrem, :pAddISN, :pDiscountReason, pTimeScale' +
        ' =>:pTimeScale, pDiscountBase =>:pDiscountBase,'
      '  pGapPrem =>:pGapPrem);'
      '  COMMIT;'
      'END;*/')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      030000000B000000080000003A5041475249534E040000000000000000000000
      0B0000003A50434153434F5052454D0400000000000000000000000B0000003A
      5045515549505052454D0400000000000000000000000A0000003A504C494142
      5052454D0400000000000000000000000A0000003A504C4946455052454D0400
      00000000000000000000080000003A5041444449534E04000000000000000000
      0000100000003A50444953434F554E54524541534F4E04000000000000000000
      00000B0000003A5054494D455343414C450400000000000000000000000E0000
      003A50444953434F554E5442415345040000000000000000000000090000003A
      504741505052454D040000000000000000000000130000003A504D4F544F5242
      5245414B4147455052454D040000000000000000000000}
    Left = 572
  end
  object spCancelAgr: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  AGRN.CANCELAGR2(:pAgrISN, :pDate, :pStatus, '
      '  :pMode, :pDocType, :pDocISN, :pLoad, :pObjIsn, :pDateBeg,'
      
        '  :pRiskSums, :pUserCalcPrevSum, :pUserCalcCurSum, :pNewRule, pP' +
        'arseCond=>:pParseCond);'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      030000000E000000080000003A5041475249534E040000000000000000000000
      060000003A50444154450C0000000000000000000000080000003A5053544154
      5553050000000000000000000000060000003A504D4F44450400000000000000
      00000000090000003A50444F4354595045040000000000000000000000080000
      003A50444F4349534E040000000000000000000000060000003A504C4F414404
      0000000000000000000000090000003A50444154454245470500000000000000
      00000000080000003A504F424A49534E0400000000000000000000000A000000
      3A505249534B53554D53050000000000000000000000110000003A5055534552
      43414C435052455653554D040000000000000000000000100000003A50555345
      5243414C4343555253554D040000000000000000000000090000003A504E4557
      52554C450300000000000000000000000B0000003A505041525345434F4E4403
      0000000000000000000000}
    Left = 512
  end
  object spCancelModes: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  AGRN.GETCANCELMODES(:pAgrISN, :pDate, :pDateBeg, '
      '  :pDateEnd, :pAgrDept0ISN, :pModes);'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000006000000080000003A5041475249534E040000000000000000000000
      060000003A50444154450C0000000000000000000000090000003A5044415445
      4245470C0000000000000000000000090000003A5044415445454E440C000000
      00000000000000000D0000003A50414752444550543049534E04000000000000
      0000000000070000003A504D4F444553050000000000000000000000}
    Left = 627
  end
  object qrPAdd: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      '  :Result:=AGRC.FCUR_ADD(:pAgrISN, 0);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000002000000070000003A524553554C5474000000000000000000000008
      0000003A5041475249534E040000000000000000000000}
    OracleDictionary.RequiredFields = False
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 4
    Top = 448
  end
  object dspPAdd: TDataSetProvider
    DataSet = qrPAdd
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = DSPSetParams
    BeforeGetRecords = DSPSetParams
    Left = 48
    Top = 448
  end
  object spPAdd: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  if :pEx='#39'U'#39' then'
      '   UPDATE Agreement'
      '   SET DateIssue=:DateIssue, STATUS=:Status'
      '   WHERE ISN=:ISN;'
      '  end if;'
      '  COMMIT;'
      'END;'
      ' ')
    Session = OraSession
    Optimize = False
    Variables.Data = {0300000001000000040000003A504558050000000000000000000000}
    Left = 88
    Top = 448
  end
  object qrAgrID: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      
        '  :Result:=MAGRFC.FCUR_AgrID(:pClassISN, :pAgrISN, :pObjISN, :pV' +
        'Mode);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000005000000070000003A524553554C547400000000000000000000000A
      0000003A50434C41535349534E040000000000000000000000080000003A5041
      475249534E040000000000000000000000080000003A504F424A49534E040000
      000000000000000000070000003A50564D4F4445040000000000000000000000}
    OracleDictionary.RequiredFields = False
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 235
    Top = 448
  end
  object dspAgrID: TDataSetProvider
    DataSet = qrAgrID
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = DSPSetParams
    BeforeGetRecords = DSPSetParams
    Left = 268
    Top = 448
  end
  object spAgrID: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      
        '  MAGRFC.UpdateAgrID(:ISN, :ClassISN, :AgrISN, :ObjISN, :DocSer,' +
        ' :DocNo, :Oper, :DateSign);'
      '  COMMIT;'
      'END;'
      ' ')
    Session = OraSession
    Optimize = False
    Left = 300
    Top = 448
  end
  object spCheckName: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  :Result:=MAgrSubj.CheckName2(:pName, :pOrd);'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000003000000070000003A524553554C5405000000000000000000000006
      0000003A504E414D45050000000000000000000000050000003A504F52440400
      00000000000000000000}
    Left = 568
    Top = 44
  end
  object qrCLAgr: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      ' :Result:=MAGRFC.FCUR_AGR(:pISN);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000002000000070000003A524553554C5474000000000000000000000005
      0000003A5049534E040000000000000000000000}
    OracleDictionary.RequiredFields = False
    QBEDefinition.QBEFieldDefs = {
      040000001E0000000300000049534E0100000000000200000049440100000000
      0007000000444154454245470100000000000700000052554C4549534E010000
      0000000700000044415445454E440100000000000A0000005052454D49554D53
      554D010000000000090000004A555249444943414C0100000000000800000046
      554C4C4E414D4501000000000008000000504F5354434F444501000000000007
      000000414444524553530100000000000600000043544749534E010000000000
      070000004D414B4549534E010000000000080000004D4F44454C49534E010000
      000000070000004354474E414D45010000000000090000004D4F44454C4E414D
      450100000000000C0000004D4F44494649434154494F4E010000000000050000
      005245474E4F0100000000000300000056494E0100000000000D000000454E47
      494E45504F57455248500100000000000C000000454E47494E45564F4C554D45
      010000000000070000004D41584C4F41440100000000000D000000454E47494E
      45504F5745524B5701000000000005000000444F4F5253010000000000050000
      005345415453010000000000080000004D4F44494649534E0100000000000600
      0000504552494F4401000000000008000000504F4C4943594944010000000000
      060000005349474E4944010000000000060000004F424A49534E010000000000
      0B000000434F4E5354525543544544010000000000}
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 5
    Top = 402
  end
  object dspCLAgr: TDataSetProvider
    DataSet = qrCLAgr
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = DSPSetParams
    BeforeGetRecords = DSPSetParams
    Left = 48
    Top = 402
  end
  object spCLAgr: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  MAGRFC.UpdateAgr(:pEx, :ISN, :DATEBEG, :DATEEND,'
      
        '   :FullName, :Juridical, :PostCode, :Address, :ModifISN, :RegNo' +
        ','
      '   :VIN, :EnginePowerKW, :EnginePowerHP, :EngineVolume, :Seats,'
      '   :MaxLoad, :Modification, :Constructed);'
      '  COMMIT;'
      'END;'
      ' ')
    Session = OraSession
    Optimize = False
    Variables.Data = {0300000001000000040000003A504558050000000000000000000000}
    Left = 88
    Top = 402
  end
  object spChP6to12: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  MAgrCL.ChangePeriod6to12(:pAgrISN);'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000001000000080000003A5041475249534E040000000000000000000000}
    Left = 740
    Top = 31
  end
  object qrTariffParam: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      '  :Result:=MAGRCAR.FCUR_TARIFFPARAM;'
      'END;')
    Optimize = False
    Variables.Data = {0300000001000000070000003A524553554C54740000000000000000000000}
    OracleDictionary.RequiredFields = False
    QBEDefinition.QBEFieldDefs = {
      0400000004000000020000004C560100000000000300000049534E0100000000
      000900000053484F52544E414D450100000000000A00000053484F52544E414D
      454D010000000000}
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 381
    Top = 310
    object qrTariffParamLV: TFloatField
      FieldName = 'LV'
    end
    object qrTariffParamISN: TFloatField
      FieldName = 'ISN'
    end
    object qrTariffParamSHORTNAME: TStringField
      FieldName = 'SHORTNAME'
      Size = 40
    end
    object qrTariffParamSHORTNAMEM: TStringField
      FieldName = 'SHORTNAMEM'
      Size = 40
    end
  end
  object dspTariffParam: TDataSetProvider
    DataSet = qrTariffParam
    UpdateMode = upWhereKeyOnly
    Left = 420
    Top = 310
  end
  object qrTariff: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      '  :Result:=MAGRCAR.FCUR_TARIFF(:pCarISN, :pTariffISN);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000003000000070000003A524553554C5474000000000000000000000008
      0000003A5043415249534E0400000000000000000000000B0000003A50544152
      49464649534E040000000000000000000000}
    OracleDictionary.RequiredFields = False
    QBEDefinition.QBEFieldDefs = {
      04000000120000000300000049534E0100000000000900000054415249464649
      534E010000000000020000005831010000000000020000005832010000000000
      0200000058330100000000000200000058340100000000000200000058350100
      0000000006000000544152494646010000000000070000004441544542454701
      00000000000700000044415445454E4401000000000007000000555044415445
      44010000000000090000005550444154454442590100000000000D0000005550
      444154454442594E414D450100000000000600000058314E414D450100000000
      000600000058324E414D450100000000000600000058334E414D450100000000
      000600000058344E414D450100000000000600000058354E414D450100000000
      00}
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 141
    Top = 356
    object qrTariffISN: TFloatField
      FieldName = 'ISN'
    end
    object qrTariffTARIFFISN: TFloatField
      FieldName = 'TARIFFISN'
    end
    object qrTariffTARIFF: TFloatField
      FieldName = 'TARIFF'
    end
    object qrTariffX1: TFloatField
      FieldName = 'X1'
    end
    object qrTariffX2: TFloatField
      FieldName = 'X2'
    end
    object qrTariffX3: TFloatField
      FieldName = 'X3'
    end
    object qrTariffX4: TFloatField
      FieldName = 'X4'
    end
    object qrTariffX5: TFloatField
      FieldName = 'X5'
    end
    object qrTariffDATEBEG: TDateTimeField
      FieldName = 'DATEBEG'
    end
    object qrTariffDATEEND: TDateTimeField
      FieldName = 'DATEEND'
    end
    object qrTariffUPDATED: TDateTimeField
      FieldName = 'UPDATED'
    end
    object qrTariffUPDATEDBY: TFloatField
      FieldName = 'UPDATEDBY'
    end
    object qrTariffUPDATEDBYNAME: TStringField
      FieldName = 'UPDATEDBYNAME'
      Size = 40
    end
    object qrTariffX1NAME: TStringField
      FieldName = 'X1NAME'
      Size = 40
    end
    object qrTariffX2NAME: TStringField
      FieldName = 'X2NAME'
      Size = 40
    end
    object qrTariffX3NAME: TStringField
      FieldName = 'X3NAME'
      Size = 40
    end
    object qrTariffX4NAME: TStringField
      FieldName = 'X4NAME'
      Size = 40
    end
    object qrTariffX5NAME: TStringField
      FieldName = 'X5NAME'
      Size = 40
    end
  end
  object qrRealCaptTariff: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      '  :Result:=MAGRCAR.FCUR_REALCaptTARIFF(:pTariffISN);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000002000000070000003A524553554C547400000000000000000000000B
      0000003A5054415249464649534E040000000000000000000000}
    OracleDictionary.RequiredFields = False
    QBEDefinition.QBEFieldDefs = {
      040000000A0000000300000049534E0100000000000900000054415249464649
      534E01000000000008000000434C41535349534E010000000000070000004655
      4E54595045010000000000020000004E4F0100000000000900000053484F5254
      4E414D4501000000000007000000555044415445440100000000000900000055
      5044415445444259010000000000030000004E4F580100000000000A00000053
      484F52544E414D4543010000000000}
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 485
    Top = 398
    object qrRealCaptTariffISN: TFloatField
      FieldName = 'ISN'
    end
    object qrRealCaptTariffTARIFFISN: TFloatField
      FieldName = 'TARIFFISN'
    end
    object qrRealCaptTariffCLASSISN: TFloatField
      FieldName = 'CLASSISN'
    end
    object qrRealCaptTariffFUNTYPE: TStringField
      FieldName = 'FUNTYPE'
      Size = 1
    end
    object qrRealCaptTariffNO: TFloatField
      FieldName = 'NO'
    end
    object qrRealCaptTariffSHORTNAME: TStringField
      FieldName = 'SHORTNAME'
      Size = 40
    end
    object qrRealCaptTariffUPDATED: TDateTimeField
      FieldName = 'UPDATED'
    end
    object qrRealCaptTariffUPDATEDBY: TFloatField
      FieldName = 'UPDATEDBY'
    end
    object qrRealCaptTariffNOX: TStringField
      FieldName = 'NOX'
      Size = 41
    end
    object qrRealCaptTariffSHORTNAMEC: TStringField
      FieldName = 'SHORTNAMEC'
      Size = 100
    end
  end
  object dspTariff: TDataSetProvider
    DataSet = qrTariff
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = DSPSetParams
    BeforeGetRecords = DSPSetParams
    Left = 180
    Top = 356
  end
  object dspRealCaptTariff: TDataSetProvider
    DataSet = qrRealCaptTariff
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = DSPSetParams
    BeforeGetRecords = DSPSetParams
    Left = 516
    Top = 398
  end
  object spTariff: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  MAGRCAR.UPDATETARIFF'
      ' (                     :pEx,'
      '                       :ISN,'
      '                       :TariffISN,'
      '                       :Tariff,'
      '                       :X1,'
      '                       :X2,'
      '                       :X3,'
      '                       :X4,'
      '                       :X5,'
      '                       :DateBeg,'
      '                       :DateEnd'
      ' );'
      'COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      030000000B000000040000003A50455805000000000000000000000004000000
      3A49534E0500000000000000000000000A0000003A54415249464649534E0500
      00000000000000000000070000003A5441524946460500000000000000000000
      00030000003A5831050000000000000000000000030000003A58320500000000
      00000000000000030000003A5833050000000000000000000000030000003A58
      34050000000000000000000000030000003A5835050000000000000000000000
      080000003A44415445424547050000000000000000000000080000003A444154
      45454E44050000000000000000000000}
    Left = 224
    Top = 356
  end
  object qrProdExt: TOracleQuery
    SQL.Strings = (
      'begin'
      ' if :isn is not null then'
      '   agrc.qprodext(:agrisn,:isn,:isnlist);'
      ' else'
      '   agrc.updprodext(:agrisn,:isnlist);'
      '   commit;'
      ' end if;'
      'end;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000003000000080000003A49534E4C495354050000000000000000000000
      070000003A41475249534E040000000000000000000000040000003A49534E04
      0000000000000000000000}
    Left = 216
    Top = 44
  end
  object qrCalcPreview: TOracleDataSet
    SQL.Strings = (
      ''
      'BEGIN'
      '  :Result:=MAGRT.FCur_CalcPremPreview'
      '                                                    ('
      '                                                      :pAgrISN'
      '                                                 );'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000002000000070000003A524553554C5474000000000000000000000008
      0000003A5041475249534E040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      04000000030000000800000052554C454E414D450100000000000D0000005249
      534B434C4153534E414D45010000000000020000005831010000000000}
    Session = OraSession
    Left = 620
    Top = 222
  end
  object dspCalcPreview: TDataSetProvider
    DataSet = qrCalcPreview
    BeforeGetRecords = dspCalcPreviewBeforeGetRecords
    Left = 652
    Top = 222
  end
  object qrProdExtClass: TOracleQuery
    SQL.Strings = (
      'begin'
      '   agrc.updprodext(:agrisn,:isnlist,:classisn);'
      '   commit;'
      'end;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000003000000080000003A49534E4C495354040000000000000000000000
      070000003A41475249534E040000000000000000000000090000003A434C4153
      5349534E050000000000000000000000}
    Left = 256
    Top = 45
  end
  object qrAgrCondProp: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      ' :Result:=MAgrFC.FCur_AgrCondProp(:pAgrISN, :pAddISN);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000003000000070000003A524553554C5474000000000000000000000008
      0000003A5041475249534E040000000000000000000000080000003A50414444
      49534E040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000A0000000700000052554C4549534E0100000000000800000052554C
      454E414D450000000000000B00000050524F504552545949534E010000000000
      0C00000050524F50455254594E414D450000000000000E000000544152494646
      434C41535349534E0100000000000F000000544152494646434C4153534E414D
      450000000000000900000054415249464649534E010000000000060000005441
      52494646010000000000070000004449435849534E0100000000000D00000052
      554C4554415249464649534E010000000000}
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 600
    Top = 90
  end
  object spAgrCondProp: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  MAGRFC.UpdAgrCondProp'
      '('
      '     :pExe,'
      '     :pAgrISN, '
      '     :pAddISN, '
      '     :pObjISN,'
      '     :pTariffClassISN,'
      '     :pPropertyISN,'
      '     :pPropertyOldISN,'
      '     :pDateCalc,'
      '     :pRemark'
      ' );'
      '  COMMIT;'
      'END;'
      ' ')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000009000000050000003A50455845050000000000000000000000080000
      003A5041475249534E040000000000000000000000080000003A504144444953
      4E040000000000000000000000080000003A504F424A49534E04000000000000
      0000000000100000003A50544152494646434C41535349534E04000000000000
      00000000000D0000003A5050524F504552545949534E04000000000000000000
      0000100000003A5050524F50455254594F4C4449534E04000000000000000000
      00000A0000003A504441544543414C430C000000000000000000000008000000
      3A5052454D41524B050000000000000000000000}
    Left = 656
    Top = 90
  end
  object dspAgrCondProp: TDataSetProvider
    DataSet = qrAgrCondProp
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = dspAgrCondPropBeforeApplyUpdates
    BeforeGetRecords = DSPSetParams
    Left = 628
    Top = 90
  end
  object qrAddr: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      '  :Result:=MAGRSUBJ.FCUR_ADDR(:pSubjISN);'
      'END;'
      '')
    Optimize = False
    Variables.Data = {
      0300000002000000070000003A524553554C5474000000000000000000000009
      0000003A505355424A49534E040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      04000000160000000300000049534E01000000000008000000434C4153534953
      4E010000000000070000005355424A49534E0100000000000A000000434F554E
      54525949534E010000000000070000004349545949534E010000000000090000
      0053545245455449534E01000000000008000000444953545249435401000000
      000004000000434F4E4601000000000008000000504F5354434F444501000000
      000007000000414444524553530100000000000A000000414444524553534C41
      5401000000000005000000484F555345010000000000080000004255494C4449
      4E4701000000000004000000464C415401000000000008000000434954594E41
      4D450100000000000B000000434F554E5452594E414D45010000000000060000
      0053545245455401000000000009000000434C4153534E414D45010000000000
      090000005550444154454442590100000000000B000000555044415445445449
      4D450100000000000D0000005550444154454442594E414D4501000000000006
      000000414354495645010000000000}
    OnApplyRecord = qrAddrApplyRecord
    Session = OraSession
    AfterOpen = qrAddrAfterOpen
    Left = 264
    Top = 136
  end
  object dsp_Addr: TDataSetProvider
    DataSet = qrAddr
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = DSPSetParams
    BeforeGetRecords = DSPSetParams
    Left = 308
    Top = 136
  end
  object spAddr: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  MAGRSUBJ.UpdateAddress(:pEx,  :ISN,'
      
        '                                                :Classisn,   :Su' +
        'bjisn,'
      
        '                                                :COUNTRYISN,   :' +
        'CityIsn,'
      
        '                                                :STREETISN,   :P' +
        'OSTCODE,'
      
        '                                                :ADDRESS, :ADDRE' +
        'SSLAT,'
      
        '                                                :HOUSE, :BUILDIN' +
        'G,'
      '                                                :FLAT, :STREET,'
      
        '                                                :UPDATEDBY,   :A' +
        'CTIVE, :BLOCK '
      ');'
      '  COMMIT;  '
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {0300000001000000040000003A504558050000000000000000000000}
    Left = 348
    Top = 136
  end
  object qrObjGrP: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      
        ' :Result:=FireAgr.FCur_FireAgrObjI(:pAgrISN, :pAddISN, :pParentI' +
        'SN);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000004000000070000003A524553554C5474000000000000000000000008
      0000003A5041475249534E040000000000000000000000080000003A50414444
      49534E0400000000000000000000000B0000003A50504152454E5449534E0400
      00000000000000000000}
    OracleDictionary.RequiredFields = False
    QBEDefinition.QBEFieldDefs = {
      040000000A0000000700000052554C4549534E0100000000000800000052554C
      454E414D450000000000000B00000050524F504552545949534E010000000000
      0C00000050524F50455254594E414D450000000000000E000000544152494646
      434C41535349534E0100000000000F000000544152494646434C4153534E414D
      450000000000000900000054415249464649534E010000000000060000005441
      52494646010000000000070000004449435849534E0100000000000D00000052
      554C4554415249464649534E010000000000}
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 488
    Top = 222
  end
  object dspObjGrP: TDataSetProvider
    DataSet = qrObjGrP
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = DSPSetParams
    BeforeGetRecords = DSPSetParams
    Left = 528
    Top = 222
  end
  object spObjGrP: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      'FireAgr.UpdFireAgrObjI '
      '               ('
      
        '                :pEx,  :ISN, :ParentISN, :ClassISN, :RptClassISN' +
        ','
      '                :Name, :AgrISN, :CurrISN, :DescISN, :ID,'
      '                :Updated, :Remark, :UpdatedBy, :Constructed,'
      '                :Sex, :CityISN, :Cost, :GroupISN, :PrevISN,'
      '                :AddISN, :GroupID, :ObjSurvey'
      '               );'
      '  COMMIT;'
      'END;'
      ' ')
    Session = OraSession
    Optimize = False
    Variables.Data = {0300000001000000040000003A504558050000000000000000000000}
    Left = 563
    Top = 222
  end
  object qrObjTempl: TOracleDataSet
    SQL.Strings = (
      '-- '#1061#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1080#1077#1080' '#1086#1073#1098#1077#1082#1090#1072
      'BEGIN'
      
        '    :Result:=FireAgr.FCur_FireAgrObjTempl(:pAgrISN, :pObjISN, :p' +
        'AddIsn);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000004000000070000003A524553554C5474000000000000000000000008
      0000003A5041475249534E040000000000000000000000080000003A504F424A
      49534E040000000000000000000000080000003A5041444449534E0400000000
      00000000000000}
    OracleDictionary.RequiredFields = False
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 488
    Top = 178
  end
  object dspObjTempl: TDataSetProvider
    DataSet = qrObjTempl
    ResolveToDataSet = True
    BeforeApplyUpdates = DSPSetParams
    BeforeGetRecords = DSPSetParams
    Left = 526
    Top = 178
  end
  object spObjTempl: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  FIREAGR.UpdFireAgrObjTempl'
      '('
      ':pEx,'
      ':ISN, '
      ':ObjISN, '
      ':ObjClassISN,'
      ':AgrISN, '
      ':ObjParamType, '
      ':ObjParamValue,'
      ':ObjParamValueName,'
      ':ObjParamClassISN,'
      ':AddIsn'
      ');'
      ' COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {0300000001000000040000003A504558050000000000000000000000}
    Left = 563
    Top = 178
  end
  object qrObjAddrP: TOracleDataSet
    SQL.Strings = (
      '-- '#1040#1076#1088#1077#1089' '#1086#1073#1098#1077#1082#1090#1072
      'BEGIN'
      '  :Result:=FireAgr.FCur_ObjAddr(:pAgrISN, :pObjISN);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000003000000070000003A524553554C5474000000000000000000000008
      0000003A5041475249534E040000000000000000000000080000003A504F424A
      49534E040000000000000000000000}
    OracleDictionary.RequiredFields = False
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 488
    Top = 356
  end
  object dspObjAddr: TDataSetProvider
    DataSet = qrObjAddrP
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = DSPSetParams
    BeforeGetRecords = DSPSetParams
    Left = 526
    Top = 356
  end
  object spObjAddrP: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  FIREAGR.UPDATEADDR('
      
        '     :pEx, :ISN,:CityISN,:CountryISN,:ZIP,:Remark,:PerISN,:AgrIS' +
        'N,:Discr, :StreetISN, :House, null, null, :ObjISN, :AddrDefault)' +
        ';'
      ' COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {0300000001000000040000003A504558050000000000000000000000}
    Left = 564
    Top = 356
  end
  object qrObjCondP: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      
        '  :Result:=FireAgr.FCur_FireAgrObjCond(:pAgrISN, :pAddISN, :pObj' +
        'GrISN, :pObjParentISN);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000005000000070000003A524553554C5474000000000000000000000008
      0000003A5041475249534E04000000080000000000406A1775F9410000000008
      0000003A5041444449534E04000000080000000000406A1775F941000000000A
      0000003A504F424A475249534E0400000008000000000080D41775F941000000
      000E0000003A504F424A504152454E5449534E040000000000000000000000}
    OracleDictionary.RequiredFields = False
    QBEDefinition.QBEFieldDefs = {
      04000000400000000600000050524F504558010000000000080000005249534B
      4E414D450100000000000A0000005249534B4D415849534E0100000000000400
      0000434F5354010000000000080000004C494D495453554D0100000000000600
      00005441524946460100000000000A0000005052454D49554D53554D01000000
      00000D000000414C4C5052454D49554D53554D0100000000000600000052454D
      41524B010000000000070000004355525249534E0100000000000A0000005945
      4152544152494646010000000000070000004441544542454701000000000007
      00000044415445454E44010000000000070000005445524D5354520100000000
      000D0000004C494D4954455645525953554D0100000000000A0000004652414E
      434854595045010000000000090000004652414E434853554D0100000000000C
      0000004652414E43484D415853554D010000000000100000004652414E434854
      415249464653554D500100000000000D0000004652414E43484355525249534E
      0100000000000C0000004652414E43485441524946460100000000000B000000
      5052454D4355525249534E010000000000080000004C494D495449534E010000
      000000090000004E455741444449534E010000000000080000005155414E5449
      545901000000000008000000444953434F554E54010000000000090000004449
      53434F554E54320100000000000B0000005249534B4649435449534E01000000
      00000E0000005249534B464943544F4C4449534E010000000000080000004441
      544543414C430100000000000C0000005249534B464943544E414D4501000000
      0000060000004F424A49534E0100000000000600000041475249534E01000000
      00000300000049534E010000000000040000004E414D45010000000000080000
      00434C41535349534E0100000000000600000041444449534E0100000000000E
      000000594541525052454D49554D53554D0100000000000D000000524546554E
      44464F524D49534E0100000000000E000000524546554E44464F524D4E414D45
      0100000000000C000000524546554E444C494D49534E0100000000000D000000
      524546554E444C494D4E414D450100000000000B000000544F54414C41444A49
      534E0100000000000C000000544F54414C41444A4E414D450100000000000C00
      0000524546554E4453595349534E0100000000000D000000524546554E445359
      534E414D4501000000000009000000424F4E55534349534E0100000000000A00
      0000424F4E5553434E414D450100000000000D000000424F4E555343524F4F54
      49534E0100000000000600000058504152414D010000000000050000004B5453
      554D010000000000060000004C49414245580100000000000C00000044495343
      4F554E544C4941420100000000000E000000494E535552454453554D4C494142
      0100000000000E0000005052454D49554D53554D4C4941420100000000000A00
      00005441524946464C49414201000000000009000000424F4E55534C49534E01
      00000000000A000000424F4E55534C4E414D450100000000000D000000424F4E
      55534C524F4F5449534E0100000000000C000000414C4C4C494D495453554D43
      010000000000080000005856415249414E540100000000000900000058564152
      49414E544C0100000000000E00000044495341424C45444649454C4453000000
      0000000E000000524541444F4E4C594649454C4453000000000000}
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 488
    Top = 268
  end
  object dspObjCondP: TDataSetProvider
    DataSet = qrObjCondP
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = DSPSetParams
    BeforeGetRecords = DSPSetParams
    Left = 528
    Top = 268
  end
  object spObjCondP: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  FireAgr.UpdateFireAgrObjCond'
      '('
      ' :pEx, :PropEx, :ISN, :AgrISN, :AddISN, '
      ' :ObjISN, :CurrISN, :LimitSUM, '
      ' :YearTariff, :DATEBEG, :DATEEND, :TARIFF, '
      ' :DISCOUNT, :PREMIUMSUM, :YearPremiumSum, '
      ' :LIMITEVERYSUM, :FRANCHTYPE, :FRANCHTARIFF, '
      ' :FRANCHSUM, :FRANCHMAXSUM, :REMARK, :PREMCURRISN,'
      ' :LIMITISN, :FRANCHCURRISN, :NEWADDISN, :Quantity,'
      ' :Cost, :Discount2, :RiskFictOldISN, :RiskFictISN, :DateCalc, '
      ' :RefundSysISN, :RefundLimISN, '
      ' :RefundFormISN, :TotalAdjISN, :BonusCISN,'
      ' :XParam,'
      ' :LiabEx, :DiscountLiab, :InsuredSumLiab, :BonusLISN,'
      ' :XVariant, :XVariantL, :AllLimitSumC,:RentEx, :RentObjLimitSum,'
      ' :Salary, :AccountPeriod,'
      ' :MaxRentPeriod, '
      ' /*04.07.2014 Kuznetsov S.M. Task 66449045503 */'
      ' /*:RiskAnimalEx, :RiskAccTechEx,'
      ' :RiskGroup1Ex, :RiskGroup2Ex, :RiskDocumentsEx,'
      ' :RiskTempStayEx,'
      ' :RiskDocumentsLimitSum, :RiskTempStayLimitSum,*/'
      ' pRiskLiabAnimalEx => :RiskLiabAnimalEx'
      ');'
      ' COMMIT;'
      'END;'
      ' ')
    Session = OraSession
    Optimize = False
    Variables.Data = {0300000001000000040000003A504558050000000000000000000000}
    Left = 564
    Top = 268
  end
  object spCalcPrem2: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  MagrScoring.GetStraxSkoring(:pAgrISN, :NeedLog);'
      '  COMMIT;'
      
        '  AGRN.CALCPREM(:pAgrISN, :pAddISN,  :pObjISN, :pXMode, null, :N' +
        'eedLog); '
      '  :log := ais.agrn.CalcCloblog;'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000006000000080000003A5041475249534E040000000000000000000000
      080000003A5041444449534E040000000000000000000000080000003A504F42
      4A49534E040000000000000000000000070000003A50584D4F44450400000000
      00000000000000080000003A4E4545444C4F4704000000080000000000000000
      00000000000000040000003A4C4F47700000000000000000000000}
    Left = 768
    Top = 326
  end
  object grObjCarHist: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      '  :Result:=MAGRCAR.FObjCar_Hist(:pISN);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000002000000070000003A524553554C5474000000000000000000000005
      0000003A5049534E040000000000000000000000}
    OracleDictionary.RequiredFields = False
    Session = OraSession
    AfterOpen = qrFCarHistAfterOpen
    Left = 382
    Top = 399
  end
  object dspObjCarHist: TDataSetProvider
    DataSet = grObjCarHist
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeGetRecords = DSPSetParams
    Left = 407
    Top = 399
  end
  object qrObjDocsP: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      '  :Result:=FireAgr.FCur_FireAgrDocs(:pAgrObjectISN);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000002000000070000003A524553554C547400000000000000000000000E
      0000003A504147524F424A45435449534E040000000000000000000000}
    OracleDictionary.RequiredFields = False
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 489
    Top = 310
  end
  object dspObjDocsP: TDataSetProvider
    DataSet = qrObjDocsP
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = DSPSetParams
    BeforeGetRecords = DSPSetParams
    Left = 527
    Top = 310
  end
  object spObjDocsP: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  FireAgr.UpdateAgrDocs'
      '   ('
      '    :AgrObjectISN, '
      '    :ClassISN, '
      '    :DocEx'
      '   );'
      ' COMMIT;'
      'END;'
      ' ')
    Session = OraSession
    Optimize = False
    Left = 564
    Top = 310
  end
  object qrGetRulTariffTxt: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      ' :Result:=MAgrPCalc.FCur_GetRulTariffTxt(:pClassISN, :pDate);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000003000000070000003A524553554C547400000000000000000000000A
      0000003A50434C41535349534E040000000000000000000000060000003A5044
      4154450C0000000000000000000000}
    QBEDefinition.QBEFieldDefs = {040000000100000003000000545854010000000000}
    Session = OraSession
    Left = 224
    Top = 494
  end
  object dspGetRulTariffTxt: TDataSetProvider
    DataSet = qrGetRulTariffTxt
    BeforeGetRecords = DSPSetParams
    Left = 268
    Top = 494
  end
  object qrFillSbjCity: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      ' :Result:=MAgrPCalc.FCUR_FillSbjCity(:pDate);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000002000000070000003A524553554C5474000000000000000000000006
      0000003A50444154450C0000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000300000004000000534F52540100000000000A00000053424A434954
      5949534E0100000000000B00000053424A434954594E414D45010000000000}
    Session = OraSession
    Left = 376
    Top = 440
  end
  object dspFillSbjCity: TDataSetProvider
    DataSet = qrFillSbjCity
    BeforeGetRecords = DSPSetParams
    Left = 404
    Top = 440
  end
  object qrPreCalcPrem: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      '  :Result:=MagrPCalc.FCur_PreCalcPrem(:pAgrISN);'
      '  COMMIT;'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000002000000070000003A524553554C5474000000000000000000000008
      0000003A5041475249534E040000000000000000000000}
    Session = OraSession
    Left = 660
    Top = 414
  end
  object dspPreCalcPrem: TDataSetProvider
    DataSet = qrPreCalcPrem
    BeforeGetRecords = DSPSetParams
    Left = 696
    Top = 406
  end
  object qrCar_LDU: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      '  MAGRF.Car_LDU(:pDescisn,:pAgrISN);'
      '  COMMIT;'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000002000000090000003A504445534349534E0400000000000000000000
      00080000003A5041475249534E040000000000000000000000}
    OracleDictionary.RequiredFields = False
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 519
    Top = 132
  end
  object dspCar_LDU: TDataSetProvider
    DataSet = qrCar_LDU
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    Left = 548
    Top = 132
  end
  object spPreCalcPrem: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      
        '  MAGRPCALC.PreCalcPrem(:pAgrISN, :pRuleISN, :pMsg, :pISN,nTestM' +
        'ode=>:nTestMode,pneedlog => :pneedlog,pxmllog => :pxmllog);'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000007000000080000003A5041475249534E040000000000000000000000
      090000003A5052554C4549534E040000000000000000000000050000003A504D
      5347050000000000000000000000050000003A5049534E050000000000000000
      0000000A0000003A4E544553544D4F4445040000000000000000000000090000
      003A504E4545444C4F4704000000080000000000000000000000000000000800
      00003A50584D4C4C4F47700000000000000000000000}
    Left = 764
    Top = 422
  end
  object dspPreCalcParam: TDataSetProvider
    DataSet = qrPreCalcParam
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = DSPSetParams
    BeforeGetRecords = DSPSetParams
    Left = 524
    Top = 444
  end
  object qrPreCalcParam: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      '  :Result:=MAgrPCalc.FCur_Param(:pAgrISN);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000002000000070000003A524553554C5474000000000000000000000008
      0000003A5041475249534E040000000000000000000000}
    OracleDictionary.RequiredFields = False
    QBEDefinition.QBEFieldDefs = {
      0400000005000000070000005041524E414D4501000000000009000000434F4E
      53544E414D450100000000000700000056414C4E414D45010000000000080000
      00444154415459504501000000000008000000434C41535349534E0100000000
      00}
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = qrPreCalcParamAfterOpen
    Left = 484
    Top = 448
  end
  object spPreCalcParam: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      ''
      '  MAgrPCalc.UpdParam'
      ' ('
      '    :pEx,'
      '    :ISN,'
      '    :Val,'
      '    :ValName,'#9
      '    :ClassISN,'
      '    :DataType,'
      '    :groupid,'
      '    :no,'
      '    :AgrISN,'
      '    :Discr,'
      '    :Updated,'
      '    :ParentISN'
      '  );'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {0300000001000000040000003A504558050000000000000000000000}
    Left = 564
    Top = 448
  end
  object dspPreCalcHead: TDataSetProvider
    DataSet = qrPreCalcHead
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = DSPSetParams
    BeforeGetRecords = DSPSetParams
    Left = 528
    Top = 492
  end
  object qrPreCalcHead: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      ' :Result:=MAgrPCalc.FCur_Head(:pISN);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000002000000070000003A524553554C5474000000000000000000000005
      0000003A5049534E040000000000000000000000}
    OracleDictionary.RequiredFields = False
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 492
    Top = 492
  end
  object spPreCalcHead: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  MAgrPCalc.UpdHead'
      '  ( :pEx,'
      '    :ISN,'
      '    :ID,'
      '    :ClientISN,'
      '    :EmplISN, '
      '    :DateCalc,'
      '    :StatusName,'
      '    :RuleISN,'
      '    :CurrISN,'
      '    :Remark,'
      '    :ClientReplyISN,'
      '    :Name,'
      '    :ClientsSourceISN,'
      '    :FirstCalc,'
      '    :VariantValuation'
      '  );'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {0300000001000000040000003A504558050000000000000000000000}
    Left = 564
    Top = 492
  end
  object qrAVN: TOracleDataSet
    SQL.Strings = (
      
        'select --+ ORDERED USE_NL(C D D0)  INDEX(C)  -- TabsClauses.temp' +
        '::qrAVN'
      '  C.ISN, C.ISN VISN, c.orderno,'
      '  C.ClassISN,'
      '  C.AgrISN,'
      '  C.Remark,'
      '  SubStr(InitCapFirst(D.ShortName),1,40) as ClassName,'
      '  SubStr(InitCapFirst(D0.ShortName),1,40) as SuperClassName,'
      '  R.TXT'
      'from'
      '  AgrClause C, Dicti D, RulClause R, Dicti D0'
      'where'
      '  D.ISN = C.ClassISN'
      '  and C.AgrISN = :ISN'
      '  and R.CLASSISN(+) = C.ClassISN'
      '  and R.LangISN(+) = :LangISN'
      '  AND D.ParentISN=D0.ISN'
      'order by 3')
    Optimize = False
    Variables.Data = {
      0300000002000000040000003A49534E04000000000000000000000008000000
      3A4C414E4749534E040000000000000000000000}
    OracleDictionary.RequiredFields = False
    QBEDefinition.QBEFieldDefs = {
      04000000090000000300000049534E010000000000040000005649534E010000
      000000070000004F524445524E4F01000000000008000000434C41535349534E
      0100000000000600000041475249534E0100000000000600000052454D41524B
      01000000000009000000434C4153534E414D450100000000000E000000535550
      4552434C4153534E414D4501000000000003000000545854000000000000}
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 632
    Top = 269
  end
  object spAVN: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      ' if :pEx='#39'I'#39' then'
      '   INSERT INTO AgrClause'
      '     (ORDERNO, CLASSISN, AGRISN, REMARK)'
      '   VALUES'
      '     (:ORDERNO, :CLASSISN, :AGRISN, :REMARK);'
      ' elsif :pEx='#39'U'#39' then'
      '   UPDATE AgrClause set'
      '     ORDERNO = :ORDERNO,'
      '     CLASSISN = :CLASSISN,'
      '     AGRISN = :AGRISN,'
      '     REMARK = :REMARK'
      '   where ISN=:ISN;'
      ' elsif :pEx='#39'D'#39' then'
      '  DELETE FROM AgrClause WHERE ISN=:ISN;'
      ' end if;'
      ' COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {0300000001000000040000003A504558050000000000000000000000}
    Left = 714
    Top = 269
  end
  object dspAVN: TDataSetProvider
    DataSet = qrAVN
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = DSPSetParams
    BeforeGetRecords = DSPSetParams
    Left = 673
    Top = 269
  end
  object spUpdateGroup: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  MAgrPCalc.UpdateGroup(:pEx, :pISN, :pClassISN, :pParentIsn);'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000004000000040000003A50455805000000000000000000000005000000
      3A5049534E0400000000000000000000000A0000003A50434C41535349534E04
      00000000000000000000000B0000003A50504152454E5449534E040000000000
      000000000000}
    Left = 616
    Top = 448
  end
  object qrBodyType: TOracleDataSet
    SQL.Strings = (
      'select isn, InitCap(Shortname) Shortname from dicti'
      'where parentisn=c.get('#39'msBodyType'#39')')
    Optimize = False
    Session = OraSession
    Left = 632
    Top = 312
  end
  object dspBodyType: TDataSetProvider
    DataSet = qrBodyType
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    Left = 704
    Top = 312
  end
  object qrProtection: TOracleDataSet
    SQL.Strings = (
      
        'select isn, shortname from dicti where parentisn=c.get('#39'msArmorP' +
        'rotection'#39')'
      'union all'
      'select null, null from dual'
      'order by 2')
    Optimize = False
    Session = OraSession
    Left = 632
    Top = 360
  end
  object dspProtection: TDataSetProvider
    DataSet = qrProtection
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    Left = 704
    Top = 360
  end
  object qrPreCalcCL: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      ' :Result:=MAgrPCalc.FCur_PreCalcCL(:pISN);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000002000000070000003A524553554C5474000000000000000000000005
      0000003A5049534E04000000080000000000C07F9B1AF94100000000}
    OracleDictionary.RequiredFields = False
    QBEDefinition.QBEFieldDefs = {
      040000002A0000000C00000043415243544756414C49534E0100000000000D00
      000043415243544756414C4E414D4500000000000010000000434152454E4749
      4E45504F57455248500100000000000800000043415253454154530100000000
      000D00000043415247524F535357454947480100000000000C00000056454849
      434C4555534147450100000000000D0000004D4F4445555345434C4E414D4501
      00000000000C0000004D4F4445555345434C49534E0000000000000C00000053
      424A4A555249444943414C0100000000000A00000053424A4349545949534E01
      00000000000B00000053424A434954594E414D450000000000000C0000005342
      4A4249525448444154450100000000001100000053424A44524956494E474441
      54454245470100000000000A0000005249534B43544749534E0100000000000B
      0000005249534B4354474E414D450000000000000A0000004147524441544542
      454701000000000007000000444154454245470100000000000A000000414752
      44415445454E440100000000000700000044415445454E440100000000000800
      00004441544543414C430100000000000300000049534E010000000000020000
      0049440100000000000D00000053424A42495254484452495645010000000000
      07000000454D504C49534E01000000000008000000454D504C4E414D45010000
      0000000600000041475249534E0100000000000F00000053424A43495459434C
      41535349534E0100000000000C000000414752504552494F4454585401000000
      00000A000000414752504552494F444D01000000000009000000504552494F44
      54585401000000000007000000504552494F444D0100000000000B0000005342
      4A42495254484147450100000000000D00000053424A44524956494E47414745
      01000000000013000000424952544844524956494E475652554C49534E010000
      0000000A000000454D504C4E414D455F3101000000000008000000424F4E5553
      49534E01000000000009000000424F4E55534E414D4501000000000006000000
      4147525F4944010000000000070000004147525F49534E010000000000080000
      0046554C4C4E414D4501000000000009000000434C49454E5449534E01000000
      00000A0000005052454D49554D53554D010000000000}
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = qrPreCalcCLAfterOpen
    Left = 632
    Top = 492
  end
  object dspPreCalcCL: TDataSetProvider
    DataSet = qrPreCalcCL
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = DSPSetParams
    BeforeGetRecords = DSPSetParams
    Left = 700
    Top = 476
  end
  object spPreCalcCL: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  MAgrPCalc.UpdPreCalcCL'
      ' ('
      '    :pEx,'
      '    :ISN, :AgrISN, :CarEnginePowerHP, :CarSeats,'
      '    :CarGrossWeigh, :CarCtgValISN, :VehicleUsage,'
      '    :SbjJuridical, :SbjCityISN,  :SbjCityClassISN, :RiskCtgISN,'
      '    :EmplISN, :ID, :DateCalc,'
      '    :SbjBirthAge, :SbjDrivingAge, :BirthDrivingvRulISN,'
      
        '    :AgrPeriodM, :PeriodM, :ModeUseCLISN, :BonusISN, :ClientISN,' +
        ' :LiabExists, :LimitSumLiab, :CarDomestic'
      '    ,:UseWithTrailer, :VehicleUsagePSG, :FollowToPlaceOfReg'
      '    ,:FIO ,:CLIENTIO ,:INSURANTAGE'
      '    ,:BreakageExists, :CarModifISN, :CarMarkISN, :CarModelISN'
      '    ,:CarConstructed, :CarInsurKilometers'
      '    ,:SbjResident'
      '  );'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {0300000001000000040000003A504558050000000000000000000000}
    Left = 748
    Top = 484
  end
  object spCreateAgrByPrecalc: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  MAGRPCALC.CreateAgrByPrecalc('
      
        '    pAgrISN     => :pAgrISN,    -- ISN '#1089#1086#1079#1076#1072#1085#1085#1086#1075#1086' '#1101#1082#1079#1077#1084#1087#1083#1103#1088#1072' '#1076#1086#1075 +
        #1086#1074#1086#1088#1072
      
        '    pFormISN    => :pFormISN,   -- ISN '#1092#1086#1088#1084#1099' '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1091#1102#1097#1077#1081' '#1076#1086#1075 +
        #1086#1074#1086#1088#1091
      '    pID         => :pID,        -- '#1053#1086#1084#1077#1088' '#1076#1086#1075#1086#1074#1086#1088#1072
      
        '    pSaveParam  => :pSaveParam, -- '#1055#1088#1080#1079#1085#1072#1082' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1103' '#1087#1077#1088#1077#1076#1072#1085#1085#1086#1075 +
        #1086' '#1096#1072#1073#1083#1086#1085#1072' '#1074' '#1082#1072#1095#1077#1089#1090#1074#1077
      
        '                                -- '#1087#1086#1089#1083#1077#1076#1085#1077#1075#1086' '#1074#1099#1073#1088#1072#1085#1085#1086#1075#1086' '#1087#1086#1083#1100#1079#1086#1074 +
        #1072#1090#1077#1083#1077#1084' ('#39'Y'#39'/'#39'N'#39')'
      
        '    pAddrISN    => :pAddrISN,   -- AL 23/03/04: '#1084#1077#1089#1090#1086' '#1074#1099#1076#1072#1095#1080' '#1087#1086#1083 +
        #1080#1089#1072
      
        '    pStatus     => :pStatus,    -- Yunin V.A. 04/05/05 '#1089#1090#1072#1090#1091#1089' '#1076#1086 +
        #1075#1086#1074#1086#1088#1072
      
        '    pPrecalcISN => :pPrecalcISN, -- ZK 12.02.2007 '#1087#1088#1080#1074#1103#1079#1082#1072' '#1076#1086#1075#1086#1074 +
        #1086#1088#1072' '#1082' '#1082#1086#1090#1080#1088#1086#1074#1082#1077
      
        '    pCreateCar    => :pCreateCar,     -- DmitryPo/VDI '#1057#1086#1079#1076#1072#1085#1080#1077' '#1058 +
        #1057' '#1087#1086' '#1087#1072#1088#1072#1084#1077#1090#1088#1072#1084' '#1082#1086#1090#1080#1088#1086#1074#1082#1080' '#1076#1083#1103' '#1050#1040#1057#1050#1054
      
        '    pTemplateISN => :pTemplateISN -- ISN '#1096#1072#1073#1083#1086#1085#1072' '#1076#1086#1075#1086#1074#1086#1088#1072', '#1082#1086#1090#1086#1088 +
        #1099#1081' '#1076#1086#1083#1078#1077#1085' '#1073#1099#1090#1100' '#1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1085' '#1076#1083#1103' '#1089#1086#1079#1076#1072#1085#1080#1103
      '  );'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000009000000080000003A5041475249534E040000000000000000000000
      090000003A50464F524D49534E040000000000000000000000040000003A5049
      4405000000050000003230343800000000000B0000003A505341564550415241
      4D6100000002000000310000000000090000003A504144445249534E04000000
      0000000000000000080000003A50535441545553610000000200000031000000
      00000C0000003A5050524543414C4349534E0400000000000000000000000B00
      00003A5043524541544543415261000000020000003100000000000D0000003A
      5054454D504C41544549534E040000000000000000000000}
    Left = 296
    Top = 6
  end
  object spAgrFreeRequest: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  -- '#1087#1088#1086#1074#1077#1088#1082#1072' '#1085#1072#1083#1080#1095#1080#1103' '#1089#1074#1086#1073#1086#1076#1085#1099#1093' '#1079#1072#1103#1074#1086#1082' '#1087#1086' '#1076#1086#1075#1086#1074#1086#1088#1091
      '  Request_utils.AgrFreeRequest(:pAgrISN, :pFreeRequest);'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000002000000080000003A5041475249534E040000000000000000000000
      0D0000003A504652454552455155455354040000000000000000000000}
    Left = 724
    Top = 134
  end
  object spGetBodyModel: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      
        '  MAGRCAR.GETBODYMODEL(:pVIN,:pModelISN, :pBodyModelISN, :pBodyM' +
        'odelName);'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000004000000050000003A5056494E0500000000000000000000000A0000
      003A504D4F44454C49534E0400000000000000000000000E0000003A50424F44
      594D4F44454C49534E0400000000000000000000000F0000003A50424F44594D
      4F44454C4E414D45050000000000000000000000}
    Left = 384
    Top = 96
  end
  object qrListWarn: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      ' :Result:=  Warn.LIST_WARN('
      '             :ptag,'
      #9#9#9#9#9'   :pisn,'
      #9#9#9#9#9'   :pparam0,'
      #9#9#9#9#9'   :pparam1,'
      #9#9#9#9#9'   :pparam2,'
      #9#9#9#9#9'   :pStrParam0,'
      #9#9#9#9#9'   :pStrParam1,'
      #9#9#9#9#9'   :pStrParam2);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000009000000070000003A524553554C5474000000000000000000000005
      0000003A5049534E04000000080000000000C07F9B1AF9410000000005000000
      3A50544147040000000000000000000000080000003A50504152414D30040000
      000000000000000000080000003A50504152414D310400000000000000000000
      00080000003A50504152414D320400000000000000000000000B0000003A5053
      5452504152414D300500000000000000000000000B0000003A50535452504152
      414D310500000000000000000000000B0000003A50535452504152414D320500
      00000000000000000000}
    OracleDictionary.RequiredFields = False
    QBEDefinition.QBEFieldDefs = {
      040000002A0000000C00000043415243544756414C49534E0100000000000D00
      000043415243544756414C4E414D4500000000000010000000434152454E4749
      4E45504F57455248500100000000000800000043415253454154530100000000
      000D00000043415247524F535357454947480100000000000C00000056454849
      434C4555534147450100000000000D0000004D4F4445555345434C4E414D4501
      00000000000C0000004D4F4445555345434C49534E0000000000000C00000053
      424A4A555249444943414C0100000000000A00000053424A4349545949534E01
      00000000000B00000053424A434954594E414D450000000000000C0000005342
      4A4249525448444154450100000000001100000053424A44524956494E474441
      54454245470100000000000A0000005249534B43544749534E0100000000000B
      0000005249534B4354474E414D450000000000000A0000004147524441544542
      454701000000000007000000444154454245470100000000000A000000414752
      44415445454E440100000000000700000044415445454E440100000000000800
      00004441544543414C430100000000000300000049534E010000000000020000
      0049440100000000000D00000053424A42495254484452495645010000000000
      07000000454D504C49534E01000000000008000000454D504C4E414D45010000
      0000000600000041475249534E0100000000000F00000053424A43495459434C
      41535349534E0100000000000C000000414752504552494F4454585401000000
      00000A000000414752504552494F444D01000000000009000000504552494F44
      54585401000000000007000000504552494F444D0100000000000B0000005342
      4A42495254484147450100000000000D00000053424A44524956494E47414745
      01000000000013000000424952544844524956494E475652554C49534E010000
      0000000A000000454D504C4E414D455F3101000000000008000000424F4E5553
      49534E01000000000009000000424F4E55534E414D4501000000000006000000
      4147525F4944010000000000070000004147525F49534E010000000000080000
      0046554C4C4E414D4501000000000009000000434C49454E5449534E01000000
      00000A0000005052454D49554D53554D010000000000}
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = qrPreCalcCLAfterOpen
    Left = 584
    Top = 548
  end
  object spCopyCalc: TOracleQuery
    SQL.Strings = (
      'begin'
      '  :result := MagrPCalc.CopyCalc(:isn);'
      'end;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000002000000070000003A524553554C5405000000000000000000000004
      0000003A49534E050000000000000000000000}
    Left = 360
    Top = 536
  end
  object spConvertCalc: TOracleQuery
    SQL.Strings = (
      'begin'
      '  :result := MagrPCalc.ConvertCalc(:isn);'
      'end;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000002000000070000003A524553554C5405000000000000000000000004
      0000003A49534E050000000000000000000000}
    Left = 416
    Top = 536
  end
  object qrRuleInRootIsn: TOracleDataSet
    SQL.Strings = (
      'select max(1) as res from dicti'
      'where'
      'isn = c.get('#39'AgrMotorVoluntary'#39')'
      'start with isn = :RuleISN'
      'connect by prior parentisn = isn')
    Optimize = False
    Variables.Data = {
      0300000001000000080000003A52554C4549534E040000000000000000000000}
    Session = OraSession
    Left = 136
    Top = 536
  end
  object dspIsRuleInRootIsn: TDataSetProvider
    DataSet = qrRuleInRootIsn
    ResolveToDataSet = True
    Left = 172
    Top = 536
  end
  object dspDiscount: TDataSetProvider
    DataSet = qrDiscount
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = dspDiscountBeforeApplyUpdates
    BeforeGetRecords = DSPSetParams
    Left = 32
    Top = 512
  end
  object spDiscount: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      'MAGRF.UpdateDiscount(:pExe, :pISN, :pAgrISN, :pTariff,'
      '  :pX1, :pTariffClassISN, :pRemark,  false,'
      '  :pCalcPrevDiscount,'
      '  :pRiskRuleISN,'
      '  :pBase'
      '  );'
      '  COMMIT;'
      'END;'
      ' ')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      030000000A000000050000003A50455845050000000000000000000000050000
      003A5049534E040000000000000000000000080000003A5041475249534E0400
      00000000000000000000080000003A5054415249464604000000000000000000
      0000040000003A505831040000000000000000000000100000003A5054415249
      4646434C41535349534E040000000000000000000000080000003A5052454D41
      524B050000000000000000000000120000003A5043414C435052455644495343
      4F554E540400000000000000000000000D0000003A505249534B52554C454953
      4E040000000000000000000000060000003A5042415345040000000000000000
      000000}
    Left = 56
    Top = 513
  end
  object qrDiscount: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      
        ' :Result:=MAGRF.FCur_Discount( :pAgrISN, :pAddISN, :pRiskRuleISN' +
        ');'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000004000000070000003A524553554C5474000000000000000000000008
      0000003A5041475249534E040000000000000000000000080000003A50414444
      49534E0400000000000000000000000D0000003A505249534B52554C4549534E
      040000000000000000000000}
    OracleDictionary.RequiredFields = False
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 8
    Top = 512
  end
  object qrDetailTariff: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      '  :Result:=MAgrT.FCur_CondInsurYear(:pAgrISN, :pAddISN);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000003000000070000003A524553554C5474000000000000000000000008
      0000003A5041475249534E040000000000000000000000080000003A50414444
      49534E040000000000000000000000}
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 672
    Top = 536
  end
  object dspDetailTariff: TDataSetProvider
    DataSet = qrDetailTariff
    ResolveToDataSet = True
    BeforeGetRecords = DSPSetParams
    Left = 708
    Top = 536
  end
  object spCalcPremEx: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  -- '#1072#1074#1090#1086
      '  MagrScoring.GetStraxSkoring(:pAgrISN, :preturnxmllog);'
      '  COMMIT;'
      '  ais.magrt_calcprem_auto.pLog := null;'
      '  MAGRT.CALCPREMIUM(:pAgrISN, :pAddISN, :pObjISN,  :pXMode, '
      '                    pnoupdate => :pnoupdate,'
      '                    pforcesrt => :pforcesrt, '
      #9#9'      preturnxmllog => :preturnxmllog,'
      '                    pTestMode => :pTestMode);'
      '  :log := ais.magrt_calcprem_auto.pLog;'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000009000000080000003A5041475249534E040000000000000000000000
      080000003A5041444449534E040000000000000000000000080000003A504F42
      4A49534E040000000000000000000000070000003A50584D4F44450400000000
      000000000000000A0000003A50464F5243455352540400000000000000000000
      000E0000003A5052455455524E584D4C4C4F4704000000000000000000000004
      0000003A4C4F477000000000000000000000000A0000003A50544553544D4F44
      450400000000000000000000000A0000003A504E4F5550444154450400000008
      000000000000000000000000000000}
    Left = 740
    Top = 206
  end
  object qrGetSystem: TOracleQuery
    SQL.Strings = (
      'declare'
      '  vRuleISN number;'
      '  vDateCalc date;'
      '  vDetail varchar2(2000);'
      'begin'
      
        '  select MAX(RuleISN), max(trunc(Least(datecalc,datebeg))) into ' +
        'vRuleISN, vDateCalc '
      '  from Agreement where ISN = :pisn; '
      ' '
      
        '  -- '#1044#1077#1090#1072#1083#1080#1079#1072#1094#1080#1080' '#1076#1086#1075#1086#1074#1086#1088#1072' '#1082#1088#1086#1084#1077' '#1085#1077' '#1091#1095#1080#1090#1099#1074#1072#1102#1096#1080#1093#1089#1103' '#1087#1088#1080' '#1074#1099#1073#1086#1088#1077' '#1089#1087#1086#1089 +
        #1086#1073#1072' '#1088#1072#1089#1095#1077#1090#1072' '
      
        '  select /*+ index(AGREXT X_AGREXT_AGR)*/ ltrim(rtrim(conc(X1||'#39 +
        ','#39'), '#39','#39'), '#39','#39') into vDetail'
      '  from AgrExt ae'
      '  where AgrISN = :pisn'
      '  and ClassISN = c.get('#39'AgrKindExt'#39') '
      '  and exists '
      '  ( select /*+ index(AGREXT X_AGREXT_AGR)*/ 1'
      '  from dicti '
      '  where ISN=ae.x1'
      '  start with ISN=C.Get('#39'AgrKindExt'#39')'
      '  connect by prior ISN=ParentISN '
      
        '  and isn not in (c.get('#39'TRF_AGRKINDEXT'#39'),c.get('#39'PRODEXTACCESS'#39')' +
        ',c.get('#39'PRODEXTCREDIT'#39'), c.get('#39'PRODEXTADDITIONAL'#39')) );'
      ' '
      ' :psystem := ais.checksrtactiveex(vRuleISN,vDetail,vDateCalc);'
      'end;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000002000000050000003A5049534E040000000000000000000000080000
      003A5053595354454D040000000000000000000000}
    Left = 772
    Top = 262
  end
  object qrEquipPreCalc: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      ' :Result:=MAgrPCalc.FCur_Equip(:pAgrISN);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000002000000070000003A524553554C5474000000000000000000000008
      0000003A5041475249534E050000000000000000000000}
    OracleDictionary.RequiredFields = False
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = qrEquipPreCalcAfterOpen
    Left = 492
    Top = 628
  end
  object dspEquipPreCalc: TDataSetProvider
    DataSet = qrEquipPreCalc
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = DSPSetParams
    BeforeGetRecords = DSPSetParams
    Left = 480
    Top = 588
  end
  object spEquipPreCalc: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      
        '  MAgrPCalc.UpdateEquip(:pEx, :AgrIsn, :ClassIsn, :Cost, :Quanti' +
        'ty, :GroupId);'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000005000000040000003A50455805000000000000000000000007000000
      3A41475249534E050000000000000000000000090000003A434C41535349534E
      050000000000000000000000050000003A434F53540500000000000000000000
      00090000003A5155414E54495459050000000000000000000000}
    Left = 604
    Top = 628
  end
  object qrEstimateRraud: TOracleDataSet
    SQL.Strings = (
      'begin'
      ' cfsquery.estimatefraudprobability(piobjectisn => :piobjectisn,'
      
        '                                    piobjectkind => :piobjectkin' +
        'd,'
      
        '                                    piinsuranceprocess => :piins' +
        'uranceprocess,'
      
        '                                    pisettingsversion => :pisett' +
        'ingsversion,'
      
        '                                    piisnofraudflag => :piisnofr' +
        'audflag,'
      
        '                                    piisinquiryrequired => :piis' +
        'inquiryrequired,'
      
        '                                    piusercomment => :piusercomm' +
        'ent,'
      
        '                                    piquestionnaire => :piquesti' +
        'onnaire,'
      
        '                                    poestimationisn => :poestima' +
        'tionisn,'
      
        '                                    poestimationcode => :poestim' +
        'ationcode,'
      
        '                                    poestimationmessage => :poes' +
        'timationmessage,'
      
        '                                    poresultcode => :poresultcod' +
        'e,'
      
        '                                    poresultmessage => :poresult' +
        'message,'
      
        '                                    piestimationtype => :piestim' +
        'ationtype,'
      
        '                                    piuserdialogtimelist => :piu' +
        'serdialogtimelist);'
      'commit;'
      'end;')
    Optimize = False
    Variables.Data = {
      030000000F0000000C0000003A50494F424A45435449534E0400000000000000
      000000000D0000003A50494F424A4543544B494E440500000000000000000000
      00130000003A5049494E535552414E434550524F434553530500000000000000
      00000000120000003A504953455454494E475356455253494F4E040000000000
      000000000000100000003A504949534E4F4652415544464C4147050000000000
      000000000000140000003A50494953494E515549525952455155495245440500
      000000000000000000000E0000003A504955534552434F4D4D454E5405000000
      0000000000000000100000003A50495155455354494F4E4E4149524505000000
      0000000000000000100000003A504F455354494D4154494F4E49534E04000000
      0000000000000000110000003A504F455354494D4154494F4E434F4445050000
      000000000000000000140000003A504F455354494D4154494F4E4D4553534147
      450500000000000000000000000D0000003A504F524553554C54434F44450500
      000002000000320000000000100000003A504F524553554C544D455353414745
      0500000047000000CEF8E8E1EAE03A20EDE520E7E0E4E0ED20F3EDE8EAE0EBFC
      EDFBE920E8E4E5EDF2E8F4E8EAE0F2EEF020EEE1FAE5EAF2E020EEF6E5EDEAE8
      202870694F626A65637449534E290000000000110000003A5049455354494D41
      54494F4E54595045040000000000000000000000150000003A50495553455244
      49414C4F4754494D454C495354050000000000000000000000}
    OracleDictionary.RequiredFields = False
    QueryAllRecords = False
    Session = OraSession
    Left = 136
    Top = 624
  end
  object dspEstimateRraud: TDataSetProvider
    DataSet = qrEstimateRraud
    BeforeExecute = DSPSetParams
    Left = 176
    Top = 624
  end
  object dspGetFraudQuestions: TDataSetProvider
    DataSet = qrGetFraudQuestions
    BeforeGetRecords = DSPSetParams
    Left = 168
    Top = 576
  end
  object qrGetFraudQuestions: TOracleDataSet
    SQL.Strings = (
      'begin'
      '  :Result:=cfsquery.fcur_getquestionnaire(:piobjectisn,'
      '                                            :piobjectkind,'
      '                                            :piinsuranceprocess,'
      '                                            :posettingsversion,'
      '                                            :poisnofraud,'
      
        '                                            :poisinquiryrequired' +
        ','
      '                                            :pousercomment,'
      '                                            :poresultcode,'
      '                                            :poresultmessage);'
      'end;')
    Optimize = False
    Variables.Data = {
      030000000A000000070000003A524553554C547400000000000000000000000C
      0000003A50494F424A45435449534E0400000000000000000000000D0000003A
      50494F424A4543544B494E44050000000000000000000000130000003A504949
      4E535552414E434550524F43455353050000000000000000000000120000003A
      504F53455454494E475356455253494F4E0400000000000000000000000C0000
      003A504F49534E4F4652415544050000000000000000000000140000003A504F
      4953494E515549525952455155495245440500000000000000000000000E0000
      003A504F55534552434F4D4D454E540500000000000000000000000D0000003A
      504F524553554C54434F4445050000000000000000000000100000003A504F52
      4553554C544D455353414745050000000000000000000000}
    OracleDictionary.RequiredFields = False
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 136
    Top = 576
  end
  object dspCreateFraudTask: TDataSetProvider
    DataSet = sp_CreateFraudTask
    BeforeGetRecords = DSPSetParams
    BeforeExecute = DSPSetParams
    Left = 240
    Top = 616
  end
  object sp_CreateFraudTask: TOracleDataSet
    SQL.Strings = (
      'begin'
      
        '  BUSINESSTASK_UTILS.CreateFraudTask(:PAGRISN, :PCLAIMISN, :PCOD' +
        'E, :PDESC, :PESTIMATIONISN);'
      '  commit;'
      'end;')
    Optimize = False
    Variables.Data = {
      0300000005000000080000003A5041475249534E040000000000000000000000
      0A0000003A50434C41494D49534E040000000000000000000000060000003A50
      434F4445040000000000000000000000060000003A5044455343050000000000
      0000000000000F0000003A50455354494D4154494F4E49534E04000000000000
      0000000000}
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 248
    Top = 624
  end
  object dspCheckFireFraud: TDataSetProvider
    DataSet = sp_CheckFireFraud
    BeforeGetRecords = DSPSetParams
    BeforeExecute = DSPSetParams
    Left = 304
    Top = 616
  end
  object sp_CheckFireFraud: TOracleDataSet
    SQL.Strings = (
      'begin'
      ' :Result := FIREAGR.CheckFireFraud(:pAgrISN);'
      'end;')
    Optimize = False
    Variables.Data = {
      0300000002000000080000003A5041475249534E040000000000000000000000
      070000003A524553554C54040000000000000000000000}
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 320
    Top = 632
  end
  object DSP_PROTECTFUNC: TDataSetProvider
    DataSet = qrPROTECTFUNC
    BeforeGetRecords = DSPSetParams
    BeforeExecute = DSPSetParams
    Left = 176
    Top = 672
  end
  object qrPROTECTFUNC: TOracleDataSet
    SQL.Strings = (
      
        ' select INTF_MOTORAGR.ProtectFunc(:pFuncName, :pUserISN) Rs from' +
        ' dual')
    Optimize = False
    Variables.Data = {
      03000000020000000A0000003A5046554E434E414D4505000000000000000000
      0000090000003A505553455249534E040000000000000000000000}
    OracleDictionary.RequiredFields = False
    QueryAllRecords = False
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 136
    Top = 672
  end
  object spLoadCarDamage: TOracleQuery
    SQL.Strings = (
      'begin'
      
        '  INTF_MOTORAGR.DSP_CARDAMAGEimport(:pSurveyISN, :pPartISN, :pDa' +
        'mageISN, :pPartName, :pPartSide, :pUserISN);'
      'end;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      03000000060000000B0000003A5053555256455949534E040000000000000000
      000000090000003A505041525449534E0400000000000000000000000B000000
      3A5044414D41474549534E0400000000000000000000000A0000003A50504152
      544E414D450500000000000000000000000A0000003A50504152545349444505
      0000000000000000000000090000003A505553455249534E0400000000000000
      00000000}
    Left = 264
    Top = 552
  end
  object spInspectList: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      
        '  SURVEYLIST.UPDATEWAITINSPECTLIST(:PISN, :PEX, :PSTATUS, :POBJI' +
        'SN, :POBJISN2, :PID, :PCLASSISN, :PFORMISN, :PRECEIVERISN, :PMAK' +
        'EMODEL, :PPARKPLACE);'
      '  COMMIT;'
      'END;'
      ' ')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      030000000B000000050000003A5049534E040000000000000000000000040000
      003A504558610000000000000000000000080000003A50535441545553610000
      000000000000000000080000003A504F424A49534E0400000000000000000000
      00090000003A504F424A49534E32040000000000000000000000040000003A50
      49440500000000000000000000000A0000003A50434C41535349534E04000000
      0000000000000000090000003A50464F524D49534E0400000000000000000000
      000D0000003A50524543454956455249534E0400000000000000000000000B00
      00003A504D414B454D4F44454C0500000000000000000000000B0000003A5050
      41524B504C414345050000000000000000000000}
    Left = 8
    Top = 576
  end
  object dspSetClientAgrs: TDataSetProvider
    DataSet = qrSetClientAgrs
    ResolveToDataSet = True
    BeforeGetRecords = DSPSetParams
    BeforeExecute = DSPSetParams
    Left = 680
    Top = 672
  end
  object qrSetClientAgrs: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      '  FIREAGR.SETCLIENTAGRS(:PAGRISN, :PSRCHMSG);'
      '  COMMIT;'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000002000000080000003A5041475249534E040000000000000000000000
      090000003A50535243484D5347050000000000000000000000}
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 640
    Top = 672
  end
  object qrSetListParam: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      
        '  FIREAGR.SETLISTPARAMBYAGR(:PTASKISN, :PRULEISN, :PRULEITEMSISN' +
        ', :POBJISN);'
      '  COMMIT;'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000004000000090000003A505441534B49534E0400000000000000000000
      00090000003A5052554C4549534E0400000000000000000000000E0000003A50
      52554C454954454D5349534E050000000000000000000000080000003A504F42
      4A49534E040000000000000000000000}
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 672
    Top = 584
  end
  object dspSetListParam: TDataSetProvider
    DataSet = qrSetListParam
    ResolveToDataSet = True
    BeforeGetRecords = DSPSetParams
    Left = 708
    Top = 584
  end
  object dspSyncObject: TDataSetProvider
    DataSet = qrSyncObject
    ResolveToDataSet = True
    BeforeGetRecords = DSPSetParams
    BeforeExecute = DSPSetParams
    Left = 496
    Top = 680
  end
  object qrSyncObject: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      '  FIREAGR.SYNCREFUND(:POBJISN);'
      '  COMMIT;'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000001000000080000003A504F424A49534E040000000000000000000000}
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 456
    Top = 680
  end
  object qrSetAddrRemark: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      '  FIREAGR.SETADDRREMARK(:PADDRISN);'
      '  COMMIT;'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000001000000090000003A504144445249534E0400000000000000000000
      00}
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 312
    Top = 680
  end
  object dspSetAddrRemark: TDataSetProvider
    DataSet = qrSetAddrRemark
    ResolveToDataSet = True
    BeforeGetRecords = DSPSetParams
    BeforeExecute = DSPSetParams
    Left = 352
    Top = 680
  end
  object spCopyAgr: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  vC number;'
      'BEGIN'
      
        '  -- '#1054#1087#1088#1077#1076#1077#1083#1103#1077#1084', '#1095#1090#1086' '#1076#1086#1075#1086#1074#1086#1088' '#1103#1074#1083#1103#1077#1090#1089#1103' '#1076#1086#1075#1086#1074#1086#1088#1086#1084' '#1089#1090#1088#1072#1093#1086#1074#1072#1085#1080#1103' '#1072#1074#1090#1086 +
        #1090#1088#1072#1085#1089#1087#1086#1088#1090#1072
      
        '  SELECT COUNT(*) INTO vC FROM Dicti WHERE ISN in (C.Get('#39'AgrMot' +
        'or'#39'), C.Get('#39'AGRCARDISCRETES'#39'))'
      
        '  START WITH ISN=(SELECT RuleISN FROM Agreement WHERE ISN=:pSrcA' +
        'grISN)'
      '  CONNECT BY PRIOR ParentISN=ISN;'
      '  --'
      '  if vC>0 then'
      
        '    MAgrF.CopyAgr(:pSrcAgrISN, :pNewAgrISN, :pNewAgrRuleISN, :pN' +
        'ewAgrDetailISN, :pCopyM, :pAddrISN, :pClientUseBanRule);'
      '  else'
      
        '    ccheck(false,'#39#1050#1086#1087#1080#1088#1086#1074#1072#1085#1080#1077' '#1076#1086#1075#1086#1074#1086#1088#1086#1074' '#1080#1084#1091#1097#1077#1089#1090#1074#1072' '#1085#1077' '#1088#1077#1072#1083#1080#1079#1086#1074#1072#1085#1086 +
        #39');'
      '  end if;'
      '  --'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      03000000070000000B0000003A5053524341475249534E040000000000000000
      0000000B0000003A504E455741475249534E0400000000000000000000000F00
      00003A504E455741475252554C4549534E040000000000000000000000110000
      003A504E455741475244455441494C49534E0400000000000000000000000700
      00003A50434F50594D0400000008000000000000000000000000000000120000
      003A50434C49454E5455534542414E52554C4505000000000000000000000009
      0000003A504144445249534E040000000000000000000000}
    Left = 775
    Top = 8
  end
  object dspAgrIDCheck: TDataSetProvider
    DataSet = qrAgrIDCheck
    Left = 8
    Top = 624
  end
  object qrAgrIDCheck: TOracleDataSet
    SQL.Strings = (
      'begin  '
      
        ':msg := bso_agrid_utils.Check_AgridG(pClassisn=>:Classisn,pDocse' +
        'r=>:DocSer,listno=>:listno, pAgrisn=>:pAgrisn); '
      'end;')
    Optimize = False
    Variables.Data = {
      0300000005000000040000003A4D534705000000000000000000000009000000
      3A434C41535349534E040000000000000000000000070000003A444F43534552
      050000000000000000000000070000003A4C4953544E4F050000000000000000
      000000080000003A5041475249534E040000000000000000000000}
    Session = OraSession
    Left = 32
    Top = 624
  end
  object spUpdateInvisibleFields: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      
        '  MAGRPCALC.UPDATENOTVISIBLEPARAM(:PACTION, :PRULEISN, :PGROUPID' +
        ', :PNO, :PAGRISN);'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000005000000080000003A50414354494F4E050000000000000000000000
      090000003A5052554C4549534E040000000000000000000000090000003A5047
      524F55504944040000000000000000000000040000003A504E4F040000000000
      000000000000080000003A5041475249534E040000000000000000000000}
    Left = 796
    Top = 622
  end
  object qrSetListParamPreCalc: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      
        '  magrpcalc.setlistparambyprecalc(:PTASKISN, :PAGRISN,:PRULEISN,' +
        ' :POBJCLASSISN,:PSUBOBJCLASSISN);'
      '  COMMIT;'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000005000000090000003A505441534B49534E0400000000000000000000
      00080000003A5041475249534E040000000000000000000000090000003A5052
      554C4549534E0400000000000000000000000D0000003A504F424A434C415353
      49534E040000000000000000000000100000003A505355424F424A434C415353
      49534E040000000000000000000000}
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 672
    Top = 624
  end
  object dspSetListParamPreCalc: TDataSetProvider
    DataSet = qrSetListParamPreCalc
    ResolveToDataSet = True
    BeforeGetRecords = DSPSetParams
    Left = 712
    Top = 624
  end
  object dspCheckPhone: TDataSetProvider
    DataSet = qCheckPhone
    Left = 608
    Top = 136
  end
  object qCheckPhone: TOracleDataSet
    SQL.Strings = (
      'begin'
      
        '  CLIENT_APPL.CheckPhone_p(:pPhone, :pSubIsn, :pClassisn, :pIsn)' +
        ';'
      'end;')
    Optimize = False
    Variables.Data = {
      0300000004000000070000003A5050484F4E4505000000000000000000000005
      0000003A5049534E0400000000000000000000000A0000003A50434C41535349
      534E040000000000000000000000080000003A5053554249534E040000000000
      000000000000}
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 624
    Top = 136
  end
  object qrRepairTerms: TOracleDataSet
    SQL.Strings = (
      
        'SELECT ISN, SubStr(InitCapFirst(LocDictName(ISN, ShortName)),1,4' +
        '0) AS Name'
      'FROM Dicti'
      'WHERE ParentISN=C.Get('#39'MSREPAIRTERMS'#39') AND Active IS NOT NULL'
      'ORDER BY Code')
    Optimize = False
    OracleDictionary.RequiredFields = False
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 491
    Top = 541
  end
  object dspRepairTerms: TDataSetProvider
    DataSet = qrRepairTerms
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeGetRecords = DSPSetParams
    Left = 537
    Top = 541
  end
  object qrSetModifVisible: TOracleDataSet
    SQL.Strings = (
      'begin'
      '  MAgrCar.SetModifVisible(:pModelISN, :pModifVisible);'
      '  commit;'
      'end;')
    Optimize = False
    Variables.Data = {
      03000000020000000A0000003A504D4F44454C49534E04000000000000000000
      00000E0000003A504D4F44494656495349424C45050000000000000000000000}
    Session = OraSession
    Left = 16
    Top = 563
  end
  object dspSetModifVisible: TDataSetProvider
    DataSet = qrSetModifVisible
    ResolveToDataSet = True
    Left = 60
    Top = 563
  end
  object qrFireDiscount: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      
        '  :Result := fireagr.fcur_discount(:pAgrISN, :pAddIsn, :pRuleIsn' +
        ');'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000004000000070000003A524553554C5474000000000000000000000008
      0000003A5041475249534E040000000000000000000000080000003A50414444
      49534E040000000000000000000000090000003A5052554C4549534E04000000
      0000000000000000}
    OracleDictionary.RequiredFields = False
    UniqueFields = 'DiscountClassIsn'
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 420
    Top = 738
  end
  object dspFireDiscount: TDataSetProvider
    DataSet = qrFireDiscount
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = DSPSetParams
    BeforeGetRecords = DSPSetParams
    Left = 456
    Top = 738
  end
  object spFireDiscount: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  fireagr.updatediscount(:AgrIsn, :AddIsn, :DiscountClassIsn,'
      
        '                         :DiscountValue, :DiscountTypeIsn, :Rule' +
        'Isn, :Base);'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Left = 492
    Top = 738
  end
  object qrGetInsDurationPeriod: TOracleDataSet
    SQL.Strings = (
      
        'select PRORATA_METHODS.GetInsDurationPeriodN(:pAgrISN, :pDateClo' +
        'se, :pRiskRuleISN) as res from dual')
    Optimize = False
    Variables.Data = {
      0300000003000000080000003A5041475249534E040000000000000000000000
      0B0000003A5044415445434C4F53450C00000000000000000000000C0000003A
      5249534B52554C4549534E040000000000000000000000}
    Session = OraSession
    Left = 40
    Top = 738
  end
  object dspGetInsDurationPeriod: TDataSetProvider
    DataSet = qrGetInsDurationPeriod
    ResolveToDataSet = True
    Left = 108
    Top = 738
  end
  object qrUpdateClaimRefundCar: TOracleDataSet
    SQL.Strings = (
      'begin'
      '  MAgrBM.UpdateClaimRefundCar(:pISN, :pAgrISN);  '
      '  commit;'
      'end;')
    Optimize = False
    Variables.Data = {
      0300000002000000050000003A5049534E040000000000000000000000080000
      003A5041475249534E040000000000000000000000}
    Session = OraSession
    Left = 672
    Top = 730
  end
  object dspUpdateClaimRefundCar: TDataSetProvider
    DataSet = qrUpdateClaimRefundCar
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeExecute = dspUpdateClaimRefundCarBeforeExecute
    Left = 748
    Top = 730
  end
  object qrDiscountLiab: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      
        ' :Result:=MAGRF.FCur_Discount( :pAgrISN, :pAddISN, :pRiskRuleISN' +
        ');'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000004000000070000003A524553554C5474000000000000000000000008
      0000003A5041475249534E040000000000000000000000080000003A50414444
      49534E0400000000000000000000000D0000003A505249534B52554C4549534E
      040000000000000000000000}
    OracleDictionary.RequiredFields = False
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 8
    Top = 552
  end
  object dspDiscountLiab: TDataSetProvider
    DataSet = qrDiscountLiab
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = dspDiscountLiabBeforeApplyUpdates
    BeforeGetRecords = DSPSetParams
    Left = 32
    Top = 552
  end
  object spDiscountLiab: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      'MAGRF.UpdateDiscount(:pExe, :pISN, :pAgrISN, :pTariff,'
      '  :pX1, :pTariffClassISN, :pRemark,  false,'
      '  :pCalcPrevDiscount,'
      '  :pRiskRuleISN,'
      '  :pBase'
      '  );'
      '  COMMIT;'
      'END;'
      ' ')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      030000000A000000050000003A50455845050000000000000000000000050000
      003A5049534E040000000000000000000000080000003A5041475249534E0400
      00000000000000000000080000003A5054415249464604000000000000000000
      0000040000003A505831040000000000000000000000100000003A5054415249
      4646434C41535349534E040000000000000000000000080000003A5052454D41
      524B050000000000000000000000120000003A5043414C435052455644495343
      4F554E540400000000000000000000000D0000003A505249534B52554C454953
      4E040000000000000000000000060000003A5042415345040000000000000000
      000000}
    Left = 64
    Top = 552
  end
  object qrDiscountHist: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      ' :Result:=MAGRF.FCur_DiscountHist(:pAgrTariffISN);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000002000000070000003A524553554C547400000000000000000000000E
      0000003A5041475254415249464649534E040000000000000000000000}
    OracleDictionary.RequiredFields = False
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 208
    Top = 744
  end
  object dspDiscountHist: TDataSetProvider
    DataSet = qrDiscountHist
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeGetRecords = DSPSetParams
    Left = 248
    Top = 744
  end
  object qrScanAbCar: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      ' :Result:=MESSAGES_UTILS.FCur_ScanAbCar(:pAgrISN);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000002000000070000003A524553554C5474000000000000000000000008
      0000003A5041475249534E040000000000000000000000}
    OracleDictionary.RequiredFields = False
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 20
    Top = 261
  end
  object dspScanAbCar: TDataSetProvider
    DataSet = qrScanAbCar
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    Left = 52
    Top = 260
  end
  object dspScanAbSubj: TDataSetProvider
    DataSet = qrScanAbSubj
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    Left = 245
    Top = 91
  end
  object qrScanAbSubj: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      ' :Result:=MESSAGES_UTILS.FCur_ScanAbSubj(:pAgrISN);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000002000000070000003A524553554C5474000000000000000000000008
      0000003A5041475249534E040000000000000000000000}
    OracleDictionary.RequiredFields = False
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 216
    Top = 91
  end
  object qrBMCalcPlan: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      ' :Result:=MAGRBM.GetBMCalcPlan(:pAgrISN);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000002000000070000003A524553554C5474000000000000000000000008
      0000003A5041475249534E040000000000000000000000}
    OracleDictionary.RequiredFields = False
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 316
    Top = 738
  end
  object dspBMCalcPlan: TDataSetProvider
    DataSet = qrBMCalcPlan
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeGetRecords = DSPSetParams
    Left = 360
    Top = 738
  end
  object sp_CheckFireLimitCoucur: TOracleDataSet
    SQL.Strings = (
      'begin'
      ' :Result := FIREAGR.CheckFireLimitCoucur(:pAgrISN);'
      'end;')
    Optimize = False
    Variables.Data = {
      0300000002000000080000003A5041475249534E040000000000000000000000
      070000003A524553554C54040000000000000000000000}
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 384
    Top = 624
  end
  object dspCheckFireLimitCoucur: TDataSetProvider
    DataSet = sp_CheckFireLimitCoucur
    BeforeGetRecords = DSPSetParams
    BeforeExecute = DSPSetParams
    Left = 368
    Top = 616
  end
  object spQueueLimit: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      '  MAGRF.QueueLimitDealerNew(:pAgrISN, :pAddISN); '
      'END;')
    Optimize = False
    Variables.Data = {
      0300000002000000080000003A5041475249534E040000000000000000000000
      080000003A5041444449534E040000000000000000000000}
    Session = OraSession
    Left = 768
    Top = 384
  end
  object dspQueueLimit: TDataSetProvider
    DataSet = spQueueLimit
    Left = 808
    Top = 384
  end
  object qrSetPriorityMake: TOracleDataSet
    SQL.Strings = (
      'begin'
      '  MAgrCar.SetPriorityMake(:pMakeISN, :pPriorityMake);'
      '  commit;'
      'end;')
    Optimize = False
    Variables.Data = {
      03000000020000000A0000003A504D4F44454C49534E04000000000000000000
      00000E0000003A504D4F44494656495349424C45050000000000000000000000}
    Session = OraSession
    Left = 360
    Top = 491
  end
  object dspSetPriorityMake: TDataSetProvider
    DataSet = qrSetPriorityMake
    ResolveToDataSet = True
    Left = 404
    Top = 491
  end
  object spUpdatePreCalc: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  AGRC.UpdatePreCalcID(:pAgrISN, :pPreCalcISN, :pDel);'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000003000000080000003A5041475249534E040000000000000000000000
      0C0000003A5050524543414C4349534E04000000000000000000000005000000
      3A5044454C040000000000000000000000}
    Left = 668
    Top = 142
  end
  object dspAgrClaimBM: TDataSetProvider
    DataSet = qrAgrClaimBM
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    Left = 72
    Top = 792
  end
  object qrAgrClaimBM: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      ' :Result:=MAGRBM.FCur_AgrClaimBM(:pAgrIsn, :pCalcDate);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000003000000070000003A524553554C5474000000000000000000000008
      0000003A5041475249534E0400000000000000000000000A0000003A5043414C
      43444154450C0000000000000000000000}
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 40
    Top = 800
  end
  object dspClaiminvoiceBM_New: TDataSetProvider
    DataSet = qrClaiminvoiceBM_New
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = DSPSetParams
    BeforeGetRecords = DSPSetParams
    Left = 432
    Top = 784
  end
  object qrClaiminvoiceBM_New: TOracleDataSet
    SQL.Strings = (
      'select  2 as checked,'
      '        nvl(d.fullname,d.shortname) as UnitClassName, '
      '        cl.includeamount as unitqnt, '
      '        c.isn as InvoiceIsn,'
      '        cl.refundisn,'
      '        cl.unitclassisn,'
      '        cl.processclassisn,'
      '        cl.isn,'
      '        sum(cl.includeamount) over() as amounttotal '
      '   from claiminvoiceline cl, claiminvoice c, dicti d'
      ' where cl.refundisn = :pRefundisn'
      '   and c.isn = cl.invoiceisn'
      '   and c.classisn = c.get('#39'REFUNDDOC_PRESURVEY'#39')'
      '   and trunc(c.signed) = trunc(:pDateevent)'
      '   and d.isn = cl.unitclassisn')
    Optimize = False
    Variables.Data = {
      03000000020000000B0000003A50524546554E4449534E050000000000000000
      0000000B0000003A50444154454556454E54050000000000000000000000}
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 392
    Top = 800
  end
  object qrAgrClaimBM_New: TOracleDataSet
    SQL.Strings = (
      'select rownum rn,a.*'
      'from'
      ' (select  --rownum rn,'
      '        ar.parentisn,'
      '        ar.agrisn, '
      '        ar.dateevent,'
      '        --rr.isn as  RiskIsn,'
      '        rr.classisn as RiskClassIsn,'
      '        initcap(rr.name) as RiskName,'
      '        ar.classisn,  '
      '        initcap(d.shortname) as ClassName, '
      '        ar.claimsum as refundsum,'
      '        ar.isn as refundisn,'
      '        rr.ruleisn,'
      '        ar.objisn,'
      '        ar.condisn,'
      
        '        decode(nvl(ar.regress, '#39'N'#39'), '#39'Y'#39', 2, 0) checkedregress -' +
        '-15.09.2014 Andriyakhin '
      '  from agrrefund ar, agrrisk rr, dicti d'
      ' where ar.agrisn = :pAgrIsn --79563449903 '
      '   --and ar.claimisn = 102346487803'
      '   and trunc(ar.dateevent) = :pDateCalc--trunc(sysdate)'
      '   and nvl(ar.status,'#39'A'#39') <> '#39'A'#39
      '   and rr.isn = ar.riskisn'
      '   and d.isn = ar.classisn'
      
        '  order by decode(ar.parentisn,null,0,1),to_date(ar.created,'#39'dd.' +
        'mm.yyyy hh:mi:ss'#39')) a')
    Optimize = False
    Variables.Data = {
      0300000002000000080000003A5041475249534E040000000000000000000000
      0A0000003A504441544543414C430C0000000000000000000000}
    OracleDictionary.RequiredFields = False
    QBEDefinition.QBEFieldDefs = {
      04000000120000000300000049534E0100000000000900000054415249464649
      534E010000000000020000005831010000000000020000005832010000000000
      0200000058330100000000000200000058340100000000000200000058350100
      0000000006000000544152494646010000000000070000004441544542454701
      00000000000700000044415445454E4401000000000007000000555044415445
      44010000000000090000005550444154454442590100000000000D0000005550
      444154454442594E414D450100000000000600000058314E414D450100000000
      000600000058324E414D450100000000000600000058334E414D450100000000
      000600000058344E414D450100000000000600000058354E414D450100000000
      00}
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 165
    Top = 788
  end
  object dspAgrClaimBM_New: TDataSetProvider
    DataSet = qrAgrClaimBM_New
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeGetRecords = DSPSetParams
    Left = 212
    Top = 796
  end
  object spAgrClaimBM_New: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  MAGRBM.UpdateAgrClaimBM (:PEX,'
      '                  :AGRISN,'
      '                  :DATEEVENT, '
      '                  :CLASSISN, '
      '                  :REFUNDSUM,'
      '                  :DESCISN,'
      '                  :CONDISN,'
      '                  :RISKCLASSISN,'
      '                  :RN,'
      '                  :REFUNDISN);'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      030000000A000000040000003A50455805000000000000000000000007000000
      3A41475249534E0400000000000000000000000A0000003A444154454556454E
      540C0000000000000000000000090000003A434C41535349534E040000000000
      0000000000000A0000003A524546554E4453554D040000000000000000000000
      080000003A4445534349534E040000000000000000000000080000003A434F4E
      4449534E0400000000000000000000000D0000003A5249534B434C4153534953
      4E040000000000000000000000030000003A524E040000000000000000000000
      0A0000003A524546554E4449534E040000000000000000000000}
    Left = 760
    Top = 788
  end
  object dspCalcExpectedBM: TDataSetProvider
    DataSet = qrCalcExpectedBM
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    Left = 672
    Top = 792
  end
  object qrCalcExpectedBM: TOracleDataSet
    SQL.Strings = (
      'begin'
      '  MAGRBM.CalcExpectedBM('
      ':pInvoiceIsn,'
      ':pDescIsn,'
      ':pRiskClassIsn,'
      ':pRefundIsn,'
      ':pAgrISN,'
      ':pRuleisn,'
      ':pLossRatio,'
      ':pRefundCount,'
      ':pCondisn,'
      ':pRefundClassIsn, '
      ':pRegressRefundCount,'
      ':pNewBonus);'
      'end;')
    Optimize = False
    Variables.Data = {
      030000000D000000070000003A524553554C540500000000000000000000000C
      0000003A50494E564F49434549534E040000000000000000000000090000003A
      504445534349534E0400000000000000000000000E0000003A505249534B434C
      41535349534E0400000000000000000000000B0000003A50524546554E444953
      4E040000000000000000000000080000003A5041475249534E04000000000000
      0000000000090000003A5052554C4549534E0400000000000000000000000B00
      00003A504C4F5353524154494F0400000000000000000000000D0000003A5052
      4546554E44434F554E54040000000000000000000000090000003A50434F4E44
      49534E040000000000000000000000100000003A50524546554E44434C415353
      49534E040000000000000000000000140000003A505245475245535352454655
      4E44434F554E540400000000000000000000000A0000003A504E4557424F4E55
      53050000000000000000000000}
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 616
    Top = 800
  end
  object dspUpdAgrClaimBM: TDataSetProvider
    DataSet = spUpdAgrClaimBM
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    Left = 332
    Top = 788
  end
  object spUpdAgrClaimBM: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      '  MAGRBM.UpdateAgrClaimBM (:PEX,'
      '                  :PAGRISN,'
      '                  :PDATEEVENT, '
      '                  :PCLASSISN, '
      '                  :PREFUNDSUM,'
      '                  :PDESCISN,'
      '                  :PCONDISN,'
      '                  :PRISKCLASSISN,'
      '                  :PRN,'
      '                  :PREFUNDISN,'
      '                  :PREGRESS);'
      '  COMMIT;'
      'END;')
    Optimize = False
    Variables.Data = {
      030000000B000000040000003A50455805000000000000000000000008000000
      3A5041475249534E0400000000000000000000000B0000003A50444154454556
      454E540C00000000000000000000000A0000003A50434C41535349534E040000
      0000000000000000000B0000003A50524546554E4453554D0400000000000000
      00000000090000003A504445534349534E040000000000000000000000090000
      003A50434F4E4449534E0400000000000000000000000E0000003A505249534B
      434C41535349534E040000000000000000000000040000003A50524E04000000
      00000000000000000B0000003A50524546554E4449534E040000000000000000
      000000090000003A5052454752455353050000000000000000000000}
    OracleDictionary.RequiredFields = False
    QBEDefinition.QBEFieldDefs = {
      04000000120000000300000049534E0100000000000900000054415249464649
      534E010000000000020000005831010000000000020000005832010000000000
      0200000058330100000000000200000058340100000000000200000058350100
      0000000006000000544152494646010000000000070000004441544542454701
      00000000000700000044415445454E4401000000000007000000555044415445
      44010000000000090000005550444154454442590100000000000D0000005550
      444154454442594E414D450100000000000600000058314E414D450100000000
      000600000058324E414D450100000000000600000058334E414D450100000000
      000600000058344E414D450100000000000600000058354E414D450100000000
      00}
    Session = OraSession
    Left = 277
    Top = 788
  end
  object spUpdClaiminvoiceBM_New: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      '  CAR_STOA.LoadSTOAAccount(:PINVOICEISN,'
      '                           :PREFUNDISN,'
      '                           :PUNITCLASSISN,'
      '                           :PPROCESSCLASSISN,'
      '                           :PREMARK,'
      '                           :PUNITQNT);'
      'END;')
    Optimize = False
    Variables.Data = {
      03000000060000000C0000003A50494E564F49434549534E0400000000000000
      000000000B0000003A50524546554E4449534E0400000000000000000000000E
      0000003A50554E4954434C41535349534E040000000000000000000000110000
      003A5050524F43455353434C41535349534E0400000000000000000000000800
      00003A5052454D41524B050000000000000000000000090000003A50554E4954
      514E54040000000000000000000000}
    Session = OraSession
    Left = 488
    Top = 800
  end
  object dspUpdClaiminvoiceBM_New: TDataSetProvider
    DataSet = spUpdClaiminvoiceBM_New
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    Left = 528
    Top = 784
  end
  object dspUpdClaiminvoiceline: TDataSetProvider
    DataSet = spUpdClaiminvoiceline
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    Left = 336
    Top = 848
  end
  object dspDelClaiminvoiceline: TDataSetProvider
    DataSet = spDelClaiminvoiceline
    Left = 440
    Top = 848
  end
  object spUpdClaiminvoiceline: TOracleDataSet
    SQL.Strings = (
      'begin'
      ' update claiminvoiceline cl'
      '    set cl.amount = :UNITQNT, cl.includeamount = :UNITQNT'
      '  where cl.isn = :ISN;'
      'end;')
    Optimize = False
    Variables.Data = {
      0300000002000000080000003A554E4954514E54040000000000000000000000
      040000003A49534E040000000000000000000000}
    Session = OraSession
    Left = 280
    Top = 848
  end
  object spDelClaiminvoiceline: TOracleDataSet
    SQL.Strings = (
      'begin'
      ' delete from claiminvoiceline cl    '
      ' where cl.isn = :ISN;'
      'end;')
    Optimize = False
    Variables.Data = {0300000001000000040000003A49534E040000000000000000000000}
    Session = OraSession
    Left = 392
    Top = 848
  end
  object spSendCalcRequestXML: TOracleQuery
    SQL.Strings = (
      'begin'
      
        '  :Result:=MAgrBM_RSA.SendCalcRequestXML(:pAgrISN, :pAddISN, :pT' +
        'ype, :pXmlDoc, :pMsg);'
      '  COMMIT;'
      'end;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000006000000070000003A524553554C5404000000000000000000000008
      0000003A5041475249534E040000000000000000000000080000003A50414444
      49534E040000000000000000000000060000003A505459504504000000000000
      0000000000080000003A50584D4C444F43050000000000000000000000050000
      003A504D5347050000000000000000000000}
    Left = 760
    Top = 128
  end
  object spGetCalcResponse: TOracleQuery
    SQL.Strings = (
      'begin'
      '  :Result:=MAgrBM_RSA.GetCalcResponse(:pSendCalcKBMISN, :pType);'
      '  COMMIT;'
      'end;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000003000000070000003A524553554C5405000000000000000000000010
      0000003A5053454E4443414C434B424D49534E04000000000000000000000006
      0000003A5054595045040000000000000000000000}
    Left = 832
    Top = 72
  end
  object spFindOSAGO: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  MAGRF.GetOsagoNum(:pAgrISN);'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000001000000080000003A5041475249534E040000000000000000000000}
    Left = 836
    Top = 134
  end
  object qrGetAllowEmail: TOracleDataSet
    SQL.Strings = (
      'begin'
      '  :Result:=Subj.GetSubjPhones(:pClientISN);'
      'end;'
      '')
    Optimize = False
    Variables.Data = {
      0300000002000000070000003A524553554C547400000000000000000000000B
      0000003A50434C49454E5449534E040000000000000000000000}
    Session = OraSession
    Left = 360
    Top = 579
  end
  object dspGetAllowEmail: TDataSetProvider
    DataSet = qrGetAllowEmail
    ResolveToDataSet = True
    Left = 404
    Top = 579
  end
  object qrSendPolicyByEmail: TOracleDataSet
    SQL.Strings = (
      'begin'
      '  WSAgr.SendPolicyByEmail(:pAgrISN, :pEmail);'
      '  commit;'
      'end;')
    Optimize = False
    Variables.Data = {
      0300000002000000080000003A5041475249534E040000000000000000000000
      070000003A50454D41494C050000000000000000000000}
    Session = OraSession
    Left = 536
    Top = 587
  end
  object dspSendPolicyByEmail: TDataSetProvider
    DataSet = qrSendPolicyByEmail
    ResolveToDataSet = True
    Left = 580
    Top = 587
  end
  object spChangeModifStat: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  MAGRCAR.ChangeModifStatus(:pISN, :pStatus);'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000002000000050000003A5049534E040000000000000000000000080000
      003A50535441545553050000000000000000000000}
    Left = 836
    Top = 182
  end
  object spCalcInsSumGap: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  MAGRF.CalcInsuredSumGap(:pAgrISN);'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000001000000080000003A5041475249534E040000000000000000000000}
    Left = 836
    Top = 230
  end
  object dspAddOptions: TDataSetProvider
    DataSet = qrAddOptions
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = DSPSetParams
    BeforeGetRecords = DSPSetParams
    Left = 1036
    Top = 22
  end
  object qrAddOptions: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      '  :Result:=MAGRFC.FCur_ExtOption(:pAgrISN,:pAddISN);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000003000000070000003A524553554C5474000000000000000000000008
      0000003A5041475249534E040000000000000000000000080000003A50414444
      49534E040000000000000000000000}
    OracleDictionary.RequiredFields = False
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 996
    Top = 22
  end
  object spAddOptions: TOracleQuery
    SQL.Strings = (
      ' BEGIN'
      '  MAGRFC.UpdateExtOption('
      ' :AgrISN, :AddISN, :FranchForm1, '
      ' :FranchType1,:FranchSum1, :FranchTariff1, :FranchCurrIsn1,'
      ' :NoAmort1,:RiskMotorSelfFire1, :RHire1,'
      ' :PSSEx1,  :AvtoRun1, :ProdExtPersInspector1, '
      ' :ProdExtBonusSave1, :UTS1, :DETAIL1TIME          '
      ' );'
      '  COMMIT;'
      'END;'
      ' '
      ' '
      ' ')
    Session = OraSession
    Optimize = False
    Left = 1076
    Top = 22
  end
  object dspCrossSales: TDataSetProvider
    DataSet = spCrossSales
    Left = 800
    Top = 560
  end
  object spCrossSales: TOracleDataSet
    SQL.Strings = (
      'begin'
      '  CROSSSALES_UTILS.SetAttrCrossSales_p(:PAGRISN, :PPRIZN);'
      '  commit;'
      'end;')
    Optimize = False
    Variables.Data = {
      0300000002000000080000003A5041475249534E040000000000000000000000
      070000003A505052495A4E030000000000000000000000}
    Session = OraSession
    Left = 840
    Top = 560
  end
  object qrRiskCtgML: TOracleDataSet
    SQL.Strings = (
      
        'SELECT ISN, SubStr(InitCapFirst(LocDictName(ISN, ShortName)),1,4' +
        '0) AS Name'
      'FROM Dicti'
      'WHERE ParentISN=C.Get('#39'RiskCtgML'#39') AND Active IS NOT NULL'
      'ORDER BY Code')
    Optimize = False
    OracleDictionary.RequiredFields = False
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 883
    Top = 5
  end
  object dspRiskCtgML: TDataSetProvider
    DataSet = qrRiskCtgML
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeGetRecords = DSPSetParams
    Left = 929
    Top = 5
  end
  object spNextAgrSet: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  MAGRF.NextAgrIdSet(:pAgrISN, :pNextAgrISN);'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000002000000080000003A5041475249534E040000000000000000000000
      0C0000003A504E45585441475249534E040000000000000000000000}
    Left = 836
    Top = 278
  end
  object spChooseAgentAgrForDiscountA: TOracleQuery
    SQL.Strings = (
      'begin'
      
        '  :Result:=MAGRF.ChooseAgentAgrForDiscountA(:pAgrISN, :pAddISN, ' +
        ':pUserIsn, :pAgentAgrId);'
      '  COMMIT;'
      'end;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000005000000070000003A524553554C5404000000000000000000000008
      0000003A5041475249534E040000000000000000000000080000003A50414444
      49534E040000000000000000000000090000003A505553455249534E04000000
      00000000000000000C0000003A504147454E5441475249440500000000000000
      00000000}
    Left = 824
    Top = 336
  end
  object spSearchRequestID: TOracleQuery
    SQL.Strings = (
      'begin'
      '  :Result:=MAGRBM.SearchRequestID(:pAgrISN, :pRequestID);'
      '  COMMIT;'
      'end;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000003000000070000003A524553554C5404000000000000000000000008
      0000003A5041475249534E0400000000000000000000000B0000003A50524551
      554553544944050000000000000000000000}
    Left = 560
    Top = 604
  end
  object qrPayCard: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      '  :Result:=ais.PAYCARD_UTILS.FCUR_PayCard(:pISN);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000002000000070000003A524553554C5474000000000000000000000005
      0000003A5049534E040000000000000000000000}
    OracleDictionary.RequiredFields = False
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 936
    Top = 176
  end
  object dspPayCard: TDataSetProvider
    DataSet = qrPayCard
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = DSPSetParams
    BeforeGetRecords = DSPSetParams
    Left = 936
    Top = 216
  end
  object spPayCard: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  AIS.PAYCARD_UTILS.UpdateCard('
      '         :pEx,'
      '         :ISN,                           '
      '         :ClassISN,                         '
      '         :Active,   '
      '         :DateBeg,                        '
      '         :DateEnd,                        '
      '         :Id,      '
      '         :SubjISN, '
      '         :SubaccISN, '
      '         :CardNo,'
      '         :PaySystemISN,'
      '         :CardProductISN, '
      '         :Overdraft, '
      '         :SubjCheckDate,'
      '         :SubjApproved,'
      '         :CardApproved,'
      '         :PaymentSum,'
      '         :CurrISN,'
      '         :AgrISN,'
      '         :LoanCharge);     '
      'END;'
      ' '
      ' '
      ' ')
    Session = OraSession
    Optimize = False
    Variables.Data = {0300000001000000040000003A504558050000000000000000000000}
    Left = 932
    Top = 134
  end
  object dspQrCrSl: TDataSetProvider
    DataSet = qrCrSl
    Left = 928
    Top = 280
  end
  object qrCrSl: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      
        '  :Result:=ais.CROSSSALES_UTILS.FCur_ListAgrCrossSalesGO (:pAgrI' +
        'SN);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000002000000070000003A524553554C5474000000000000000000000008
      0000003A5041475249534E040000000000000000000000}
    OracleDictionary.RequiredFields = False
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 960
    Top = 280
  end
  object dspCrtAgrCrSls: TDataSetProvider
    DataSet = spCrtAgrCrSls
    Left = 936
    Top = 336
  end
  object spCrtAgrCrSls: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      
        'ais.CROSSSALES_UTILS.CreateListAgrCrossSalesGO_p (:pAgrISN, :pNe' +
        'wAgrISN, :pTaskISN, :pValue);'
      'commit;'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000004000000080000003A5041475249534E040000000000000000000000
      090000003A505441534B49534E040000000000000000000000070000003A5056
      414C55450500000000000000000000000B0000003A504E455741475249534E04
      0000000000000000000000}
    OracleDictionary.RequiredFields = False
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 952
    Top = 336
  end
  object dspAgrSubject: TDataSetProvider
    DataSet = qrAgrSubject
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeGetRecords = DSPSetParams
    Left = 933
    Top = 70
  end
  object qrAgrSubject: TOracleDataSet
    SQL.Strings = (
      'select subjisn'
      '  from agrrole'
      ' where agrisn = :pAgrIsn'
      '   and classisn = c.get('#39'AGENT'#39')'
      '   and sharepc is not null'
      ' order by sharepc desc nulls last')
    ReadBuffer = 2
    Optimize = False
    Variables.Data = {
      0300000001000000080000003A5041475249534E040000000000000000000000}
    OracleDictionary.RequiredFields = False
    ReadOnly = True
    QueryAllRecords = False
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 883
    Top = 174
  end
  object spPJAgrSearchForDiscountPJ: TOracleQuery
    SQL.Strings = (
      'begin'
      
        '  :Result:=MAGRF.PJAgrSearchForDiscountPJ(:pAgrISN, :pAddISN, :p' +
        'UserIsn, :pAgrId, :pTariff);'
      '  COMMIT;'
      'end;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000006000000070000003A524553554C5404000000000000000000000008
      0000003A5041475249534E040000000000000000000000080000003A50414444
      49534E040000000000000000000000090000003A505553455249534E04000000
      0000000000000000070000003A50414752494405000000000000000000000008
      0000003A50544152494646040000000000000000000000}
    Left = 880
    Top = 408
  end
  object qrDiscountGAP: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      
        ' :Result:=MAGRF.FCur_Discount( :pAgrISN, :pAddISN, :pRiskRuleISN' +
        ');'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000004000000070000003A524553554C5474000000000000000000000008
      0000003A5041475249534E040000000000000000000000080000003A50414444
      49534E0400000000000000000000000D0000003A505249534B52554C4549534E
      040000000000000000000000}
    OracleDictionary.RequiredFields = False
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 864
    Top = 608
  end
  object dspDiscountGAP: TDataSetProvider
    DataSet = qrDiscountGAP
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = dspDiscountGAPBeforeApplyUpdates
    BeforeGetRecords = dspDiscountGAPBeforeGetRecords
    Left = 896
    Top = 608
  end
  object spDiscountGAP: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      'MAGRF.UpdateDiscount(:pExe, :pISN, :pAgrISN, :pTariff,'
      '  :pX1, :pTariffClassISN, :pRemark,  false,'
      '  :pCalcPrevDiscount,'
      '  :pRiskRuleISN,'
      '  :pBase'
      '  );'
      '  COMMIT;'
      'END;'
      ' ')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      030000000A000000050000003A50455845050000000000000000000000050000
      003A5049534E040000000000000000000000080000003A5041475249534E0400
      00000000000000000000080000003A5054415249464604000000000000000000
      0000040000003A505831040000000000000000000000100000003A5054415249
      4646434C41535349534E040000000000000000000000080000003A5052454D41
      524B050000000000000000000000120000003A5043414C435052455644495343
      4F554E540400000000000000000000000D0000003A505249534B52554C454953
      4E040000000000000000000000060000003A5042415345040000000000000000
      000000}
    Left = 928
    Top = 609
  end
  object spGetCarCategory: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      
        '  MAGRCAR.GetCarCategory(:pModel, :pSeats, :pMaxLoad, :pCategory' +
        'Isn, :pCategoryCode);'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000005000000070000003A504D4F44454C04000000000000000000000007
      0000003A505345415453040000000000000000000000090000003A504D41584C
      4F41440400000000000000000000000D0000003A5043415445474F525949534E
      0400000000000000000000000E0000003A5043415445474F5259434F44450500
      00000000000000000000}
    Left = 884
    Top = 286
  end
  object dspDiscretes: TDataSetProvider
    DataSet = qrDiscretes
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = DSPSetParams
    BeforeGetRecords = DSPSetParams
    Left = 1036
    Top = 70
  end
  object qrDiscretes: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      '  :Result:=MAGRFC.FCur_DiscrAgrObjCond(:pAgrISN,:pAddISN);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000003000000070000003A524553554C5474000000000000000000000008
      0000003A5041475249534E040000000000000000000000080000003A50414444
      49534E040000000000000000000000}
    OracleDictionary.RequiredFields = False
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 996
    Top = 70
  end
  object spDiscretes: TOracleQuery
    SQL.Strings = (
      ''
      ''
      'BEGIN'
      '  MagrFC.UpdDiscrAgrObjCond'
      '('
      ':AgrIsn,'
      ':AddIsn, '
      ':Isn, '
      ':RDamage,'
      ':RTotalLoss, '
      ':RStealage, '
      ':VariantIsn'
      ');'
      ' COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000002000000070000003A41475249534E04000000000000000000000007
      0000003A41444449534E040000000000000000000000}
    Left = 1076
    Top = 70
  end
  object qrDiscrParams: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      
        '  :Result:=MAGRFC.FCur_DiscrAgrObjTempl(:pAgrISN, :pObjISN, :pAd' +
        'dISN);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000004000000070000003A524553554C5474000000000000000000000008
      0000003A5041475249534E040000000000000000000000080000003A504F424A
      49534E040000000000000000000000080000003A5041444449534E0400000000
      00000000000000}
    OracleDictionary.RequiredFields = False
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 996
    Top = 118
  end
  object dspDiscrParams: TDataSetProvider
    DataSet = qrDiscrParams
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = DSPSetParams
    BeforeGetRecords = DSPSetParams
    Left = 1036
    Top = 118
  end
  object spDiscrParams: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  MagrFC.UpdDiscrAgrObjTempl'
      '('
      ':pEx,'
      ':ISN, '
      ':ObjISN, '
      ':ObjClassISN,'
      ':AgrISN, '
      ':ObjParamType, '
      ':ObjParamValue,'
      ':ObjParamValueName,'
      ':ObjParamClassISN,'
      ':AddIsn'
      ');'
      ' COMMIT;'
      'END;'
      ' '
      ' ')
    Session = OraSession
    Optimize = False
    Variables.Data = {0300000001000000040000003A504558050000000000000000000000}
    Left = 1076
    Top = 118
  end
  object qrDiscretesCond: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      '  :Result:=MAGRFC.FCUR_DiscretesCOND(:pAgrISN,:pAddISN);'
      'END;'
      '')
    Optimize = False
    Variables.Data = {
      0300000003000000070000003A524553554C5474000000000000000000000008
      0000003A5041475249534E040000000000000000000000080000003A50414444
      49534E040000000000000000000000}
    OracleDictionary.RequiredFields = False
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 996
    Top = 166
  end
  object dspDiscretesCond: TDataSetProvider
    DataSet = qrDiscretesCond
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = DSPSetParams
    BeforeGetRecords = DSPSetParams
    Left = 1036
    Top = 166
  end
  object spDiscretesCond: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      'MAGRFC.UpdDiscretesAgrObj('
      '    :RDiscretes, '
      '    :RADDCOST, '
      '    :AgrISN, '
      '    :AddISN, '
      '    :InsCurrISN,'
      '    :DateBeg, '
      '    :DateEnd, '
      '    :DateCalc,'
      '    :RefundFormISN,'
      '    :RefundSysISN,'
      '    :RefundLimISN,'
      '    :RiskMotorBreakage,'
      '    :RiskMotorRoadAss, '
      '    :RiskMotorRoadAssFormISN,'
      '    :RiskMotorRoadAssLimitISN,'
      '    :RiskMotorRoadAssCount,'
      '    :InsuredSum,'
      '    :AddCostSum,'
      '    :PurposeVUseISN,'
      '    :NoAmort'
      '    ,:CTGISN --'#1082#1072#1090#1077#1075#1086#1088#1080#1103' '#1088#1080#1089#1082#1072' task 70607849203'
      '    );'
      '  COMMIT;'
      'END;'
      ' '
      ' '
      ' ')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      03000000140000000B0000003A52444953435245544553050000000000000000
      000000090000003A52414444434F535405000000000000000000000007000000
      3A41475249534E040000000000000000000000070000003A41444449534E0400
      000000000000000000000B0000003A494E534355525249534E04000000000000
      0000000000080000003A444154454245470C0000000000000000000000080000
      003A44415445454E440C0000000000000000000000090000003A444154454341
      4C430C00000000000000000000000E0000003A524546554E44464F524D49534E
      0400000000000000000000000D0000003A524546554E4453595349534E040000
      0000000000000000000D0000003A524546554E444C494D49534E040000000000
      000000000000120000003A5249534B4D4F544F52425245414B41474505000000
      0000000000000000110000003A5249534B4D4F544F52524F4144415353050000
      000000000000000000180000003A5249534B4D4F544F52524F4144415353464F
      524D49534E040000000000000000000000190000003A5249534B4D4F544F5252
      4F41444153534C494D495449534E040000000000000000000000160000003A52
      49534B4D4F544F52524F4144415353434F554E54040000000000000000000000
      0B0000003A494E535552454453554D0400000000000000000000000B0000003A
      414444434F535453554D0400000000000000000000000F0000003A505552504F
      53455655534549534E040000000000000000000000080000003A4E4F414D4F52
      54050000000000000000000000}
    Left = 1076
    Top = 166
  end
  object qrGetCarModel: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      '  :Result:=MAGRPCALC.GetCarModel(:pISN);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000002000000070000003A524553554C5474000000000000000000000005
      0000003A5049534E040000000000000000000000}
    OracleDictionary.RequiredFields = False
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 996
    Top = 206
  end
  object dspGetCarModel: TDataSetProvider
    DataSet = qrGetCarModel
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = DSPSetParams
    BeforeGetRecords = DSPSetParams
    Left = 1036
    Top = 206
  end
  object spClearPayCard: TOracleQuery
    SQL.Strings = (
      'begin'
      '  PAYCARD_UTILS.ClearPayCard(:pIsn);'
      '  COMMIT;'
      'end;')
    Session = OraSession
    Optimize = False
    Variables.Data = {0300000001000000050000003A5049534E040000000000000000000000}
    Left = 824
    Top = 464
  end
  object sp_UpdNumAttr: TOracleQuery
    SQL.Strings = (
      'begin'
      '  utl.SaveNumberAttrib(:POBJISN, :PNAME, :PVALUE, :PDISCR);'
      'commit;'
      'end;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000004000000080000003A504F424A49534E040000000000000000000000
      060000003A504E414D45050000000000000000000000070000003A5056414C55
      45050000000000000000000000070000003A5044495343520500000000000000
      00000000}
    Left = 1000
    Top = 296
  end
  object qrFireDiscountL: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      
        '  :Result := fireagr.fcur_discount(:pAgrISN, :pAddIsn, :pRuleIsn' +
        ');'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000004000000070000003A524553554C5474000000000000000000000008
      0000003A5041475249534E040000000000000000000000080000003A50414444
      49534E040000000000000000000000090000003A5052554C4549534E04000000
      0000000000000000}
    OracleDictionary.RequiredFields = False
    UniqueFields = 'DiscountClassIsn'
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 796
    Top = 518
  end
  object dspFireDiscountL: TDataSetProvider
    DataSet = qrFireDiscountL
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = DSPSetParams
    BeforeGetRecords = DSPSetParams
    Left = 840
    Top = 518
  end
  object spFireDiscountL: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  fireagr.updatediscount(:AgrIsn, :AddIsn, :DiscountClassIsn,'
      
        '                         :DiscountValue, :DiscountTypeIsn, :Rule' +
        'Isn, :Base);'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Left = 884
    Top = 518
  end
  object dspGetAgentAgr: TDataSetProvider
    DataSet = qrGetAgentAgr
    ResolveToDataSet = True
    Left = 1052
    Top = 251
  end
  object qrGetAgentAgr: TOracleDataSet
    SQL.Strings = (
      'begin'
      '  :Result:=FireAgrFC.GetAgentAgr(:pAgrISN);'
      'end;'
      '')
    Optimize = False
    Variables.Data = {
      0300000002000000070000003A524553554C5474000000000000000000000008
      0000003A5041475249534E040000000000000000000000}
    Session = OraSession
    Left = 1000
    Top = 251
  end
  object dspQrCrSlNEW: TDataSetProvider
    DataSet = qrCrSlNEW
    Left = 928
    Top = 376
  end
  object qrCrSlNEW: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      
        '  :Result:=ais.CROSSSALES_UTILS.FCur_ListAgrCrossSales_new (:pAg' +
        'rISN);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000002000000070000003A524553554C5474000000000000000000000008
      0000003A5041475249534E040000000000000000000000}
    OracleDictionary.RequiredFields = False
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 944
    Top = 376
  end
  object qrGetVariants: TOracleDataSet
    SQL.Strings = (
      'begin'
      '  :Result:=CROSSSALES_UTILS.GetVariant(:pRuleISN);'
      'end;'
      '')
    Optimize = False
    Variables.Data = {
      0300000002000000070000003A524553554C5474000000000000000000000009
      0000003A5052554C4549534E040000000000000000000000}
    Session = OraSession
    Left = 992
    Top = 379
  end
  object dspGetVariants: TDataSetProvider
    DataSet = qrGetVariants
    ResolveToDataSet = True
    Left = 980
    Top = 379
  end
  object spGetReadOnlyCross: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      
        '  CROSSSALES_UTILS.GetReadOnlyFields(:pAgrIsn,:pRuleIsn, :pReado' +
        'nlyfields);'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000003000000080000003A5041475249534E040000000000000000000000
      090000003A5052554C4549534E040000000000000000000000100000003A5052
      4541444F4E4C594649454C4453050000000000000000000000}
    Left = 892
    Top = 382
  end
  object spCreateCrossAgr: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      
        'ais.CROSSSALES_UTILS.CreateCrossAgr(:pAgrIsn, :pTaskIsn, :pKindI' +
        'sn, :pRuleIsn, :pVariant, :pInsuredSum, :pLimitSum, '
      
        '                                    :pGO, :pCallBack, :pPrFO, :p' +
        'NewAgrIsn, :pPremiumSum, :pNewAgrID);'
      'commit;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      030000000D000000080000003A5041475249534E040000000000000000000000
      090000003A505441534B49534E040000000000000000000000090000003A504B
      494E4449534E040000000000000000000000090000003A5052554C4549534E04
      0000000000000000000000090000003A5056415249414E540400000000000000
      000000000C0000003A50494E535552454453554D040000000000000000000000
      0A0000003A504C494D495453554D040000000000000000000000040000003A50
      474F0400000000000000000000000A0000003A5043414C4C4241434B04000000
      0000000000000000060000003A505052464F0400000000000000000000000B00
      00003A504E455741475249534E0400000000000000000000000C0000003A5050
      52454D49554D53554D0400000000000000000000000A0000003A504E45574147
      524944050000000000000000000000}
    Left = 1028
    Top = 374
  end
  object qrFireAddRisks: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      
        '  :Result := fireagr.fcur_AddRisks(:pAgrISN, :pAddIsn, :pSubObjI' +
        'SN);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000003000000070000003A524553554C5474000000000000000000000008
      0000003A5041475249534E040000000000000000000000080000003A50414444
      49534E040000000000000000000000}
    OracleDictionary.RequiredFields = False
    UniqueFields = 'RiskClassIsn'
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 644
    Top = 638
  end
  object dspFireAddRisks: TDataSetProvider
    DataSet = qrFireAddRisks
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = DSPSetParams
    BeforeGetRecords = DSPSetParams
    Left = 680
    Top = 638
  end
  object spFireAddRisks: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      
        '  fireagr.updateAddRisk(:AgrIsn, :AddIsn, :Ex, :RiskClassIsn, :L' +
        'imitSum, :SubObjISN);'
      '  commit;'
      'END;')
    Session = OraSession
    Optimize = False
    Left = 716
    Top = 638
  end
  object dspCalcDISDP: TDataSetProvider
    DataSet = qrCalcDISDP
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    Left = 968
    Top = 730
  end
  object qrCalcDISDP: TOracleDataSet
    SQL.Strings = (
      'begin'
      '  MAGRBM.CalcDISDP('
      ':pAgrIsn,'
      ':pValue,'
      ':pMsg);'
      'end;')
    Optimize = False
    Variables.Data = {
      0300000003000000080000003A5041475249534E040000000000000000000000
      070000003A5056414C5545040000000000000000000000050000003A504D5347
      050000000000000000000000}
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 976
    Top = 780
  end
  object qrAddOptTab: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      '  :Result:=MAGRFC.FCur_AddOptionsTab(:pAgrISN,:pAddISN);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000003000000070000003A524553554C5474000000000000000000000008
      0000003A5041475249534E040000000000000000000000080000003A50414444
      49534E040000000000000000000000}
    OracleDictionary.RequiredFields = False
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 980
    Top = 422
  end
  object dspAddOptTab: TDataSetProvider
    DataSet = qrAddOptTab
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = DSPSetParams
    BeforeGetRecords = DSPSetParams
    Left = 1012
    Top = 422
  end
  object qrServicesTab: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      '  :Result:=MAGRFC.FCur_ServicesTab(:pAgrISN,:pAddISN);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000003000000070000003A524553554C5474000000000000000000000008
      0000003A5041475249534E040000000000000000000000080000003A50414444
      49534E040000000000000000000000}
    OracleDictionary.RequiredFields = False
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 972
    Top = 462
  end
  object dspServicesTab: TDataSetProvider
    DataSet = qrServicesTab
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = DSPSetParams
    BeforeGetRecords = DSPSetParams
    Left = 1004
    Top = 462
  end
  object spServicesTab: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      
        '  MAGRFC.Update_ServiceConds(:AgrISN, :AddISN, :RiskClassIsn,:Ri' +
        'skIns);'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000004000000070000003A41475249534E04000000000000000000000007
      0000003A41444449534E0400000000000000000000000D0000003A5249534B43
      4C41535349534E040000000000000000000000080000003A5249534B494E5304
      0000000000000000000000}
    Left = 1036
    Top = 462
  end
  object qrServiceOptions: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      '  :Result:=MAGRFC.FCur_ServicesTab1(:pAgrISN,:pAddISN);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000003000000070000003A524553554C5474000000000000000000000008
      0000003A5041475249534E040000000000000000000000080000003A50414444
      49534E040000000000000000000000}
    OracleDictionary.RequiredFields = False
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 972
    Top = 502
  end
  object dspServiceOptions: TDataSetProvider
    DataSet = qrServiceOptions
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = DSPSetParams
    BeforeGetRecords = DSPSetParams
    Left = 1004
    Top = 502
  end
  object spServiceOptions: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      
        '  MAGRFC.Update_ServiceConds(:AgrISN, :AddISN, :RiskClassIsn,:Ri' +
        'skIns);'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000004000000070000003A41475249534E04000000000000000000000007
      0000003A41444449534E0400000000000000000000000D0000003A5249534B43
      4C41535349534E040000000000000000000000080000003A5249534B494E5304
      0000000000000000000000}
    Left = 1036
    Top = 502
  end
  object qrNewOptionsTab: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      '  :Result:=MAGRFC.FCur_NewOptionsTab(:pAgrISN,:pAddISN);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000003000000070000003A524553554C5474000000000000000000000008
      0000003A5041475249534E040000000000000000000000080000003A50414444
      49534E040000000000000000000000}
    OracleDictionary.RequiredFields = False
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 972
    Top = 542
  end
  object dspNewOptionsTab: TDataSetProvider
    DataSet = qrNewOptionsTab
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = DSPSetParams
    BeforeGetRecords = DSPSetParams
    Left = 1004
    Top = 542
  end
  object spNewOptionsTab: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      
        '  MAGRFC.Update_ServiceConds(:AgrISN, :AddISN, :RiskClassIsn,:Ri' +
        'skIns);'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000004000000070000003A41475249534E04000000000000000000000007
      0000003A41444449534E0400000000000000000000000D0000003A5249534B43
      4C41535349534E040000000000000000000000080000003A5249534B494E5304
      0000000000000000000000}
    Left = 1036
    Top = 542
  end
  object qrStateRSA: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      ' :Result:=MAGRBM_RSA.FCur_StateRSA(:PAGRISN);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000002000000070000003A524553554C5474000000000000000000000008
      0000003A5041475249534E040000000000000000000000}
    OracleDictionary.RequiredFields = False
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 1000
    Top = 735
  end
  object dspStateRSA: TDataSetProvider
    DataSet = qrStateRSA
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeGetRecords = DSPSetParams
    Left = 1032
    Top = 663
  end
  object qMWCarPrice: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      ' :Result:=magrcar.fcur_mwcarprice(:pcarisn, :pagrisn);'
      'ais.MAGRFCNEW.SetVarCostAgrTD(:pagrisn);'
      'commit;'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000003000000070000003A524553554C5474000000000000000000000008
      0000003A5043415249534E040000000000000000000000080000003A50414752
      49534E040000000000000000000000}
    OracleDictionary.RequiredFields = False
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 872
    Top = 455
  end
  object dspMWCarPrice: TDataSetProvider
    DataSet = qMWCarPrice
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeGetRecords = DSPSetParams
    Left = 912
    Top = 455
  end
  object qrFireAddRisksObj: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      
        '  :Result := fireagr.fcur_AddRisks(:pAgrISN, :pAddIsn, :pSubObjI' +
        'SN);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000004000000070000003A524553554C5474000000000000000000000008
      0000003A5041475249534E040000000000000000000000080000003A50414444
      49534E0400000000000000000000000B0000003A505355424F424A49534E0400
      00000000000000000000}
    OracleDictionary.RequiredFields = False
    UniqueFields = 'RiskClassIsn'
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 964
    Top = 622
  end
  object dspFireAddRisksObj: TDataSetProvider
    DataSet = qrFireAddRisksObj
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = DSPSetParams
    BeforeGetRecords = DSPSetParams
    Left = 1000
    Top = 622
  end
  object spFireAddRisksObj: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      
        '  fireagr.updateAddRisk(:AgrIsn, :AddIsn, :Ex, :RiskClassIsn, :L' +
        'imitSum, :SubObjISN);'
      '  commit;'
      'END;')
    Session = OraSession
    Optimize = False
    Left = 1036
    Top = 622
  end
  object spGetReasonForDiscountTypeR: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      
        '  :Result:=MAGRF.GetReasonForDiscountTypeR(:pAgrISN, :pCtgFilial' +
        'Name, :pReasonName);'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000004000000070000003A524553554C5404000000000000000000000008
      0000003A5041475249534E0400000000000000000000000F0000003A50435447
      46494C49414C4E414D450500000000000000000000000C0000003A5052454153
      4F4E4E414D45050000000000000000000000}
    Left = 871
    Top = 584
  end
  object qrAgrLinkList: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      '  :RESULT := CROSSSALES_UTILS.FCur_AgrLinkList(:pAgrISN);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000002000000070000003A524553554C5474000000000000000000000008
      0000003A5041475249534E040000000000000000000000}
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 784
    Top = 672
  end
  object dsp_AgrLinkList: TDataSetProvider
    DataSet = qrAgrLinkList
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = DSPSetParams
    BeforeGetRecords = DSPSetParams
    Left = 812
    Top = 669
  end
  object spAgrLinkList: TOracleQuery
    SQL.Strings = (
      'begin'
      
        '  CROSSSALES_UTILS.UpdateAgrLinkList(:pEx, :ISN, :AgrISN1, :AgrI' +
        'SN2, :LinkClassISN, :Chgflg);'
      'end;'
      ' ')
    Session = OraSession
    Optimize = False
    Variables.Data = {0300000001000000040000003A504558050000000000000000000000}
    Left = 822
    Top = 680
  end
  object qrEconomOptions: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      '  :Result:=MAGRFC.FCur_EconomOptions(:pAgrISN,:pAddISN);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000003000000070000003A524553554C5474000000000000000000000008
      0000003A5041475249534E040000000000000000000000080000003A50414444
      49534E040000000000000000000000}
    OracleDictionary.RequiredFields = False
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 972
    Top = 566
  end
  object dspEconomOptions: TDataSetProvider
    DataSet = qrEconomOptions
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = DSPSetParams
    BeforeGetRecords = DSPSetParams
    Left = 1004
    Top = 566
  end
  object spEconomOptions: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      
        '  MAGRFC.UpdateEconomOptions(:AgrISN, :AddISN, :TariffClassIsn,:' +
        'RiskIns);'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000004000000070000003A41475249534E04000000000000000000000007
      0000003A41444449534E0400000000000000000000000F0000003A5441524946
      46434C41535349534E040000000000000000000000080000003A5249534B494E
      53040000000000000000000000}
    Left = 1036
    Top = 566
  end
  object qrBigOptionsTab: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      '  :Result:=MAGRFC.FCur_OptionsAndServicesTab(:pAgrISN,:pAddISN);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000003000000070000003A524553554C5474000000000000000000000008
      0000003A5041475249534E040000000000000000000000080000003A50414444
      49534E040000000000000000000000}
    OracleDictionary.RequiredFields = False
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 900
    Top = 670
  end
  object dspBigOptionsTab: TDataSetProvider
    DataSet = qrBigOptionsTab
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = DSPSetParams
    BeforeGetRecords = DSPSetParams
    Left = 932
    Top = 670
  end
  object spBigOptionsTab: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      
        '  MAGRFC.Update_ServiceConds(:AgrISN, :AddISN, :RiskClassIsn,:Ri' +
        'skIns);'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000004000000070000003A41475249534E04000000000000000000000007
      0000003A41444449534E0400000000000000000000000D0000003A5249534B43
      4C41535349534E040000000000000000000000080000003A5249534B494E5304
      0000000000000000000000}
    Left = 964
    Top = 670
  end
  object qMWCarPriceHist: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      ' :Result:=MAGRCAR.fcur_mwcarpricehist(:pAgrISN, :pCondISN);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000003000000070000003A524553554C5474000000000000000000000008
      0000003A5041475249534E040000000000000000000000080000003A434F4E44
      49534E040000000000000000000000}
    OracleDictionary.RequiredFields = False
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 208
    Top = 519
  end
  object dspMWCarPriceHist: TDataSetProvider
    DataSet = qMWCarPriceHist
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeGetRecords = DSPSetParams
    Left = 248
    Top = 519
  end
  object qrCalcDiscountCross: TOracleDataSet
    SQL.Strings = (
      'select magrf.CalcDiscountCross(:PAGRISN) as RS from dual')
    Optimize = False
    Variables.Data = {
      0300000001000000080000003A5041475249534E040000000000000000000000}
    OracleDictionary.RequiredFields = False
    AutoCalcFields = False
    Session = OraSession
    Left = 852
    Top = 798
  end
  object dspCalcDiscountCross: TDataSetProvider
    DataSet = qrCalcDiscountCross
    Left = 888
    Top = 798
  end
  object dsp_CheckCondPayment: TDataSetProvider
    DataSet = sp_CheckCondPayment
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    Left = 987
    Top = 728
  end
  object sp_CheckCondPayment: TOracleDataSet
    SQL.Strings = (
      'begin'
      ' :Result := ais.Docs_Utils.CheckAgrCondPayment(:pAgrisn);'
      'end;')
    Optimize = False
    Variables.Data = {
      0300000002000000070000003A524553554C5474000000000000000000000008
      0000003A5041475249534E040000000000000000000000}
    OracleDictionary.RequiredFields = False
    QBEDefinition.QBEFieldDefs = {0400000001000000050000005649525446010000000000}
    LockingMode = lmNone
    Session = OraSession
    Left = 1024
    Top = 720
    object sp_CheckCondPaymentVIRTF: TFloatField
      FieldName = 'VIRTF'
    end
  end
  object qrDiscountMB: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      
        ' :Result:=MAGRF.FCur_Discount( :pAgrISN, :pAddISN, :pRiskRuleISN' +
        ');'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000004000000070000003A524553554C5474000000000000000000000008
      0000003A5041475249534E040000000000000000000000080000003A50414444
      49534E0400000000000000000000000D0000003A505249534B52554C4549534E
      040000000000000000000000}
    OracleDictionary.RequiredFields = False
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 1032
    Top = 344
  end
  object dspDiscountMB: TDataSetProvider
    DataSet = qrDiscountMB
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = dspDiscountMBBeforeApplyUpdates
    BeforeGetRecords = dspDiscountMBBeforeGetRecords
    Left = 1064
    Top = 344
  end
  object spDiscountMB: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      'MAGRF.UpdateDiscount(:pExe, :pISN, :pAgrISN, :pTariff,'
      '  :pX1, :pTariffClassISN, :pRemark,  false,'
      '  :pCalcPrevDiscount,'
      '  :pRiskRuleISN,'
      '  :pBase'
      '  );'
      '  COMMIT;'
      'END;'
      ' ')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      030000000A000000050000003A50455845050000000000000000000000050000
      003A5049534E040000000000000000000000080000003A5041475249534E0400
      00000000000000000000080000003A5054415249464604000000000000000000
      0000040000003A505831040000000000000000000000100000003A5054415249
      4646434C41535349534E040000000000000000000000080000003A5052454D41
      524B050000000000000000000000120000003A5043414C435052455644495343
      4F554E540400000000000000000000000D0000003A505249534B52554C454953
      4E040000000000000000000000060000003A5042415345040000000000000000
      000000}
    Left = 1096
    Top = 345
  end
  object qSendRsaInfoRequestXML: TOracleQuery
    SQL.Strings = (
      'begin'
      
        ' :res:=AIS.MAGRBM_RSA.SendRsaInfoRequestXML(:pAgrIsn,:pAddIsn,:p' +
        'Serial,:pNumber);'
      'end;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000005000000040000003A52455304000000000000000000000008000000
      3A5041475249534E040000000000000000000000080000003A5041444449534E
      040000000000000000000000080000003A5053455249414C0500000000000000
      00000000080000003A504E554D424552050000000000000000000000}
    Left = 832
    Top = 24
  end
  object spGetAnketaTemplateIsn: TOracleQuery
    SQL.Strings = (
      'begin'
      
        '  :RESULT := MAGRFC.GetAnketaTemplateIsn(:PAGRISN, :PNEEDCREATE)' +
        ';'
      'end;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000003000000070000003A524553554C5404000000000000000000000008
      0000003A5041475249534E0400000000000000000000000C0000003A504E4545
      44435245415445040000000000000000000000}
    Left = 263
    Top = 408
  end
  object qrRSARequestHist: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      ' :Result:=ais.RsaEOSAGO_UTILS.GetRSARequestHist(:pagrisn);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000002000000070000003A524553554C5474000000000000000000000008
      0000003A5041475249534E040000000000000000000000}
    OracleDictionary.RequiredFields = False
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 576
    Top = 407
  end
  object dspRSARequestHist: TDataSetProvider
    DataSet = qrRSARequestHist
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeGetRecords = DSPSetParams
    Left = 616
    Top = 407
  end
  object spStoreCalcResultToAgr: TOracleQuery
    SQL.Strings = (
      'begin'
      '  MAGRPCALC.StoreCalcResultToAgr(:PAGRISN);'
      '  COMMIT;'
      'end;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000001000000080000003A5041475249534E040000000000000000000000}
    Left = 311
    Top = 408
  end
  object spGetCalcTemplate: TOracleQuery
    SQL.Strings = (
      'begin'
      
        '  :RESULT := MAGRPCALC.GetCalcTemplate(:PAGRISN, :POBJISN, :PPAR' +
        'AMISN, :PMODE);'
      'end;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000005000000070000003A524553554C5404000000000000000000000008
      0000003A5041475249534E040000000000000000000000080000003A504F424A
      49534E0400000000000000000000000A0000003A50504152414D49534E040000
      000000000000000000060000003A504D4F4445040000000000000000000000}
    Left = 223
    Top = 408
  end
  object qrGetParamValuesWithRemark: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      '  :Result:=MAGRPCALC.GetParamValuesWithRemark(:pIsn);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000002000000070000003A524553554C5474000000000000000000000005
      0000003A5049534E040000000000000000000000}
    OracleDictionary.RequiredFields = False
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 24
    Top = 593
  end
  object dspGetParamValuesWithRemark: TDataSetProvider
    DataSet = qrGetParamValuesWithRemark
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeGetRecords = DSPSetParams
    Left = 56
    Top = 593
  end
  object qrBonusPlus: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      ' :Result:=magrbm.getprevcrgdoc(pcrgdocisn => :pcrgdocisn);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000002000000070000003A524553554C547400000000000000000000000B
      0000003A50435247444F4349534E040000000000000000000000}
    OracleDictionary.RequiredFields = False
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 20
    Top = 677
  end
  object dspBonusPlus: TDataSetProvider
    DataSet = qrBonusPlus
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = dspCarBeforeApplyUpdates
    AfterApplyUpdates = dspCarAfterApplyUpdates
    BeforeGetRecords = dspCarBeforeApplyUpdates
    Left = 52
    Top = 676
  end
  object qrRequestBonusPlus: TOracleDataSet
    SQL.Strings = (
      'begin'
      '  MAGRBM.RequestBonusPlus(:pCrgDocISN, :pXMLClob);'
      '  commit;'
      'end;')
    Optimize = False
    Variables.Data = {
      03000000020000000B0000003A50435247444F4349534E040000000000000000
      000000090000003A50584D4C434C4F42050000000000000000000000}
    Session = OraSession
    Left = 16
    Top = 715
  end
  object dspRequestBonusPlus: TDataSetProvider
    DataSet = qrRequestBonusPlus
    ResolveToDataSet = True
    Left = 60
    Top = 715
  end
  object qrResponseBonusPlus: TOracleDataSet
    SQL.Strings = (
      'begin'
      '  MAGRBM.ResponseBonusPlus(:pCrgDocISN);'
      '  commit;'
      'end;')
    Optimize = False
    Variables.Data = {
      03000000010000000B0000003A50435247444F4349534E040000000000000000
      000000}
    Session = OraSession
    Left = 144
    Top = 715
  end
  object dspResponseBonusPlus: TDataSetProvider
    DataSet = qrResponseBonusPlus
    ResolveToDataSet = True
    Left = 188
    Top = 715
  end
  object grAccInsuredList: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      ' :Result:=INTF_MOTORAGR.DSPX_GetAccInsuredList(:pAgrISN);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000002000000070000003A524553554C5474000000000000000000000008
      0000003A5041475249534E040000000000000000000000}
    OracleDictionary.RequiredFields = False
    Session = OraSession
    Left = 616
    Top = 32
  end
  object dspGetAccInsuredList: TDataSetProvider
    DataSet = grAccInsuredList
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeGetRecords = DSPSetParams
    Left = 680
  end
  object grGetCarAgrIsnHist: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      
        ' :Result:=FireAgrFC.GetCarAgrIsnHist(:pAgrISN,:pCarObjISN,:pVIN)' +
        ';'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000004000000070000003A524553554C5474000000000000000000000008
      0000003A5041475249534E0400000000000000000000000B0000003A50434152
      4F424A49534E040000000000000000000000050000003A5056494E0500000000
      00000000000000}
    OracleDictionary.RequiredFields = False
    Session = OraSession
    Left = 696
    Top = 40
  end
  object dspGetCarAgrIsnHist: TDataSetProvider
    DataSet = grGetCarAgrIsnHist
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeGetRecords = DSPSetParams
    Left = 720
  end
  object qrFireCorrPremPlat: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      ' :Result:=FIREAGR.FCur_FireCorrPrem(:pAgrISN, :pAddIsn);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000003000000070000003A524553554C5474000000000000000000000008
      0000003A5041475249534E040000000000000000000000080000003A50414444
      49534E040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {040000000100000003000000545854010000000000}
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 16
    Top = 686
  end
  object dspFireCorrPremPlat: TDataSetProvider
    DataSet = qrFireCorrPremPlat
    ResolveToDataSet = True
    BeforeGetRecords = DSPSetParams
    Left = 60
    Top = 686
  end
  object spCorrPremPlat: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  FIREAGR.CorrectPremium(:pAgrISN, :pAddISN, :pParams);'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000003000000080000003A5041475249534E040000000000000000000000
      080000003A5041444449534E040000000000000000000000080000003A505041
      52414D53050000000000000000000000}
    Left = 108
    Top = 686
  end
  object qrGetCarClaimIsnHist: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      ' :Result:=CLAIM.GetCarClaimIsnHist(:pVIN);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000002000000070000003A524553554C5474000000000000000000000005
      0000003A5056494E050000000000000000000000}
    OracleDictionary.RequiredFields = False
    Session = OraSession
    Left = 560
    Top = 712
  end
  object dspGetCarClaimIsnHist: TDataSetProvider
    DataSet = qrGetCarClaimIsnHist
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeGetRecords = DSPSetParams
    Left = 600
    Top = 712
  end
  object spActualizeTS: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  MAGRCAR.ACTUALIZETS(:pAgrIsn, :pAddIsn, :pCarIsn, :pResult);'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000004000000080000003A5041475249534E040000000000000000000000
      080000003A5041444449534E040000000000000000000000080000003A504341
      5249534E040000000000000000000000080000003A50524553554C5404000000
      0000000000000000}
    Left = 892
    Top = 125
  end
  object qrScheduleIncorpExclRisks: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      ' :Result:=MAGRF.FCur_ScheduleIncorpExclRisks(:pAgrIsn);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000002000000070000003A524553554C5474000000000000000000000008
      0000003A5041475249534E040000000000000000000000}
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 640
    Top = 636
  end
  object spLoadFireObj: TOracleQuery
    SQL.Strings = (
      'begin'
      '  ais.FIREAGR.loadobjfire_p(:pObjList,:pagrisn,:plog);'
      'end;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000003000000090000003A504F424A4C4953547000000000000000000000
      00080000003A5041475249534E040000000000000000000000050000003A504C
      4F47050000000000000000000000}
    Left = 16
    Top = 886
  end
  object dspScheduleIncorpExclRisks: TDataSetProvider
    DataSet = qrScheduleIncorpExclRisks
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeGetRecords = dspScheduleIncorpExclRisksBeforeGetRecords
    Left = 672
    Top = 628
  end
  object qrRiskPlanFormGlobParams: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      '  :Result:=MAGRF.FCur_RiskPlanFormGlobParams(:pAgrISN);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000002000000070000003A524553554C5474000000000000000000000008
      0000003A5041475249534E040000000000000000000000}
    OracleDictionary.RequiredFields = False
    QBEDefinition.QBEFieldDefs = {
      040000000A0000000700000052554C4549534E0100000000000800000052554C
      454E414D450000000000000B00000050524F504552545949534E010000000000
      0C00000050524F50455254594E414D450000000000000E000000544152494646
      434C41535349534E0100000000000F000000544152494646434C4153534E414D
      450000000000000900000054415249464649534E010000000000060000005441
      52494646010000000000070000004449435849534E0100000000000D00000052
      554C4554415249464649534E010000000000}
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 1086
    Top = 430
  end
  object dspRiskPlanFormGlobParams: TDataSetProvider
    DataSet = qrRiskPlanFormGlobParams
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = dspRiskPlanFormGlobParamsBeforeApplyUpdates
    BeforeGetRecords = dspRiskPlanFormGlobParamsBeforeGetRecords
    Left = 1126
    Top = 430
  end
  object spRiskPlanFormGlobParams: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      
        '  MAGRF.UpdateRiskPlanFormGlobParams(:pEx, :ISN, :AgrISN, :CovCo' +
        'ntPeriodIsn, :CovContPeriodDateBeg);'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000005000000040000003A50455805000000000000000000000004000000
      3A49534E040000000000000000000000070000003A41475249534E0400000000
      00000000000000110000003A434F56434F4E54504552494F4449534E04000000
      0000000000000000150000003A434F56434F4E54504552494F44444154454245
      470C0000000000000000000000}
    Left = 1161
    Top = 430
  end
  object qrPremByRule: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      '  :Result:=MAGRFC.FCUR_PREMBYRULE(:pAgrISN,:pAddISN);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000003000000070000003A524553554C5474000000000000000000000008
      0000003A5041475249534E040000000000000000000000080000003A50414444
      49534E040000000000000000000000}
    OracleDictionary.RequiredFields = False
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 20
    Top = 478
  end
  object dspPremByRule: TDataSetProvider
    DataSet = qrPremByRule
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = DSPSetParams
    BeforeGetRecords = DSPSetParams
    Left = 60
    Top = 478
  end
  object qrListAddToTechAdd: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      '  :Result:=MAGRF.FCur_ListAddToTechAdd(:pAgrISN);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000002000000070000003A524553554C5474000000000000000000000008
      0000003A5041475249534E040000000000000000000000}
    OracleDictionary.RequiredFields = False
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 1128
    Top = 643
  end
  object dspListAddToTechAdd: TDataSetProvider
    DataSet = qrListAddToTechAdd
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeGetRecords = DSPSetParams
    Left = 1128
    Top = 595
  end
  object spReshippingReqRsa: TOracleQuery
    SQL.Strings = (
      'begin'
      ' MAgrRsaCodeTask.ReshippingReqRsa(:pAgrISN);'
      'end;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000001000000080000003A5041475249534E040000000000000000000000}
    Left = 152
  end
  object spCascoConds: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      
        '  MAGRFC.Update_ServiceConds(:AgrIsn, :AddIsn, :RiskClassIsn,:Ri' +
        'skIns, :LimitSum);'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000005000000070000003A41475249534E04000000000000000000000007
      0000003A41444449534E0400000000000000000000000D0000003A5249534B43
      4C41535349534E040000000000000000000000080000003A5249534B494E5304
      0000000000000000000000090000003A4C494D495453554D0400000000000000
      00000000}
    Left = 1292
    Top = 7
  end
  object dspCascoConds: TDataSetProvider
    DataSet = qrCascoConds
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = DSPSetParams
    BeforeGetRecords = DSPSetParams
    Left = 1260
    Top = 8
  end
  object qrCascoConds: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      
        '  :Result:=MAGRFCNEW.FCur_CondsTab(:PAGRISN,:PADDISN,:pRiskRuleI' +
        'SN);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000004000000070000003A524553554C5474000000000000000000000008
      0000003A5041475249534E040000000000000000000000080000003A50414444
      49534E0400000000000000000000000D0000003A505249534B52554C4549534E
      040000000000000000000000}
    OracleDictionary.RequiredFields = False
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 1228
    Top = 12
  end
  object qrCascoParams: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      
        '  :Result:=MAGRFCNEW.FCur_KaParams(:PAGRISN,:PADDISN,:pRiskRuleI' +
        'SN);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000004000000070000003A524553554C5474000000000000000000000008
      0000003A5041475249534E040000000000000000000000080000003A50414444
      49534E0400000000000000000000000D0000003A505249534B52554C4549534E
      040000000000000000000000}
    OracleDictionary.RequiredFields = False
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 1228
    Top = 57
  end
  object dspCascoParams: TDataSetProvider
    DataSet = qrCascoParams
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = DSPSetParams
    BeforeGetRecords = DSPSetParams
    Left = 1260
    Top = 53
  end
  object spCascoParams: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      
        '  MAGRFCNEW.UpdateParams(:AgrIsn, :AddIsn, :TariffClassIsn, :X1,' +
        ' :RiskRuleISN);'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000005000000070000003A41475249534E04000000000000000000000007
      0000003A41444449534E0400000000000000000000000F0000003A5441524946
      46434C41535349534E040000000000000000000000030000003A583104000000
      00000000000000000C0000003A5249534B52554C4549534E0400000000000000
      00000000}
    Left = 1292
    Top = 53
  end
  object qrRegisterEOSAGO: TOracleDataSet
    SQL.Strings = (
      'begin'
      
        '  ais.rsaeosago_utils.addtask4registerproject(pagrisn => :pAgrIS' +
        'N);'
      '  commit;'
      'end;')
    Optimize = False
    Variables.Data = {
      0300000001000000080000003A5041475249534E040000000000000000000000}
    Session = OraSession
    Left = 368
    Top = 467
  end
  object dspRegisterEOSAGO: TDataSetProvider
    DataSet = qrRegisterEOSAGO
    ResolveToDataSet = True
    Left = 412
    Top = 467
  end
  object qrSettingsForLoadObj: TOracleDataSet
    SQL.Strings = (
      'select classisn2 as column_nb'
      '     , code as column_nm'
      '     , InitCapFirst(getShortName(classisn3)) as column_tt'
      '     , coalesce(classisn3,0) as is_number'
      
        '     , (select max(classisn2) from dicx where classisn = c.get('#39 +
        'XLOADXLSOBJ'#39') and classisn1 = 1 and filterisn =  c.get('#39'AGRPFIRE' +
        'CLASSIC2014'#39')) as load_page'
      
        '     , (select max(classisn2) from dicx where classisn = c.get('#39 +
        'XLOADXLSOBJ'#39') and classisn1 = 2 and filterisn =  c.get('#39'AGRPFIRE' +
        'CLASSIC2014'#39')) as beg_row'
      '     , count(1) over () as column_cnt'
      '  from dicx'
      ' where classisn = c.get('#39'XLOADXLSOBJ'#39')'
      '   and filterisn =  c.get('#39'AGRPFIRECLASSIC2014'#39')'
      '   and classisn1 = 3'
      ' order by classisn2')
    Optimize = False
    OracleDictionary.RequiredFields = False
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 1088
    Top = 613
  end
  object dspSettingsForLoadObj: TDataSetProvider
    DataSet = qrSettingsForLoadObj
    ResolveToDataSet = True
    BeforeApplyUpdates = DSPSetParams
    BeforeGetRecords = DSPSetParams
    Left = 1126
    Top = 613
  end
  object spLoadObjectValuablePropFL: TOracleQuery
    SQL.Strings = (
      'begin'
      '  ais.Fireagr.LoadObjectValuablePropFL(:POBJLIST);'
      'end;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000001000000090000003A504F424A4C4953547000000000000000000000
      00}
    Left = 120
    Top = 897
  end
  object spPickUpDocCar: TOracleQuery
    SQL.Strings = (
      'begin'
      '  ais.MAGRCAR.PrepareAgrListNoDocCar(pagrisn => :pagrisn,'
      '                                 perrflag => :perrflag,'
      '                                 errmessage => :errmessage);'
      '  commit;'
      'end;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000003000000080000003A5041475249534E040000000000000000000000
      090000003A50455252464C41470300000000000000000000000B0000003A4552
      524D455353414745050000000000000000000000}
    Left = 1160
    Top = 298
  end
  object qrGetFileIsn: TOracleDataSet
    SQL.Strings = (
      'select filename, isn fileisn from docimage where isn='
      
        '(select max(isn) from docimage where nvl(status,'#39'0'#39')<>'#39#1040#39' and fi' +
        'leisn in'
      
        '  (select isn from docfile where classisn=:pClassIsn and discr='#39 +
        'A'#39' and nvl(status,'#39#1040#39')<>'#39#1040#39' and docisn=:pdocisn))'
      ''
      '  ')
    Optimize = False
    Variables.Data = {
      0300000002000000080000003A50444F4349534E040000000000000000000000
      0A0000003A50434C41535349534E040000000000000000000000}
    OracleDictionary.RequiredFields = False
    QBEDefinition.QBEFieldDefs = {
      0400000004000000020000004C560100000000000300000049534E0100000000
      000900000053484F52544E414D450100000000000A00000053484F52544E414D
      454D010000000000}
    Session = OraSession
    Left = 1117
    Top = 246
  end
  object dspGetFileIsn: TDataSetProvider
    DataSet = qrGetFileIsn
    ResolveToDataSet = True
    Left = 1164
    Top = 243
  end
  object spLoadXLData: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  MAGRFC.LoadXLDataToQuote(:pagrisn, :pMsg);'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000002000000080000003A5041475249534E040000000000000000000000
      050000003A504D5347050000000000000000000000}
    Left = 1148
    Top = 174
  end
  object spFindClient: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      
        '  :pFindTaskIsn:=Client_load.FindClient(:pagrisn, :psubjIsn, :pS' +
        'earchMode);'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000004000000080000003A5041475249534E040000000000000000000000
      0D0000003A5046494E445441534B49534E040000000000000000000000090000
      003A505355424A49534E0400000000000000000000000C0000003A5053454152
      43484D4F4445040000000000000000000000}
    Left = 1148
    Top = 126
  end
  object spAddClient1: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Client_load.AddClient(:psubjisn);'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000001000000090000003A505355424A49534E0400000000000000000000
      00}
    Left = 1148
    Top = 86
  end
  object spSaveCustToQuote: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      
        '  update agreement set clienisn = :pobjisn where agrisn = :pagri' +
        'sn;'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000002000000080000003A504F424A49534E040000000000000000000000
      080000003A5041475249534E040000000000000000000000}
    Left = 1148
    Top = 46
  end
  object spEraseTmpTbl: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      
        '  MAGRFC.EraseTblWhereCon('#39'USERAPPLICATIONTMP'#39','#39'createdby=init.u' +
        'serisn'#39');'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Left = 1144
    Top = 6
  end
  object spAddClient: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Client_load.AddClient(:pagrisn,:psubjisn);'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000002000000090000003A505355424A49534E0400000000000000000000
      00080000003A5041475249534E040000000000000000000000}
    Left = 1180
    Top = 86
  end
  object spCopyConclusionAgr: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  vC number;'
      'BEGIN'
      
        '  -- '#1054#1087#1088#1077#1076#1077#1083#1103#1077#1084', '#1095#1090#1086' '#1076#1086#1075#1086#1074#1086#1088' '#1103#1074#1083#1103#1077#1090#1089#1103' '#1076#1086#1075#1086#1074#1086#1088#1086#1084' '#1089#1090#1088#1072#1093#1086#1074#1072#1085#1080#1103' '#1072#1074#1090#1086 +
        #1090#1088#1072#1085#1089#1087#1086#1088#1090#1072
      
        '  SELECT COUNT(*) INTO vC FROM Dicti WHERE ISN in (C.Get('#39'AgrMot' +
        'or'#39'), C.Get('#39'AGRCARDISCRETES'#39'))'
      
        '  START WITH ISN=(SELECT RuleISN FROM Agreement WHERE ISN=:pSrcA' +
        'grISN)'
      '  CONNECT BY PRIOR ParentISN=ISN;'
      '  --'
      '  if vC>0 then'
      
        '    MAGRF.CopyConclusionAgr(:pSrcAgrISN, :pNewAgrISN, :pNewAgrRu' +
        'leISN, :pNewAgrDetailISN, :pCopyM, :pAddrISN, :pClientUseBanRule' +
        ');'
      '  else'
      
        '    ccheck(false,'#39#1050#1086#1087#1080#1088#1086#1074#1072#1085#1080#1077' '#1076#1086#1075#1086#1074#1086#1088#1086#1074' '#1080#1084#1091#1097#1077#1089#1090#1074#1072' '#1085#1077' '#1088#1077#1072#1083#1080#1079#1086#1074#1072#1085#1086 +
        #39');'
      '  end if;'
      '  --'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      03000000070000000B0000003A5053524341475249534E040000000000000000
      0000000B0000003A504E455741475249534E0400000000000000000000000F00
      00003A504E455741475252554C4549534E040000000000000000000000110000
      003A504E455741475244455441494C49534E0400000000000000000000000700
      00003A50434F50594D0400000008000000000000000000000000000000120000
      003A50434C49454E5455534542414E52554C4505000000000000000000000009
      0000003A504144445249534E040000000000000000000000}
    Left = 1263
    Top = 264
  end
  object spGetAgr4WSMDicsount: TOracleQuery
    SQL.Strings = (
      'begin'
      
        '  ais.fireagr.GetAgr4WSMDicsount(pClientISN=>:pClientISN, pAgrIS' +
        'N=>:pAgrISN);'
      'end;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      03000000020000000B0000003A50434C49454E5449534E040000000000000000
      000000080000003A5041475249534E040000000000000000000000}
    Left = 704
    Top = 184
  end
  object qrAgrParams: TOracleDataSet
    SQL.Strings = (
      'begin'
      
        '  :Result := Ais.productcreater_ext.Get_agr_params_cur(:pAgrIsn,' +
        ':pAddIsn,:pRiskRuleIsn); '
      'end;')
    Optimize = False
    Variables.Data = {
      0300000004000000070000003A524553554C5474000000000000000000000008
      0000003A5041475249534E040000000000000000000000080000003A50414444
      49534E0400000000000000000000000D0000003A505249534B52554C4549534E
      040000000000000000000000}
    OracleDictionary.RequiredFields = False
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 1236
    Top = 120
  end
  object dspAgrParams: TDataSetProvider
    DataSet = qrAgrParams
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = DSPSetParams
    BeforeGetRecords = DSPSetParams
    Left = 1268
    Top = 120
  end
  object spAgrParams: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      
        '  MAGRFCNEW.UpdateParams(:AgrIsn, :AddIsn, :TariffClassIsn, :X1,' +
        ' :RiskRuleISN);'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Left = 1300
    Top = 120
  end
  object spAgrConds: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      
        '  MAGRFC.Update_ServiceConds(:AgrIsn, :AddIsn, :RiskClassIsn,:Ri' +
        'skIns, :LimitSum);'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000005000000070000003A41475249534E04000000000000000000000007
      0000003A41444449534E0400000000000000000000000D0000003A5249534B43
      4C41535349534E040000000000000000000000080000003A5249534B494E5304
      0000000000000000000000090000003A4C494D495453554D0400000000000000
      00000000}
    Left = 1300
    Top = 169
  end
  object dspAgrConds: TDataSetProvider
    DataSet = qrAgrConds
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = dspAgrCondsBeforeGetRecords
    BeforeGetRecords = dspAgrCondsBeforeGetRecords
    Left = 1268
    Top = 167
  end
  object qrAgrConds: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      
        '  :Result:=MAGRFCNEW.FCur_CondsTab(:PAGRISN,:PADDISN,:pRiskRuleI' +
        'SN, :pFormPage);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000005000000070000003A524553554C5474000000000000000000000008
      0000003A5041475249534E040000000000000000000000080000003A50414444
      49534E0400000000000000000000000D0000003A505249534B52554C4549534E
      0400000000000000000000000A0000003A50464F524D50414745040000000800
      0000000000000000004000000000}
    OracleDictionary.RequiredFields = False
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 1236
    Top = 168
  end
  object spGetCalcResponseDate: TOracleQuery
    SQL.Strings = (
      'begin'
      
        '  :Result:=MAgrBM_RSA.GetCalcResponseDate(:pSendCalcKBMISN, :pCr' +
        'gDocISN, :pType);'
      '  COMMIT;'
      'end;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000004000000070000003A524553554C5405000000000000000000000010
      0000003A5053454E4443414C434B424D49534E0400000000000000000000000B
      0000003A50435247444F4349534E040000000000000000000000060000003A50
      54595045040000000000000000000000}
    Left = 880
    Top = 72
  end
  object spSendCalcRequestXMLDate: TOracleQuery
    SQL.Strings = (
      'begin'
      
        '  :Result:=MAgrBM_RSA.SendCalcRequestXMLDate(:pCrgDocISN, :pRequ' +
        'estDate, :pType, :pMsg);'
      '  COMMIT;'
      'end;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000005000000070000003A524553554C540400000000000000000000000B
      0000003A50435247444F4349534E0400000000000000000000000D0000003A50
      52455155455354444154450C0000000000000000000000060000003A50545950
      45040000000000000000000000050000003A504D534705000000000000000000
      0000}
    Left = 792
    Top = 128
  end
  object dspIfRegrExists: TDataSetProvider
    DataSet = sp_IfRegrExists
    Left = 1168
    Top = 384
  end
  object sp_IfRegrExists: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      '  :RESULT := REGRESS_FUNC.IfRegrExists(:PAGRISN, :PCLAIMISN);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000003000000070000003A524553554C5404000000000000000000000008
      0000003A5041475249534E0400000000000000000000000A0000003A50434C41
      494D49534E040000000000000000000000}
    Session = OraSession
    Left = 1168
    Top = 351
  end
  object dspAgrAdd: TDataSetProvider
    DataSet = odsAgrAdd
    Left = 1320
    Top = 240
  end
  object dspVariant: TDataSetProvider
    DataSet = odsVariant
    Left = 1376
    Top = 240
  end
  object dspTerr: TDataSetProvider
    DataSet = odsTerr
    Left = 1320
    Top = 296
  end
  object odsAgrAdd: TOracleDataSet
    SQL.Strings = (
      'select '#39#1044#39' dog, ID, ISN from Agreement where ISN=:XISN'
      'UNION'
      'SELECT '#39#1040#1076#1076' '#39'||A.NO dog,  ID, A.ISN '
      'FROM Agreement A, Agrlink L'
      
        'WHERE  A.ISN=L.AGRISN2 and L.CLASSISN=6943015103/*'#1076#1086#1075#1086#1074#1086#1088'-'#1072#1076#1076#1077#1085#1076 +
        #1091#1084'*/  and L.AGRISN1=:XISN')
    Optimize = False
    Session = OraSession
    Left = 1320
    Top = 352
  end
  object odsVariant: TOracleDataSet
    SQL.Strings = (
      'SELECT A.ID, A.ISN '
      'FROM Agreement A, Agrlink L'
      
        'WHERE  A.ISN=L.AGRISN2 and L.CLASSISN=6943015603/*'#1076#1086#1075#1086#1074#1086#1088'-'#1074#1072#1088#1080#1072#1085 +
        #1090'*/  and L.AGRISN1=:XISN')
    Optimize = False
    Session = OraSession
    Left = 1384
    Top = 360
  end
  object odsTerr: TOracleDataSet
    Optimize = False
    Session = OraSession
    Left = 1328
    Top = 408
  end
  object spLoadXMLDataToCalc: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  MAGRPCALC.LoadXMLDataToCalc(:pAgrIsn, :pMsg);'
      '  COMMIT;'
      'END;')
    Session = OraSession
    Optimize = False
    Variables.Data = {
      0300000002000000080000003A5041475249534E040000000000000000000000
      050000003A504D5347050000000000000000000000}
    Left = 1229
    Top = 516
  end
  object dspPreCalcParamList: TDataSetProvider
    DataSet = qrPreCalcParamList
    Left = 1246
    Top = 328
  end
  object qrPreCalcParamList: TOracleDataSet
    SQL.Strings = (
      'select d.isn, d.FullName from dicti d, dicx dx, agreement a'
      'where d.isn = dx.classisn2'
      'and dx.classisn1 = a.templateisn'
      'and dx.classisn = c.get('#39'XPRECALCFORTEMPLATE'#39')'
      'and a.isn = :AgrIsn'
      'and not exists (select 1 '
      '               from agrtparam atp'
      '               where atp.agrisn = :AgrIsn'
      '               and atp.groupid > 1000 '
      '               and dx.classisn2 = atp.classisn'
      '               and nvl(atp.parentisn,0) = nvl(:Parentisn,0)'
      '               and atp.no = 0) '
      '               ')
    Optimize = False
    Variables.Data = {
      0300000002000000070000003A41475249534E0400000000000000000000000A
      0000003A504152454E5449534E040000000000000000000000}
    Session = OraSession
    Left = 1246
    Top = 424
  end
  object dspAddrNew: TDataSetProvider
    DataSet = qrAddrNew
    ResolveToDataSet = True
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = DSPSetParams
    BeforeGetRecords = DSPSetParams
    Left = 214
    Top = 278
  end
  object qrAddrNew: TOracleDataSet
    SQL.Strings = (
      'BEGIN'
      '  :Result:=FIREAGR.FCUR_ADDR(:pAgrISN, :pSort, :pAddIsn);'
      'END;')
    Optimize = False
    Variables.Data = {
      0300000004000000070000003A524553554C5474000000000000000000000008
      0000003A5041475249534E040000000000000000000000060000003A50534F52
      54040000000000000000000000080000003A5041444449534E04000000000000
      0000000000}
    OracleDictionary.RequiredFields = False
    QBEDefinition.QBEFieldDefs = {
      04000000240000000300000049534E01000000000008000000434C4153534953
      4E01000000000008000000504C41434549534E01000000000006000000504552
      49534E0100000000000600000041475249534E01000000000005000000444953
      43520100000000000600000052454D41524B0100000000000700000055504441
      544544010000000000090000005550444154454442590100000000000A000000
      434F554E54525949534E010000000000070000004349545949534E0100000000
      000400000043495459010000000000030000005A495001000000000006000000
      4F424A49534E0100000000000A000000494E535552454453554D010000000000
      080000004C494D495453554D0100000000000D0000004C494D49544556455259
      53554D010000000000070000004355525249534E010000000000090000005354
      5245455449534E01000000000005000000484F55534501000000000006000000
      4B4F52505553010000000000080000005354524F454E49450100000000000A00
      000041475244415445454E44010000000000060000005249534B504301000000
      000003000000504D4C0100000000000A00000043555252504D4C49534E010000
      000000090000004C494D4954434F4D420100000000000B00000043555252434F
      4D4249534E0100000000000700000052454D41524B3101000000000002000000
      43430100000000000700000043435552504D4C0100000000000800000043434F
      4D42504D4C01000000000005000000434E414D45010000000000080000004349
      54594E414D450100000000000A0000005354524545544E414D45010000000000
      0400000041444452010000000000}
    OnApplyRecord = DSUpdateRecord
    Session = OraSession
    AfterOpen = DSAfterOpen
    Left = 172
    Top = 278
  end
  object spAddrNew: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  FIREAGR.UPDATEADDR('
      
        '     :pEx, :isn,:cityisn,:countryisn,:zip,:remark1,:perisn,:agri' +
        'sn,:discr, :streetisn, :house, :korpus, :stroenie, null, null, :' +
        'pml, :currpmlisn, :limitcomb, :currcombisn);'
      '     update agraddr set riskpc = :riskpc where isn =:isn;'
      ' COMMIT;'
      'END;'
      '')
    Session = OraSession
    Optimize = False
    Variables.Data = {0300000001000000040000003A504558050000000000000000000000}
    Left = 256
    Top = 278
  end
end

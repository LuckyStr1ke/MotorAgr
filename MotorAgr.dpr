library MotorAgr;

uses
  ComServ,
  MAgr in 'MAgr.pas',
  Agr in 'Agr.pas' {fmMotorAgrF},
  uBaseForm in '..\Shared\uBaseForm.pas' {BaseForm},
  Car in 'Car.pas' {fmCar},
  CarModel in 'CarModel.pas' {fmCarModel},
  Subj in 'Subj.pas' {fmSubj},
  FFind in 'FFind.pas' {fmFFind},
  CarDoc in 'CarDoc.pas' {fmCarDoc},
  CarSurvey in 'CarSurvey.pas',
  DlgAmort in 'DlgAmort.pas' {fmDlgAmort},
  DlgWarn in 'DlgWarn.pas' {fmWarn},
  DlgBDEError in '..\Shared\DlgBDEError.pas' {fmBDEError},
  DlgSetPrem in 'DlgSetPrem.pas' {fmSetPremDlg},
  DlgCancel in 'DlgCancel.pas' {fmCancelAgrDlg},
  DlgAdd in 'DlgAdd.pas' {fmDlgAdd},
  MainDM in 'MainDM.pas' {MDM: TDataModule},
  DlgEdit in '..\Shared\DlgEdit.pas' {fmDlgEdit},
  Claim in 'Claim.pas' {FrmClaim: TFrame},
  AIS_Tlb in '..\Shared\AIS_TLb.pas',
  DlgProlong in 'DlgProlong.pas' {fmDlgProlong},
  ClientCOMObjBase in '..\Shared\ClientCOMObjBase.pas',
  DIMime in '..\Shared\DIMime.pas',
  Dicti_Const in '..\Shared\Dicti_Const.pas',
  DlgAgrID in 'DlgAgrID.pas' {fmAgrID},
  DBMS_Output in 'DBMS_Output.pas' {fmDBMSOutput},
  Measure in '..\MeasurePack\Measure.pas',
  DlgCheckName in 'DlgCheckName.pas' {fmDlgCheckName},
  COMReg in '..\Shared\COMReg.pas',
  Precalc in 'Precalc.pas' {BaseForm1},
  DlgCrossSale in 'DlgCrossSale.pas' {fmDlgCrossSale},
  Clauses in 'Clauses.pas' {frClauses: TFrame},
  XMLView in 'XMLView.pas' {FormXML},
  CFSQuestion in 'CFSQuestion.pas' {fmCFSQuestion},
  motorAgr_Intf in 'motorAgr_Intf.pas',
  ConDM in '..\Shared\ConDM.pas' {UConDM: TDataModule},
  uBaseDM in '..\Shared\uBaseDM.pas' {BaseDM: TDataModule},
  ssconn in 'ssconn.pas',
  DiscountHist in 'DiscountHist.pas' {fmDiscountHist},
  SearchRequestID in 'SearchRequestID.pas' {fmSearchRequestID},
  MotorAgr_TLB in 'MotorAgr_TLB.pas',
  UnSaveMem in 'UnSaveMem.pas' {SaveMem},
  StatusRSA in 'StatusRSA.pas' {fmStatusRSA},
  MWCarPrice in 'MWCarPrice.pas' {fmMWCarPrice},
  MWCarPriceHist in 'MWCarPriceHist.pas' {fmMWCarPriceHist},
  RSARequestHist in 'RSARequestHist.pas' {TfmRSARequestHist},
  LoadObj in 'LoadObj.pas' {fmLoadObj},
  AgrLifeUnit in 'AgrLifeUnit.pas' {fraAgrLife},
  terr in 'terr.pas' {frTerr: TFrame},
  DlgTerr in 'DlgTerr.pas' {fmDlgTerr};

exports
  DllGetClassObject,
  DllCanUnloadNow,
  DllRegisterServer,
  DllUnregisterServer;



{$R *.TLB}

{$R *.RES}

begin
end.

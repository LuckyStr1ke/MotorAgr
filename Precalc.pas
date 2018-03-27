unit Precalc;
{* форма расчета котировки
 Автор: Влад Юнин
 AL 18/06/07 Cached Update для списка параметров (task 3795274903)
}


interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uBaseForm, DBCtrls, Buttons, ExtCtrls, ComCtrls, StdCtrls, Mask,
  DBEditBtn, Grids, DBGrids, ServEdit, DBExtCtl, Db, DBClient, Menus
  , dicti_const, agr, Subj, PickDate, CarModel, DIMime, Prot_Fn
  {$IFDEF DELPHI7+}, Variants{$ENDIF}, DlgBDEError,
  ais_tlb, ExtClientDataSet, XMLView, ImgList, ToolWin, ConDM, PrintMenu, Word97,
  JCtrls, DlgTerr;

type
{* форма расчета котировки
}
  TfmPreCalc = class(TBaseForm)
    Panel2: TPanel;
    Panel3: TPanel;
    Panel1: TPanel;
    Panel4: TPanel;
    Panel7: TPanel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    btCalcPrem: TBitBtn;
    btPrint: TBitBtn;
    btNewAgr: TBitBtn;
    Panel5: TPanel;
    grPreCalcPrem: TDBGrid;
    dsPreCalcCL: TDataSource;
    dsGetRulTariffTxt: TDataSource;
    pmSbjCityName: TPopupMenu;
    dsFillSbjCity: TDataSource;
    dsPreCalcPrem: TDataSource;
    dsPreCalcParam: TDataSource;
    dsPreCalcHead: TDataSource;
    pmAddGroup: TPopupMenu;
    mAddDrv: TMenuItem;
    mDelDrv: TMenuItem;
    dsPreCalcParam1: TDataSource;
    Splitter2: TSplitter;
    Splitter5: TSplitter;
    pnCL: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    edSbjCityName: TDBEditBtn;
    rgSbjJuridical: TDBRadioGroup;
    cbRiskCtgISN: TDBCheckBox;
    cbAgrPeriodTxt: TDBComboBox;
    cbPeriodTxt: TDBComboBox;
    gbCar: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    lbSeats: TLabel;
    lbGrossWeigh: TLabel;
    edCarCtgValName: TDBEditBtn;
    edCarEnginePowerHP: TDBEdit;
    edCarSeats: TDBEdit;
    edCarGrossWeigh: TDBEdit;
    cbVehicleUsage: TDBCheckBox;
    cbSbjBirthDrive: TDBComboBox;
    edBonus: TDBEditBtn;
    pnMotor: TPanel;
    Splitter1: TSplitter;
    ppStatus: TPopupMenu;
    btCreateAgr: TBitBtn;
    pmAllowValue: TPopupMenu;
    edName: TDBEdit;
    Panel6: TPanel;
    edRemark: TDBMemo;
    Label15: TLabel;
    Panel8: TPanel;
    edID: TDBEdit;
    Label2: TLabel;
    edAgrStatus: TDBEditBtn;
    Label12: TLabel;
    edClientFullName: TDBEditBtn;
    Label20: TLabel;
    edDATECALC: TDBDateEdit;
    Label83: TLabel;
    edCurrName: TDBEditBtn;
    Label13: TLabel;
    edClientReplyName: TDBEditBtn;
    Label14: TLabel;
    edRuleName: TDBEditBtn;
    Label11: TLabel;
    edEmplName: TDBEditBtn;
    Label6: TLabel;
    edAgrID: TDBEditBtn;
    Label10: TLabel;
    Bevel4: TBevel;
    btMVC: TBitBtn;
    gbLiab: TGroupBox;
    dbcLiab: TDBCheckBox;
    lbLimit: TLabel;
    cbLimit: TDBComboBox;
    DBCheckBox1: TDBCheckBox;
    qrPreCalcCL: TClientDataSetN;
    qrPreCalcCLISN: TFloatField;
    qrPreCalcCLAGRISN: TFloatField;
    qrPreCalcCLID: TStringField;
    qrPreCalcCLCARENGINEPOWERHP: TFloatField;
    qrPreCalcCLCARSEATS: TFloatField;
    qrPreCalcCLCARGROSSWEIGH: TFloatField;
    qrPreCalcCLCARCTGVALISN: TFloatField;
    qrPreCalcCLCARCTGVALNAME: TStringField;
    qrPreCalcCLVEHICLEUSAGE: TFloatField;
    qrPreCalcCLMODEUSECLISN: TFloatField;
    qrPreCalcCLMODEUSECLNAME: TStringField;
    qrPreCalcCLSBJJURIDICAL: TFloatField;
    qrPreCalcCLSBJCITYISN: TFloatField;
    qrPreCalcCLSBJCITYCLASSISN: TFloatField;
    qrPreCalcCLSBJCITYNAME: TStringField;
    qrPreCalcCLSBJBIRTHDATE: TDateTimeField;
    qrPreCalcCLSBJDRIVINGDATEBEG: TDateTimeField;
    qrPreCalcCLRISKCTGISN: TFloatField;
    qrPreCalcCLRISKCTGNAME: TStringField;
    qrPreCalcCLAGRDATEBEG: TDateTimeField;
    qrPreCalcCLDATEBEG: TDateTimeField;
    qrPreCalcCLAGRDATEEND: TDateTimeField;
    qrPreCalcCLDATEEND: TDateTimeField;
    qrPreCalcCLAGRPERIODTXT: TStringField;
    qrPreCalcCLAGRPERIODM: TFloatField;
    qrPreCalcCLPERIODTXT: TStringField;
    qrPreCalcCLPERIODM: TFloatField;
    qrPreCalcCLDATECALC: TDateTimeField;
    qrPreCalcCLSBJBIRTHDRIVE: TStringField;
    qrPreCalcCLSBJBIRTHAGE: TFloatField;
    qrPreCalcCLSBJDRIVINGAGE: TFloatField;
    qrPreCalcCLBIRTHDRIVINGVRULISN: TFloatField;
    qrPreCalcCLEMPLISN: TFloatField;
    qrPreCalcCLEMPLNAME: TStringField;
    qrPreCalcCLBONUSISN: TFloatField;
    qrPreCalcCLBONUSNAME: TStringField;
    qrPreCalcCLAGR_ID: TStringField;
    qrPreCalcCLAgr_ISN: TFloatField;
    qrPreCalcCLFullName: TStringField;
    qrPreCalcCLClientISN: TFloatField;
    qrPreCalcCLPREMIUMSUM: TFloatField;
    qrPreCalcCLLiabExists: TFloatField;
    qrPreCalcCLLimitSumLiab: TFloatField;
    qrPreCalcCLCarDomestic: TFloatField;
    qrGetRulTariffTxt: TClientDataSetN;
    qrGetRulTariffTxtISN: TFloatField;
    qrGetRulTariffTxtTXT: TStringField;
    qrGetRulTariffTxtXX1: TFloatField;
    qrGetRulTariffTxtXX2: TFloatField;
    qrGetRulTariffTxtTariffISN: TFloatField;
    qrFillSbjCity: TClientDataSetN;
    qrFillSbjCitySORT: TFloatField;
    qrFillSbjCitySbjCityISN: TFloatField;
    qrFillSbjCitySbjCityName: TStringField;
    qrFillSbjCitySbjCityClassISN: TFloatField;
    qrFillSbjCityModeUseCLISN: TFloatField;
    qrPreCalcPrem: TClientDataSetN;
    qrPreCalcPremParamName: TStringField;
    qrPreCalcPremParamVal: TStringField;
    qrPreCalcPremSort: TFloatField;
    qrPreCalcPremSort1: TFloatField;
    qrPreCalcParam: TClientDataSetN;
    qrPreCalcParamPARNAME: TStringField;
    qrPreCalcParamVALNAME: TStringField;
    qrPreCalcParamROOT: TFloatField;
    qrPreCalcParamDATATYPE: TStringField;
    qrPreCalcParamCLASSISN: TFloatField;
    qrPreCalcParamGROUPID: TFloatField;
    qrPreCalcParamNO: TFloatField;
    qrPreCalcParamISN: TFloatField;
    qrPreCalcParamVAL: TStringField;
    qrPreCalcParamAGRISN: TFloatField;
    qrPreCalcParamDISCR: TStringField;
    qrPreCalcParamMODIFISN: TFloatField;
    qrPreCalcParamCTGISN: TFloatField;
    qrPreCalcParamMAKEISN: TFloatField;
    qrPreCalcParamMODELISN: TFloatField;
    qrPreCalcParamAddGroup: TFloatField;
    qrPreCalcParamPremiumSum: TFloatField;
    qrPreCalcParamCLASSCONSTNAME: TStringField;
    qrPreCalcParamCreatedBy: TStringField;
    qrPreCalcParamCreated: TDateTimeField;
    qrPreCalcParamUpdatedBy: TStringField;
    qrPreCalcParamUpdated: TDateTimeField;
    qrPreCalcParamAllowValue: TMemoField;
    qrPreCalcParamCarBodyIsn: TFloatField;
    qrPreCalcParamIsBodyDisc: TFloatField;
    qrPreCalcParamIsPrevAgrPres: TFloatField;
    qrPreCalcHead: TClientDataSetN;
    qrPreCalcHeadISN: TFloatField;
    qrPreCalcHeadID: TStringField;
    qrPreCalcHeadDateCalc: TDateTimeField;
    qrPreCalcHeadEmplISN: TFloatField;
    qrPreCalcHeadEmplName: TStringField;
    qrPreCalcHeadClientISN: TFloatField;
    qrPreCalcHeadClientName: TStringField;
    qrPreCalcHeadAgrISN: TFloatField;
    qrPreCalcHeadAgrID: TStringField;
    qrPreCalcHeadRULEISN: TFloatField;
    qrPreCalcHeadRULENAME: TStringField;
    qrPreCalcHeadDiscr: TStringField;
    qrPreCalcHeadStatus: TStringField;
    qrPreCalcHeadStatusName: TStringField;
    qrPreCalcHeadCurrISN: TFloatField;
    qrPreCalcHeadRemark: TMemoField;
    qrPreCalcHeadCurrName: TStringField;
    qrPreCalcHeadClientReplyISN: TFloatField;
    qrPreCalcHeadClientReplyName: TStringField;
    qrPreCalcHeadPremiumSum: TFloatField;
    qrPreCalcHeadName: TStringField;
    qrPreCalcParam1: TClientDataSetN;
    qrPreCalcParam1PARNAME: TStringField;
    qrPreCalcParam1VALNAME: TStringField;
    qrPreCalcParam1ROOT: TFloatField;
    qrPreCalcParam1DATATYPE: TStringField;
    qrPreCalcParam1CLASSISN: TFloatField;
    qrPreCalcParam1NO: TFloatField;
    qrPreCalcParam1ISN: TFloatField;
    qrPreCalcParam1VAL: TStringField;
    qrPreCalcParam1AGRISN: TFloatField;
    qrPreCalcParam1DISCR: TStringField;
    qrPreCalcParam1MODIFISN: TFloatField;
    qrPreCalcParam1CTGISN: TFloatField;
    qrPreCalcParam1MAKEISN: TFloatField;
    qrPreCalcParam1MODELISN: TFloatField;
    qrPreCalcParam1GROUPID: TFloatField;
    qrPreCalcParam1AddGroup: TFloatField;
    qrPreCalcParam1PremiumSum: TFloatField;
    qrPreCalcParam1CLASSCONSTNAME: TStringField;
    qrPreCalcParam1UpdatedBy: TStringField;
    qrPreCalcParam1Updated: TDateTimeField;
    qrPreCalcParam1CreatedBy: TStringField;
    qrPreCalcParam1Created: TDateTimeField;
    qrPreCalcParam1AllowValue: TMemoField;
    pCasco1: TPanel;
    g_Casco1: TDBGrid;
    pCasco: TPanel;
    g_Casco: TDBGrid;
    Panel9: TPanel;
    Panel10: TPanel;
    cbTestCalc: TCheckBox;
    cdsProtectFunc: TClientDataSetN;
    pmAddInvisibleFields: TPopupMenu;
    mAddInvisible: TMenuItem;
    mDeleteInvisible: TMenuItem;
    cbMode: TComboBox;
    qrPreCalcParamVisField: TFloatField;
    qrPreCalcParam1VisField: TFloatField;
    PopupMenu1: TPopupMenu;
    miShowLog: TMenuItem;
    cbShowLog: TCheckBox;
    tbMain: TToolBar;
    tbnCopyCalc: TToolButton;
    tbnQueue: TToolButton;
    tbnConvertCalc: TToolButton;
    ilMain: TImageList;
    sbPackDoc: TSpeedButton;
    DBEdit2: TDBEdit;
    qrPreCalcHeadCreated: TDateTimeField;
    Label17: TLabel;
    qrPreCalcParamIsReadOnly: TFloatField;
    qrPreCalcParam1IsReadOnly: TFloatField;
    DBEdit1: TDBEdit;
    dbeLoadMethod: TDBEdit;
    Label16: TLabel;
    Label18: TLabel;
    qrPreCalcHeadDATELOADMETHOD: TStringField;
    qrPreCalcParamTypeAccessDetail: TFloatField;
    qrPreCalcParam1TypeAccessDetail: TFloatField;
    chbGTotal: TDBCheckBox;
    qrPreCalcHeadFirstCalc: TStringField;
    lbClientsSource: TLabel;
    edClientSource: TDBEditBtn;
    qrPreCalcHeadClientsSourceISN: TFloatField;
    qrPreCalcHeadClientsSourceName: TStringField;
    qrPreCalcHeadReadOnlyFields: TMemoField;
    qrPreCalcHeadDisabledFields: TMemoField;
    pCascoObj: TPanel;
    g_CascoObj: TDBGrid;
    Panel12: TPanel;
    SplitterObj: TSplitter;
    qrPreCalcParamObj: TClientDataSetN;
    qrPreCalcParamObjPARNAME: TStringField;
    qrPreCalcParamObjVALNAME: TStringField;
    qrPreCalcParamObjROOT: TFloatField;
    qrPreCalcParamObjDATATYPE: TStringField;
    qrPreCalcParamObjCLASSISN: TFloatField;
    qrPreCalcParamObjGROUPID: TFloatField;
    qrPreCalcParamObjNO: TFloatField;
    qrPreCalcParamObjISN: TFloatField;
    qrPreCalcParamObjVAL: TStringField;
    qrPreCalcParamObjAGRISN: TFloatField;
    qrPreCalcParamObjDISCR: TStringField;
    qrPreCalcParamObjMODIFISN: TFloatField;
    qrPreCalcParamObjCTGISN: TFloatField;
    qrPreCalcParamObjMAKEISN: TFloatField;
    qrPreCalcParamObjMODELISN: TFloatField;
    qrPreCalcParamObjAddGroup: TFloatField;
    qrPreCalcParamObjPremiumSum: TFloatField;
    qrPreCalcParamObjCLASSCONSTNAME: TStringField;
    qrPreCalcParamObjCreatedBy: TStringField;
    qrPreCalcParamObjCreated: TDateTimeField;
    qrPreCalcParamObjUpdatedBy: TStringField;
    qrPreCalcParamObjUpdated: TDateTimeField;
    qrPreCalcParamObjAllowValue: TMemoField;
    qrPreCalcParamObjCarBodyIsn: TFloatField;
    qrPreCalcParamObjIsBodyDisc: TFloatField;
    qrPreCalcParamObjIsPrevAgrPres: TFloatField;
    qrPreCalcParamObjVisField: TFloatField;
    qrPreCalcParamObjIsReadOnly: TFloatField;
    qrPreCalcParamObjTypeAccessDetail: TFloatField;
    dsPreCalcParamObj: TDataSource;
    qrPreCalcParamObjPARENTISN: TFloatField;
    qrPreCalcParamPARENTISN: TFloatField;
    qrPreCalcParam1PARENTISN: TFloatField;
    qrPreCalcHeadFormIsn: TFloatField;
    qrPreCalcParamGr0ReadOnlyNo: TFloatField;
    qrPreCalcParam1Gr0ReadOnlyNo: TFloatField;
    qrPreCalcParamObjGr0ReadOnlyNo: TFloatField;
    SaveDialog: TSaveDialog;
    pmMVC: TPopupMenu;
    miMVCSetFilial: TMenuItem;
    miMVCRun: TMenuItem;
    miMVCSetModif: TMenuItem;
    N2: TMenuItem;
    miMVCDelFilial: TMenuItem;
    miMVCDelModif: TMenuItem;
    pnlShowProducts: TPanel;
    btShowProducts: TButton;
    qrPreCalcCLUseWithTrailer: TFloatField;
    cbVehicleUsagePSG: TDBCheckBox;
    qrPreCalcCLVehicleUsagePSG: TFloatField;
    cbUseWithTrailer: TDBCheckBox;
    cbFollowToPlaceOfReg: TDBCheckBox;
    qrPreCalcCLFollowToPlaceOfReg: TFloatField;
    Label19: TLabel;
    edCarEnginePowerKW: TDBEdit;
    qrPreCalcCLCARENGINEPOWERKW: TFloatField;
    GroupBox1: TGroupBox;
    Label22: TLabel;
    edFIO: TDBEdit;
    Label21: TLabel;
    edCLIENTIO: TDBEdit;
    Label23: TLabel;
    edINSURANTAGE: TDBEdit;
    qrPreCalcCLFIO: TStringField;
    qrPreCalcCLCLIENTIO: TStringField;
    qrPreCalcCLINSURANTAGE: TStringField;
    pmCalculator: TPopupMenu;
    miCalculator: TMenuItem;
    ppVariantValuation: TPopupMenu;
    lVariantValuation: TLabel;
    edVariantValuation: TDBEditBtn;
    qrPreCalcHeadVariantValuation: TFloatField;
    qrPreCalcHeadVariantValuationName: TStringField;
    btStoreCalcResultToAgr: TBitBtn;
    pHint: TPanel;
    mHint: TMemo;
    qrPreCalcHeadTemplateisn: TFloatField;
    miAddGroup: TMenuItem;
    miAddTemplGroup: TMenuItem;
    miAddGroupWalls: TMenuItem;
    miAddGroupFoundation: TMenuItem;
    miAddGroupRoof: TMenuItem;
    miDelGroup: TMenuItem;
    qrPreCalcParam1Remark: TStringField;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    grBreak: TGroupBox;
    dbcRoadAssist: TDBCheckBox;
    edMakeName: TDBEdit;
    edModelName: TDBEditBtn;
    edCarConstructed: TDBEdit;
    edCarInsurKilometers: TDBEdit;
    qrPreCalcCLCarInsurKilometers: TFloatField;
    qrPreCalcCLBreakageExists: TFloatField;
    qrPreCalcCLCarModifISN: TFloatField;
    qrPreCalcCLCarMarkISN: TFloatField;
    qrPreCalcCLCarModelISN: TFloatField;
    qrPreCalcCLCarMarkName: TStringField;
    qrPreCalcCLCarModelName: TStringField;
    qrPreCalcCLCarConstructed: TFloatField;
    sbFraud: TSpeedButton;
    qrPreCalcParamRemark: TStringField;
    qrPreCalcHeadObjClassIsn: TFloatField;
    qrPreCalcParamFullName: TStringField;
    qrPreCalcCLREADONLYFIELDS: TMemoField;
    qrPreCalcCLDISABLEDFIELDS: TMemoField;
    sbLoadDataFromXls: TSpeedButton;
    MeImportExcel: TMemo;
    qrGetFileIsn: TClientDataSetN;
    memConvertCall: TMemo;
    rgSbjResident: TDBRadioGroup;
    qrPreCalcCLSbjResident: TFloatField;
    qrPreCalcHeadIsFire: TFloatField;
    jpKotDKB: TJPanel;
    cdsAgrAdd: TClientDataSet;
    cdsVariant: TClientDataSet;
    cdsTerr: TClientDataSet;
    dsTerr: TDataSource;
    dsVariant: TDataSource;
    dsAgrAdd: TDataSource;
    dbgVariant: TDBGrid;
    dbgDogAdd: TDBGrid;
    dbgTerr: TDBGrid;
    pVarTitle: TPanel;
    pDogTitle: TPanel;
    pTerrTitle: TPanel;
    Splitter3: TSplitter;
    cdsTerrPARNAME: TStringField;
    cdsTerrVALNAME: TStringField;
    cdsTerrROOT: TFloatField;
    cdsTerrDATATYPE: TStringField;
    cdsTerrCLASSISN: TFloatField;
    cdsTerrGROUPID: TFloatField;
    cdsTerrNO: TFloatField;
    cdsTerrISN: TFloatField;
    cdsTerrVAL: TStringField;
    cdsTerrAGRISN: TFloatField;
    cdsTerrDISCR: TStringField;
    cdsTerrMODIFISN: TFloatField;
    cdsTerrCTGISN: TFloatField;
    cdsTerrMAKEISN: TFloatField;
    cdsTerrMODELISN: TFloatField;
    cdsTerrAddGroup: TFloatField;
    cdsTerrPremiumSum: TFloatField;
    cdsTerrCLASSCONSTNAME: TStringField;
    cdsTerrCreatedBy: TStringField;
    cdsTerrCreated: TDateTimeField;
    cdsTerrUpdatedBy: TStringField;
    cdsTerrUpdated: TDateTimeField;
    cdsTerrAllowValue: TMemoField;
    cdsTerrCarBodyIsn: TFloatField;
    cdsTerrIsBodyDisc: TFloatField;
    cdsTerrIsPrevAgrPres: TFloatField;
    cdsTerrVisField: TFloatField;
    cdsTerrIsReadOnly: TFloatField;
    cdsTerrTypeAccessDetail: TFloatField;
    cdsTerrPARENTISN: TFloatField;
    qrPreCalcParamList: TClientDataSet;
    pmPreCalcGroup: TPopupMenu;

    procedure qrGetRulTariffTxtBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure edCarCtgValNameBtnClick(Sender: TObject);
    procedure edSbjCityNameBtnClick(Sender: TObject);
    procedure qrFillSbjCityBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure qrPreCalcCLBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure edEmplNameBtnClick(Sender: TObject);
    procedure qrPreCalcCLSBJCITYNAMESetText(Sender: TField;
      const Text: String);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbSbjBirthDriveChange(Sender: TObject);
    procedure cbAgrPeriodTxtChange(Sender: TObject);
    procedure cbPeriodTxtChange(Sender: TObject);
    procedure qrPreCalcPremBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure btCalcPremClick(Sender: TObject);
    procedure edBonusBtnClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btNewAgrClick(Sender: TObject);
    procedure edAgrIDDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edClientFullNameBtnClick(Sender: TObject);
    procedure qrPreCalcParamBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure g_CascoEditButtonClick(Sender: TObject);
    procedure g_CascoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure edClientFullNameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qrPreCalcHeadBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure dsPreCalcParamDataChange(Sender: TObject; Field: TField);
    procedure g_CascoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qrPreCalcParamBeforePost(DataSet: TDataSet);
    procedure qrCalcPremCascoBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure g_CascoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure g_CascoDblClick(Sender: TObject);
    procedure qrPreCalcParamVALNAMESetText(Sender: TField;
      const Text: String);
    procedure qrMagrCASCO1VALNAMESetText(Sender: TField; const Text: String);
    procedure FormResize(Sender: TObject);
    procedure qrPreCalcParamAfterScroll(DataSet: TDataSet);
    procedure grPreCalcPremDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure mAddDrvClick(Sender: TObject);
    procedure qrPreCalcParamBeforeInsert(DataSet: TDataSet);
    procedure qrPreCalcParamAfterInsert(DataSet: TDataSet);
    procedure qrPreCalcParam1BeforeScroll(DataSet: TDataSet);
    procedure edAgrStatusBtnClick(Sender: TObject);
    procedure edRuleNameBtnClick(Sender: TObject);
    procedure edCurrNameBtnClick(Sender: TObject);
    procedure ppStatusPopup(Sender: TObject);
    procedure edClientReplyNameBtnClick(Sender: TObject);
    procedure qrPreCalcHeadAfterScroll(DataSet: TDataSet);
    procedure g_CascoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qrPreCalcParamAfterPost(DataSet: TDataSet);
    procedure qrPreCalcHeadAfterOpen(DataSet: TDataSet);
    procedure qrPreCalcCLAfterPost(DataSet: TDataSet);
    procedure qrPreCalcHeadAfterPost(DataSet: TDataSet);
    procedure qrPreCalcHeadClientReplyNameSetText(Sender: TField;
      const Text: String);
    procedure btCreateAgrClick(Sender: TObject);
    procedure btPrintClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btMVCClick(Sender: TObject);
    procedure nvDataBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure qrPreCalcParamVALNAMEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cbLimitDropDown(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qrPreCalcCLAfterOpen(DataSet: TDataSet);
    procedure dbcLiabClick(Sender: TObject);
    procedure qrPreCalcParamAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure qrPreCalcParam1AfterOpen(DataSet: TDataSet);
    procedure qrPreCalcParam1AfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure g_CascoColEnter(Sender: TObject);
    procedure cbModeChange(Sender: TObject);
    procedure mAddInvisibleClick(Sender: TObject);
    procedure tbnCopyCalcClick(Sender: TObject);
    procedure tbnQueueClick(Sender: TObject);
    procedure tbnConvertCalcClick(Sender: TObject);
    procedure sbPackDocClick(Sender: TObject);
    procedure edClientSourceBtnClick(Sender: TObject);
    procedure edClientSourceKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure g_CascoObjEditButtonClick(Sender: TObject);
    procedure dbgTerrEditButtonClick(Sender: TObject);
    procedure g_CascoObjCellClick(Column: TColumn);
    procedure qrPreCalcParamObjAfterRefresh(DataSet: TDataSet);
    procedure g_CascoObjMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure qrPreCalcParamAfterRefresh(DataSet: TDataSet);
    procedure dsPreCalcParamStateChange(Sender: TObject);
    procedure qrPreCalcParamObjAfterDelete(DataSet: TDataSet);
    procedure g_Casco1CellClick(Column: TColumn);
    procedure mRunMVCClick(Sender: TObject);
    procedure mSetMVCCalcClick(Sender: TObject);
    procedure miMVCSetModifClick(Sender: TObject);
    procedure g_CascoObjDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure pmMVCPopup(Sender: TObject);
    procedure miMVCDelFilialClick(Sender: TObject);
    procedure miMVCDelModifClick(Sender: TObject);
    procedure btShowProductsClick(Sender: TObject);
    procedure g_CascoCellClick(Column: TColumn);
    procedure qrPreCalcCLAfterRefresh(DataSet: TDataSet);
    procedure g_CascoExit(Sender: TObject);
    procedure miCalculatorClick(Sender: TObject);
    procedure pmCalculatorPopup(Sender: TObject);
    procedure ppVariantValuationPopup(Sender: TObject);
    procedure edVariantValuationBtnClick(Sender: TObject);
    procedure btStoreCalcResultToAgrClick(Sender: TObject);
    procedure miAddGroupClick(Sender: TObject);
//    procedure miAddGroupClickWithParent(Sender: TObject);
    procedure g_Casco1Enter(Sender: TObject);
    procedure edModelNameBtnClick(Sender: TObject);
    procedure sbFraudClick(Sender: TObject);
    procedure g_CascoMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure sbLoadDataFromXlsClick(Sender: TObject);
    procedure g_CascoKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure dsAgrAddDataChange(Sender: TObject; Field: TField);
    procedure dsVariantDataChange(Sender: TObject; Field: TField);
    procedure dbgTerrCellClick(Column: TColumn);    
    procedure FillPreCalcGroupMenu;
//    procedure miDelGroupClickWithParent(Sender: TObject);
  private
    // Lavrov S.V. task #9069873803 07.04.2009
    // Идентификатор текущей валюты, в зависимости от которой выбирать
    // всплывающий список сумм
    FCurrentCurrIsn : Double;
    // Lavrov S.V. task #12304897803 11.11.2009
    // Возможность добавлять пареметры, которые не видны в "Оптимальном" режиме
    CanAddInvisibleField : boolean;
    // Режим работы с котировкой
    Mode : Double;

    // класс текстовых комбо боксов
    FClassISN :double;
    FDateTime :TDateTime;

    FSubjForm :TfmSubj;       // ZK 21.02.2007 открытие клиента
    FCarModelForm :TfmCarModel; // ZK 06.03.2007 выбор модификации (модели)
    MakeISN, ModelISN, ModifISN :Double; // ZK temp
    MakeName, ModelName :string;

    FISN :double;
    FGroupID :double;
    FNo :double;
    // печать
    vPrnWord: IPrintWord;
    PPComp :TComponent;

    LimList :Variant;

    fMulti:Boolean;
    fObjInsert : Boolean;
    fTerrInsert : Boolean;

    vIsKotDKB: boolean;

    fonFormShow:Boolean;

    StateChange: Boolean;
    MenuPrintDoc: TMenuPrintDoc;

    //2015-03-30 Конев В.А. Задача 73888985503 "Реализация продукта "Коммерсант".
    // ид продукта "Коммерсант"
    fAgrPFireKommersant: double; // ISN определяется при первом обращении и сохраняется в переменной

    FCFSCall : ICFSCall;
    DFields, RFields :string;

    procedure FillComboBox(Sender: TDBComboBox);
    procedure FillSbjCityMenu;
    procedure PClickProc(Sender: TObject);
    function ChooseModification(Sender: TObject) :Boolean;
    function ChooseModificationCL(Sender: TObject) :Boolean; // 13.05.2016 Kuznetsov S.M. Task 98624427503
    procedure FillStatusMenu(M :TPopupMenu; ParentISN :Double; PClickProc :TMenuClickProc);
    procedure AgrStatusClick(Sender: TObject);
    procedure grPremEnabled(DataSet: TDataSet);
    // создание PopupMenu для полей с фиксированными значениями
    procedure CreateAllowValue(Sender :TDataSet);
    procedure NewItemClick(Sender: TObject);
    procedure Param_ApplyUpdates;
    procedure ShowAgr (pIsnField : TField);
   // 26.10.09 Болкунов С.Н. - проверка возможности тестовых расчетов премии для пользователя
    procedure CheckCalcTestAccess;
   // 26.10.09 Болкунов С.Н. - проверка доступности функции sName для пользователя
    function ProtectFuncAccess(sName:WideString):boolean;
   // 26.10.09 Болкунов С.Н. - настройка отображения полей в зависимости , тестовый режим расчета премии или нет
    procedure ControlsCalcTest;
    // Lavrov S.V. task # 11.11.2009
    procedure SetPopupMenuForField(pGrid: TDBGrid);
    // Lavrov S.V. task #14286090503 19.04.2010
    function GetParamBySpecQuery(pRoot: Double; var pIsn: double; var pRes: variant): boolean;
    procedure ShowMessageWarn(V: variant);
    procedure SetControlsAccess(DS :TDataSource; C :TWinControl; DFields, RFields :string);

    procedure Filter; //отображние параметров выбранного объекта

    procedure ChooseWoodObj(F_ISN, F_Name: TField;
                         pRoot: Double;
                         ChildOK :Boolean=TRUE;
                         ShowDeptPanel :Boolean=FALSE;
                         ShowFullNameAsHint :Boolean=FALSE;
                         pNameNum :integer=0;
                         pFilterISN :double=0;
                         DisableLine : String = ''
                         );//для отображения объектов в справочнике (запрос 18) в разделе "Объекты" при добавлении объекта в многообъектных котировках

    procedure SaveQuote; // 19.06.2013 Kuznetsov S.M. Task 31098780203
    procedure FillVariantValuationMenu(M :TPopupMenu; ParentISN :Double; PClickProc :TMenuClickProc);
    procedure VariantValuationClick(Sender: TObject);
    procedure VVHintHandler(Sender: TObject);
    procedure LaunchEstimateClient;
    function GetIntfCFSCall: ICFSCall;
    procedure GetAgrAddr;
    property IntfCFSCall : ICFSCall read GetIntfCFSCall write FCFSCall;
  protected
    function p_AGRPFIREKOMMERSANT: double ; // 2015-03-30 Конев В.А. Задача 73888985503 "Реализация продукта "Коммерсант".
    procedure ActionBeforeEdit(DataSet :TDataSet);
  public
    ISN :double;
    FNewAgrISN : variant;
//    FConDMp: TUConDM;
  end;
TModDbGrid=class(TDBGrid)
  public
    property DataLink;
  end;

type
  PMyRec = ^TMyRec;
  TMyRec = record
    ISN: double;
    X1: double;
    X2: double;
    TariffISN: double;
end;

const p_TRF_CL_Period      : double=761854100;
      p_SbjCityISN         : double=1582132403;
      //08.05.2013 Соболев А.В. Задача 44598369103
      p_AGRMMAXIFIRE           : double=1401842003; //ПЛАТИНУМ ЭКСПРЕСС КВАРТИРА
      p_AGRCMAXIFIRE           : double=1401845103; //ПЛАТИНУМ ЭКСПРЕСС СТРОЕНИЕ
      p_AGRPFIRECLASSIC        : double=1676095903; //ПЛАТИНУМ.
      p_AGRMPLFIRER            : double=2346153903; //ПЛАТИНУМ ЭКСПРЕСС КВАРТИРА (РЕГИОН)
      p_AGRCPLFIRER            : double=2346223903; //ПЛАТИНУМ ЭКСПРЕСС СТРОЕНИЕ (РЕГИОН)
      p_AGRFREEHOUSESTRUCTURE  : double=3089065603; //FREEДОМ(СТРОЕНИЕ)_OLD
      p_AGRFREEHOUSEAPARTMENT  : double=3089065903; //FREEДОМ(КВАРТИРА)_OLD
      p_AGREXPRESSGO           : double=3199072103; //ЭКСПРЕСС ГО
      p_AGREXPRESSGOR          : double=3399219203; //ЭКСПРЕСС ГО (РЕГИОН)
      p_AGRFIREHOLIDAY         : double=3793731603; //ОТПУСКНОЙ
      p_AGRFREEHOUSEAPARTMENTN : double=4156694903; //FREEДОМ(КВАРТИРА)
      p_AGRFREEHOUSESTRUCTUREN : double=4156748803; //FREEДОМ(СТРОЕНИЕ)
      p_AGRPFIRECLASSICN       : double=4161361203; //ПЛАТИНУМ
      p_AGRPFIRECLASSIC2014    : double=4470148003; //ПЛАТИНУМ 2014
      p_AGRFIREHOLIDAYN        : double=4188381803; //Отпускной(2013)
      p_AGREXPRESSAPN          : double=4188377203; //Экспресс (квартира)(2013)
      p_AGREXPRESSSTN          : double=4188379903; //Экспресс (строение)(2013)
      p_AGREXPRESSGON          : double=4169721103; //Экспресс го (2013)
      p_AGRMOBILE              : double=4336460403; //Мобильный
      p_FMMOTORAGRP            : double=1556764003; //Договор страхования имущества
      p_AGRMOTORWIZARD         : double=4418056103; //Мастер создания договоров
      p_AGRCALCFIREDKS         : double=5062014203; //Калькулятор оценки
      p_AgrMotorCompulsory : double = 753518300; // ОСАГО
      p_AgrCascoPremium    : double = 805536400;  // КАСКО
      p_TPrmStruct         : double = 1581950803; // корень для параметров
      p_AgrKind            : double = 24890816; //  Комплексное страхование
      // параметры водителя
      p_SbjDrivingDateBeg : double = 1582132303; // Дата начала водительского стажа
      p_SbjBirthDate      : double = 1582132203; // Дата рождения водителя
      p_SbjDrvB : double = 1807942503;           // стаж (лет)
      p_SbjAgeB : double = 1807942103;           // возраст (лет)
      tp_FAMILYSTATEISN: double = 2552229203;    // семейное положение
      // Риски и правила
      p_RiskRuleISN  : double = 1805598503; // правила
      p_RiskClassISN : double = 1582142303; // риски
      // Тип ТС
      tp_CarCtgISN : double=1582132603;
      // Договренность с клиентом
      p_ClientReplyISN :double=1856995203;
      // ОПС
      tp_AntitheftISN :double=1582147803;
      //tp_AntitheftParams :double=
      // страховая сумма
      tp_LimitSum    :double=1582142603;
      // страховая сумма по каждому случаю
      tp_LimitEverySum    :double=3629664303;
      // франшиза
      tp_FranchSum   :double=1582142803;
      // Максимальный лимит ответственности
      tp_LimitResponMax: double=3710940503;

      // Dmitry_Privalov/epam 12.02.2008
      // Стоимость ТС
      tp_CarCost     : double = 2231848503;
      // Валюта стоимости ТС
      tp_CarCostCurrIsn : double = 2231846003;
      // Кузов
      tp_CarBodyModelIsn : double = 2110503403;

      // 14.08.2013 Kuznetsov
      // Дата начала использования ТС
      tp_CarDateRun: double = 1582135403;

      // Lavrov S.V. 06.09.2009
      // Категория риска
      tp_RiskCategory : double = 1582143103;

      // отделка
      tp_Decorating    :double=2095335103;
      // несущие конструкции
      tp_Building    :double=2095334903;
      // имущество
      tp_Movables    :double=2095335203;
      // Детализация
      tp_AgrRuleItemsISN  :double=1582148303;

      // Dmitry_Privalov/epam 10.04.2008
      // Форма котировки
      tp_fmPreCalc : double = 1625424603;
      // Пред. договор
      tp_AgrPrevIsn : double = 1582151303;
      // Бонус
      TP_BonusIsn  : double = 1582143203;
      // Бонус C0
      TP_C0  : double = 24038616;
      // Дата создания ТС
      tp_CarConstructed   : double = 1582135303;

      // Lavrov S.V. task #9069873803 07.04.2009
      // Валюта страховой премии
      tp_CurrISN : double = 1582142503;
      // Dmitry_Privalov/epam 17.06.2009 task 4595552003
      // Доп. оборудование
      TP_EQUIPCLASSISN  : double = 1582143403;

      TP_TCSUBTYPE : double = 2708377903;

      tp_GrObjClassIsn :double = 2587749803;    // Класс группового объекта
      TP_REFUNDLIMISN :double = 1582143603;
      TP_REFUNDSYSISN :double = 1582143703;
      TP_RISKFICT :double = 2096276703;

      TP_MOVABLESWITHLIST :double = 2973225803;
      TP_MOVABLESWITHOUTHLIST  :double = 2973226503;
      TP_LANDSCAPEDESIGN  :double = 2973226903;
      tp_variant : double = 2570212503;
      tp_variantl : double = 2570213103;
      tp_WarrantyKilometrage : double = 3222455003;

      // имущество ДКБ
      Tp_Cbuilding  :double= 3654668903;
      Tp_Cexterior  :double= 3654680003;
      Tp_Cinterior  :double= 3654687303;
      Tp_Cexternal  :double= 3654698903;
      Tp_Cglazing   :double= 3654709603;
      Tp_Cequipment :double= 3654723203;
      Tp_Cfurniture :double= 3654817803;
      Tp_Cproductstocks :double= 3654839203;
      Tp_Ccash          :double= 3654875403;
      Tp_Caddexpenses   :double= 3654883803;

      TP_OBJTYPE :double= 4187265103;//Тип объекта
      TP_SUBJECTSOFRF :double= 4471458103; //Субъект РФ
      TP_SUBREGNUMBERTC :double= 6158966803; //Субъект РФ по номеру ТС
      tp_RegionIsn:        double = 5071199303; //Регион
      tp_NotaryRegionIsn:  double = 6233333103; //Регион нотариальной палаты
      tp_InsObjRegionIsn:  double = 6448149503; // Регион объекта страхования

      //22.10.2013 Соболев А.В. Задача 54197556703 Реализация: Добавление поля «Продление договора страхования» в котировку
      TP_PROLONG :double= 4363998303;//Продление
      //03.12.2013 Соболев А.В. Задача 56275847903 Реализация котировок: 1.2 Приказ 463 (Шины-Диски)
      tp_AgrPeriodM :double= 1841398203;//Период действия договора(мес)
      p_OBJPROPERTYANDEQUIP :double= 3249597003;//Имущество и оборудование
      p_AgrMotorR0: double=685027816; //Премиум-регион
      tp_TotalLoss :double= 4135884203;//Только полная гибель

      TP_BONUSIM: double = 2587761503;
      //20.06.2014 Соболев А.В. Задача 64756113903 Реализация: Внесение изменений в калькуляторы по страхованию гражданской ответственности
      TP_RULEGOCOMMON :double= 4312960603;//Гражданская ответственность (общая)
      TP_COVERINGARTICLE60 :double= 4539830403;//Покрытие по 60 статье ГРК РФ
      TP_COVERINGMORALHARM :double= 4539831803;//Покрытие по моральному вреду
      //14.07.2014 Соболев А.В. Задача 67228791403 Согласование тз на внесение изменений в воронку продаж и котировок дкб
      TP_PRESALE :double = 4559616703; //Предпродажа
      //02.07.2014 Kuznetsov S.M. Task 65600959303
      OBJPROPERTYANDEQUIP   :double = 3249597003; //Имущество и оборудование
      OBJPROPERTYANDFURNISH :double = 4472148803; //Имущество и отделка
      //28.08.2015 Соболев А.В. Задача 76596909803 Реализация: Калькулятор по оценке имущества Предстраховая экспертиза (Платинум) в АИС
      c_corrval: int64 = 7000000000;
      p_acVariantValuation :double= 5078604203;       //Вариант оценки в калькуляторе
      p_VariantValuationSimple :double= 5078604903;   //ПРОСТАЯ ОЦЕНКА
      p_VariantValuationDetailed :double= 5078605003; //ДЕТАЛЬНАЯ ОЦЕНКА
      c_AGRMPLFIRER1 :double= 542584112203; //Калькулятор оценки КЭ квартиры
      c_AGRMPLFIRER2 :double= 542584112303; //Калькулятор по простой оценке ОО квартиры/таунхауса
      c_AGRMPLFIRER3 :double= 542584112403; //Калькулятор по детальной оценке ОО квартиры/таунхауса
      c_AGRCPLFIRER1 :double= 542584112503; //Калькулятор по оценке КЭ строения
      c_AGRCPLFIRER2 :double= 542584112603; //Калькулятор по простой оценке ОО строения
      c_AGRCPLFIRER3 :double= 542584112703; //Калькулятор по детальной оценке ОО строения
      c_AGRCPLFIRER4 :double= 542584112803; //Калькулятор по оценке КЭ сооружения
      c_ACFCEGROUPSWALLS      :double= 5086081603; //Стены
      c_ACFCEGROUPSFOUNDATION :double= 5086081703; //Фундамент
      c_ACFCEGROUPSROOF       :double= 5086081803; //Кровля
      ACFCEGROUPS: array[0..3] of double = (0, 5086081603, 5086081703, 5086081803);
      TP_CPV_DETAIL_OBJ_PLACE :double= 5129760503; //Место расположения (Калькулятор оценки КЭ квартиры)
      TP_CPV_B_TOTAL_AREA_MET_ESTIM :double= 5129770903; //Метод оценки общей площади
      TP_CPV_FLOORS_APART_BUILD :double= 5129760603; //Этажность многоквартирного дома
      TP_CPV_CALC_SEP_ADJ_BUILD_FLG :double= 5129770703; //Рассчитать примык. постройку отдельно
      p_OTHER_REGION :double= 5074186603; //Иное
      TP_CPV_EXTEN_OUTER_WALL_DECOR :double= 5129773703; //Наружная отделка стен
      TP_CPV_B_OUTER_WALL_DECOR :double= 5129771403; //Наружная отделка стен
      TP_CPV_B_WALL_MATERIAL :double= 5129771303; //Основной материал стен
      TP_CPV_EXTEN_WALL_MATERIAL :double= 5129773603; //Основной материал стен
      TP_CPV_FLOOR_CATEG :double= 5129761203; //Категория напольных покрытий
      TP_CPV_WALL_CATEG :double= 5129761303; //Категория отделки стен
      TP_CPV_CEILING_CATEG :double= 5129761503; //Категория устройства и отделки потолков
      TP_CPV_DOOR_CATEG1 :double= 5129761603; //Категория дверных заполнений
      TP_CPV_WINDOW_CATEG :double= 5129761703; //Категория оконных заполнений
      TP_CPV_BUILDIN_KITC_CATEG :double= 5129761803; //Категория встроен. кухон. мебели/техники
      TP_CPV_VENT_AIRCOND_CATEG :double= 5129761903; //Категория вентиляции и кондиционирования
      TP_CPV_FLOOR_EXT_CATEG :double= 5129774003; //Категория напольных покрытий
      TP_CPV_WALL_EXT_CATEG :double= 5129774103; //Категория отделки стен
      TP_CPV_CEILING_EXT_CATEG :double= 5129774203; //Категория устройства и отделки потолка
      TP_CPV_DOOR_EXT_CATEG :double= 5129774303; //Категория дверных заполнений
      TP_CPV_WINDOW_EXT_CATEG :double= 5129774403; //Категория оконных заполнений
      TP_CPV_BUILDIN_KITC_EXT_CATEG :double= 5129774503; //Категория встроен кухон. мебели/техники
      TP_CPV_WIRING_ACCES_EXT_CATEG :double= 5129774603; //Категория электроустановочного оборудования
      TP_CPV_PLUMB_EQUIP_EXT_CATEG :double= 5129774703; //Категория сантехнического оборудования
      TP_CPV_HEATING_EQUIP_EXT_CATEG :double= 5129774803; //Категория отопительного оборудования
      TP_CPV_VENT_AIRCOND_EXT_CATEG :double= 5129774903; //Категория вентиляции и кондиционирования
      TP_CPV_OBJ_SUM_AREA1 :double= 5129760303; //Общая площадь, кв. м.
      TP_CPV_CORRCOEF_CONST_ELEM :double= 5129760803; //Ккор
      TP_CE_CPV_CALC_SUM_AREA :double= 5129761003; //Общая площадь, кв. м.
      TP_CPV_BLDIN_OTH_FURN :double= 5129762003; //Иная встроен. мебель/ИО
      TP_CPV_LENGTH_FENCE :double= 5129762203; //Длина ограждения, м.п.
      TP_CPV_WELLS_DEPTH :double= 5129762303; //Глубина скважины, м
      TP_CPV_RINGS_COUNT :double= 5129762503; //Число колец
      TP_CPV_POOL_AREA :double= 5129762603; //Площадь бассейна, кв.м.
      TP_CPV_APART_BUILDING_YEAR :double= 5129762703; //Год постройки многокварт. дома
      TP_CPV_ADE_LAST_RECONSTR_YEAR :double= 5129762803; //Год последнего ремонта ОО
      TP_CPV_ADE_WEAR_PERCENT :double= 5129763003; //% износа
      TP_CPV_CORRCOEF_DEC_EQUIP :double= 5129763503; //Ккор
      TP_CPV_DE_CALC_SUM_AREA :double= 5129769703; //Общая площадь,вкл.примык.постр-ку, кв.м.
      TP_CPV_OBJS_SUM_AREA :double= 5129770303; //Площадь помещений
      TP_CPV_NUM_FLOORS_INCL_BASEM :double= 5129770603; //Кол-во этажей(вкл.цоколь,не вкл.мансард)
      TP_CPV_B_FIRS_FL_BUILTUP_AREA :double= 5129770803; //Площадь застройки (первого этажа), кв.м.
      TP_CPV_B_ATTIC_FACTOR :double= 5129771003; //Кмансарда
      TP_CPV_B_BUILD_TOTAL_AREA :double= 5129771103; //Общая площадь, кв. м.
      TP_CPV_B_WITH_G_WALL_MAT_AREA :double= 5129771503; //Площадь строения с основным материалом стен
      TP_CPV_B_FOUND_AREA :double= 5129772203; //Площадь строения с фундаментом
      TP_CPV_B_WITH_ROOF_AREA :double= 5129772403; //Площадь строения с кровлей
      TP_CPV_B_CONSTRUCTION_FACTOR :double= 5129772903; //Кконструкции
      TP_CPV_B_BUILDING_YEAR :double= 5129773003; //Год постройки
      TP_CPV_B_LAST_OVERHAUL_YEARS :double= 5129773103; //Год последнего капремонта
      TP_CPV_BDE_LAST_RECONSTR_YEAR :double= 5129773203; //Год последнего ремонта ОО
      TP_CPV_BDE_WEAR_PERCENT :double= 5129773303; //% износа
      TP_CPV_EXTEN_TOTAL_AREA :double= 5129773403; //Общая площадь примык. постройки, кв.м.
      TP_CPV_EXTENTION_AREA :double= 5129773503; //Площадь застройки примык. постройки, кв.м.
      TP_CPV_BLDIN_OTH_FURN_EXT :double= 5129775003; //Иная встроен. мебель/ИО
      //21.01.2016 Golodnyuk task 94194409803
      TP_LIMSUMACCTHIRDPERSON  : double = 5278916103;
      // Связанный договор Shikov
      tp_RelatedAgrIsn : double = 6012913203;
      // 28.09.2016 Грачев Д.В. 110983330203
      C_AGRACCIDENTEPIND    : double = 5697602603;
      C_OBJHUMAN            : double = 2155;
      C_ATTRSETRISKISN      : double = 5804710803;

      C_AGRAGRONLINE        : double =5330757603;
      TP_STRANAISN: double = 3528325203;
      TP_EXSTRANAISN: double = 6225724703;
      TP_MULTI:double = 6219268003;
      TP_TRIPPERIOD:double = 3522424103;
      TP_CADASTRALVALUE:      double = 6173720203;
      tp_FranchCond:          double = 4139434503;

      //17.10.2017 Makarova task 170085988203
      Tp_InsSpecProgram : double = 6711117803;
      AGRMOVABLEEQUIP: double = 3968686403;

      p_AGRFIRERESPSROBDOBLG: double = 6588053603;  //ДО СТРОИТЕЛЕЙ (СРО)
      p_AGRFIRERESPSROPJOBLG: double = 6588053703;  //ДО ПРОЕКТИРОВЩИКОВ (СРО)
      p_AGRFIRERESPSROPPOBLG: double = 6588053803;  //ДО ИЗЫСКАТЕЛЕЙ (СРО)
      TP_CLIENTSROISN:        double = 6687976403;  //Клиент СРО
      TP_COUNTRY:             double = 6688354003;
      TP_CITY:                double = 6688358403;
      TP_STREET:              double = 6688061503;
      C_AGRFIRELIABAREND:     double = 3442937403;
      C_AGRFIRELIABOWNER:     double = 3442937603;
      C_AGRFIRERESPUKHOUSING: double = 3442956403;
      TP_FRANCHSUMFIRST:      double = 6681088503;
      TP_INSURSUMRUB:         double = 2593782203;
      TP_RATESRO:             double = 6687999403;
      Tp_ContractAgrPrice:    double = 6708840303;
      Tp_YearlyTurnover:      double = 6708845303;
      TP_TYPE_ESTATE:         double = 3624713803;
var
  fmPreCalc: TfmPreCalc;
  MyRec: PMyRec;

implementation

uses GRoutines, CheckLst, ComObj, StrUtils, CalcPreview, uAppSrvIntf, untEquip, TypInfo, Math, LoadExcelData, PackDocUtils, ShellApi; {, NewFindCust;}

const
  cAGRPFIREKOMMERSANT = 'AGRPFIREKOMMERSANT';   // dicti.constname продукта "Коммерсант"

var
 fmPreCalc2: TfmPreCalc; // Dmitry_Privalov/epam 04.06.08
                         // Для возможности работы с двумя окнами котировки одновременно,
                         // например при конвертации

{$R *.DFM}

procedure TfmPreCalc.FillComboBox(Sender: TDBComboBox);
var i :integer;
begin
  qrGetRulTariffTxt.First;

  // освобождаем память
  for i:=0 to TDBComboBox(Sender).Items.Count-1 do begin
    //if TDBComboBox(Sender).Items[i]<>nil then begin
      Dispose(PMyRec(TDBComboBox(Sender).Items.Objects[i]));
      TDBComboBox(Sender).Items.Objects[i]:=nil;
    //end;
  end;

  Sender.Items.Clear;
  for i:=1 to qrGetRulTariffTxt.RecordCount do begin
    New(MyRec);
    MyRec^.ISN:=qrGetRulTariffTxtISN.AsFloat;
    MyRec^.X1:=qrGetRulTariffTxtXX1.AsFloat;
    MyRec^.X2:=qrGetRulTariffTxtXX2.AsFloat;
    MyRec^.TariffISN:=qrGetRulTariffTxtTariffISN.AsFloat;
    Sender.Items.AddObject(qrGetRulTariffTxtTXT.AsString, TObject(MyRec));
    qrGetRulTariffTxt.Next;
  end;

end;

procedure TfmPreCalc.qrGetRulTariffTxtBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:=VarArrayOf([User.ISN, User.SLabel, FClassISN, FDateTime])
end;

procedure TfmPreCalc.edCarCtgValNameBtnClick(Sender: TObject);
var vISN :double;
    //vName :widestring;
    //i : integer; // номер обработчика = 212
    V: variant;
    PISN: double;
begin
  inherited;
  // Тип ТС
  PISN := p_objMotor; //8240;
  vISN := 0;
  if (FIMain.Wood2(PISN, vISN, 212, V, false, false, true, '', FALSE)) then
  begin
    CheckDSEditMode(qrPreCalcCL);
    qrPreCalcCLCARCTGVALISN.AsFloat:=vISN;
    qrPreCalcCLCARCTGVALName.AsString:=V[0];
  end;
end;

// нажатие на popup menu зон
procedure TfmPreCalc.PClickProc(Sender: TObject);
var
    vHint :string;
    vHint1 :string;
    vPos :integer;
    vPos1 :integer;
    vName :WideString;
    vISN, vClassISN :double;
begin
  CheckDSEditMode(qrPreCalcCL);
  vHint:=TMenuItem(Sender).Hint;
  vPos:=Pos('*', vHint);
  vHint:=copy(vHint, 0, vPos-1);

  vHint1:=TMenuItem(Sender).Hint;
  vPos1:=Pos('@', vHint1);
  vHint1:=copy(vHint1, vPos1+1, length(vHint1)-vPos1);

  // выбор из справочника
  if StrToFloat(vHint)=-1 then begin
    vISN:=qrPreCalcCLSbjCITYISN.AsFloat;
    vClassISN:=p_City; {4;}
    if not(FIMain.GSearch(vClassISN , vISN, vName, TRUE)) then Exit;
    CheckDSEditMode(qrPreCalcCL);
    qrPreCalcCLSbjCITYISN.AsFloat:=vISN;
    qrPreCalcCLSbjCITYNAME.AsString:=InitCap(vName);
    qrPreCalcCLModeUseCLISN.AsFloat:=StrToFloat(vHint1);
  end
  else begin
    qrPreCalcCLSBJCITYISN.AsFloat:=StrToFloat(vHint);
    qrPreCalcCLSBJCITYName.AsString:=TMenuItem(Sender).Caption;
    qrPreCalcCLModeUseCLISN.AsFloat:=StrToFloat(vHint1);
    //09.10.2014 Соболев А.В. Задача 71885235403 Реализация в котировках Новые тарифы ОСАГО
    if qrPreCalcCLSBJCITYISN.Value = 6 then
      qrPreCalcCLFollowToPlaceOfReg.Value := 0;
  end;

  vHint:=TMenuItem(Sender).Hint;
  vHint:=copy(vHint, vPos+1, vPos1-vPos-1);
  qrPreCalcCLSBJCITYClassISN.AsFloat:=StrToFloat(vHint);
  //09.10.2014 Соболев А.В. Задача 71885235403 Реализация в котировках Новые тарифы ОСАГО
  cbFollowToPlaceOfReg.Enabled := qrPreCalcCLSBJCITYISN.Value <> 6;
end;

// popup menu зон
procedure TfmPreCalc.FillSbjCityMenu;
var
  i :integer;
  N :TMenuItem;
begin
  qrFillSbjCity.Close; qrFillSbjCity.Open;
  qrFillSbjCity.First;
  pmSbjCityName.Items.Clear;
  for i:=1 to qrFillSbjCity.RecordCount do begin
    N:=TMenuItem.Create(Self);
    N.Hint:=FloatToStr(qrFillSbjCitySbjCityISN.AsFloat)+'*'+FloatToStr(qrFillSbjCitySbjCityClassISN.AsFloat)+'@'+FloatToStr(qrFillSbjCityModeUseCLISN.AsFloat);
    N.Caption:=qrFillSbjCitySbjCityName.AsString;
    N.OnClick:=PClickProc;
    pmSbjCityName.Items.Add(N);
    qrFillSbjCity.Next;
  end;

end;

procedure TfmPreCalc.edSbjCityNameBtnClick(Sender: TObject);
var
 P :TPoint;
begin
 P.X:=edSbjCityName.Left;
 P.Y:=edSbjCityName.Top+edSbjCityName.Height+1;
 P:=edSbjCityName.Parent.ClientToScreen(P);
 pmSbjCityName.Popup(P.X, P.Y);
end;

procedure TfmPreCalc.qrFillSbjCityBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:=VarArrayOf([User.ISN, User.SLabel, FDateTime])
end;

procedure TfmPreCalc.qrPreCalcCLBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:=VarArrayOf([User.ISN, User.SLabel, ISN])
end;

procedure TfmPreCalc.edEmplNameBtnClick(Sender: TObject);
begin
  inherited;
  ChooseOrgTree(qrPreCalcHeadEmplISN, qrPreCalcHeadEmplName, 0, TRUE);
end;

// Место жительства собственника ClassISN=C.GET('tp_SbjCityISN')
procedure TfmPreCalc.qrPreCalcCLSBJCITYNAMESetText(Sender: TField;
  const Text: String);
var
 vClassISN, vISN :Double;
 vName :WideString;
begin

 if Trim(Text)='' then
  begin
   qrPreCalcCLSbjCITYISN.Clear;
   qrPreCalcCLSbjCITYNAME.AsString:='';
   Exit;
  end;
 try
  Screen.Cursor:=crHourGlass;
  vClassISN:=p_City; {4};
  vISN:=0;
  vName:=Trim(Text);
  if not(FIMain.GSearch(vClassISN, vISN, vName, FALSE)) then Exit;
  qrPreCalcCLSbjCITYISN.AsFloat:=vISN;
  qrPreCalcCLSbjCITYCLASSISN.AsFloat:=p_SbjCityISN; {1582132403;} {Населенный пункт регистрации страхователя (для осаго) tp_SbjCityISN}
  qrPreCalcCLSbjCITYNAME.AsString:=InitCap(vName);
 finally
  Screen.Cursor:=crDefault;
 end;

end;

procedure TfmPreCalc.FormClose(Sender: TObject; var Action: TCloseAction);
var i :integer;
begin
  inherited;
  // освобождаем память
  for i:=0 to cbSbjBirthDrive.Items.Count-1 do begin
    Dispose(PMyRec(cbSbjBirthDrive.Items.Objects[i]));
    cbSbjBirthDrive.Items.Objects[i]:=nil;
  end;
  // освобождаем память
  for i:=0 to cbAgrPeriodTxt.Items.Count-1 do begin
    Dispose(PMyRec(cbAgrPeriodTxt.Items.Objects[i]));
    cbAgrPeriodTxt.Items.Objects[i]:=nil;
  end;
  // освобождаем память
  for i:=0 to cbPeriodTxt.Items.Count-1 do begin
    Dispose(PMyRec(cbPeriodTxt.Items.Objects[i]));
    cbPeriodTxt.Items.Objects[i]:=nil;
  end;
  qrPreCalcParam.Active := False;
  qrPreCalcParam1.Active := False;
  qrPreCalcParamObj.Active := False;
  cdsTerr.Active := False;

  if Assigned(fmPreCalc2) then
   begin
    fmPreCalc2.Free;
    fmPreCalc2 := nil;
   end;
end;

procedure TfmPreCalc.cbSbjBirthDriveChange(Sender: TObject);
begin
  inherited;
  qrPreCalcCLSbjBirthAge.AsFloat:=PMyRec(cbSbjBirthDrive.Items.Objects[cbSbjBirthDrive.ItemIndex])^.X1;
  qrPreCalcCLSbjDrivingAge.AsFloat:=PMyRec(cbSbjBirthDrive.Items.Objects[cbSbjBirthDrive.ItemIndex])^.X2;
  qrPreCalcCLBirthDrivingvRulISN.AsFloat:=PMyRec(cbSbjBirthDrive.Items.Objects[cbSbjBirthDrive.ItemIndex])^.ISN;
end;

procedure TfmPreCalc.cbAgrPeriodTxtChange(Sender: TObject);
begin
  inherited;
  qrPreCalcCLAgrPeriodM.AsFloat:=PMyRec(cbAgrPeriodTxt.Items.Objects[cbAgrPeriodTxt.ItemIndex])^.X1;
end;

procedure TfmPreCalc.cbPeriodTxtChange(Sender: TObject);
begin
  inherited;
  qrPreCalcCLPeriodM.AsFloat:=PMyRec(cbPeriodTxt.Items.Objects[cbPeriodTxt.ItemIndex])^.X1;
end;

procedure TfmPreCalc.qrPreCalcPremBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:=VarArrayOf([User.ISN, User.SLabel, ISN])
end;

procedure TfmPreCalc.btCalcPremClick(Sender: TObject);
var
  p1, p2 :integer;
  str, str1 :string;
  vMsg, vISN : Variant;
  vMark: TBookmark;
  i :integer;
  V :Variant;
  fl_message: boolean;
  vTestCalc :{Ole}Variant;
  vNeedLog  :{Ole}Variant;
  vxmllog : {ole}variant;
  vStrLog: string;
begin
  inherited;
  V := FCon.AppServer.ListWarnings(106, qrPreCalcHeadISN.AsFloat, 0, 0, 0, '', '', '');
  fl_message:=false;
  for i := 1 to VarArrayHighBound(V, 1) div 2 do
  begin
    if Application.MessageBox(PAnsiChar(String(V[2* (i - 1) + 1])),
                           PChar(Application.Title),
                           StrToIntDef(V[2* (i - 1) + 2], 0)) = IDNO then Exit;
    if (qrPreCalcHeadRULEISN.asfloat=AGRMOVABLEEQUIP)
      and (pos('Калькулятор не действует',PAnsiChar(String(V[2* (i - 1) + 1])))>0)  //только на сообщении о калькуляторе
    then  //передвижное оборудование 17.10.2017 Makarova task 147165375603
    begin
      EnableControl(grPreCalcPrem, false);
      btNewAgr.Enabled := true;
      btPrint.Enabled := true;
      fl_message:=true;
      exit;
    end;
   end;
  //ShowMessageWarn(V);
  if fl_message and (qrPreCalcHeadRULEISN.asfloat=AGRMOVABLEEQUIP) then Exit;  //передвижное оборудование 17.10.2017 Makarova task 147165375603

  Screen.Cursor:=crHourGlass;
  try
   try
     if(qrPreCalcHead.Active) then CheckDSBrowseMode(qrPreCalcHead);
     if(qrPreCalcParam.Active) then CheckDSBrowseMode(qrPreCalcParam);
     if(qrPreCalcParam1.Active) then CheckDSBrowseMode(qrPreCalcParam1);
     if(qrPreCalcParamObj.Active) then CheckDSBrowseMode(qrPreCalcParamObj);
     if(cdsTerr.Active) then CheckDSBrowseMode(cdsTerr);

     if fMulti then vMark:=qrPreCalcParamObj.GetBookmark;
     if vIsKotDKB then vMark:=cdsTerr.GetBookmark;
     try

     // Dmitry_Popov/EPAM 20070801 Задача #3962483403 не происходит POST DataSet-а котировки ОСАГО
     if(qrPreCalcCL.Active) then CheckDSBrowseMode(qrPreCalcCL);

     Param_ApplyUpdates; // AL 18/06/07

     if cbTestCalc.Checked then
       vTestCalc:=1
     else
       vTestCalc:=0;
     if cbShowLog.Checked then
       vNeedLog := 1
     else
       vNeedLog := 0;

    FCon.AppServer.PreCalcPrem(User.ISN, qrPreCalcHeadISN.AsFloat, qrPreCalcHeadRuleISN.AsFloat, vMsg, vISN, vTestCalc,vNeedLog, vxmllog);

    if cbShowLog.Checked then
     with TFormXML.Create(Self) do
      try
        //2015-05-14 Конев В.А. [81634728503]: Ошибка при расчете котировки "Коммерсант": исправление ошибки InvalidIndex, кот. возникает, если расчет премии вернул пустой XML
        //LoadXML(VarToStr(vxmllog));
        try
          vStrLog := VarToStr(vxmllog);
          //if (AnsiPos('счет/>', vStrLog) < 1) and (AnsiPos('СЧЕТ/>', vStrLog) < 1) then makarova иногда возвращается пустой лог, не лучше при ошибке обработать её?
          LoadXML(vStrLog);
        except
          Application.MessageBox(PAnsiChar('Ошибка загрузки лога'),PChar(Application.Title));
        end;
      finally
       Free;
      end;

     ControlsCalcTest;

     QueryRefresh(qrPreCalcParam);
     QueryRefresh(qrPreCalcParam1);
     QueryRefresh(qrPreCalcPrem);
     QueryRefresh(cdsTerr);

     // Yunin V.A. иногда данные таблицы тарифов выводятся муссором, будем перерисовывать 10 раз
     with qrPreCalcPrem do begin
       DisableControls;
       for i:=1 to 10 do begin
         First;
         if Trim(qrPreCalcPremParamName.AsString)=''
           then Refresh
           else break;
       end;
       Last;
       EnableControls;
     end;
     Filter;

     // для обновления доступности грида премии
     qrPreCalcHead.Close;
     //QueryRefresh(qrPreCalcHead);
     qrPreCalcHead.Open;

    if fMulti and qrPreCalcParamObj.BookmarkValid(vMark) then qrPreCalcParamObj.GotoBookmark(vMark); // Грачев Д.В. 115366857203: добавил проверку BookmarkValid

    if vIsKotDKB and cdsTerr.BookmarkValid(vMark) then cdsTerr.GotoBookmark(vMark); // Грачев Д.В. 115366857203: добавил проверку BookmarkValid

    finally
      if fMulti and qrPreCalcParamObj.BookmarkValid(vMark) then qrPreCalcParamObj.FreeBookmark(vMark); // Грачев Д.В. 115366857203
      if vIsKotDKB and cdsTerr.BookmarkValid(vMark) then cdsTerr.FreeBookmark(vMark); //
    end;

     if qrPreCalcParam.Active
     then qrPreCalcParam.Refresh;

    if StateChange then
      SaveQuote; // 19.06.2013 Kuznetsov S.M. Task 31098780203
    //21.09.2017 Tukmakov task 142747265603 Новые продукты ДО СРО
    if (qrPreCalcHeadRuleIsn.Value = p_AGRFIRERESPSROBDOBLG) or (qrPreCalcHeadRuleIsn.Value = p_AGRFIRERESPSROPPOBLG) or (qrPreCalcHeadRuleIsn.Value = p_AGRFIRERESPSROPJOBLG) then
      btNewAgr.Enabled := true;
   except

        on E :Exception do begin
          p1:=Pos('///', E.Message);
          if p1<>0 then str:=Copy(E.Message, p1+3, length(E.Message));
          p2:=Pos('ORA', str);
          if p2=0 then p2:=length(E.Message);
          str1:=Copy(str, 0, p2-1);
          str1:=RemoveCR(Trim(str1));

     try
       if qrPreCalcParam.Locate('CLASSCONSTNAME', str1, []) then
         qrPreCalcParam.FieldByName('ValName').FocusControl;

         if qrPreCalcParam1.Locate('CLASSCONSTNAME', str1, []) then
           qrPreCalcParam1.FieldByName('ValName').FocusControl;
         except
            ;
          end;
          ShowBDEError(Self, E.Message);
        end;
   end;

   V := FCon.AppServer.ListWarnings(138, qrPreCalcHeadISN.AsFloat, -1, 0, 0, '', '', '');
   ShowMessageWarn(V);
  finally
    Screen.Cursor:=crDefault;
  end;
end;

procedure TfmPreCalc.edBonusBtnClick(Sender: TObject);
begin
  inherited;
  ChooseWood(qrPreCalcCLBONUSISN, qrPreCalcCLBONUSNAME, p_msBonusMalusCL);
end;

procedure TfmPreCalc.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key=VK_F9 then
  begin
    if btCalcPrem.Enabled then btCalcPrem.Click;
  end
  //23.03.2010 Мерзляков М. М. задача 14144789303
  else if Key=VK_F6 then
  begin
    if cbMode.ItemIndex = 0 then
      cbMode.ItemIndex := 1
    else
      cbMode.ItemIndex := 0;
    cbModeChange(cbMode);
  end;

end;

/////////////////////////////////////////////
procedure TfmPreCalc.btNewAgrClick(Sender: TObject);
// ZK 16.02.2007 Создание и открытие договора, созданного на основе этой котировки
// пока только для ОСАГО, переделать для КАСКО
var
  V          : Variant;
  AddrISN    : Double;
  CalcISN    : Variant;   // ISN Котировки
  FMotorAgrF : TfmMotorAgrF; // ZK 09.02.2007 открытие договора
  iAddCar    : integer;
  vModified  : boolean;
  vAgrIsn    : Double;
  vFormIsn   : Double;
  vSame      : boolean;
  i          : Byte;
begin
  inherited;
  V := FCon.AppServer.ListWarnings(121, qrPreCalcHeadISN.AsFloat, 0, 0, 0, '', '', '');
  ShowMessageWarn(V);
  V := FCon.AppServer.ListWarnings(139, qrPreCalcHeadISN.AsFloat, -1, 0, 0, '', '', '');
  ShowMessageWarn(V);

  //10.07.2017 Tukmakov task 142747265603 Новые продукты ДО СРО
  V := FCon.AppServer.ListWarnings(200, qrPreCalcHeadISN.AsFloat, 0, 0, 0, '','','');
  for i := 1 to VarArrayHighBound(V, 1) div 2 do
    if Application.MessageBox(PAnsiChar(String(V[2* (i - 1) + 1])),
                              PChar(Application.Title),
                              StrToIntDef(V[2* (i - 1) + 2], 0)
                              ) = IDOK  then
      if Application.MessageBox(PChar('Договор необходимо согласовать с ОСФПР СРП, создать договор?'),
                                PChar('Внимание!!!'), MB_YESNO) <> IDYES then
        exit;


  CheckDSBrowseMode(qrPreCalcHead); // AL 18/06/07
  CheckDSBrowseMode(qrPreCalcParam); // AL 18/06/07
  CheckDSBrowseMode(qrPreCalcParam1); // AL 18/06/07
  CheckDSBrowseMode(qrPreCalcParamObj);
  CheckDSBrowseMode(cdsTerr);  
  Param_ApplyUpdates; // AL 18/06/07
  CheckDSBrowseMode(qrPreCalcCL);

  //08.05.2013 Соболев А.В. Задача 44598369103
  vSame:=False;
  if (qrPreCalcHeadRuleISN.AsFloat = p_AGRMMAXIFIRE) or
     (qrPreCalcHeadRuleISN.AsFloat = p_AGRCMAXIFIRE) or
     (qrPreCalcHeadRuleISN.AsFloat = p_AGRPFIRECLASSIC) or
     (qrPreCalcHeadRuleISN.AsFloat = p_AGRMPLFIRER) or
     (qrPreCalcHeadRuleISN.AsFloat = p_AGRCPLFIRER) or
     (qrPreCalcHeadRuleISN.AsFloat = p_AGRFREEHOUSESTRUCTURE) or
     (qrPreCalcHeadRuleISN.AsFloat = p_AGRFREEHOUSEAPARTMENT) or
     (qrPreCalcHeadRuleISN.AsFloat = p_AGREXPRESSGO) or
     (qrPreCalcHeadRuleISN.AsFloat = p_AGREXPRESSGOR) or
     (qrPreCalcHeadRuleISN.AsFloat = p_AGRFIREHOLIDAY) or
     (qrPreCalcHeadRuleISN.AsFloat = p_AGRFREEHOUSEAPARTMENTN) or
     (qrPreCalcHeadRuleISN.AsFloat = p_AGRFREEHOUSESTRUCTUREN) or
     (qrPreCalcHeadRuleISN.AsFloat = p_AGRPFIRECLASSICN) or
     //05.09.2013 Соболев А.В. Задача 51757534003
     (qrPreCalcHeadRuleISN.AsFloat = p_AGRFIREHOLIDAYN) or
     (qrPreCalcHeadRuleISN.AsFloat = p_AGREXPRESSAPN) or
     (qrPreCalcHeadRuleISN.AsFloat = p_AGREXPRESSSTN) or
     (qrPreCalcHeadRuleISN.AsFloat = p_AGREXPRESSGON) or
     (qrPreCalcHeadRuleISN.AsFloat = p_AGRPFIRECLASSIC2014) or //20.05.2014 Kuznetsov S.M. Task 65600959303
     (qrPreCalcHeadRuleISN.AsFloat = p_AGRPFIREKOMMERSANT) or //2015-05-14 Конев В.А. [81634728503]: Ошибка при расчете котировки "Коммерсант"
     (qrPreCalcHeadRuleISN.AsFloat = p_AGRMOBILE) then //01.10.2013 Kuznetsov S.M. Task 50847003403
  begin
    vFormIsn := p_FMMOTORAGRP;
    FIMAIN._NewAgr(vFormIsn, vAgrIsn, -1);
    if vAgrIsn = 0 then Exit;
    vSame:=False;
    if (
        ((qrPreCalcHeadRuleISN.AsFloat = p_AGRFREEHOUSEAPARTMENTN) and (vAgrIsn=257588027003)) or
        ((qrPreCalcHeadRuleISN.AsFloat = p_AGRFREEHOUSESTRUCTUREN) and (vAgrIsn=248212069103)) or
        ((qrPreCalcHeadRuleISN.AsFloat = p_AGRPFIRECLASSICN) and (vAgrIsn=257589761003)) or
        ((qrPreCalcHeadRuleISN.AsFloat = p_AGRPFIRECLASSIC2014) and (vAgrIsn=362717058703)) or //20.05.2014 Kuznetsov S.M. Task 65600959303
        ((qrPreCalcHeadRuleISN.AsFloat = p_AGRFIREHOLIDAYN) and (vAgrIsn=260358506603)) or
        ((qrPreCalcHeadRuleISN.AsFloat = p_AGREXPRESSAPN) and (vAgrIsn=261022730803)) or
        ((qrPreCalcHeadRuleISN.AsFloat = p_AGREXPRESSSTN) and (vAgrIsn=262694955503)) or
        ((qrPreCalcHeadRuleISN.AsFloat = p_AGRPFIREKOMMERSANT) and (vAgrISN=490408404503)) or //2015-05-14 Конев В.А. [81634728503]: Ошибка при расчете котировки "Коммерсант"
        ((qrPreCalcHeadRuleISN.AsFloat = p_AGREXPRESSGON) and (vAgrIsn=257591144203))
        )
     then vSame:=True;
  end
  else
    vAgrIsn := 0;
  // 20070704 DmitryPo/VDI Спрашиваем пользователя о необходимости создания автомобиля в договоре
  // Только для КАСКО, ОСАГО игнорируем т.к. параметров недостаточно
  // В случае если не задана модель создать запись о ТС тоже нельзя
  if ((qrPreCalcHeadRuleISN.AsFloat = p_AgrMotorCompulsory) or
      (qrPreCalcHeadRuleISN.AsFloat = p_AGRMMAXIFIRE) or
      (qrPreCalcHeadRuleISN.AsFloat = p_AGRCMAXIFIRE) or
      (qrPreCalcHeadRuleISN.AsFloat = p_AGRPFIRECLASSIC) or
      (qrPreCalcHeadRuleISN.AsFloat = p_AGRMPLFIRER) or
      (qrPreCalcHeadRuleISN.AsFloat = p_AGRCPLFIRER) or
      (qrPreCalcHeadRuleISN.AsFloat = p_AGRFREEHOUSESTRUCTURE) or
      (qrPreCalcHeadRuleISN.AsFloat = p_AGRFREEHOUSEAPARTMENT) or
      (qrPreCalcHeadRuleISN.AsFloat = p_AGREXPRESSGO) or
      (qrPreCalcHeadRuleISN.AsFloat = p_AGREXPRESSGOR) or
      (qrPreCalcHeadRuleISN.AsFloat = p_AGRFIREHOLIDAY) or
      (qrPreCalcHeadRuleISN.AsFloat = p_AGRFREEHOUSEAPARTMENTN) or
      (qrPreCalcHeadRuleISN.AsFloat = p_AGRFREEHOUSESTRUCTUREN) or
      //05.09.2013 Соболев А.В. Задача 51757534003
      (qrPreCalcHeadRuleISN.AsFloat = p_AGRFIREHOLIDAYN) or
      (qrPreCalcHeadRuleISN.AsFloat = p_AGREXPRESSAPN) or
      (qrPreCalcHeadRuleISN.AsFloat = p_AGREXPRESSSTN) or
      (qrPreCalcHeadRuleISN.AsFloat = p_AGREXPRESSGON) or
      (qrPreCalcHeadRuleISN.AsFloat = p_AGRMOBILE) //01.10.2013 Kuznetsov S.M. Task 50847003403
       or qrPreCalcParam.FieldByName('MODIFISN').IsNull) then
  begin
    if vSame then begin
      iAddCar :=  MsgBoxYNC('Добавить в договор объекты с указанными в котировке параметрами?');
      if (iAddCar = IDCANCEL) then exit;
      if(iAddCar = IDYES)
        then iAddCar := 1 //договор с переносом объектов/условий
        else iAddCar := 0;//договор без переноса объектов/условий
    end else iAddCar := 0;//если выбран макет договора не тот, который нужно, то договор создается по макету, который выбран, но без переноса объектов/условий
  end
  else begin
    iAddCar :=  MsgBoxYNC('Добавить в договор автомобиль'+#$D#$A+'с указанными в котировке параметрами?');
    if(iAddCar = IDCANCEL) then exit;
    if(iAddCar = IDYES)
      then iAddCar := 1
      else iAddCar := 0;
  end;

  // 20070629 DmitryPo/VDI Передаём ISN заголовка вместо связанного только с ОСАГО расчета
  //CalcISN := qrPreCalcCLAGRISN.AsFloat;
  CalcISN := qrPreCalcHeadISN.AsFloat;

  {* создание договора *}
  Screen.Cursor:=crHourGlass;
  try
    AddrISN:=ReadRegF('AddrISN');
    V := FCon.AppServer.CreateAgr2(User.ISN, VarArrayOf([AddrISN, CalcISN, iAddCar, vAgrIsn]));
    FNewAgrISN := V[0];  // ISN нового договора
  finally
    Screen.Cursor:=crDefault;
  end;

  qrPreCalcHead.Close;
  qrPreCalcHead.Open;

  {* открытие договора *}
  if qrPreCalcHead.FieldByName('AgrFormISN').AsFloat = 26752116 then begin  //isn формы авто

  FMotorAgrF:=TfmMotorAgrF.CreateEx(Self, FIMain, FCon);
  try
    FMotorAgrF.ISN := FNewAgrISN;   // передаем ISN нового договора
    FMotorAgrF.ShowModal;
  finally
    freeandnil(FMotorAgrF);
    if(qrPreCalcHeadRuleISN.AsFloat=p_AgrMotorCompulsory) then begin
      qrPreCalcCL.Close;
      qrPrecalcCL.Open;
    end;
    qrPreCalcHead.Close;
    qrPreCalcHead.Open;
  end; // try

  end   //if

  else begin
    FIMAIN._OpenAgr(qrPreCalcHead.FieldByName('AgrFormISN').AsFloat, qrPreCalcHead.FieldByName('AgrISN').AsFloat,vModified);
    qrPreCalcHead.Close;
    qrPreCalcHead.Open;
  end;

end;

procedure TfmPreCalc.ShowAgr (pIsnField : TField);
var
  FMotorAgrF :TfmMotorAgrF; // ZK 09.02.2007 открытие договора
begin
  // Если открывать нечего - выходим.
  if pIsnField.IsNull or (pIsnField.AsFloat = 0) then exit;

  Screen.Cursor:=crHourGlass;
  try
   FMotorAgrF:=TfmMotorAgrF.CreateEx(Self, FIMain, FCon);
    try
      FMotorAgrF.ISN := pIsnField.AsFloat;   // передаем ISN нового договора
      FMotorAgrF.ShowModal;
    finally
      FreeAndNil(FMotorAgrF);
    end;
  finally
   Screen.Cursor:=crDefault;
  end;
end;


// ZK 16.02.2007 открытие договора, созданного на основе этой котировки
procedure TfmPreCalc.edAgrIDDblClick(Sender: TObject);
var
 vModified :Boolean;
begin
  inherited;
 if qrPreCalcHead.FieldByName('RuleISN').AsFloat <> p_AGRCALCFIREDKS then
 begin
  if not qrPreCalcHead.FieldByName('AgrISN').IsNull then
   FNewAgrISN := qrPreCalcHead.FieldByName('AgrISN').AsFloat; // ISN договора
  if qrPreCalcHead.FieldByName('AgrFormISN').AsFloat = 26752116 then   //isn формы авто
    ShowAgr(qrPreCalcHead.FieldByName('AgrISN'))
  else  FIMAIN._OpenAgr(qrPreCalcHead.FieldByName('AgrFormISN').AsFloat, qrPreCalcHead.FieldByName('AgrISN').AsFloat,vModified);
  // Надо обновить на случай если договор аннулировали
  qrPreCalcHead.Close;
  qrPreCalcHead.Open;
 end;
end;



procedure TfmPreCalc.FormShow(Sender: TObject);
var
 vIsMaket :boolean;
 i :integer;
 V : Variant;      
 T: TFloatField;
 vIsHotContact: boolean; // если это котировка "Горячего контакта"
begin
  inherited;
  edID.SetFocus;
  Mode := -2;
  qrPreCalcHead.Close;
  qrPreCalcHead.Open;

  // Отображение формы
  vIsMaket:=(qrPreCalcHeadStatus.AsString='М');
  vIsHotContact:=(qrPreCalcHeadDiscr.AsString = 'Х');

  // Yunin V.A. 01/03/10 Т.к. это влияет на все сновь создаваемые котировки, то
  // это правка макета и разрешаем мы её только для макетов
  if vIsMaket then CanAddInvisibleField := ProtectFuncAccess('Precalc.InvisibleFields')
  else CanAddInvisibleField := false;

  fMulti:=False;
  if (
      (qrPreCalcHeadRuleISN.AsFloat=3089065903)
       or (qrPreCalcHeadRuleISN.AsFloat=3089065603)
       or (qrPreCalcHeadRuleISN.AsFloat=1676095903)
       or (qrPreCalcHeadRuleISN.AsFloat=1401842003)
       or (qrPreCalcHeadRuleISN.AsFloat=1401845103)
       or (qrPreCalcHeadRuleISN.AsFloat=3399232003)
       or (qrPreCalcHeadRuleISN.AsFloat=4156694903)
       or (qrPreCalcHeadRuleISN.AsFloat=3399231603)
       or (qrPreCalcHeadRuleISN.AsFloat=4156748803)
       or (qrPreCalcHeadRuleISN.AsFloat=2363699003)
       or (qrPreCalcHeadRuleISN.AsFloat=4161361203)
       or (qrPreCalcHeadRuleISN.AsFloat=3793731603)
       or (qrPreCalcHeadRuleISN.AsFloat=3793732503)
       or (qrPreCalcHeadRuleISN.AsFloat=3793732503)
       or (qrPreCalcHeadRuleISN.AsFloat=4188381803)
       or (qrPreCalcHeadRuleISN.AsFloat=4188377203)
       or (qrPreCalcHeadRuleISN.AsFloat=4188379903)
       or (qrPreCalcHeadRuleISN.AsFloat=4169721103)
       or (qrPreCalcHeadRuleISN.AsFloat=p_AGRMOBILE) //01.10.2013 Kuznetsov S.M. Task 50847003403
       or (qrPreCalcHeadRuleISN.AsFloat=p_AGRMOTORWIZARD)
       or (qrPreCalcHeadRuleISN.AsFloat=p_AGRPFIRECLASSIC2014) //20.05.2014 Kuznetsov S.M. Task 65600959303
       or (qrPreCalcHeadRuleISN.AsFloat=p_AGRPFIREKOMMERSANT) // 2015-03-30 Конев В.А. Задача 73888985503 "Реализация продукта "Коммерсант"
       or (qrPreCalcHeadRuleISN.AsFloat=C_AGRACCIDENTEPIND) // 28.09.2016 Грачев Д.В. 110983330203
       or (qrPreCalcHeadRuleISN.AsFloat=C_AGRAGRONLINE) // 01/03/2017 Заболотный 95491578503
     )
    then fMulti:=True;

  // 02.08.2017 Makarova task 153457217903 доступность кнопки только для определенных продуктов: Нотариусы, оценщики ФЛ, оценщики ЮЛ
  sbLoadDataFromXls.enabled :=  (qrPreCalcHeadRuleISN.AsFloat=3442999203) or (qrPreCalcHeadRuleISN.AsFloat=3442997703) or (qrPreCalcHeadRuleISN.AsFloat=3443048503);

  // Yunin V.A. 03/10/07 Шапка формы
  Caption := 'Котировка - ' + qrPreCalcHeadRuleName.AsString;
  //28.08.2015 Соболев А.В. Задача 76596909803 Реализация: Калькулятор по оценке имущества Предстраховая экспертиза (Платинум) в АИС
  if qrPreCalcHeadRuleIsn.Value = p_AGRCALCFIREDKS then
  begin
    Caption := qrPreCalcHeadRuleName.AsString;
    btCalcPrem.Hint := 'Рассчитать стоимость (F9)'
  end;
  // 2015-06-09 Конев В.А. [80159823003] Котировка ГК - только для чтения
  if vIsHotContact then
  begin
    Caption := 'Котировка "горячего контакта"';
    qrPreCalcParamObj.BeforeEdit := ActionBeforeEdit;
    //qrPreCalcParam.BeforeEdit := ActionBeforeEdit;
    //qrPreCalcParam1.BeforeEdit := ActionBeforeEdit;
    qrPreCalcCL.BeforeEdit := ActionBeforeEdit;
    //qrPreCalcPrem.BeforeEdit := ActionBeforeEdit;
    qrPreCalcHead.BeforeEdit := ActionBeforeEdit;

    EnableControl(cbMode, False);
    EnableControl(cbShowLog, False);
    for I:=0 to Panel8.ControlCount - 1 do
      SetControlRO(Panel8.Controls[I], True);

    Panel8.Enabled := False;
    btNewAgr.Tag :=0;
    if tbnCopyCalc.Visible then
      tbnCopyCalc.Enabled := False;
    if tbnConvertCalc.Visible then
      tbnConvertCalc.Enabled := False;
  end;
  // ОСАГО agreement.ruleISN
  if qrPreCalcHeadRuleISN.AsFloat=p_AgrMotorCompulsory then
  begin
    //Caption := 'Котировка - ОСАГО';
    tbnConvertCalc.Hint := 'Конвертировать в КАСКО';
    pnCl.Visible:=true;
    pnMotor.Visible:=false;
    cbMode.Visible := false;
  end
  // ПРЕМИУМ(КАСКО_2003) agreement.ruleISN
  else begin
    //Caption := 'Котировка - КАСКО';
    tbnConvertCalc.Hint := 'Конвертировать в ОСАГО';
    pnCl.Visible:=false;
    pnMotor.Visible:=true;
    if fMulti
     then begin
      pCascoObj.Visible:=True;
      SplitterObj.Visible:=True;
      Panel9.Caption:='Параметры';

      if qrPreCalcHeadRuleISN.AsFloat <> p_AGRMOTORWIZARD then
      begin
        qrPreCalcPrem.Close;
        // 08.07.2016, Sevryugin, Task 102072379603, АИС | Ошибка тестирования:Системная ошибка создания котировки
          // перед созданием поля добавлена проверка его существования
        if not assigned(qrPreCalcPrem.Fields.FindField('ParentIsn')) then
        begin
          T := TFloatField.Create(qrPreCalcPrem);
          T.FieldName := 'ParentIsn';
          T.Name := qrPreCalcPrem.Name + T.FieldName;
          T.Index := qrPreCalcPrem.FieldCount;
          T.DataSet := qrPreCalcPrem;
          qrPreCalcPrem.FieldDefs.UpDate;
        end;
      end;

(*      pCascoObj.Visible:=False;
      SplitterObj.Visible:=False;
      Panel9.Caption:='Объекты';*)
     end else begin
      pCascoObj.Visible:=False;
      SplitterObj.Visible:=False;
      Panel9.Caption:='Объекты';
     end;
  end;

  if qrPreCalcHeadIsFire.Value=1
     then begin
        qrPreCalcPrem.Close;
        // 08.07.2016, Sevryugin, Task 102072379603, АИС | Ошибка тестирования:Системная ошибка создания котировки
          // перед созданием поля добавлена проверка его существования
        if not assigned(qrPreCalcPrem.Fields.FindField('ParentIsn')) then
        begin
          T := TFloatField.Create(qrPreCalcPrem);
          T.FieldName := 'ParentIsn';
          T.Name := qrPreCalcPrem.Name + T.FieldName;
          T.Index := qrPreCalcPrem.FieldCount;
          T.DataSet := qrPreCalcPrem;
          qrPreCalcPrem.FieldDefs.UpDate;
        end;
      end;

  //sbConvertCalc.Hint := sbConvertCalc.Caption;

  // только для макета
  ShowGridColumn(g_Casco, 'VisField', CanAddInvisibleField, 20);
  ShowGridColumn(g_Casco, 'NO', vIsMaket, 30);
  ShowGridColumn(g_Casco, 'GROUPID', vIsMaket, 30,'Группа');
  ShowGridColumn(g_Casco, 'CLASSISN', vIsMaket, 80,'ClassISN');
  ShowGridColumn(g_Casco, 'VAL', vIsMaket, 80,'Значение');

  ShowGridColumn(g_Casco, 'Created', vIsMaket, 80,'Время создания');
  ShowGridColumn(g_Casco, 'CreatedBy', vIsMaket, 80,'Автор создания');
  ShowGridColumn(g_Casco, 'Updated', vIsMaket, 80,'Время изменения');
  ShowGridColumn(g_Casco, 'UpdatedBy', vIsMaket, 80,'Автор изменения');

  // только для макета
  ShowGridColumn(g_Casco1, 'VisField', CanAddInvisibleField, 20);
  ShowGridColumn(g_Casco1, 'NO', vIsMaket, 30);
  ShowGridColumn(g_Casco1, 'GROUPID', vIsMaket, 30,'Группа');
  ShowGridColumn(g_Casco1, 'CLASSISN', vIsMaket, 80,'ClassISN');
  ShowGridColumn(g_Casco1, 'VAL', vIsMaket, 80,'Значение');

  ShowGridColumn(g_Casco1, 'Created', vIsMaket, 80,'Время создания');
  ShowGridColumn(g_Casco1, 'CreatedBy', vIsMaket, 80,'Автор создания');
  ShowGridColumn(g_Casco1, 'Updated', vIsMaket, 80,'Время изменения');
  ShowGridColumn(g_Casco1, 'UpdatedBy', vIsMaket, 80,'Автор изменения');

  // в макете можно добавлять и удалять параметры
  if vIsMaket then begin
    cbMode.ItemIndex := 1;

    qrPreCalcParam.BeforeInsert:=nil;
    qrPreCalcParam.BeforeDelete:=DSBeforeDelete;

    qrPreCalcParam1.BeforeInsert:=nil;
    qrPreCalcParam1.BeforeDelete:=DSBeforeDelete;

    qrPreCalcParamObj.BeforeInsert:=nil;
    qrPreCalcParamObj.BeforeDelete:=DSBeforeDelete;

    g_Casco.Columns[GetColIndex(g_Casco, 'PARNAME')].ReadOnly := false;
    g_Casco.Columns[GetColIndex(g_Casco, 'PARNAME')].ButtonStyle := cbsEllipsis;

    g_Casco1.Columns[GetColIndex(g_Casco1, 'PARNAME')].ReadOnly := false;
    g_Casco1.Columns[GetColIndex(g_Casco1, 'PARNAME')].ButtonStyle := cbsEllipsis;

    g_CascoObj.Columns[GetColIndex(g_CascoObj, 'PARNAME')].ReadOnly := false;
    g_CascoObj.Columns[GetColIndex(g_CascoObj, 'PARNAME')].ButtonStyle := cbsEllipsis;

    // все кнопки нижней панели недоступны
    for i:=0 to Panel2.ControlCount-1 do
      if (Panel2.Controls[i].ClassName='TButton') or(Panel2.Controls[i].ClassName='TBitBtn') then
        TButton(Panel2.Controls[i]).Enabled:=false;
    // название договора Name
    edName.Visible:=true;
  end
  else begin
    cbMode.ItemIndex := 0;

    qrPreCalcParam.BeforeInsert:=AbortAction;
    qrPreCalcParam.BeforeDelete:=AbortAction;

    qrPreCalcParam1.BeforeInsert:=AbortAction;
    qrPreCalcParam1.BeforeDelete:=AbortAction;

    g_Casco.Columns[GetColIndex(g_Casco, 'PARNAME')].ReadOnly := true;
    g_Casco.Columns[GetColIndex(g_Casco, 'PARNAME')].ButtonStyle := cbsNone;

    g_Casco1.Columns[GetColIndex(g_Casco1, 'PARNAME')].ReadOnly := true;
    g_Casco1.Columns[GetColIndex(g_Casco1, 'PARNAME')].ButtonStyle := cbsNone;

    g_CascoObj.Columns[GetColIndex(g_CascoObj, 'PARNAME')].ReadOnly := true;
    g_CascoObj.Columns[GetColIndex(g_CascoObj, 'PARNAME')].ButtonStyle := cbsNone;

    // все кнопки нижней панели доступны
    for i:=0 to Panel2.ControlCount-1 do
      if (Panel2.Controls[i].ClassName='TButton') or(Panel2.Controls[i].ClassName='TBitBtn') then
        if TButton(Panel2.Controls[i]).Tag<>1 then
          TButton(Panel2.Controls[i]).Enabled:=(not vIsHotContact); // 2015-08-20 Конев В.А. [86699427303]: Котировка ГК

    // название договора Name
    edName.Visible:=false;
  end;

  // 28.09.2016 Грачев Д.В. 110983330203
  if qrPreCalcHeadRuleISN.AsFloat=C_AGRACCIDENTEPIND then
  begin
    with g_CascoObj.Columns[GetColIndex(g_CascoObj, 'VALNAME')] do
    begin
      Width := g_CascoObj.Columns[GetColIndex(g_CascoObj, 'PARNAME')].Width;
      Visible := true;
    end;
    g_CascoObj.Columns[GetColIndex(g_CascoObj, 'PARNAME')].Visible := false;
  end;

  if (qrPreCalcHeadRuleISN.AsFloat=p_AGRMOTORWIZARD) then
  begin
    tbMain.Enabled := False;
    cbMode.Enabled := False;
    edRuleName.Enabled := False;
    edEmplName.Enabled := False;
    chbGTotal.Enabled := False;
    edClientSource.Enabled := False;
    btMVC.Enabled := False;
    pnlShowProducts.Visible := True;

    with g_CascoObj.Columns[GetColIndex(g_CascoObj, 'VALNAME')] do
    begin
      Visible := true;
      Width := 78;
    end;
  end;

  fonFormShow:=True;
//  cbModeChange(cbMode);

  // Обновление запросов формы
  // только для ОСАГО
  if qrPreCalcHeadRuleISN.AsFloat=p_AgrMotorCompulsory then
  begin
    // возраст/стаж
    FDateTime:=qrPreCalcCLDATECALC.AsDateTime;
    FClassISN:=p_TRF_CL_Age; {761851900;}
    qrGetRulTariffTxt.Close; qrGetRulTariffTxt.Open;
    FillComboBox(cbSbjBirthDrive);
    // период использования
    FClassISN:=p_TRF_CL_Period; {761854100;}
    qrGetRulTariffTxt.Close; qrGetRulTariffTxt.Open;
    FillComboBox(cbAgrPeriodTxt);
    // к-т краткосрочности
    FClassISN:=p_TRF_CL_Term; {761854200;}
    qrGetRulTariffTxt.Close; qrGetRulTariffTxt.Open;
    FillComboBox(cbPeriodTxt);
    FillSbjCityMenu;
    qrPreCalcCL.Close;
    qrPreCalcCL.Open;
  end
  // только для КАСКО
  else begin
    qrPreCalcParam.Close; qrPreCalcParam.Open;
    qrPreCalcParam1.Close; qrPreCalcParam1.Open;
    qrPreCalcParamObj.Close; qrPreCalcParamObj.Open;
    cdsTerr.Close; cdsTerr.Open;
  end;

  qrPreCalcPrem.Close; qrPreCalcPrem.Open;

  CheckCalcTestAccess;

  // 22.09.2011 Мерзляков М. М. задача 25164819403 закрыть поля
  SetControlsAccess(dsPreCalcHead, Panel8, qrPreCalcHeadDisabledFields.AsString, qrPreCalcHeadReadOnlyFields.AsString);
  Filter; //отображние параметров первого объекта
  fObjInsert:=False;
  fTerrInsert := False;

  V := FCon.AppServer.ListWarnings(140, qrPreCalcHeadISN.AsFloat, -1, 0, 0, '', '', '');
  ShowMessageWarn(V);

  //14.03.2017 Заболотный
  if (qrPreCalcHeadRuleISN.AsFloat=C_AGRAGRONLINE) then
   begin
    Label20.Caption:='Страхователь';
    BtMVC.Visible:=False;
    chbGTotal.Visible:=False;
   end;

  vIsKotDKB:=qrPreCalcHeadIsFire.Value=1;
  jpKotDKB.Minimize:=not vIsKotDKB;
  pCascoObj.Visible:=not vIsKotDKB;

{  if vIsKotDKB then begin
//    cbMode.ItemIndex := 1;

    qrPreCalcParam1.BeforeInsert:=nil;
    qrPreCalcParam1.BeforeDelete:=DSBeforeDelete;
  end;
 }
  fonFormShow:=False;
//  FillPreCalcGroupMenu;
end;

// ZK 21.02.2007 открытие формы клиента
procedure TfmPreCalc.edClientFullNameBtnClick(Sender: TObject);
begin
  inherited;
  try
    if FSubjForm=nil then FSubjForm:=TfmSubj.CreateEx(Self, FIMain, FCon);
    EnableDataSources(FSubjForm, FALSE);
    try
      //Заболотный
      if (qrPreCalcHeadRULEISN.asFloat=C_AGRAGRONLINE) then
       FSubjForm.AgrISN:=qrPreCalcHeadISN.AsFloat
      else
      FSubjForm.AgrISN:=qrPreCalcHeadAgrISN.AsFloat; // ISN договора
      FSubjForm.RoleClassISN:=p_Insured;        // роль (страхователь)
      FSubjForm.ISN:=qrPreCalcHeadClientISN.AsFloat; // ISN клиента
    finally
      EnableDataSources(FSubjForm, TRUE);
    end;
    FSubjForm.pnlOkCancel.Visible:=TRUE;
    //Заболотный
    if (qrPreCalcHeadRULEISN.asFloat=C_AGRAGRONLINE) then
    begin
       FSubjForm.chbAux.Checked:=True;
    end;
    FSubjForm.ShowModal;
  finally
    Screen.Cursor:=crHourGlass;
    if not FSubjForm.qrSubjISN.IsNull then // если выбран клиент
    begin
      // привязка выбранного клиента к котировке
      CheckDSEditMode(qrPreCalcHead);
      qrPreCalcHeadClientISN.AsFloat := FSubjForm.qrSubjISN.AsFloat;
      qrPreCalcHead.Post;
    end;
    FreeAndNil(FSubjForm);
    Screen.Cursor:=crDefault;
  end;
end;

procedure TfmPreCalc.qrPreCalcParamBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:=VarArrayOf([User.ISN, User.SLabel, qrPreCalcHeadISN.AsFloat])
end;


procedure TfmPreCalc.g_CascoEditButtonClick(Sender: TObject);
var
  d  : TDateTime;
  vISN :double;
  V: variant;
  PISN: double;
  R :TRect;
  P :TPoint;
  sSaveDateFormat : string;
  OwnerData: variant;
  vID : WideString;
  i, j :integer;
  vStr :string;
  vPos : integer;

  vs :variant;
  vSubjName: WideString;
  vName:     WideString;
  vClassISN: double;
  bm: Pointer;
  vCityISN: double;
  vCityName: WideString;

  const Msg2='#RUS Для ряда кузовов данной модели существует скидка за кузов по угону! ' + #10#13#10#13
     + 'Для того что бы скидка была учтена, необходимо задать "Модель кузова".';
  const Msg3='#RUS Рекомендуется заполнить поле «Предыдущий договор».';
  const Msg4 = '#RUS Для изменения КБМ необходимо заполнить поле «Предыдущий договор»';{ или '+
               'установить признак «Безубыточный видитель» при переходе стахователя из другой '+
               'страховой компании.';}
begin
  inherited;
  with TDbGrid(Sender) do begin
    // Параметры
    if (SelectedField = DataSource.DataSet.FieldByName('ParName')) then
      ChooseWood(DataSource.DataSet.FieldByName('ClassISN'), DataSource.DataSet.FieldByName('ParName'), p_TPrmStruct);
  // Значения
  //Дата
  if (SelectedField = DataSource.DataSet.FieldByName('ValName'))
     and (DataSource.DataSet.FieldByName('DataType').AsString='D')
  then begin
    sSaveDateFormat := ShortDateFormat;
    ShortDateFormat := 'dd.mm.yyyy';     {}
    try
      d := StrToDateDef(DataSource.DataSet.FieldByName('Val').AsString, Date);
    finally
      ShortDateFormat := sSaveDateFormat;
    end;

    if SelectDate(d,'Дата') then begin
      Self.Update;
      CheckDSEditMode(DataSource.DataSet);
      DataSource.DataSet.FieldByName('ValName').AsString:= DateToStr(d);
      DataSource.DataSet.FieldByName('Val').AsString := FormatDateTime('dd.mm.yyyy',d);
    end;
  end;

  //Справочник
  if (SelectedField = DataSource.DataSet.FieldByName('ValName'))
      and ((TDbGrid(Sender).DataSource.DataSet.FieldByName('DataType').AsString='W')
           or (TDbGrid(Sender).DataSource.DataSet.FieldByName('DataType').AsString='WM'))
  then begin
    // 02.08.2017 Makarova task 153457217903
    if (DataSource.DataSet.FieldByName('ClassISN').AsFloat = 3652737903) then
      GetAgrAddr;

    if (DataSource.DataSet.FieldByName('ClassISN').AsFloat =6678887503)  //тип нотариальной конторы по территории
    or (DataSource.DataSet.FieldByName('ClassISN').AsFloat =6678885203)  //нотариальная палата
    or (DataSource.DataSet.FieldByName('ClassISN').AsFloat =6678888803)  //вид деятельности
    or (DataSource.DataSet.FieldByName('ClassISN').AsFloat =6678888003) then  //СРО оценщиков
    begin
      if (DataSource.DataSet.FieldByName('ClassISN').AsFloat =6678887503) then i:=416
        else if (DataSource.DataSet.FieldByName('ClassISN').AsFloat =6678885203) then i:=417
          else if (DataSource.DataSet.FieldByName('ClassISN').AsFloat =6678888803) then i:=418
            else if (DataSource.DataSet.FieldByName('ClassISN').AsFloat =6678888003) then i:=419 else;
      PISN := 0;  //DataSource.DataSet.FieldByName('Root').AsFloat;
      vISN := DataSource.DataSet.FieldByName('Val').Value;
      V:= VarArrayOf([FALSE, DataSource.DataSet.FieldByName('Val').AsString]);
      if FIMain.Wood2(PISN, vISN, i, V, false, true, false) then
      begin
        CheckDSEditMode(DataSource.DataSet);
        DataSource.DataSet.FieldByName('Val').AsString:=FloatToStr(vISN);
        DataSource.DataSet.FieldByName('ValName').AsString:=V[0];
        DataSource.DataSet.Post;
        Param_ApplyUpdates;
      end;
    end
    else
    if (DataSource.DataSet.FieldByName('ClassISN').AsFloat = TP_RISKFICT)
       or (DataSource.DataSet.FieldByName('ClassISN').AsFloat = TP_REFUNDSYSISN)
       or (DataSource.DataSet.FieldByName('ClassISN').AsFloat = TP_REFUNDLIMISN) then begin
      PISN := DataSource.DataSet.FieldByName('Root').AsFloat;
      vISN := DataSource.DataSet.FieldByName('Val').Value;
      if GetParamBySpecQuery(PISN, vISN, V) then begin
        CheckDSEditMode(DataSource.DataSet);
        DataSource.DataSet.FieldByName('Val').AsString:=FloatToStr(vISN);
        DataSource.DataSet.FieldByName('ValName').AsString:=V[0];
      end;
    end
    // только 1ый уровень
    else if (DataSource.DataSet.FieldByName('ClassISN').AsFloat = tp_CarCtgISN) then begin
      PISN := DataSource.DataSet.FieldByName('Root').AsFloat;
      vISN := DataSource.DataSet.FieldByName('Val').Value;
      if (FIMain.Wood2(PISN, vISN, 212, V, false, false, true, '', FALSE)) then begin
        CheckDSEditMode(DataSource.DataSet);
        DataSource.DataSet.FieldByName('Val').AsString:=FloatToStr(vISN);
        DataSource.DataSet.FieldByName('ValName').AsString:=V[0];
      end;
    end
    else if (DataSource.DataSet.FieldByName('ClassISN').AsFloat = 3701153003)  //Территория страхования передвижное оборудование дкб
     or (DataSource.DataSet.FieldByName('ClassISN').AsFloat = 3921802803) // Виды работ (детализация)
     then begin
      PISN := DataSource.DataSet.FieldByName('Root').AsFloat;
      //vISN := DataSource.DataSet.FieldByName('Val').Value;
      if (FIMain.Wood2(PISN, vISN, 0, OwnerData, FALSE, TRUE, TRUE, '', TRUE, TRUE)) then begin
        i:=VarArrayHighBound(OwnerData, 1);
        vStr:='(';
        for j:=0 to i do begin
          CheckDSEditMode(DataSource.DataSet);
          vStr:=vStr+floattostr(OwnerData[j][0]);
          if j<>i then vStr:=vStr+', ' else vStr:=vStr+')'
        end;
        DataSource.DataSet.FieldByName('ValName').AsString:=vStr;
        DataSource.DataSet.Post;
        Param_ApplyUpdates;
        QueryRefresh(qrPreCalcParam);
      end
    end
    else if (DataSource.DataSet.FieldByName('ClassISN').AsFloat = tp_GrObjClassIsn) then begin
      pIsn := qrPreCalcHeadRuleISN.AsFloat;
      vISN := DataSource.DataSet.FieldByName('Val').Value;
      if (FIMain.Wood2(pIsn, vISN, 18, V, FALSE, TRUE, FALSE, 'Объект страхования', FALSE)) then begin
        CheckDSEditMode(DataSource.DataSet);
        DataSource.DataSet.FieldByName('Val').AsString:=FloatToStr(vISN);
        DataSource.DataSet.FieldByName('ValName').AsString:=V[0];
      end;
    end
    // KGA 22/08/07 Отображать в котировке только доступные ПСС для ТС
    else if (DataSource.DataSet.FieldByName('ClassISN').AsFloat=tp_AntitheftISN) then begin
      OwnerData:=VarArrayOf([FALSE, qrPreCalcHeadISN.AsFloat]);
      PISN := DataSource.DataSet.FieldByName('Root').AsFloat;
      vISN := DataSource.DataSet.FieldByName('Val').Value;
      if (FIMain.Wood2(PISN, vISN, 13, OwnerData, FALSE, TRUE)) then begin
        CheckDSEditMode(DataSource.DataSet);
        DataSource.DataSet.FieldByName('Val').AsString:=FloatToStr(vISN);
        DataSource.DataSet.FieldByName('ValName').AsString:=OwnerData[0];
      end
      // Dmitry_Privalov/epam 20.04.2009
      // Через параметр передается сообщение об ошибке
      else if OwnerData[0]=NULL then
        ShowBDEError(Self, OwnerData[1]);
    end
    // Dmitry_Privalov/epam 16.12.2008
    // Выбор ДО
    else if (DataSource.DataSet.FieldByName('ClassISN').AsFloat = TP_EQUIPCLASSISN) then begin
      if TfrmEquip.SelectEquip(qrPreCalcHeadISN.AsFloat, FIMain) = mrOk then begin
        Param_ApplyUpdates; // здесь необходим, так как должно пройти обновление
        QueryRefresh(qrPreCalcParam);
      end
    end
    // Dmitry_Privalov/epam 27.12.2007
    // Множественный выбор детализации
    else if (DataSource.DataSet.FieldByName('ClassISN').AsFloat = tp_AgrRuleItemsISN) then begin
      vs := fcon.appserver.DoProdExt(user.isn, qrPreCalcHeadISN.AsVariant, qrPreCalcHeadRULEISN.asfloat);

      if not DataSource.DataSet.FieldByName('Val').IsNull then begin
        // Позицируемся на первом isn
        vPos := pos(',', DataSource.DataSet.FieldByName('Val').Value);
        if vPos = 0 then  vPos := pos(')', DataSource.DataSet.FieldByName('Val').Value);
        if vPos <> 0 then begin
          vISN := StrToFloat(copy(DataSource.DataSet.FieldByName('Val').Value, 2, vPos - 2));
        end
      end;
      if DataSource.DataSet.FieldByName('TypeAccessDetail').IsNull then begin
        OwnerData:= VarArrayOf([FALSE, qrPreCalcHeadRULEISN.AsVariant, 2, DataSource.DataSet.FieldByName('Val').AsString]);
        if (FIMain.Wood2(vs[0], vISN, 16, OwnerData, FALSE, TRUE, false, '', true)) then begin
          CheckDSEditMode(DataSource.DataSet);
          DataSource.DataSet.FieldByName('Val').AsString:=OwnerData[0];
          DataSource.DataSet.Post;
          Param_ApplyUpdates
        end;
      end else begin
        OwnerData:= VarArrayOf([FALSE, DataSource.DataSet.FieldByName('TypeAccessDetail').AsVariant, 2, DataSource.DataSet.FieldByName('Val').AsString]);
        if (FIMain.Wood2(vs[0], vISN, 21, OwnerData, FALSE, TRUE, false, '', true)) then begin
          CheckDSEditMode(DataSource.DataSet);
          DataSource.DataSet.FieldByName('Val').AsString:=OwnerData[0];
          DataSource.DataSet.Post;
          Param_ApplyUpdates
        end;
      end;
    end
    // Dmitry_Privalov/epam 13.02.2008
    // Выбор кузова
    else if DataSource.DataSet.FieldByName('ClassISN').AsFloat = tp_CarBodyModelIsn then begin
      OwnerData:=VarArrayOf([FALSE, qrPreCalcParamMODELISN.AsFloat]);
      PISN := DataSource.DataSet.FieldByName('Root').AsFloat;
      vISN := DataSource.DataSet.FieldByName('Val').Value;
      if (FIMain.Wood2(PISN, vISN, 14, OwnerData, FALSE, TRUE, FALSE, 'Модель кузова')) then begin
        CheckDSEditMode(DataSource.DataSet);
        DataSource.DataSet.FieldByName('Val').AsString:=FloatToStr(vISN);
        DataSource.DataSet.FieldByName('ValName').AsString:=OwnerData[0];
      end;
    end
    // Lavrov S.V. task #9069931503
    // Исключить машину посла из категории рисков.
    else if DataSource.DataSet.FieldByName('ClassISN').AsFloat = tp_RiskCategory then begin
      PISN := DataSource.DataSet.FieldByName('Root').AsFloat;
      vISN := DataSource.DataSet.FieldByName('Val').Value;
      if (FIMain.Wood2(PISN, vISN, 15, OwnerData, FALSE, TRUE)) then begin
        CheckDSEditMode(DataSource.DataSet);
        DataSource.DataSet.FieldByName('Val').AsString:=FloatToStr(vISN);
        DataSource.DataSet.FieldByName('ValName').AsString:=OwnerData[0];
      end;
    end
    // Dmitry_Privalov/epam 21.11.2008 tasc 7071616203
    // Пред. договор
    else if DataSource.DataSet.FieldByName('ClassISN').AsFloat = tp_AgrPrevIsn then begin
      vID:= '';
      FIMain.AnySearch('TfmAgrSrchN', vISN, vID);
      if vID <> '' then begin
        CheckDSEditMode(DataSource.DataSet);
        DataSource.DataSet.FieldByName('Val').AsString:=FloatToStr(vISN);
        DataSource.DataSet.FieldByName('ValName').AsString:=vID;
        Param_ApplyUpdates;
        QueryRefresh(qrPreCalcHead);
        QueryRefresh(qrPreCalcParam1);
      end;
    end
    // Shikov Отбор договоров для связанного договора
    else if DataSource.DataSet.FieldByName('ClassISN').AsFloat = tp_RelatedAgrIsn then begin
      Self.Update;
      CheckDSEditMode(DataSource.DataSet);
      vID:= '';
      FIMain.AnySearch('TfmAgrSrchN', vISN, vID);
      if vID <> '' then begin
        CheckDSEditMode(DataSource.DataSet);
        DataSource.DataSet.FieldByName('Val').AsString:=FloatToStr(vISN);
        DataSource.DataSet.FieldByName('ValName').AsString:=vID;
        Param_ApplyUpdates;
        QueryRefresh(qrPreCalcHead);
      end;
    end
    //14.07.2014 Соболев А.В. Задача 67228791403 Согласование тз на внесение изменений в воронку продаж и котировок дкб
    else if DataSource.DataSet.FieldByName('ClassISN').AsFloat = TP_PRESALE then begin
      vID:= '';
      if FIMain.ChoosePresale(vISN,vID) then
        if vID <> '' then begin
          CheckDSEditMode(DataSource.DataSet);
          DataSource.DataSet.FieldByName('Val').AsString:=FloatToStr(vISN);
          DataSource.DataSet.FieldByName('ValName').AsString:=vID;
          Param_ApplyUpdates;
        end;
    end
    else if DataSource.DataSet.FieldByName('ClassISN').AsFloat = 1582148203 then begin
      PISN := qrPreCalcHeadIsn.AsFloat;
      vISN := DataSource.DataSet.FieldByName('Val').Value;
      OwnerData:=VarArrayOf([FALSE, DataSource.DataSet.FieldByName('GroupId').Value]);
      if FIMain.Wood2(PISN, vISN, 20, OwnerData, true, TRUE, true) then begin
        CheckDSEditMode(DataSource.DataSet);
        DataSource.DataSet.FieldByName('Val').AsString:=FloatToStr(vISN);
        DataSource.DataSet.FieldByName('ValName').AsString:=OwnerData[0];
      end;
    end
    // семейное положение
    else if DataSource.DataSet.FieldByName('ClassISN').AsFloat = tp_FAMILYSTATEISN then begin
      PISN := DataSource.DataSet.FieldByName('Root').AsFloat;
      vISN := DataSource.DataSet.FieldByName('Val').Value;
      if (FIMain.Wood2(PISN, vISN, 336, OwnerData, FALSE, TRUE)) then begin
        CheckDSEditMode(DataSource.DataSet);
        DataSource.DataSet.FieldByName('Val').AsString:=FloatToStr(vISN);
        DataSource.DataSet.FieldByName('ValName').AsString:=OwnerData[0];
      end;
    end
    // Гиринов А.С. task = 46222153803 если это материал стен, то
    else if (DataSource.DataSet.FieldByName('ClassISN').AsFloat = 2943811003) and
            (   (qrPreCalcHeadRuleISN.AsFloat = 4156694903)
             or (qrPreCalcHeadRuleISN.AsFloat = 4156748803)
             or (qrPreCalcHeadRuleISN.AsFloat = 4161361203)
             or (qrPreCalcHeadRuleISN.AsFloat=p_AGRPFIRECLASSIC2014) //20.05.2014 Kuznetsov S.M. Task 65600959303
             or (qrPreCalcHeadRuleISN.AsFloat = p_AGRPFIREKOMMERSANT) //2015-05-14 Конев В.А. [81634728503]: Ошибка при расчете котировки "Коммерсант"
             or (qrPreCalcHeadRuleISN.AsFloat = 4188381803)
             or (qrPreCalcHeadRuleISN.AsFloat = 4188379903)) then begin
      //Если это Фридом строение и не Дом, гараж и баня, то материал стен не открываем.....
      if     (qrPreCalcHeadRuleISN.AsFloat = 4156748803)
         and not ((qrPreCalcParamObjClassISN.AsFloat = 8186)
                  or (qrPreCalcParamObjClassISN.AsFloat = 224416)
                    or (qrPreCalcParamObjClassISN.AsFloat = 692642916)) then exit;
      PISN := DataSource.DataSet.FieldByName('Root').AsFloat;
      vISN := DataSource.DataSet.FieldByName('Val').Value;
      if (FIMain.Wood2(PISN, vISN, 345, V, true, true)) then begin
        CheckDSEditMode(DataSource.DataSet);
        DataSource.DataSet.FieldByName('Val').AsString:=FloatToStr(vISN);
        DataSource.DataSet.FieldByName('ValName').AsString:=V[0];
      end;
    end
    // парамет Тип объекта в Платинум строение
    else if (DataSource.DataSet.FieldByName('ClassISN').AsFloat = TP_OBJTYPE) and
            (   (qrPreCalcHeadRuleISN.AsFloat = p_AGRPFIRECLASSICN)
             or (qrPreCalcHeadRuleISN.AsFloat = p_AGRPFIREKOMMERSANT) //2015-05-14 Конев В.А. [81634728503]: Ошибка при расчете котировки "Коммерсант"
             or (qrPreCalcHeadRuleISN.AsFloat = p_AGRPFIRECLASSIC2014)) //20.05.2014 Kuznetsov S.M. Task 65600959303
            then
     begin
      with TDbGrid(Sender) do
       begin
        if (SelectedField = DataSource.DataSet.FieldByName('ValName'))
         then ChooseWoodObj(qrPreCalcParamVAL, qrPreCalcParamVALNAME, qrPreCalcHeadRuleISN.AsFloat);
       end;
     end
    //25.03.2014 Соболев А.В. Задача 62906933103 Реализация котировки Об ограничениях при заключении договоров автострахования Приказ №67
    else if (DataSource.DataSet.FieldByName('ClassISN').AsFloat = TP_SUBJECTSOFRF) or
      //21.02.2017 alpert task 130608848503 Доработка в АИС калькуляторов по страхованию ответственности нотариусов.
      (DataSource.DataSet.FieldByName('ClassISN').AsFloat = TP_REGIONISN) or (DataSource.DataSet.FieldByName('ClassISN').AsFloat = TP_NOTARYREGIONISN) or
      //24.05.2017 Shikov task 130069049703
      (DataSource.DataSet.FieldByName('ClassISN').AsFloat = TP_SUBREGNUMBERTC) or 
      //28.11.2017 Tukmakov task 134224500303
      (DataSource.DataSet.FieldByName('ClassISN').AsFloat = tp_InsObjRegionIsn)
    then
    begin
      //PISN := DataSource.DataSet.FieldByName('Root').AsFloat;
      vISN := DataSource.DataSet.FieldByName('Val').Value;
      if (FIMain.Wood2(0, vISN, 360, V, true, true)) then begin
        CheckDSEditMode(DataSource.DataSet);
        DataSource.DataSet.FieldByName('Val').AsString:=FloatToStr(vISN);
        DataSource.DataSet.FieldByName('ValName').AsString:=V[0];
      end;
    end
    // 21.05.2014 Kuznetsov S.M. Task 65600959303
    else if (DataSource.DataSet.FieldByName('ClassISN').AsFloat = 4472650103) { Местоположение }
         and (qrPreCalcHeadRuleISN.AsFloat = p_AGRPFIRECLASSIC2014) then
    begin
      PISN := DataSource.DataSet.FieldByName('Root').AsFloat;
      vISN := DataSource.DataSet.FieldByName('Val').Value;
      if (FIMain.Wood2(PISN, vISN, 363, OwnerData, false, true)) then begin
        CheckDSEditMode(DataSource.DataSet);
        DataSource.DataSet.FieldByName('Val').AsString:=FloatToStr(vISN);
        DataSource.DataSet.FieldByName('ValName').AsString:=OwnerData[0];
      end;
    end
    // 21.05.2014 Kuznetsov S.M. Task 65600959303
    else if (DataSource.DataSet.FieldByName('ClassISN').AsFloat = TP_BONUSIM) { Бонус-малус (имущество) }
         and  (  (qrPreCalcHeadRuleISN.AsFloat = p_AGRPFIRECLASSIC2014)
           or (qrPreCalcHeadRuleISN.AsFloat = p_AGRPFIREKOMMERSANT) // 2015-03-30 Конев В.А. Задача 73888985503 "Реализация продукта "Коммерсант"
        ) then
    begin
      PISN := DataSource.DataSet.FieldByName('Root').AsFloat;
      vISN := DataSource.DataSet.FieldByName('Val').Value;
      if (FIMain.Wood2(PISN, vISN, 365, OwnerData, false, true)) then begin
        CheckDSEditMode(DataSource.DataSet);
        DataSource.DataSet.FieldByName('Val').AsString:=FloatToStr(vISN);
        DataSource.DataSet.FieldByName('ValName').AsString:=OwnerData[0];
      end;
    end
    //28.08.2015 Соболев А.В. Задача 76596909803 Реализация: Калькулятор по оценке имущества Предстраховая экспертиза (Платинум) в АИС
    else if (
            ((DataSource.DataSet.FieldByName('ClassISN').AsFloat = TP_STRANAISN) or  (DataSource.DataSet.FieldByName('ClassISN').AsFloat = TP_EXSTRANAISN))
         and  (  (qrPreCalcHeadRuleISN.AsFloat = C_AGRAGRONLINE) // 01/03/2017 Заболотный 95491578503
            )
        ) then
    begin
     PISN := DataSource.DataSet.FieldByName('Root').AsFloat;
     OwnerData:= VarArrayOf([FALSE, qrPreCalcHeadRULEISN.AsVariant, 2, DataSource.DataSet.FieldByName('Val').AsString]);
      if (FIMain.Wood2(PISN, vISN, 410, OwnerData, FALSE, TRUE, TRUE, '', TRUE, TRUE)) then begin
        CheckDSEditMode(DataSource.DataSet);
        DataSource.DataSet.FieldByName('ValName').AsString:=OwnerData[i];
        DataSource.DataSet.Post;
        Param_ApplyUpdates;
        QueryRefresh(qrPreCalcHead);
      end;
    end
    else if (
            ((DataSource.DataSet.FieldByName('ClassISN').AsFloat = TP_MULTI))
         and  (  (qrPreCalcHeadRuleISN.AsFloat = C_AGRAGRONLINE) // 01/03/2017 Заболотный 95491578503
            )
        ) then
    begin
     PISN := DataSource.DataSet.FieldByName('Root').AsFloat;
     vISN := DataSource.DataSet.FieldByName('Val').Value;
      if (FIMain.Wood2(PISN, vISN, 409, OwnerData, FALSE, TRUE, TRUE, '', False, False)) then begin
        CheckDSEditMode(DataSource.DataSet);
        DataSource.DataSet.FieldByName('Val').AsString:=FloatToStr(vISN);
        DataSource.DataSet.FieldByName('ValName').AsString:=OwnerData[0];
      end;
    end

    //28.08.2015 Соболев А.В. Задача 76596909803 Реализация: Калькулятор по оценке имущества Предстраховая экспертиза (Платинум) в АИС
    else if (DataSource.DataSet.FieldByName('ClassISN').AsFloat = TP_CPV_EXTEN_OUTER_WALL_DECOR) or
            (DataSource.DataSet.FieldByName('ClassISN').AsFloat = TP_CPV_B_OUTER_WALL_DECOR) or
            (DataSource.DataSet.FieldByName('ClassISN').AsFloat = TP_CPV_B_WALL_MATERIAL) or
            (DataSource.DataSet.FieldByName('ClassISN').AsFloat = TP_CPV_EXTEN_WALL_MATERIAL) then
    begin
      PISN := DataSource.DataSet.FieldByName('Root').AsFloat;
      vISN := DataSource.DataSet.FieldByName('Val').Value;
      AppServerImp.SetListParam(-505050, qrPreCalcHeadObjClassIsn.AsFloat, '', 0);
      if (FIMain.Wood2(PISN, vISN, 376, OwnerData, FALSE, TRUE)) then begin
      //if (FIMain.Wood2(PISN, vISN, 376, OwnerData, FALSE, TRUE, TRUE,'', FALSE, TRUE)) then begin
        CheckDSEditMode(DataSource.DataSet);
        DataSource.DataSet.FieldByName('Val').AsString:=FloatToStr(vISN);
        DataSource.DataSet.FieldByName('ValName').AsString:=OwnerData[0];
      end;
    end
    else if (DataSource.DataSet.FieldByName('ClassISN').AsFloat = TP_CPV_FLOOR_CATEG) or
            (DataSource.DataSet.FieldByName('ClassISN').AsFloat = TP_CPV_WALL_CATEG) or
            (DataSource.DataSet.FieldByName('ClassISN').AsFloat = TP_CPV_CEILING_CATEG) or
            (DataSource.DataSet.FieldByName('ClassISN').AsFloat = TP_CPV_DOOR_CATEG1) or
            (DataSource.DataSet.FieldByName('ClassISN').AsFloat = TP_CPV_WINDOW_CATEG) or
            (DataSource.DataSet.FieldByName('ClassISN').AsFloat = TP_CPV_BUILDIN_KITC_CATEG) or
            (DataSource.DataSet.FieldByName('ClassISN').AsFloat = TP_CPV_VENT_AIRCOND_CATEG) or
            (DataSource.DataSet.FieldByName('ClassISN').AsFloat = TP_CPV_FLOOR_EXT_CATEG) or
            (DataSource.DataSet.FieldByName('ClassISN').AsFloat = TP_CPV_WALL_EXT_CATEG) or
            (DataSource.DataSet.FieldByName('ClassISN').AsFloat = TP_CPV_CEILING_EXT_CATEG) or
            (DataSource.DataSet.FieldByName('ClassISN').AsFloat = TP_CPV_DOOR_EXT_CATEG) or
            (DataSource.DataSet.FieldByName('ClassISN').AsFloat = TP_CPV_WINDOW_EXT_CATEG) or
            (DataSource.DataSet.FieldByName('ClassISN').AsFloat = TP_CPV_BUILDIN_KITC_EXT_CATEG) or
            (DataSource.DataSet.FieldByName('ClassISN').AsFloat = TP_CPV_WIRING_ACCES_EXT_CATEG) or
            (DataSource.DataSet.FieldByName('ClassISN').AsFloat = TP_CPV_PLUMB_EQUIP_EXT_CATEG) or
            (DataSource.DataSet.FieldByName('ClassISN').AsFloat = TP_CPV_HEATING_EQUIP_EXT_CATEG) or
            (DataSource.DataSet.FieldByName('ClassISN').AsFloat = TP_CPV_VENT_AIRCOND_EXT_CATEG) then
    begin
      PISN := DataSource.DataSet.FieldByName('Root').AsFloat;
      //PISN := DataSource.DataSet.FieldByName('ISN').AsFloat;
      vISN := DataSource.DataSet.FieldByName('Val').Value;
      AppServerImp.SetListParam(-505050, DataSource.DataSet.FieldByName('ISN').AsFloat, '', 0);
      if (FIMain.Wood2(PISN, vISN, 385, OwnerData, FALSE, TRUE, TRUE{FALSE},'', FALSE, TRUE)) then begin
        CheckDSEditMode(DataSource.DataSet);
        DataSource.DataSet.FieldByName('Val').AsString:=FloatToStr(vISN);
        DataSource.DataSet.FieldByName('ValName').AsString:=OwnerData[0];
      end;
    end
    else if (DataSource.DataSet.FieldByName('ClassISN').AsFloat = TP_CLIENTSROISN) then begin
      //14.07.2017 Tukmakov task 142747265603 Новые продукты ДО СРО
      vISN := DataSource.DataSet.FieldByName('Val').AsFloat;

      if fimain.AnySearch('TfmFindCustN', vISN, vSubjName, true)  then
        if vSubjName <> '' then begin
          CheckDSEditMode(DataSource.DataSet);
          DataSource.DataSet.FieldByName('Val').AsFloat:=vISN;
          DataSource.DataSet.FieldByName('ValName').AsString:= vSubjName{OwnerData[0]};
        end;
    end
    else if (DataSource.DataSet.FieldByName('ClassISN').AsFloat = TP_COUNTRY) then begin
      //17.07.2017 Tukmakov task 142747265603 Новые продукты ДО СРО
      vISN := DataSource.DataSet.FieldByName('Val').AsFloat;
      vClassISN := p_Country;
      if GetIMain.gsearch(vClassISN, vISN, vName,TRUE) then begin
        CheckDSEditMode(DataSource.DataSet);
        DataSource.DataSet.FieldByName('Val').AsFloat := vISN;
        DataSource.DataSet.FieldByName('ValName').AsString := InitCap(vName);
      end;
    end
    else if (DataSource.DataSet.FieldByName('ClassISN').AsFloat = TP_CITY) then begin
      //17.07.2017 Tukmakov task 142747265603 Новые продукты ДО СРО
      vISN := DataSource.DataSet.FieldByName('Val').AsFloat;
      vClassISN := p_City;
      if GetIMain.gsearch(vClassISN, vISN, vName,TRUE) then begin
        CheckDSEditMode(DataSource.DataSet);
        DataSource.DataSet.FieldByName('Val').AsFloat := vISN;
        DataSource.DataSet.FieldByName('ValName').AsString := InitCap(vName);
      end;
    end
    else if (DataSource.DataSet.FieldByName('ClassISN').AsFloat = TP_STREET) then begin
      //17.07.2017 Tukmakov task 142747265603 Новые продукты ДО СРО
      bm := DataSource.DataSet.GetBookmark;
      if  DataSource.DataSet.Locate('ClassIsn', TP_CITY, []) then begin
        vCityISN := DataSource.DataSet.FieldByName('Val').AsFloat;
        vCityName := DataSource.DataSet.FieldByName('ValName').AsString;
        DataSource.DataSet.GotoBookmark(bm);
      end;

      vISN := DataSource.DataSet.FieldByName('Val').AsFloat;
      V:=VarArrayOf([21, 'TfmStreetSrch', vISN, vCityISN{qrObjAddrPCITYISN.AsFloat}, vCityName{qrObjAddrPCITYNAME.AsString},
                ''{qrObjAddrPSTREETNAME.asString}, ''{qrObjAddrPZIP.asString},  false]);
      GetIMain.AnyCall(V);
      if V[7]=true then begin
        CheckDSEditMode(DataSource.DataSet);
        DataSource.DataSet.FieldByName('Val').AsFloat := V[2];
        DataSource.DataSet.FieldByName('ValName').AsString := InitCap(V[5]);
      end;
    end
    else if (DataSource.DataSet.FieldByName('ClassISN').AsFloat = TP_TYPE_ESTATE) then begin
      PISN := DataSource.DataSet.FieldByName('Root').AsFloat;
      vISN := DataSource.DataSet.FieldByName('Val').Value;
      OwnerData := VarArrayOf([FALSE, VarArrayOf([qrPreCalcHeadRuleISN.AsFloat, User.ISN])]);
      if (FIMain.Wood2(PISN, vISN, 327, OwnerData, false, true)) then begin
        CheckDSEditMode(DataSource.DataSet);
        DataSource.DataSet.FieldByName('Val').AsString:=FloatToStr(vISN);
        DataSource.DataSet.FieldByName('ValName').AsString:=OwnerData[0];
      end;
    end
    else if (DataSource.DataSet.FieldByName('ClassISN').AsFloat <> TP_CPV_B_TOTAL_AREA_MET_ESTIM) then
    // открываем всё дерево
    {else} begin
      // Yankovsky/EPAM 4616323703 - исправление ошибки "неверное число"
      if DataSource.DataSet.FieldByName('Val').AsString = '' then begin
        DataSource.DataSet.Edit;
        DataSource.DataSet.FieldByName('Val').Value := 0;
        DataSource.DataSet.Post;
      end;
      if (DataSource.DataSet.FieldByName('ClassISN').AsFloat = TP_BonusIsn)
         and (qrPreCalcParamIsPrevAgrPres.AsFloat = 0) then
        MsgBoxOk(Msg4)
      else begin
        PISN := DataSource.DataSet.FieldByName('Root').AsFloat;
        vISN := DataSource.DataSet.FieldByName('Val').Value;
        if (FIMain.Wood2(PISN, vISN, 0, OwnerData, FALSE, TRUE)) then begin
          CheckDSEditMode(DataSource.DataSet);
          //28.08.2015 Соболев А.В. Задача 76596909803 Реализация: Калькулятор по оценке имущества Предстраховая экспертиза (Платинум) в АИС
          if (DataSource.DataSet.FieldByName('ClassISN').AsFloat = TP_CPV_DETAIL_OBJ_PLACE )and
             (vISN = p_OTHER_REGION) then
          begin
            ShowMessage('Стоимость КЭ для квартир, находящихся в иных регионах кроме Москвы и МО, определяется '+
              'с использованием данных в общем доступе (например, http://irr.ru/real-estate)');
            //exit;
            //V := FCon.AppServer.ListWarnings(140, qrPreCalcHeadISN.AsFloat, -1, 0, 0, '', '', '');
            //ShowMessageWarn(V);
          end;
          DataSource.DataSet.FieldByName('Val').AsString:=FloatToStr(vISN);
          DataSource.DataSet.FieldByName('ValName').AsString:=OwnerData[0];
          if (DataSource.DataSet.FieldByName('ClassISN').AsFloat = TP_CPV_DETAIL_OBJ_PLACE ) or
             (DataSource.DataSet.FieldByName('ClassISN').AsFloat = TP_CPV_FLOORS_APART_BUILD ) {or
             (DataSource.DataSet.FieldByName('ClassISN').AsFloat = TP_CPV_B_TOTAL_AREA_MET_ESTIM)} then
          begin;
            DataSource.DataSet.Post;
            Param_ApplyUpdates;
            QueryRefresh(qrPreCalcParam1);
          end;
        end;
      end;
    end;
  end;

  //Валюта
  if (SelectedField = DataSource.DataSet.FieldByName('ValName'))
     and (TDbGrid(Sender).DataSource.DataSet.FieldByName('DataType').AsString='V')
  then begin
    Self.Update;
    CheckDSEditMode(DataSource.DataSet);
    ChooseCurrency(DataSource.DataSet.FieldByName('Val'), DataSource.DataSet.FieldByName('ValName'));
    FCurrentCurrIsn := DataSource.DataSet.FieldByName('Val').AsVariant;
    if(qrPreCalcParam.Active) then CheckDSBrowseMode(qrPreCalcParam);
    if(qrPreCalcParam1.Active) then CheckDSBrowseMode(qrPreCalcParam1);
    if(qrPreCalcParamObj.Active) then CheckDSBrowseMode(qrPreCalcParamObj);
    if(cdsTerr.Active) then CheckDSBrowseMode(cdsTerr
    );
    Param_ApplyUpdates;
    QueryRefresh(qrPreCalcParam1);
    QueryRefresh(qrPreCalcParam);
  end;

  // модификация ТС
  if (SelectedField = DataSource.DataSet.FieldByName('ValName'))
     and (TDbGrid(Sender).DataSource.DataSet.FieldByName('DataType').AsString='F')
  then begin
    if ChooseModification(Sender) then begin
      Self.Update;
      CheckDSEditMode(DataSource.DataSet);
      DataSource.DataSet.FieldByName('Val').AsFloat := ModifISN;
      DataSource.DataSet.FieldByName('ValName').AsString := ModelName;
      Param_ApplyUpdates;
    end;
    // Dmitry_Privalov/epam 07.11.2008
    // Выдача предупреждения в случае если по данной модели существует
    // скидка по угону за кузов, а кузов не задан
    if (qrPreCalcParamIsBodyDisc.AsFloat = 1)
       and (qrPreCalcParamCarBodyIsn.IsNull or (qrPreCalcParamCarBodyIsn.Value <= 0)) then
      MsgBoxOk(Msg2);
  end;

  if (SelectedField = DataSource.DataSet.FieldByName('ValName'))
     and (not(DataSource.DataSet.FieldByName('AllowValue').IsNull)
          or (DataSource.DataSet.FieldByName('ClassIsn').AsFloat = tp_FranchSum))
  then begin
    CreateAllowValue(DataSource.DataSet);
    with TSGrid(TDbGrid(Sender)) do R:=CellRect(Col, Row);
      P.X:=R.Left;
      P.Y:=R.Bottom + 1;
      P:=TDbGrid(Sender).ClientToScreen(P);
      //24.12.2015 Соболев А.В. Задача 91431554303 Ошибка в котировочном блоке
      g_Casco.PopupMenu:=Nil;
      g_Casco1.PopupMenu:=Nil;
      pmAllowValue.PopupComponent:=Nil;
      PPComp:=TDbGrid(Sender);
      pmAllowValue.Popup(P.X, P.Y);
    end;
  end;
end;

procedure TfmPreCalc.NewItemClick(Sender: TObject);
var
 Cmp :TComponent;
 DS :TDataSet;
begin
 Cmp := nil;
 DS:=nil;
 if Sender is TMenuItem then
  Cmp:=TPopupMenu((TMenuItem(Sender)).GetParentMenu).PopupComponent;
 if Cmp=nil then Cmp:=PPComp; // когда меню открыто не правой кнопкой мыши, а кнопкой в гриде
 if Cmp is TDBGrid then
  DS:=TDBGrid(Cmp).DataSource.DataSet;
 if DS<>nil then
  begin
   CheckDSEditMode(DS);
   DS.FieldByName('ValName').Value:=TMenuItem(Sender).Hint;
   if (DS.FieldByName('Classisn').AsFloat = tp_variant)
      //28.08.2015 Соболев А.В. Задача 76596909803 Реализация: Калькулятор по оценке имущества Предстраховая экспертиза (Платинум) в АИС
      or (DS.FieldByName('Classisn').AsFloat = TP_CPV_B_TOTAL_AREA_MET_ESTIM)
      or (DS.FieldByName('Classisn').AsFloat = tp_variantl) then begin
     DS.Post;
     Param_ApplyUpdates;
     QueryRefresh(qrPreCalcParam);
     QueryRefresh(qrPreCalcParam1);
   end;
  end;
end;

procedure TfmPreCalc.CreateAllowValue(Sender :TDataSet);
var
  vStr, vStr1, vStr2, vStr3  :string;
  vStrQ1, vStrQ2 :string;
  i :integer;
  vPos, vPos1 :integer;
  vCount :integer;
  vNewItem: TMenuItem;
  V: Variant;
begin

   pmAllowValue.Items.Clear;
   if (TDataSet(Sender).FieldByName('CLASSISN').AsVariant = tp_FranchSum) then
     begin
       Screen.Cursor:=crHourGlass;
       try
         V:=FCon.AppServer.GetFranchList(FCurrentCurrIsn, qrPreCalcHeadISN.AsFloat);
         for i:=1 to VarArrayHighBound(V, 1) do begin
           vNewItem := TMenuItem.Create(self);
           vNewItem.OnClick:=NewItemClick;
           try
             vNewItem.Caption:=FormatFloat('#,##0', V[i]);
             vNewItem.Hint:=FormatFloat('#,##0', V[i]);
             pmAllowValue.Items.Add(vNewItem);
           except
             vNewItem.Free;
             raise;
           end;
         end;
       finally
         Screen.Cursor:=crDefault;
       end
     end
  else
    begin
      vStr:=TDataSet(Sender).FieldByName('AllowValue').AsString;
      vStr1:=AnsiReplaceStr(vStr, '|' ,vStr2); // |
      vCount:=length(vStr)-length(vStr1);

      for i:=1 to vCount do begin
        // этот кусок достает пары значений для меню
        vPos:=AnsiPos('|', vStr);
        vStr2:=AnsiLeftStr(vStr, vPos-1);
        vStr3:=copy(vStr, vPos+1, length(vStr));
        vStr:=vStr3;

        //vStr2 -  нужная пара
        vPos1:=AnsiPos('","', vStr2);
        vStrQ1:=copy(vStr2, 2, vPos1-2);
        vStrQ2:=copy(vStr2, vPos1+3, length(vStr2)-length(vStrQ1)-5);

        vNewItem := TMenuItem.Create(self);
        vNewItem.OnClick:=NewItemClick;
        try
          vNewItem.Caption:=vStrQ2;
          vNewItem.Hint:=vStrQ1;
          pmAllowValue.Items.Add(vNewItem);
        except
          vNewItem.Free;
          raise;
        end;
      end;
    end;
end;

procedure TfmPreCalc.g_CascoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var i: integer;
    r: trect;
    PicIndex :Integer;
begin
  if ((State = []) or (State=[gdSelected])) then begin
     // ReadOnly
    if (TDBGrid(Sender).DataSource.DataSet.FieldByName('NO').AsFloat=0)
         //(TDBGrid(Sender).DataSource.DataSet.FieldByName('ClassISN').AsFloat<>p_RiskClassISN) and
         //  (TDBGrid(Sender).DataSource.DataSet.FieldByName('ClassISN').AsFloat<>p_RiskRuleISN)
                                                                        then
        //BGR
        TDBGrid(Sender).Canvas.Brush.Color := $0062DBCF; //clInfoBk;
    // Be add Group
    if (TDBGrid(Sender).DataSource.DataSet.FieldByName('AddGroup').AsFloat=1) and
       ((TDBGrid(Sender).DataSource.DataSet.FieldByName('No').AsFloat=0) or
        (qrPreCalcHeadRuleIsn.Value <> p_AGRCALCFIREDKS)) then
        TDBGrid(Sender).Canvas.Brush.Color := $0088C6E3; //clOlive;
    if (Column.FieldName='VALNAME')
       and (TDbGrid(Sender).DataSource.DataSet.FieldByName('IsReadOnly').AsFloat = 1)
    then
      TDBGrid(Sender).Canvas.Brush.Color := clInfoBk;
  end;
  if (Column.FieldName='VALNAME')
     and (TDbGrid(Sender).DataSource.DataSet.FieldByName('DATATYPE').AsString='B')
  then
    with TDBGrid (Sender).Canvas do begin
      FillRect(Rect);
      R := Rect; InflateRect(R, 0, -2);
      I :=DFCS_BUTTONCHECK;
      if TDbGrid(Sender).DataSource.DataSet.FieldByName('VALNAME').AsString='Y'
      then I := I or DFCS_CHECKED;
      DrawFrameControl(Handle, R, DFC_BUTTON, I);
  end
  else if (Column.FieldName='VisField') then begin
    // КОГДА ЗНАЧЕНИЯ checkbox = 0/1
    PicIndex:=IIF(Column.Field.DataSet.FieldByName('VisField').Value=1, dpBoxChecked, dpBox);
    PicDrawGridCell(Sender, Rect, DataCol, Column, State, 'VisField', PicIndex, FALSE);
  end
  else
    TDBGrid(Sender).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;



procedure TfmPreCalc.edClientFullNameKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  // ZK удаление клиента из котировки
  if Key=VK_DELETE then
  begin
    CheckDSEditMode(qrPreCalcHead);
    qrPreCalcHeadClientISN.AsVariant := null;
    qrPreCalcHead.Post;
  end;
end;

procedure TfmPreCalc.qrPreCalcHeadBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:=VarArrayOf([User.ISN, User.SLabel, ISN]);
end;

procedure TfmPreCalc.dsPreCalcParamDataChange(Sender: TObject; Field: TField);
var vGrid :TDbGrid;
begin
  inherited;
  if TDataSource(Sender).Name='dsPreCalcParam'
   then vGrid:=g_Casco
  else if TDataSource(Sender).Name='dsPreCalcParamObj'
   then vGrid:=g_CascoObj
  else if TDataSource(Sender).Name='dsTerr'
   then vGrid:=dbgTerr

  else vGrid:=g_Casco1;

   with vGrid do begin
    // по умолчанию
    Columns[GetColIndex(vGrid, 'VALNAME')].ButtonStyle := cbsNone;
    Columns[GetColIndex(vGrid, 'VALNAME')].ReadOnly    := True;

    // запрет редактирования
    if (DataSource.DataSet.FieldByName('DataType').Value='B')and(SelectedField=DataSource.DataSet.FieldByName('ValName')) then
        Options:=Options-[dgEditing]
    else
      Options:=Options+[dgEditing];

    if DataSource.DataSet.FieldByName('IsReadOnly').AsFloat = 1 then
      OnEditButtonClick := nil
    else begin
      if vGrid = g_CascoObj  then
        OnEditButtonClick := g_CascoObjEditButtonClick
      else
{       if vGrid = dbgTerr then
         OnEditButtonClick := dbgTerrEditButtonClick
       else}
         OnEditButtonClick := g_CascoEditButtonClick;
         
      if (DataSource.DataSet.FieldByName('DataType').AsString='B') then
      begin
        Columns[GetColIndex(vGrid, 'VALNAME')].ButtonStyle := cbsAuto;
        Columns[GetColIndex(vGrid, 'VALNAME')].ReadOnly    := true;
      end;
      if (DataSource.DataSet.FieldByName('DataType').AsString='N') then
      begin
        Columns[GetColIndex(vGrid, 'VALNAME')].ButtonStyle := cbsAuto;
        Columns[GetColIndex(vGrid, 'VALNAME')].ReadOnly    := False;
      end;
      if (DataSource.DataSet.FieldByName('DataType').AsString='D') or
         (DataSource.DataSet.FieldByName('DataType').AsString='V') or
         (DataSource.DataSet.FieldByName('DataType').AsString='F') or
         (DataSource.DataSet.FieldByName('DataType').AsString='W') or
         (DataSource.DataSet.FieldByName('DataType').AsString='WM') or
         not(DataSource.DataSet.FieldByName('AllowValue').IsNull) or
         (DataSource.DataSet.FieldByName('classisn').AsFloat = tp_FranchSum) then
      begin
        Columns[GetColIndex(vGrid, 'VALNAME')].ButtonStyle := cbsEllipsis;
        Columns[GetColIndex(vGrid, 'VALNAME')].ReadOnly    := false;
      end;
      if (DataSource.DataSet.FieldByName('DataType').AsString='S') then
        Columns[GetColIndex(vGrid, 'VALNAME')].ReadOnly := False;
    end;
  end;
end;

procedure TfmPreCalc.g_CascoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  with TDbGrid(Sender) do begin
    if (Key=32) and (DataSource.DataSet.FieldByName('DataType').AsString='B') then begin
       if DataSource.DataSet.State=dsBrowse then DataSource.DataSet.Edit;
       if DataSource.DataSet.FieldByName('IsReadOnly').AsFloat = 1 then exit;
       if DataSource.DataSet.FieldByName('ValName').AsString='N' then
         DataSource.DataSet.FieldByName('ValName').AsString:='Y'
       else
         DataSource.DataSet.FieldByName('ValName').AsString:='N';
       DataSource.DataSet.Post;
       Param_ApplyUpdates;
       //22.10.2013 Соболев А.В. Задача 54197556703 Реализация: Добавление поля «Продление договора страхования» в котировку
       if (DataSource.DataSet.FieldByName('Classisn').AsFloat = TP_PROLONG) or
       //28.08.2015 Соболев А.В. Задача 76596909803 Реализация: Калькулятор по оценке имущества Предстраховая экспертиза (Платинум) в АИС
          (DataSource.DataSet.FieldByName('Classisn').AsFloat = TP_CPV_CALC_SEP_ADJ_BUILD_FLG) then
       begin
         //DataSource.DataSet.Post;
         //Param_ApplyUpdates;
         QueryRefresh(qrPreCalcParam1);
       end;
    end;
    // Makarova
    if (DataSource.DataSet.FieldByName('DataType').AsString='W') or
       (DataSource.DataSet.FieldByName('DataType').AsString='WM') then
    begin
      TDbGrid(Sender).Options:=TDbGrid(Sender).Options - [dgEditing];
      if (key=46) or (key=8) then  //кнопки удаления данных
      begin
        if DataSource.DataSet.State=dsBrowse then DataSource.DataSet.Edit;
        DataSource.DataSet.FieldByName('ValName').AsString:='';
        DataSource.DataSet.FieldByName('Val').AsString:='0';
        DataSource.DataSet.Post;
        Param_ApplyUpdates;
      end;
    end;

{   if (DataSource.DataSet.FieldByName('Classisn').AsFloat = tp_Decorating)
      or (DataSource.DataSet.FieldByName('ClassISN').AsFloat = tp_Building)
      or (DataSource.DataSet.FieldByName('ClassISN').AsFloat = tp_Movables)
      or (DataSource.DataSet.FieldByName('ClassISN').AsFloat = TP_MOVABLESWITHLIST)
      or (DataSource.DataSet.FieldByName('ClassISN').AsFloat = TP_MOVABLESWITHOUTHLIST)
      or (DataSource.DataSet.FieldByName('ClassISN').AsFloat = TP_LANDSCAPEDESIGN) then
   begin
     DataSource.DataSet.Post;
     Param_ApplyUpdates;
     QueryRefresh(qrPreCalcParam);
     QueryRefresh(qrPreCalcParam1);
   end;}
  end;
end;

procedure TfmPreCalc.qrPreCalcParamBeforePost(DataSet: TDataSet);
begin
  inherited;

  // 02.10.2013 Kuznetsov S.M. Task 41358029303
  if (not qrPreCalcHead.FieldByName('AgrISN').IsNull)
     //28.08.2015 Соболев А.В. Задача 76596909803 Реализация: Калькулятор по оценке имущества Предстраховая экспертиза (Платинум) в АИС
     and (qrPreCalcHeadRuleIsn.Value <> p_AGRCALCFIREDKS) then
  begin
    Application.MessageBox(PChar('На основе данной котировки создан договор,' + #13 +
                                 'изменение котировки не допускается!'),
                           'Внимание!', MB_OK);
    Abort;
  end;

  if DataSet.FieldByName('ISN').IsNull then begin
    NewISN:=FCon.AppServer.GetNextISN('Agreement');
    DataSet.FieldByName('ISN').AsFloat:=NewISN;
    DataSet.FieldByName('AgrISN').AsFloat:=qrPreCalcHeadISN.AsFloat;
  end;
  if DataSet.FieldByName('DataType').AsString = 'V' then
    if DataSet.FieldByName('ValName').OldValue <> DataSet.FieldByName('ValName').Value then
      SearchCurrency(DataSet.FieldByName('ValName').AsString, DataSet.FieldByName('Val'), DataSet.FieldByName('ValName'));
end;

function TfmPreCalc.ChooseModification(Sender :TObject) :Boolean;
var bm : Pointer;
begin
  if FCarModelForm=nil then
    FCarModelForm:=TfmCarModel.CreateEx(Self, FIMain, FCon);

  FCarModelForm.IsUseFromAgreement := 'Y';
  FCarModelForm.AgrIsn := ISN;

  bm := dsPreCalcParam.DataSet.GetBookmark;
  if not (qrPreCalcParam.Locate('ClassIsn', tp_CarCtgISN, []))
     and (cbMode.ItemIndex = 1) then
    FCarModelForm.ShowByCat := true
  else begin
    FCarModelForm.ShowByCat := false;
    dsPreCalcParam.DataSet.GotoBookmark(bm);
  end;

  try
    with TDbGrid(Sender).DataSource.DataSet do
      FCarModelForm.Locate(FieldByName('CtgISN').AsFloat, FieldByName('MakeISN').AsFloat, FieldByName('ModelISN').AsFloat, FieldByName('ModelISN').AsFloat);

    Screen.Cursor:=crHourGlass;
    FCarModelForm.ShowModal;
    Screen.Cursor:=crDefault;
    ModifISN := FCarModelForm.qrModifISN.Value;
    ModelISN := FCarModelForm.qrModifMODELISN.Value;
    ModelName := FCarModelForm.TreeObj.Selected.Text;
  finally
    Screen.Cursor:=crDefault;
  end;
  result:=(FCarModelForm.ModalResult=mrOk);
end;

// 13.05.2016 Kuznetsov S.M. Task 98624427503
function TfmPreCalc.ChooseModificationCL(Sender :TObject) :Boolean;
//var bm : Pointer;
begin
  if FCarModelForm = nil then
    FCarModelForm := TfmCarModel.CreateEx(Self, FIMain, FCon);

  FCarModelForm.IsUseFromAgreement := 'Y';
  FCarModelForm.AgrIsn := ISN;
  FCarModelForm.ShowByCat := false;

  try
    {with TDbGrid(Sender).DataSource.DataSet do
      FCarModelForm.Locate(FieldByName('CtgISN').AsFloat, FieldByName('MakeISN').AsFloat, FieldByName('ModelISN').AsFloat, FieldByName('ModelISN').AsFloat);}

    Screen.Cursor:=crHourGlass;
    FCarModelForm.ShowModal;
    Screen.Cursor:=crDefault;
    MakeISN   := FCarModelForm.qrModifMAKEISN.Value;
    MakeName  := AnsiUpperCase(FCarModelForm.TreeObj.Selected.Parent.Text);
    ModelISN  := FCarModelForm.qrModifMODELISN.Value;
    ModelName := AnsiUpperCase(FCarModelForm.TreeObj.Selected.Text);
  finally
    Screen.Cursor := crDefault;
  end;
  result := FCarModelForm.ModalResult = mrOk;
end;

procedure TfmPreCalc.qrCalcPremCascoBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:=VarArrayOf([User.ISN, User.SLabel, ISN])
end;


procedure TfmPreCalc.g_CascoMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var vKey :Word;
begin
  inherited;
  with TDbGrid(Sender) do begin
    if SelectedField=DataSource.DataSet.FieldByName('ValName') then
    begin
      vKey:=32;
      g_CascoKeyDown(Sender, vKey, Shift);
    end;
    if DataSource.Name = 'dsTerr' then Filter;
  end;



end;

procedure TfmPreCalc.g_CascoDblClick(Sender: TObject);
begin
  inherited;
  if ((TDbGrid(Sender).SelectedField.Name = 'qrPreCalcParamVisField')
      or (TDbGrid(Sender).SelectedField.Name = 'qrPreCalcParam1VisField'))
  then begin
    if TDbGrid(Sender).DataSource.DataSet.FieldByName('VisField').Value = 1 then
      mAddInvisibleClick(mAddInvisible)
    else
      mAddInvisibleClick(mDeleteInvisible)
  end
  else if (((TDbGrid(Sender).SelectedField.Name='qrPreCalcParamVALNAME')
             or (TDbGrid(Sender).SelectedField.Name='qrPreCalcParam1VALNAME')
             or (TDbGrid(Sender).SelectedField.Name='cdsTerrVALNAME')             )
           and ((TDBGrid(Sender).DataSource.DataSet.FieldByName('NO').AsFloat<>0)
                 and (TDBGrid(Sender).DataSource.DataSet.FieldByName('IsReadOnly').AsFloat <> 1)
                 ))
          or (qrPreCalcHeadStatus.AsString = 'М')
  then

  with TDbGrid(Sender).DataSource.DataSet do begin
   // Dmitry_Privalov/epam 21.11.2008 tasc 7071616203
   // Открытие договора по двойному щелчку
   if (FieldByName('ClassISN').AsFloat = tp_AgrPrevIsn) then
    begin
     ShowAgr(FieldByName('Val'));
     exit
    end;
   //14.07.2014 Соболев А.В. Задача 67228791403 Согласование тз на внесение изменений в воронку продаж и котировок дкб
   if (FieldByName('ClassISN').AsFloat = TP_PRESALE) then
   begin
     if FieldByName('Val').IsNull then
       g_CascoEditButtonClick(Sender)
      else
       FIMain.OpenPresale(FieldByName('Val').AsFloat);
     exit;
   end;

   if (FieldByName('DataType').AsString<>'B') then begin
     g_CascoEditButtonClick(Sender);
     Exit;
   end;
   if State=dsBrowse then Edit;
   if FieldByName('ValName').AsString='N' then
     FieldByName('ValName').AsString:='Y'
   else
     FieldByName('ValName').AsString:='N';
   Post;
  end;

end;


procedure TfmPreCalc.qrMagrCASCO1VALNAMESetText(Sender: TField;
  const Text: String);
begin
  inherited;
  if Text='' then begin
    qrPreCalcParam1ValName.AsVariant:=null;
    qrPreCalcParam1Val.AsVariant:=null;
  end;
end;


procedure TfmPreCalc.FormResize(Sender: TObject);
const
  VALUE_WIDTH_PROPORTION = 3; // 1/3 от ширины
var
  iNameWidth    : integer;
  iFirstLeft: integer;
begin
  inherited;
  if vIsKotDKB then begin
   // pCascoObj.Width:=((pnMotor.ClientWidth - Splitter1.Width - SplitterObj.Width-jpKotDKB.Width) div 11)*3;
    pCasco.Width:=(pnMotor.ClientWidth - Splitter1.Width - jpKotDKB.Width) div 2;   
{    iFirstLeft := pCasco.Left;
    pCasco.Left := pCasco1.Left - 1;
    pCasco1.Left := pCasco.ClientWidth + iFirstLeft;
    pCasco.Align := alClient;
    pCasco1.Align := alLeft;
    надо будет поменять местами}

    end else// exit;
  // равномерное расширение гридов
  if fMulti
   then begin
    pCascoObj.Width:=((pnMotor.ClientWidth - Splitter1.Width - SplitterObj.Width) div 11)*3;
    pCasco.Width:=((pnMotor.ClientWidth - Splitter1.Width - SplitterObj.Width) div 11)*4;
   end else
    pCasco.Width:=(pnMotor.ClientWidth - Splitter1.Width) div 2;

  // обновляем размеры компонент на панели перед расчетами
  pnMotor.Realign;

  // Теперь рассчитываем ширину колонок.

  // 20070719 DmitryPo/VDI Нельзя делать границу второй колонки точно на границе
  //                       скроллбара грида - это вызывает глюки при пропрутке.

  // -1 - на ширину разделителя между колонками.
  iNameWidth := g_Casco.ClientWidth -
                (g_Casco.ClientWidth - GetSystemMetrics(SM_CXVSCROLL)) div VALUE_WIDTH_PROPORTION;

  g_Casco.Columns[GetColIndex(g_Casco, 'PARNAME')].Width := iNameWidth - 10 - IIF(CanAddInvisibleField, 20, 0);
  g_Casco.Columns[GetColIndex(g_Casco, 'VALNAME')].Width := g_Casco.ClientWidth - GetSystemMetrics(SM_CXVSCROLL) - iNameWidth;

  iNameWidth := g_Casco1.ClientWidth -
                (g_Casco1.ClientWidth - GetSystemMetrics(SM_CXVSCROLL)) div VALUE_WIDTH_PROPORTION;

  g_Casco1.Columns[GetColIndex(g_Casco1, 'PARNAME')].Width := iNameWidth - 10 - IIF(CanAddInvisibleField, 20, 0);;
  g_Casco1.Columns[GetColIndex(g_Casco1, 'VALNAME')].Width := g_Casco1.ClientWidth - GetSystemMetrics(SM_CXVSCROLL) - iNameWidth;

  dbgTerr.Columns[0].Width := dbgTerr.Width-3;
  dbgVariant.Columns[0].Width := dbgVariant.Width-3;
  dbgDogAdd.Columns[0].Width := dbgDogAdd.Width-3;

end;

// поднимаем меню добавления групп только на разрешенных группах
procedure TfmPreCalc.qrPreCalcParamAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if g_Casco.Focused then
    g_CascoColEnter(g_Casco)
  else begin
    g_CascoColEnter(g_Casco1);
    //28.08.2015 Соболев А.В. Задача 76596909803 Реализация: Калькулятор по оценке имущества Предстраховая экспертиза (Платинум) в АИС
    if (qrPreCalcHeadRuleIsn.Value = p_AGRCALCFIREDKS) and g_Casco1.Focused then
      mHint.Text := DataSet.FieldByName('REMARK').AsString{+DataSet.FieldByName('ISN').AsString};
  end;

  FISN:=DataSet.FieldByName('ISN').AsFloat;
  if (DataSet.FieldByName('NO').AsFloat=0)
     and (DataSet.FieldByName('ClassISN').AsFloat<>p_RiskClassISN)
     and (DataSet.FieldByName('ClassISN').AsFloat<>p_RiskRuleISN)
         // для имущественного страхования объекты можно страховать
     and (DataSet.FieldByName('ClassISN').AsFloat<>tp_Decorating)
     and (DataSet.FieldByName('ClassISN').AsFloat<>tp_Building)
     and (DataSet.FieldByName('ClassISN').AsFloat<>tp_Movables)
     and (DataSet.FieldByName('ClassISN').AsFloat<>TP_MOVABLESWITHLIST)
     and (DataSet.FieldByName('ClassISN').AsFloat<>TP_MOVABLESWITHOUTHLIST)
     and (DataSet.FieldByName('ClassISN').AsFloat<>TP_LANDSCAPEDESIGN)
     // имущество ДКБ
     and (DataSet.FieldByName('ClassISN').AsFloat<> Tp_Cbuilding)
     and (DataSet.FieldByName('ClassISN').AsFloat<> Tp_Cexterior)
     and (DataSet.FieldByName('ClassISN').AsFloat<> Tp_Cinterior)
     and (DataSet.FieldByName('ClassISN').AsFloat<> Tp_Cexternal)
     and (DataSet.FieldByName('ClassISN').AsFloat<> Tp_Cglazing)
     and (DataSet.FieldByName('ClassISN').AsFloat<> Tp_Cequipment)
     and (DataSet.FieldByName('ClassISN').AsFloat<> Tp_Cfurniture)
     and (DataSet.FieldByName('ClassISN').AsFloat<> Tp_Cproductstocks)
     and (DataSet.FieldByName('ClassISN').AsFloat<> Tp_Ccash)
     and (DataSet.FieldByName('ClassISN').AsFloat<> Tp_Caddexpenses)
     //20.06.2014 Соболев А.В. Задача 64756113903 Реализация: Внесение изменений в калькуляторы по страхованию гражданской ответственности
     //and (DataSet.FieldByName('ClassISN').AsFloat<> TP_RULEGOCOMMON)
     and (DataSet.FieldByName('ClassISN').AsFloat<> TP_COVERINGARTICLE60)
     and (DataSet.FieldByName('ClassISN').AsFloat<> TP_COVERINGMORALHARM)
     //02.07.2014 Kuznetsov S.M. Task 65600959303
     and (DataSet.FieldByName('ClassISN').AsFloat<> OBJPROPERTYANDEQUIP)
     and (DataSet.FieldByName('ClassISN').AsFloat<> OBJPROPERTYANDFURNISH)
     // 28.09.2016 Грачев Д.В. 110983330203
     and (DataSet.FieldByName('ClassISN').AsFloat<> C_OBJHUMAN)
  then
    DataSet.FieldByName('ValName').ReadOnly:=true
  else
    DataSet.FieldByName('ValName').ReadOnly:=false;

  if DataSet.FieldByName('Gr0ReadOnlyNo').AsFloat=1 then
    DataSet.FieldByName('ValName').ReadOnly:=false;

  {if CanAddInvisibleField then begin
    if DataSet.FieldByName('VisField').Value = 1 then begin
      mAddInvisible.Visible := true;
      mDeleteInvisible.Visible := false;
    end
    else begin
      mAddInvisible.Visible := false;
      mDeleteInvisible.Visible := true;
    end
  end;}
end;

procedure TfmPreCalc.grPreCalcPremDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
 SF, SF1 :Double;
begin
  inherited;
  if ((State = []) or (State=[gdSelected])) then
   begin
    SF1:=TDBGrid(Sender).DataSource.DataSet.FieldByName('Sort1').AsFloat;
    SF:=TDBGrid(Sender).DataSource.DataSet.FieldByName('Sort').AsFloat;
    if (SF1=1) or (SF1=3) then
     TDBGrid(Sender).Canvas.Brush.Color := $0062DBCF; //BGR
    if SF>99999999999 then // AL 3/04/07 итоги
     with TDBGrid(Sender).Canvas.Font do Style:=Style+[fsBold];
   end;
  TDBGrid(Sender).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfmPreCalc.mAddDrvClick(Sender: TObject);
var
  vEx :string;
  vIsn : double;
begin
  inherited;
  if (TMenuItem(Sender).Name='mDelDrv')
    //28.08.2015 Соболев А.В. Задача 76596909803 Реализация: Калькулятор по оценке имущества Предстраховая экспертиза (Платинум) в АИС
    or (TMenuItem(Sender).Name='miDelGroup')
  then
    vEx:='D'
  else
    vEx:='I';
  Screen.Cursor:=crHourGlass;
  //28.08.2015 Соболев А.В. Задача 76596909803 Реализация: Калькулятор по оценке имущества Предстраховая экспертиза (Платинум) в АИС
  if (TMenuItem(Sender).Name='miDelGroup') then
    vIsn := g_Casco1.DataSource.DataSet.FieldValues['ISN']
  else
    vIsn := g_Casco.DataSource.DataSet.FieldValues['ISN'];

  try
    FCon.AppServer.UpdateGroup(User.ISN, vEx, vIsn);

    Param_ApplyUpdates;

    QueryRefresh(qrPreCalcParam);
    QueryRefresh(qrPreCalcParam1);
    if not (TMenuItem(Sender).Name='miDelGroup') then g_Casco.SetFocus;
  finally
    Screen.Cursor:=crDefault;
  end;
end;


procedure TfmPreCalc.qrPreCalcParamBeforeInsert(DataSet: TDataSet);
begin
  if ((DataSet = qrPreCalcParamObj) and (qrPreCalcHeadRuleISN.AsFloat = C_AGRAGRONLINE)) then
    begin
   { qrPreCalcParamObj.Edit;
    qrPreCalcParamObjCLASSISN.asFloat:=13350716;
    qrPreCalcParamObjGROUPID.asFloat:=-1;
    qrPreCalcParamObjVAL.asString:='100';
    qrPreCalcParamObjVALNAME.asString:='Y';
    qrPreCalcParamObjPARNAME.asString:='dsfdfdsfsdfdsf';
    qrPreCalcParamObjDATATYPE.asString:='0';
    qrPreCalcParamObjAGRISN.asFloat:=qrPreCalcHeadISN.asFloat;
    qrPreCalcParamObjDISCR.asString:='I';
    qrPreCalcParamObjUpdated.asDateTime:=g_Casco1.DataSource.DataSet.FieldValues['UPDATED'];
    qrPreCalcParamObj.Post;
    qrPreCalcParamObj.ApplyUpdates(0);   }
    //QueryRefresh(qrPreCalcParamObj);
            inherited;
    end
    else
      begin
  inherited;
  g_CascoObj.Columns[GetColIndex(g_CascoObj, 'PARNAME')].ReadOnly := false;
  g_CascoObj.Columns[GetColIndex(g_CascoObj, 'PARNAME')].ButtonStyle := cbsEllipsis;
  fObjInsert:=True;

  dbgTerr.Columns[GetColIndex(dbgTerr, 'VALNAME')].ReadOnly := false;
  dbgTerr.Columns[GetColIndex(dbgTerr, 'VALNAME')].ButtonStyle := cbsEllipsis;
  fTerrInsert := True;

end;
end;



// в макете вставка запомненной группы и порядкового номер
procedure TfmPreCalc.qrPreCalcParamAfterInsert(DataSet: TDataSet);
//var vMark: TBookmark;
begin
  inherited;
  // 28.09.2016 Грачев Д.В. 110983330203
  // 02/03/2017 Заболотный 95491578503
  if ((DataSet = qrPreCalcParamObj)) and ((qrPreCalcHeadRuleISN.AsFloat = C_AGRACCIDENTEPIND)
                                        or (qrPreCalcHeadRuleISN.AsFloat = C_AGRAGRONLINE)) then
    with DataSet do
    begin
      FieldByName('DataType').AsString := 'S';
      FieldByName('CLASSISN').AsVariant := C_OBJHUMAN;
    end;
  DataSet.FieldByName('GROUPID').AsFloat:=FGroupID;
  DataSet.FieldByName('NO').AsFloat:=FNo;
  if ((DataSet = cdsTerr) and (FGroupID = -10)) then
  begin
    DataSet.FieldByName('DataType').AsString := 'W';
    DataSet.FieldByName('CLASSISN').AsFloat :=  3652737903;
    DataSet.FieldByName('Root').AsFloat :=  3653032203;
    cdsTerr.Post;
    cdsTerr.ApplyUpdates(0);
    QueryRefresh(qrPreCalcParam);
    QueryRefresh(qrPreCalcParam1);
    QueryRefresh(cdsTerr);
//    cdsTerr.First;
  end;
  if (qrPreCalcHeadRuleISN.AsFloat = C_AGRAGRONLINE) and
       (DataSet = qrPreCalcParamObj) then
    begin
         //vMark:=qrPreCalcParamObj.GetBookmark;
         DataSet.FieldByName('CLASSISN').AsVariant := 13350716;
         qrPreCalcParamObj.Post;
         qrPreCalcParamObj.ApplyUpdates(0);
         QueryRefresh(qrPreCalcParamObj);
         QueryRefresh(qrPreCalcParam);
         QueryRefresh(qrPreCalcParam1);
         QueryRefresh(qrPreCalcParamObj);
         QueryRefresh(cdsTerr);
         qrPreCalcParamObj.First;
         //if qrPreCalcParamObj.BookmarkValid(vMark) then qrPreCalcParamObj.GotoBookmark(vMark);
    end;

end;

procedure TfmPreCalc.qrPreCalcParam1BeforeScroll(DataSet: TDataSet);
begin
  inherited;
  // в макете запоминаем группы и порядковые номер
  FGroupID:=DataSet.FieldByName('GROUPID').AsFloat;
  FNo:=DataSet.FieldByName('NO').AsFloat;
end;

procedure TfmPreCalc.edAgrStatusBtnClick(Sender: TObject);
var P :TPoint;
begin
  if ppStatus.Items.Count=0 then
    FillStatusMenu(ppStatus, p_PrAgrStatus, AgrStatusClick);
  P.X:=edAgrStatus.Left;
  P.Y:=edAgrStatus.Top+edAgrStatus.Height+1;
  P:=edAgrStatus.Parent.ClientToScreen(P);
  ppStatus.Popup(P.X, P.Y);
end;

procedure TfmPreCalc.edRuleNameBtnClick(Sender: TObject);
const
  MsgT='#RUS Страховой продукт #ENG Insurance product';
  Msg0='#RUS После смены продукта будет произведен перерасчет премии. Продолжить? '+
       '#ENG Premium will be recalculated after product change. Proceed?';
var
  V: variant;
  PISN: double;
begin
  if qrPreCalcHeadStatus.AsString='М' then
    // Taranov M.E. 27.09.2007 Изменил корень с p_AgrMotor на p_AgrKind по задаче 4213990203. Выбор продукта должен происходить из корня: Комплексное страхование
    ChooseWood(qrPreCalcHeadRuleISN, qrPreCalcHeadRuleName, p_AgrKind)
  else begin
    V:=VarArrayOf([FALSE, 0, 2]);
    if FIMain.Wood2(qrPreCalcHeadRuleISN.AsFloat, PISN, 17, V, FALSE, TRUE, FALSE, GetLocalMsg(MsgT), FALSE) then
    begin
      CheckDSEditMode(qrPreCalcHead);
      qrPreCalcHeadRULEISN.Value:=PISN;
      qrPreCalcHeadRULENAME.Value:=V[0];
      qrPreCalcHead.Post;
      // Yunin V.A. 10/08/07 после выбора продукта обновим условия (для показа их по-умолчанию)
      QueryRefresh(qrPreCalcParam);
      QueryRefresh(qrPreCalcParam1);
      QueryRefresh(qrPreCalcParamObj);
      QueryRefresh(cdsTerr);
    end;
  end;
end;

procedure TfmPreCalc.edCurrNameBtnClick(Sender: TObject);
begin
  inherited;
  ChooseCurrency(qrPreCalcHeadCURRISN, qrPreCalcHeadCURRName);
end;

// взял код с Agr
procedure TfmPreCalc.AgrStatusClick(Sender: TObject);
begin
  CheckDSEditMode(qrPreCalcHead);
  qrPreCalcHeadStatusName.Value := DecodeMenuStatus(ppStatus, TMenuItem(Sender).Hint);
end;

// взял код с Agr
procedure TfmPreCalc.FillStatusMenu(M :TPopupMenu; ParentISN :Double; PClickProc :TMenuClickProc);
var
  i :Integer;
  V :Variant;
  N :TMenuItem;
begin
  Screen.Cursor:=crHourGlass;
  try
    V:=FCon.AppServer.GetAgrStatusList(User.ISN, ParentISN);
    for i:=0 to VarArrayHighBound(V, 1) do begin
      N:=TMenuItem.Create(Self);
      N.Hint:=MimeDecodeString(V[i][0]);
      N.Caption:='';
      if User.LangISN = p_LngRussian then N.Caption:='(&'+N.Hint+') ';
      N.Caption:=N.Caption+V[i][1];
      N.RadioItem := TRUE;
      N.GroupIndex:=1;
      N.OnClick:=PClickProc;
      M.Items.Add(N);
    end;
  finally
    Screen.Cursor:=crDefault;
  end;
end;

procedure TfmPreCalc.ppStatusPopup(Sender: TObject);
const PrFn = 'ДОГОВОР:СТАТУС';
var i : Integer;
begin
 with ppStatus.Items do
  for i:=0 to Count-1 do
   with Items[i] do
    begin
     Enabled:=(Move_Enable(PrFn, qrPreCalcHeadStatus.AsString, Hint, 0, 0)=0);
     Checked:=(qrPreCalcHeadStatus.AsString=Hint);
  end;
end;

procedure TfmPreCalc.edClientReplyNameBtnClick(Sender: TObject);
begin
  inherited;
  ChooseWood(qrPreCalcHeadClientReplyISN, qrPreCalcHeadClientReplyName, p_ClientReplyISN);
end;

// AL 3/04/07
procedure TfmPreCalc.qrPreCalcHeadAfterScroll(DataSet: TDataSet);
begin
 inherited;
 edAgrID.ButtonEnabled:=not(qrPreCalcHeadAGRID.IsNull);
end;

// AL 3/04/07 - типа маска для дат
// Кроме нажатия BackSpace
procedure TfmPreCalc.g_CascoKeyUp(Sender: TObject; var Key: Word;  Shift: TShiftState);
var
 i :integer;
begin
  inherited;
  if TDBGrid(Sender).DataSource.DataSet.FieldByName('ClassISN').AsFloat = tp_CarConstructed then exit;

  if (TDBGrid(Sender).DataSource.DataSet.FieldByName('DataType').AsString='D') and (Key<>8) then
   for i := 0 to TDBGrid(Sender).ControlCount-1 do
    if TDBGrid(Sender).Controls[i] is TInPlaceEdit then
      with TDBGrid(Sender).Controls[i] as TInPlaceEdit do
       if (Length(Text)=2) or (Length(Text)=5) then
        begin Text:=Text+DateSeparator; SelStart:=Length(Text); end;

end;

// AL 3/04/07 - для простановки сокращенного года по маске
procedure TfmPreCalc.qrPreCalcParamVALNAMESetText(Sender: TField; const Text: String);
 var
  vText : string;
begin

  if Text='' then begin
    Sender.DataSet.FieldByName('ValName').AsString:='';
    Sender.DataSet.FieldByName('Val').AsString:='';
  end;

  inherited;
  // Dmitry_Privalov/epam 09.12.2008
  // Дата может вводиться еще и в формате yyyy
  if(Sender.DataSet.FieldByName('DataType').AsString = 'D') then begin
    try
      //если дата задана одним годом
      if pos(DateSeparator, Text) = 0 then
       vText := '01' + DateSeparator + '01' + DateSeparator +  Text
      else
       vText := Text;

      Sender.AsDateTime:=StrToDate(vText);
    except
      if Text='' then begin
        Sender.Clear;
        Sender.DataSet.FieldByName('Val').Clear;
        Sender.DataSet.FieldByName('ValName').Clear;
      end
      else begin
        raise;
      end;
    end;
  end
  else begin
    Sender.AsString:=Text;
  end;

end;

procedure TfmPreCalc.qrPreCalcParamAfterPost(DataSet: TDataSet);
begin
  inherited;
  grPremEnabled(DataSet);
  fObjInsert:=False;
  fTerrInsert := false;
  // 09.01.2014 Мерзляков М. М. задача 51207555403
  if (qrPreCalcHeadRuleISN.AsFloat=p_AGRMOTORWIZARD) then
  begin
    Param_ApplyUpdates;
    if DataSet = qrPreCalcParam then
      QueryRefresh(qrPreCalcParam1)
    else if DataSet = qrPreCalcParam1 then
      QueryRefresh(qrPreCalcParam)
    else if DataSet = qrPreCalcParamObj then
    begin
      QueryRefresh(qrPreCalcParam);
      QueryRefresh(qrPreCalcParam1);
    end
    else if DataSet = cdsTerr then
    begin
      QueryRefresh(qrPreCalcParam);
      QueryRefresh(qrPreCalcParam1);
    end;

  end
  //25.09.2014 Golodnyuk task 68030841803
  else
    if DataSet = qrPreCalcParam1 then
    begin
      //DSAfterPost(qrPreCalcParam);
      CheckDSBrowseMode(qrPreCalcParam);
      Param_ApplyUpdates;
      QueryRefresh(qrPreCalcParam);
    end;
  // 28.09.2016 Грачев Д.В. 110983330203
  if (DataSet = qrPreCalcParam) and
     (qrPreCalcParam.FieldByName('ClassIsn').AsFloat = C_ATTRSETRISKISN) and
     (qrPreCalcHead.FieldByName('RuleISN').AsFloat = C_AGRACCIDENTEPIND) then
  begin
    DSAfterPost(qrPreCalcParam);
    qrPreCalcParam1.Close;
    qrPreCalcParam1.Open;
  end;
  // 20/03/2017 Заболотный 95491578503
  if (DataSet = qrPreCalcParam) and
     (qrPreCalcParam.FieldByName('ClassIsn').AsFloat = 3528325203) and
     (qrPreCalcHead.FieldByName('RuleISN').AsFloat = C_AGRAGRONLINE) then
  begin
    DSAfterPost(qrPreCalcParam);
    qrPreCalcParam1.Close;
    qrPreCalcParam1.Open;
  end;

  //31.08.2017 Tukmakov task 142747265603 Новые продукты ДО СРО
  if (DataSet = qrPreCalcParam) and
     (qrPreCalcParam.FieldByName('ClassIsn').AsFloat = TP_INSURSUMRUB) and
     ((qrPreCalcHead.FieldByName('RuleISN').AsFloat = p_AGRFIRERESPSROBDOBLG) or (qrPreCalcHead.FieldByName('RuleISN').AsFloat = p_AGRFIRERESPSROPJOBLG) or
      (qrPreCalcHead.FieldByName('RuleISN').AsFloat = p_AGRFIRERESPSROPPOBLG)) then
  begin
    DSAfterPost(qrPreCalcParam);
    qrPreCalcParam1.Close;
    qrPreCalcParam1.Open;
  end;

end;

procedure TfmPreCalc.grPremEnabled(DataSet: TDataSet);
var
 B :Boolean;
begin
 // AL 18/06/07
 B:=not(DataSet.FieldByName('PremiumSum').IsNull) and (TClientDataSet(DataSet).ChangeCount=0);
 EnableControl(grPreCalcPrem, B);
 btNewAgr.Enabled := B;
 btPrint.Enabled := B;
end;

procedure TfmPreCalc.qrPreCalcHeadAfterOpen(DataSet: TDataSet);
begin
  inherited;
  grPremEnabled(qrPreCalcHead);

  // Dmitry_Popov/EPAM 20070801 Задача #3970779803 Запрещаем кнопку создания договора
  // если договор уже существует
  btNewAgr.Enabled := qrPreCalcHead.FieldByName('AgrISN').IsNull;
  dbeLoadMethod.Visible := not(qrPreCalcHead.FieldByName('DateLoadMethod').IsNull);
  if dbeLoadMethod.Visible then begin
    Label18.Visible := true;
  end;
  //28.08.2015 Соболев А.В. Задача 76596909803 Реализация: Калькулятор по оценке имущества Предстраховая экспертиза (Платинум) в АИС
  if qrPreCalcHeadRuleIsn.Value = p_AGRCALCFIREDKS then
  begin
    lVariantValuation.Visible := true;
    edVariantValuation.Visible := true;
    Label20.Visible := false;
    edClientFullName.Visible := false;
    Label14.Visible := false;
    edClientReplyName.Visible := false;
    edRuleName.Enabled := false;
    Label12.Visible := false;
    edAgrStatus.Visible := false;
    Label6.Visible := false;
    edEmplName.Visible := false;
    chbGTotal.Visible := false;
    lbClientsSource.Visible := false;
    edClientSource.Visible := false;
    tbnCopyCalc.Visible := false;
    tbnQueue.Visible := false;
    tbnConvertCalc.Visible := false;
    sbPackDoc.Visible := false;
    cbMode.Visible := false;
    btMVC.Visible := false;
    btCreateAgr.Visible := false;
    btPrint.Visible := false;
    btNewAgr.Visible := false;
    Label10.Left := Label11.Left;
    edAgrID.Left := edRuleName.Left;
    edAgrID.Color := clInfoBk;
    btStoreCalcResultToAgr.Visible := true;
    Panel8.Width := 400;//!!!450;
    btCalcPrem.Left := 207;
    btStoreCalcResultToAgr.Left := 322;
    cbShowLog.Left := Label18.Left;
    Splitter1.Visible := false;
    pCasco.Visible := false;
    pHint.Visible := true;
    Application.OnHint := VVHintHandler;
  end;
  //21.09.2017 Tukmakov task 142747265603 Новые продукты ДО СРО
  if (qrPreCalcHeadRuleIsn.Value = p_AGRFIRERESPSROBDOBLG) or (qrPreCalcHeadRuleIsn.Value = p_AGRFIRERESPSROPPOBLG) or (qrPreCalcHeadRuleIsn.Value = p_AGRFIRERESPSROPJOBLG) then
    btNewAgr.Enabled := false;
end;

procedure TfmPreCalc.qrPreCalcCLAfterPost(DataSet: TDataSet);
begin
  inherited;
  DSAfterPost(DataSet);
  grPremEnabled(DataSet);
  cbLimit.Enabled :=  qrPreCalcClLiabExists.Value = 1;
end;

procedure TfmPreCalc.qrPreCalcHeadAfterPost(DataSet: TDataSet);
begin
  inherited;
  DSAfterPost(DataSet);
  grPremEnabled(DataSet);
  if(qrPreCalcParam.Active) then begin
    CheckDSBrowseMode(qrPreCalcParam);
    QueryRefresh(qrPreCalcParam);
  end;

  if(qrPreCalcParam1.Active) then begin
    CheckDSBrowseMode(qrPreCalcParam1);
    QueryRefresh(qrPreCalcParam1);
  end;

  if(qrPreCalcParamObj.Active) then begin
    CheckDSBrowseMode(qrPreCalcParamObj);
    QueryRefresh(qrPreCalcParamObj);
  end;

  if(cdsTerr.Active) then begin
    CheckDSBrowseMode(cdsTerr);
    QueryRefresh(cdsTerr);
  end;

end;

procedure TfmPreCalc.qrPreCalcHeadClientReplyNameSetText(Sender: TField;
  const Text: String);
begin
  if Text='' then qrPreCalcHeadClientReplyISN.AsVariant:=null;
  inherited;
end;

// создать новую котировку
procedure TfmPreCalc.btCreateAgrClick(Sender: TObject);
var
 V :Variant;
 CanClose :Boolean;
begin
  // AL 18/06/07
  CanClose:=TRUE;
  FormCloseQuery(Self, CanClose);
  if not(CanClose) then Exit;
  //
  V:=VarArrayOf([16, 0, 0, 1]);
  FIMain.AnyCall(V);
  if V[0]=NULL then begin ShowBDEError(Self, V[1]); Exit; end;
  if V[2]=0 then Exit;
  Update;
  Screen.Cursor:=crHourGlass;
  try
   ISN:=V[2];
  finally
   Screen.Cursor:=crDefault;
  end;

  // Обновим DataSet
  FormShow(Sender);
end;

procedure TfmPreCalc.btPrintClick(Sender: TObject);
var
 V :Variant;
 FIPrintWord2 :IPrintWord2;
begin
 CheckDSBrowseMode(qrPreCalcHead); // AL 18/06/07
 CheckDSBrowseMode(qrPreCalcParam); // AL 18/06/07
 CheckDSBrowseMode(qrPreCalcParam1); // AL 18/06/07
 CheckDSBrowseMode(qrPreCalcParamObj);
 CheckDSBrowseMode(cdsTerr); 
 Param_ApplyUpdates; // AL 18/06/07
 inherited;

 // Dmitry_Privalov/epam 24.07.2008
 // Печать по шаблонам
 FIPrintWord2:=CreateComObject(Class_PrintWord) as IPrintWord2;
 try
  FIPrintWord2.SetAppl(Application.Handle, FIMain);
  //if qrCond.Active then vObjISN:=qrCondOBJISN.AsFloat else vObjISN:=qrObjGrPISN.AsFloat;
  //V:=VarArrayOf([0, qrAgrISN.AsFloat, qrAddISN.AsFloat, qrCondOBJISN.AsFloat, qrAgrRULEISN.AsFloat]);
  V:=VarArrayOf([0, qrPreCalcHeadISN.AsFloat, qrPreCalcHeadISN.AsFloat, 0, qrPreCalcHeadRULEISN.AsFloat]);
  V:=FIPrintWord2.PrintDialog(V);
 finally
  FIPrintWord2:=nil;
 end;
 { if not(Assigned(vPrnWord)) then begin
    vPrnWord:= CreateComObject(Class_PrintWord) as IPrintWord;
    vPrnWord.SetAppl(Application.handle, FIMain);
  end;

  try
    Screen.Cursor:= crHourGlass;
    vPrnWord.Generate(152603, qrPreCalcHeadISN.AsFloat);
  finally
    Screen.Cursor:=crDefault;
  end;}
end;

procedure TfmPreCalc.FormDestroy(Sender: TObject);
begin
  inherited;
  Application.OnHint := Nil;
  vPrnWord:=nil;
end;


// AL 9/06/07 Многовариантный расчет для котировки (task 3769852803)
procedure TfmPreCalc.btMVCClick(Sender: TObject);

begin
 CheckDSBrowseMode(qrPreCalcHead); // AL 18/06/07
 CheckDSBrowseMode(qrPreCalcParam); // AL 18/06/07
 CheckDSBrowseMode(qrPreCalcParam1); // AL 18/06/07
 CheckDSBrowseMode(qrPreCalcParamObj);
 CheckDSBrowseMode(cdsTerr); 

  // Dmitry_Popov/EPAM 20070801 Задача #3962483403 не происходит POST DataSet-а котировки ОСАГО
 CheckDSBrowseMode(qrPrecalcCL);

 Param_ApplyUpdates; // AL 18/06/07
 with TfmCalcPreview.CreateEx(Self, FIMain, FCon) do
  try
   FParent := Self; // Yankovsky/EPAM - Task 4615096003
   AgrISN:=qrPreCalcHeadISN.Value;
   Panel1.Visible:=FALSE;
   btCalcPreview.Click; // запускам расчет
   ShowModal;
  finally
   Free;
  end;
 //g_Casco.SetFocus;
end;

// AL 18/06/07 сохранение изменений при нажатии "Подтвердить"
procedure TfmPreCalc.nvDataBeforeAction(Sender: TObject; Button: TNavigateBtn);
var
 DS :TClientDataSet;
begin
  if (qrPreCalcHeadRuleISN.AsFloat = p_AGRMOTORWIZARD) and ((Button=nbDelete) or (Button=nbInsert))
      and (qrPreCalcHeadStatus.AsString <> 'М') then Abort;
  // 2015-08-20 Конев В.А. [80159823003] Котировка ГК - только для чтения
  if (qrPreCalcHeadDiscr.AsString = 'Х')
    and (Button in [nbInsert, nbDelete, nbEdit, nbPost])
   then ActionBeforeEdit(nil);

  if not (Button=nbDelete) then inherited;

  if (Button=nbDelete) then
   with (Sender as TDBNavigator) do
    begin
     if not(ConfirmDelete) then DataSource.DataSet.Delete
      else
       if MsgBoxYN(MsgDR)=IDYES then begin
         Update;
         DataSource.DataSet.Delete;
       end;
   end;

 if ((Button=nbPost) or (Button=nbDelete)) then
  begin
   DS:=TClientDataSet(TDBNavigator(Sender).DataSource.DataSet);
   //18.10.2017 Соболев А.В. задача:132581463103 - Проблема с котировками Комфорт+Автопрофи
   if ((Button=nbPost) and (DS=qrPreCalcParam1)) then
     if DS.FieldByName('CLASSISN').Value = tp_FranchCond then
        if DS.FieldByName('VALNAME').Value <> DS.FieldByName('VALNAME').OldValue then DS.Next;
   if (DS=qrPreCalcParam) or (DS=qrPreCalcParam1) or (DS=qrPreCalcParamObj) or (DS = cdsTerr) then
    begin DSAfterPost(DS); SysUtils.Abort; end;
  end; 
end;

// AL 18/06/07 сохранение изменений на сервере
procedure TfmPreCalc.Param_ApplyUpdates;
begin
 if qrPreCalcParam.ChangeCount>0 then DSAfterPost(qrPreCalcParam);
 if qrPreCalcParam1.ChangeCount>0 then DSAfterPost(qrPreCalcParam1);
 if qrPreCalcParamObj.ChangeCount>0 then DSAfterPost(qrPreCalcParamObj);
 if cdsTerr.ChangeCount>0 then DSAfterPost(cdsTerr);


  // Dmitry_Popov/EPAM 20070801 Задача #3962483403 не происходит POST DataSet-а котировки ОСАГО
 if qrPreCalcCL.ChangeCount>0 then qrPreCalcCL.AfterPost(qrPreCalcCL);

end;

// AL 18/06/07
procedure TfmPreCalc.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
const
  MsgSDTOAGR='Перенести данные в договор/котировку?';
var
  R :Integer;
begin
  // 2015-08-20 Конев В.А. [80159823003] Котировка ГК - только для чтения
  if (qrPreCalcHeadDiscr.AsString = 'Х') then
  begin
    if qrPreCalcHead.State in [dsInsert, dsEdit] then qrPreCalcHead.CancelUpdates;
    if qrPreCalcParam.State in [dsInsert, dsEdit] then qrPreCalcParam.CancelUpdates;
    if qrPreCalcParam1.State in [dsInsert, dsEdit] then qrPreCalcParam1.CancelUpdates;
    if qrPreCalcParamObj.State in [dsInsert, dsEdit] then qrPreCalcParamObj.CancelUpdates;
    if cdsTerr.State in [dsInsert, dsEdit] then cdsTerr.CancelUpdates;    
    if qrPrecalcCL.State in [dsInsert, dsEdit] then qrPrecalcCL.CancelUpdates;
    Exit;
  end;
 inherited;
 CheckDS(qrPreCalcHead, CanClose);
 CheckDS(qrPreCalcParam, CanClose);
 CheckDS(qrPreCalcParam1, CanClose);
 CheckDS(qrPreCalcParamObj, CanClose);
 CheckDS(cdsTerr, CanClose);

  // Dmitry_Popov/EPAM 20070801 Задача #3962483403 не происходит POST DataSet-а котировки ОСАГО
 CheckDS(qrPrecalcCL, CanClose);

 Param_ApplyUpdates;
 //29.12.2015 Соболев А.В. Задача 76596909803 Реализация: Калькулятор по оценке имущества Предстраховая экспертиза (Платинум) в АИС
 if qrPreCalcHeadRuleIsn.Value = p_AGRCALCFIREDKS then
 begin
  CanClose:=TRUE;
  case MsgBoxYNC(MsgSDTOAGR) of
   IDYES:
    try
     btStoreCalcResultToAgrClick(Nil);
    except
     on E: Exception do
      begin
       CanClose:=FALSE;
       ShowBDEError(Self, E.Message);
      end;
    end;
   IDNO:
    CanClose:=TRUE;
   IDCANCEL:
    CanClose:=FALSE;
  end;
 end;
end;

procedure TfmPreCalc.qrPreCalcParamVALNAMEGetText(Sender: TField; var Text: String; DisplayText: Boolean);
  var DS :TDataSet;
      CIsn: double;
begin
  DS:=Sender.DataSet;

  // Dmitry_Popov/EPAM 20070801 Задача #3957262203 Отображать страховые суммы с разделителем тысяч
  // Если текст нужен для редактирования значения или параметр не заполнен - отображаем как есть.
  if( (not DisplayText) or Sender.IsNull) then begin
    Text := Sender.AsString;
    exit;
  end;

  if ((DS.FieldByName('DataType').AsString='N')and(DS.FieldByName('ValName').AsString<>'')) then begin
    CIsn := DS.FieldByName('ClassISN').AsFloat;
    if ((DS.FieldByName('ClassISN').AsFloat=tp_LimitSum) or
          (DS.FieldByName('ClassISN').AsFloat=tp_FranchSum) or
          // Lavrov S.V. task #10711265103 06.08.2009
          (DS.FieldByName('ClassISN').AsFloat = tp_CarCost)
          // Храменков epam 53073816903 12/09/2013
          or (DS.FieldByName('ClassISN').AsFloat = tp_LimitEverySum)
          or (DS.FieldByName('ClassISN').AsFloat = tp_WarrantyKilometrage)
          //28.08.2015 Соболев А.В. Задача 76596909803 Реализация: Калькулятор по оценке имущества Предстраховая экспертиза (Платинум) в АИС
          or (CIsn = TP_CPV_LENGTH_FENCE) or (CIsn = TP_CPV_WELLS_DEPTH)
          // 22.11.2013 Kuznetsov S.M. Task 51738173703
          or (DS.FieldByName('ClassISN').AsFloat = tp_LimitResponMax)
          //21.01.2016 Golodnyuk task 94194409803
          or (DS.FieldByName('ClassISN').AsFloat = TP_LIMSUMACCTHIRDPERSON)
          //28.11.2017 Tukmakov task 134224497903
          or (CIsn = TP_INSURSUMRUB)  or (CIsn = Tp_ContractAgrPrice) or (CIsn = Tp_YearlyTurnover)
          ) then
      try
        Text := StringReplace(StringReplace(Sender.AsString, '.', DecimalSeparator, []), ',', DecimalSeparator, []);
        Text := FormatFloat('###,###,###,##0.', StrToFloat(Text));
        exit;
      except ;
      end;
    //28.08.2015 Соболев А.В. Задача 76596909803 Реализация: Калькулятор по оценке имущества Предстраховая экспертиза (Платинум) в АИС
    if ((CIsn = TP_CPV_OBJ_SUM_AREA1) or (CIsn = TP_CPV_BLDIN_OTH_FURN) or
        (CIsn = TP_CPV_CORRCOEF_DEC_EQUIP) or (CIsn = TP_CPV_OBJS_SUM_AREA) or (CIsn = TP_CPV_B_FIRS_FL_BUILTUP_AREA) or
        (CIsn = TP_CPV_B_ATTIC_FACTOR) or (CIsn = TP_CPV_B_BUILD_TOTAL_AREA) or (CIsn = TP_CPV_B_WITH_G_WALL_MAT_AREA) or
        (CIsn = TP_CPV_B_FOUND_AREA) or (CIsn = TP_CPV_B_WITH_ROOF_AREA) or (CIsn = TP_CPV_B_CONSTRUCTION_FACTOR) or
        (CIsn = TP_CPV_EXTEN_TOTAL_AREA) or (CIsn = TP_CPV_EXTENTION_AREA) or (CIsn = TP_CPV_BLDIN_OTH_FURN_EXT) or
        (CIsn = TP_CPV_POOL_AREA) or
        //(CIsn = TP_CE_CPV_CALC_SUM_AREA) or (CIsn = TP_CPV_DE_CALC_SUM_AREA) or {need string uncomment}
        ((CIsn = TP_CPV_CORRCOEF_CONST_ELEM) and (qrPreCalcHeadTemplateisn.Value <> c_AGRCPLFIRER4))) {need comment RuleIsn} then
      try
        Text := StringReplace(StringReplace(Sender.AsString, '.', DecimalSeparator, []), ',', DecimalSeparator, []);
        Text := FormatFloat('###,###,###,##0.##', StrToFloat(Text));
        exit;
      except ;
      end;
    if ((CIsn = TP_CPV_ADE_WEAR_PERCENT) or
        ((CIsn = TP_CPV_BDE_WEAR_PERCENT) and (qrPreCalcHeadTemplateisn.Value = c_AGRCPLFIRER2)) {need comment RuleIsn} or
        ((CIsn = TP_CPV_CORRCOEF_CONST_ELEM) and (qrPreCalcHeadTemplateisn.Value = c_AGRCPLFIRER4))) {need string comment} then
      try
        Text := StringReplace(StringReplace(Sender.AsString, '.', DecimalSeparator, []), ',', DecimalSeparator, []);
        Text := FormatFloat('###,###,###,##0.#', StrToFloat(Text));
        exit;
      except ;
      end;
    if ((CIsn = TP_CPV_APART_BUILDING_YEAR) or (CIsn = TP_CPV_ADE_LAST_RECONSTR_YEAR) or (CIsn = TP_CPV_B_BUILDING_YEAR) or
        (CIsn = TP_CPV_B_LAST_OVERHAUL_YEARS) or (CIsn = TP_CPV_BDE_LAST_RECONSTR_YEAR)) then
      try
        Text := StringReplace(StringReplace(Sender.AsString, '.', DecimalSeparator, []), ',', DecimalSeparator, []);
        Text := FormatFloat('0000.', StrToFloat(Text));
        exit;
      except ;
      end;
    if ((CIsn = TP_CPV_NUM_FLOORS_INCL_BASEM) or (CIsn = TP_CPV_RINGS_COUNT)) then
      try
        Text := StringReplace(StringReplace(Sender.AsString, '.', DecimalSeparator, []), ',', DecimalSeparator, []);
        Text := FormatFloat('#####0.', StrToFloat(Text));
        exit;
      except ;
      end;
  end;
  Text := Sender.AsString;

end;

// Dmitry_Privalov/epam 24.12.2007 tasc 4595494903
// Лимит сверх осаго
procedure TfmPreCalc.cbLimitDropDown(Sender: TObject);
var
 i : integer;
 V :Variant;
begin
  inherited;
 with (Sender as TDBComboBox) do
  try
   Screen.Cursor:=crHourGlass;
   if (ReadOnly) then Exit;
   if VarIsNull(LimList) then
      LimList:=FCon.AppServer.GetLimList;
   Items.Clear;
   for i:=0 to VarArrayHighBound(LimList, 1) do
    begin
     V:=LimList[i];
     if VarIsArray(V) then
      begin
       if edCurrName.Text=V[1] then
        Items.Add(V[0]);
      end
     else
      Items.Add(V);
    end;
  finally
   Screen.Cursor:=crDefault;
  end;
 inherited;

end;

procedure TfmPreCalc.FormCreate(Sender: TObject);
begin
  inherited;
  LimList:=NULL;
  // Lavrov S.V. task #8945018003 02.04.2009
  // 10.04.2014 Kuznetsov S.M. Task 49002619703
  if BaseFuncAccess('PRECALC.DATECALC.U') = 1 then begin
  //if Has Role('А0') then begin
    edDATECALC.ReadOnly := false;
    edDATECALC.Color := clWindow;
  end;
  fAgrPFireKommersant := 0;
end;

procedure TfmPreCalc.qrPreCalcCLAfterOpen(DataSet: TDataSet);
begin
  inherited;
  cbLimit.Enabled :=  qrPreCalcClLiabExists.Value = 1;
  //09.10.2014 Соболев А.В. Задача 71885235403 Реализация в котировках Новые тарифы ОСАГО
  cbFollowToPlaceOfReg.Enabled := qrPreCalcCLSBJCITYISN.Value <> 6;
  DFields:=qrPreCalcCLDISABLEDFIELDS.AsString;
  RFields:=qrPreCalcCLREADONLYFIELDS.AsString;
  SetControlRO(gbLiab, Pos(';LIABEXISTS;', UpperCase(RFields))>0);
  EnableGroup(dbcLiab, Pos(';LIABEXISTS;', UpperCase(DFields))=0);
end;

// Dmitry_Privalov 30.05.2008
procedure TfmPreCalc.dbcLiabClick(Sender: TObject);
begin
  inherited;
  cbLimit.Enabled :=  dbcLiab.Checked;

  if dbcLiab.Checked then begin
    if cbLimit.Items.Count = 0 then
      cbLimitDropDown(cbLimit);
    if (qrPreCalcCLLimitSumLiab.Value = 0) and (qrPreCalcCL.State in [dsEdit]) then
      qrPreCalcCLLimitSumLiab.Value := StrToFloat(cbLimit.Items[0]);
  end;

end;

procedure TfmPreCalc.qrPreCalcParamAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  DSAfterApplyUpdates(Sender, OwnerData);

   // Dmitry_Privalov/epam 12.02.2008
  // При изменении параметров ТС изменяются параметры КАСКО, поэтому необходимо обновление
  if (qrPreCalcParam.FieldByName('ClassIsn').AsFloat = tp_CarCost) or
     (qrPreCalcParam.FieldByName('ClassIsn').AsFloat = tp_CarCostCurrIsn) or
     (qrPreCalcParam.FieldByName('ClassIsn').AsFloat = tp_AgrRuleItemsISN) or
     (qrPreCalcParam.FieldByName('ClassIsn').AsFloat = tp_CarDateRun) or
      (qrPreCalcParam.FieldByName('DataType').AsString = 'F')
      //22.10.2013 Соболев А.В. Задача 54197556703 Реализация: Добавление поля «Продление договора страхования» в котировку
      or (qrPreCalcParam.FieldByName('ClassIsn').AsFloat = tp_AgrPrevIsn)
      or (qrPreCalcParam.FieldByName('ClassIsn').AsFloat = tp_RelatedAgrIsn) //Shikov
      //03.12.2013 Соболев А.В. Задача 56275847903 Реализация котировок: 1.2 Приказ 463 (Шины-Диски)
      or (qrPreCalcParam.FieldByName('ClassIsn').AsFloat = tp_AgrPeriodM)
      // 07.03.2017 заболотный 95491578503
      or  (qrPreCalcParam.FieldByName('ClassIsn').AsFloat = TP_MULTI)
     then

   QueryRefresh(qrPreCalcParam1);
end;

procedure TfmPreCalc.qrPreCalcParam1AfterOpen(DataSet: TDataSet);
begin
  //if DataSet.FieldByName('DataType').AsString='V' then
  //  FCurrentCurrIsn := DataSet.FieldByName('Val').AsVariant;
  if (DataSet.Locate('ClassISN', tp_CurrISN, [])) then
    FCurrentCurrIsn := DataSet.FieldByName('Val').AsVariant
  else
    FCurrentCurrIsn := qrPreCalcHeadCurrISN.AsFloat;
end;

procedure TfmPreCalc.qrPreCalcParam1AfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  DSAfterApplyUpdates(Sender, OwnerData);

  if (qrPreCalcParam1.FieldByName('ClassIsn').AsFloat = tp_LimitSum)
  //21.04.2014 Golodnyuk task 64533086103
  or (qrPreCalcParam1.FieldByName('ClassIsn').AsFloat = tp_TotalLoss)
   then
    QueryRefresh(qrPreCalcParam);
end;

procedure TfmPreCalc.CheckCalcTestAccess;
begin
  cbTestCalc.Checked:=false;
  cbTestCalc.Visible:=false;

  cbTestCalc.Visible:=ProtectFuncAccess('Agr.Calc.Test');
  ControlsCalcTest;

end;

procedure TfmPreCalc.ControlsCalcTest;
begin
  if cbTestCalc.Checked then
   begin
     grPreCalcPrem.Color:=clSkyBlue;
   end
  else
   begin
     grPreCalcPrem.Color:=clInfoBk;
   end;

end;

function TfmPreCalc.ProtectFuncAccess(sName: WideString): boolean;
begin
  result:=false;
  if trim(sName)='' then exit;

  With cdsProtectFunc do begin
    close;
    ParamByName('pFuncName').AsString:=sName;
    ParamByName('pUserISN').AsFloat:=User.ISN;


    if Assigned(Params.FindParam('Result')) then
      Params.RemoveParam(ParamByName('Result'));
    Open;
    result:=(FieldByName('Rs').AsFloat>0);
  end; // With cdsProtectFunc
end;

procedure TfmPreCalc.g_CascoColEnter(Sender: TObject);
var pGrid: TDbGrid;
begin
  pGrid := (Sender as TDbGrid);
  SetPopupMenuForField(TDbGrid(Sender));
  with pGrid do
  begin
   if (SelectedField.FieldName = 'VisField') or ((qrPreCalcHeadStatus.AsString <> 'М') and
       ((SelectedField.FieldName = 'PARNAME') or ((SelectedField.FieldName = 'VALNAME') and (DataSource.DataSet.FieldByName('IsReadOnly').AsFloat = 1))))
   then
     Options:=Options-[dgEditing]
   else
     Options:=Options+[dgEditing];
  end;
end;

procedure TfmPreCalc.SetPopupMenuForField(pGrid: TDBGrid);
var
   DataSet: TDataSet;
   //ppm    : TPopupMenu;
   ShowCalculator: boolean;
begin
  DataSet := pGrid.DataSource.DataSet;
  //28.08.2015 Соболев А.В. Задача 76596909803 Реализация: Калькулятор по оценке имущества Предстраховая экспертиза (Платинум) в АИС
  ShowCalculator := false;
  //ShowCalculator := (pGrid.Tag = 1) and ((qrPreCalcHeadRuleISN.AsFloat = p_AGRPFIRECLASSIC2014) or (qrPreCalcHeadRuleISN.AsFloat = p_AgrCalcFIREDKS));
  if (pGrid.SelectedField.FieldName = 'VALNAME') then
  begin
    // На группах подключаем контекстное меню групп, а на отдельных полях - их допустимые значения
    if DataSet.FieldByName('AllowValue').IsNull and (DataSet.FieldByName('classisn').AsFloat <> tp_FranchSum) then
    begin
//      pGrid.PopupMenu:=pmAddGroup;
//        g_Casco1.PopupMenu:= ppm;
{
      // выбор меню
      if DataSet.FieldByName('GroupID').AsFloat = 99 then
        ppm := pmMVC
      else
        ppm := pmAddGroup;

      // Разрешение контекстного меню
      if DataSet.FieldByName('AddGroup').AsFloat=0 then
         ppm.AutoPopup:=false
      else
         ppm.AutoPopup:=true;
}

      if DataSet.FieldByName('AddGroup').AsFloat=0 then
      begin
         pGrid.PopupMenu := nil;
         //28.08.2015 Соболев А.В. Задача 76596909803 Реализация: Калькулятор по оценке имущества Предстраховая экспертиза (Платинум) в АИС
         if ShowCalculator then
         begin
           pGrid.PopupMenu := pmCalculator;
           pmCalculator.AutoPopup := true;
         end;
      end
      else
        if DataSet.FieldByName('GroupID').AsFloat = 99 then
        begin
           pGrid.PopupMenu := pmMVC;
           pmMVC.AutoPopup := true;
        end
        else
        begin
         //28.08.2015 Соболев А.В. Задача 76596909803 Реализация: Калькулятор по оценке имущества Предстраховая экспертиза (Платинум) в АИС
         if ShowCalculator then
         begin
           pGrid.PopupMenu := pmCalculator;
           pmCalculator.AutoPopup := true;
         end else begin
           pGrid.PopupMenu := pmAddGroup;
           pmAddGroup.AutoPopup := true;
         end;
        end;
    end
    else
      begin
        CreateAllowValue(DataSet);
        pmAllowValue.AutoPopup := true;
        pGrid.PopupMenu:=pmAllowValue;
      end;
  end {else begin
    if CanAddInvisibleField then begin
      pmAddInvisibleFields.AutoPopup := true;
      pGrid.PopupMenu := pmAddInvisibleFields;
    end} else begin
      //pmAddInvisibleFields.AutoPopup := false;
      pmAllowValue.AutoPopup := false;
      pmAddGroup.AutoPopup := false;
      pmMVC.AutoPopup := false;
      //28.08.2015 Соболев А.В. Задача 76596909803 Реализация: Калькулятор по оценке имущества Предстраховая экспертиза (Платинум) в АИС
      if ShowCalculator then
      begin
        pGrid.PopupMenu := pmCalculator;
        pmCalculator.AutoPopup := true;
      end;
    //end;
  end;
{  if vIsKotDKB and (pGrid = g_Casco1) then
      begin
        FillPreCalcGroupMenu;
        pmPreCalcGroup.AutoPopup := True;
        pGrid.PopupMenu := pmPreCalcGroup;
      end;}
end;

procedure TfmPreCalc.cbModeChange(Sender: TObject);
begin
  with (Sender as TComboBox) do begin
    if Mode <> ItemIndex then begin
      Filter;
      Mode := ItemIndex;
      CheckDSBrowseMode(qrPreCalcHead);
      CheckDSBrowseMode(qrPreCalcParam);
      CheckDSBrowseMode(qrPreCalcParam1);
      CheckDSBrowseMode(qrPreCalcParamObj);
      CheckDSBrowseMode(cdsTerr);
      Param_ApplyUpdates;
      QueryRefresh(qrPreCalcParam);
      QueryRefresh(qrPreCalcParam1);
    end;
  end;
end;

procedure TfmPreCalc.mAddInvisibleClick(Sender: TObject);
var
  vStatus :string;
  vGroupId, vNo : Double;
  vCursor : TCursor;
begin
  if CanAddInvisibleField then begin
    vCursor := Screen.Cursor;
    Screen.Cursor:=crHourGlass;

    if TMenuItem(Sender).Name='mDeleteInvisible' then
      vStatus := 'D'
    else
      vStatus := 'I';

    if g_Casco.Focused then begin
      vGroupId := g_Casco.DataSource.DataSet.FieldByName('GROUPID').AsFloat;
      vNo := g_Casco.DataSource.DataSet.FieldByName('NO').AsFloat;
    end else begin
      vGroupId := g_Casco1.DataSource.DataSet.FieldByName('GROUPID').AsFloat;
      vNo := g_Casco1.DataSource.DataSet.FieldByName('NO').AsFloat;
    end;

    try
      FCon.AppServer.UpdateInvisibleField(User.ISN, vStatus, qrPreCalcHeadRULEISN.AsFloat, vGroupId, vNo, qrPreCalcHeadIsn.AsFloat);
      Param_ApplyUpdates;
      QueryRefresh(qrPreCalcParam);
      QueryRefresh(qrPreCalcParam1);
    finally
      Screen.Cursor:=vCursor;
    end;
  end;
end;

procedure TfmPreCalc.tbnCopyCalcClick(Sender: TObject);
var
  NewIsn: Double;
begin
  inherited;
  // Yankovsky/EPAM
  Screen.Cursor := crHourGlass;
  try
    FCon.AppServer.CopyCalc(qrPreCalcHeadISN.AsFloat, NewIsn);
    ISN := NewIsn;
    FormShow(nil);
  finally
    Screen.Cursor := crDefault;
  end;

  ShowMessage('Котировка скопирована успешно.');
end;

procedure TfmPreCalc.tbnQueueClick(Sender: TObject);
var
  V :variant;
begin
  inherited;
  if BigAIS then
    V:=VarArrayOf([0, 'TfmObjQuery', 'S', 'TheIsn', qrPreCalcHeadISN.AsString{FISN}, 'S', 'Paramstr',
                  {qrAgrID.asString} qrPreCalcHeadID.AsString +',' + FloatToStr(tp_fmPreCalc){qrAgrFORMISN.AsString}+','+'43862516'+','+
                   '0'{ qrCondSUBJISN.AsString}+','
                  ])
  else
    V:=VarArrayOf([23, qrPreCalcHeadISN.AsFloat, tp_fmPreCalc, qrPreCalcHeadID.AsString{FISN,qrAgrFORMISN.AsFloat,qrAgrID.AsString}]);
  FIMain.AnyCall(V);
  if V[0]=NULL then begin ShowBDEError(Self, V[1]); Exit; end;
end;

procedure TfmPreCalc.tbnConvertCalcClick(Sender: TObject);
var
  NewIsn: Double;
begin
  inherited;
 // Dmitry_Privalov/epam 04.06.08 tasc 5769156003
 // если второе окно уже открыто, то просто перейти к нему
 // или от него к родительскому
  if Assigned(fmPreCalc2) then
   if (Handle = fmPreCalc2.Handle) then
     begin
      TfmPreCalc(Owner).Show;
      exit
     end
   else
     begin
      fmPreCalc2.Show;
      exit
     end;

  // Yankovsky/EPAM
  Screen.Cursor := crHourGlass;
  try
    // Dmitry_Privalov/epam 04.06.2008 tasc 5769156003
    // Конвертируемая форма открывается не модально
    if not Assigned(fmPreCalc2) then fmPreCalc2 := TfmPreCalc.CreateEx(Self, FIMain, FCon);

    FCon.AppServer.ConvertCalc(qrPreCalcHeadISN.AsFloat, NewIsn);

    fmPreCalc2.ISN := NewIsn;
    fmPreCalc2.Show;
    fmPreCalc2.FormShow(nil);

  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmPreCalc.sbPackDocClick(Sender: TObject);
const p_PackDoc_Agr = 985724525;
var V :Variant;
begin
 If BigAis then
  begin
    V:=VarArrayOf([33, qrPreCalcHeadISN.AsFloat, p_PackDoc_Agr]);
    FIMain.AnyCall(V);
  end
 Else
  begin
    V:=VarArrayOf([12, qrPreCalcHeadISN.AsFloat, p_PackDoc_Agr]);
    FIMain.AnyCall(V);
    if V[0]=NULL then ShowBDEError(Self, V[1]);
  end;
end;

function TfmPreCalc.GetParamBySpecQuery(pRoot: Double; var pIsn: double; var pRes: variant): boolean;
var
 fn: Integer;
begin
  AppServerImp.SetListParamPreCalc(-505050, qrPreCalcHeadIsn.AsFloat, qrPreCalcHeadRULEISN.AsFloat, qrPreCalcParamObjCLASSISN.AsFloat, qrPreCalcParam1GROUPID.AsFloat);

  if (    (qrPreCalcHeadRuleISN.AsFloat = p_AGRPFIRECLASSICN)
       or (qrPreCalcHeadRuleISN.AsFloat = p_AGRPFIRECLASSIC2014)) //20.05.2014 Kuznetsov S.M. Task 65600959303
     and (qrPreCalcParamObjCLASSISN.AsFloat=p_OBJPROPERTYANDEQUIP)
   then fn:=56 else fn:=55;
  if (FIMain.Wood2(pRoot, PISN, fn, pRes, FALSE, TRUE, FALSE)) then
    result := true
  else
    result := false;
end;

procedure TfmPreCalc.ShowMessageWarn(V: variant);
var i:integer;
begin
  for i := 1 to VarArrayHighBound(V, 1) div 2 do
  begin
    Application.MessageBox(PAnsiChar(String(V[2* (i - 1) + 1])),
                           PChar(Application.Title),
                           StrToIntDef(V[2* (i - 1) + 2], 0));
   end;
end;

procedure TfmPreCalc.edClientSourceBtnClick(Sender: TObject);
{var
  V: variant;
  PISN: double;}
begin
  //04.04.2016 Соболев А.В. Задача 98473667503 FW: Задача: Обеспечить единый справочник источников привлечения клиентов в формуляре котировки и в ф
  {PISN:=0;
  V:=VarArrayOf([FALSE, 0, 2]);
  if (FIMain.Wood2(0, PISN, 331, V, FALSE, TRUE, FALSE, 'Источник рекламы', FALSE)) then
  begin
    CheckDSEditMode(qrPreCalcHead);
    qrPreCalcHeadClientsSourceISN.Value:=PISN;
    qrPreCalcHeadClientsSourceName.Value:=V[0];
  end;}
  //CheckDSEditMode(qrPreCalcHead);
  ChooseWood(qrPreCalcHeadClientsSourceISN, qrPreCalcHeadClientsSourceName, 1447913703, true, false, true);
end;

procedure TfmPreCalc.edClientSourceKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key=VK_DELETE then
  begin
    CheckDSEditMode(qrPreCalcHead);
    qrPreCalcHeadClientsSourceISN.Clear;
    qrPreCalcHeadClientsSourceName.Clear;
  end;
end;

procedure TfmPreCalc.SetControlsAccess(DS :TDataSource; C :TWinControl; DFields, RFields :string);
var
 PropInfo :PPropInfo;
 i :Integer;
// j :Integer;
 DataField :string;
 DataSource :TObject;
// a :TDBGrid;
begin
  if not(C.Enabled) then Exit;
  for i:=0 to C.ControlCount-1 do begin
    if (C.Controls[i] is TGroupBox) then SetControlsAccess(DS, TWinControl(C.Controls[i]), DFields, RFields);
    // 12.11.2011 Мерзляков М. М. задача 19322137103
    // возможность закрыть весь грид по наименованию
    if (C.Controls[i] is TDBGrid) then
    begin
      EnableControl(C.Controls[i], Pos(';'+LowerCase(C.Controls[i].Name)+';', LowerCase(DFields))=0);
      SetControlRO(C.Controls[i], Pos(';'+LowerCase(C.Controls[i].Name)+';', LowerCase(RFields))>0);
    end;
    PropInfo:=GetPropInfo(C.Controls[i].ClassInfo, 'DataSource');
    if PropInfo=nil then Continue;
    DataSource:=GetObjectProp(C.Controls[i], PropInfo, TDataSource);
    if DataSource<>DS then Continue;
    PropInfo:=GetPropInfo(C.Controls[i].ClassInfo, 'DataField');
    if PropInfo=nil then Continue;
    DataField:=GetStrProp(C.Controls[i], PropInfo);

    EnableControl(C.Controls[i], Pos(';'+LowerCase(DataField)+';', LowerCase(DFields))=0);
    SetControlRO(C.Controls[i], Pos(';'+LowerCase(DataField)+';', LowerCase(RFields))>0);
  end;
end;

procedure TfmPreCalc.g_CascoObjEditButtonClick(Sender: TObject);
begin
  inherited;
   with TDbGrid(Sender) do begin
    if (SelectedField = DataSource.DataSet.FieldByName('ParName'))
     then ChooseWoodObj(qrPreCalcParamObjCLASSISN, qrPreCalcParamObjPARNAME, qrPreCalcHeadRuleISN.AsFloat);
  end;
end;

procedure TfmPreCalc.dbgTerrCellClick(Column: TColumn);
var
 vMark2:TBookmark;
begin
  inherited;
  if not fTerrInsert then
   begin
//    ShowMessage('Click');
    vMark2:=cdsTerr.GetBookmark;
    Filter; //отображние параметров выбранной территории
    cdsTerr.GotoBookmark(vMark2);
   end;
end;

procedure TfmPreCalc.g_CascoObjCellClick(Column: TColumn);
var
 vMark:TBookmark;
begin
  inherited;
  if not fObjInsert then //при вставке нового объекта обновление фильтра делать не надо
   begin
    vMark:=qrPreCalcParamObj.GetBookmark;
//    vMark2:=cdsTerr.GetBookmark;
    Filter; //отображние параметров выбранного объекта
    qrPreCalcParamObj.GotoBookmark(vMark);
//    cdsTerr.GotoBookmark(vMark2);
   end;

  if ( //для этих продуктов объекты не добавляются и не удаляются
      (qrPreCalcHeadRuleISN.AsFloat=3089065903)
       or (qrPreCalcHeadRuleISN.AsFloat=1401842003)
        or (qrPreCalcHeadRuleISN.AsFloat=3399232003)
        or (qrPreCalcHeadRuleISN.AsFloat=4156694903)
     )
  then begin
   TDBNavigatorEx(nvData).EnableButton(nbFirst, FALSE);
   TDBNavigatorEx(nvData).EnableButton(nbPrior, FALSE);
   TDBNavigatorEx(nvData).EnableButton(nbNext, FALSE);
   TDBNavigatorEx(nvData).EnableButton(nbLast, FALSE);
   TDBNavigatorEx(nvData).EnableButton(nbInsert, FALSE);
   TDBNavigatorEx(nvData).EnableButton(nbDelete, FALSE);
   TDBNavigatorEx(nvData).EnableButton(nbEdit, FALSE);
   TDBNavigatorEx(nvData).EnableButton(nbPost, FALSE);
   TDBNavigatorEx(nvData).EnableButton(nbCancel, FALSE);
   TDBNavigatorEx(nvData).EnableButton(nbRefresh, FALSE);
  end;
end;

procedure TfmPreCalc.qrPreCalcParamAfterRefresh(DataSet: TDataSet);
begin
  inherited;
  if ((qrPreCalcHeadRuleISN.AsFloat=p_AGRFREEHOUSESTRUCTUREN)
       or (qrPreCalcHeadRuleISN.AsFloat=p_AGRMOBILE)) //01.10.2013 Kuznetsov S.M. Task 50847003403
      and (qrPreCalcParamCLASSISN.AsFloat=2593782203) then
    begin
     qrPreCalcParam1.Close; qrPreCalcParam1.Open;
    end;
end;

procedure TfmPreCalc.qrPreCalcParamObjAfterRefresh(DataSet: TDataSet);
begin
  inherited;
  if (qrPreCalcHeadRuleISN.AsFloat <> p_AGRMOTORWIZARD) then
  begin
    qrPreCalcParam.Close; qrPreCalcParam.Open;
    qrPreCalcParam1.Close; qrPreCalcParam1.Open;
  end;
  qrPreCalcParamObj.Last;
  cdsTerr.Last;
  Filter; //отображние параметров вставленного объекта
  qrPreCalcParamObj.Last;
  cdsTerr.Last;
end;

procedure TfmPreCalc.Filter;
 var
  aObjIsn : Double;
  fStr, filterStr: String;
begin
  aObjISN := 0;

  if vIsKotDKB then
  begin
    aObjIsn := cdsTerr.FieldByName('Isn').AsFloat;
    if cdsTerr.FieldByName('ValName').AsString = 'Территория страхования №1' then
      filterStr := ' and ParentIsn is null'
    else
      filterStr := ' and ParentIsn = '+FloatToStr(aObjIsn);
  end
  else
  begin
    if (qrPreCalcHeadRuleISN.AsFloat <> p_AGRMOTORWIZARD) then
    begin
      aObjIsn:=qrPreCalcParamObj.FieldByName('Isn').AsFloat;
      filterStr := ' and (ParentIsn='+FloatToStr(aObjIsn)+' or ParentIsn=0)';
    end
    else
      filterStr := ' and 1=1';
  end;
  fStr:=FloatToStr(aObjIsn);
 // ShowMessage(fStr);
  if cbMode.ItemIndex = 1 then begin
   qrPreCalcParam.Filter := 'GROUPID <= 100 and GROUPID > 0' + filterStr;// and (ParentIsn='+FloatToStr(aObjIsn)+' or ParentIsn=0)';
   qrPreCalcParam1.Filter := 'GROUPID > 100 ' + filterStr;//and (ParentIsn='+FloatToStr(aObjIsn)+' or ParentIsn=0)';
   qrPreCalcParamObj.Filter := 'GROUPID =-1';
//   cdsTerr.Filter := 'GROUPID = -10';
  end else begin
   qrPreCalcParam.Filter := 'GROUPID <= 100 and GROUPID > 0 and VisField = 1 ' + filterStr;//and (ParentIsn='+FloatToStr(aObjIsn)+' or ParentIsn=0)';
   qrPreCalcParam1.Filter := 'GROUPID > 100 and VisField = 1 ' + filterStr;//and (ParentIsn='+FloatToStr(aObjIsn)+' or ParentIsn=0)';
   qrPreCalcParamObj.Filter := 'GROUPID =-1 and VisField = 1';
//   cdsTerr.Filter := 'GROUPID = -10 and VisField = 1';
  end;
  if ((fMulti or vIsKotDKB) and (aObjIsn<>0) and (qrPreCalcHeadRuleISN.AsFloat <> p_AGRMOTORWIZARD)) then
    qrPreCalcPrem.Filter := 'ParentIsn='+FloatToStr(aObjIsn);
end;

procedure TfmPreCalc.g_CascoObjMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if ( //для этих продуктов объекты не добавляются и не удаляются
      (qrPreCalcHeadRuleISN.AsFloat=3089065903)
       or (qrPreCalcHeadRuleISN.AsFloat=1401842003)
     )
  then begin
   TDBNavigatorEx(nvData).EnableButton(nbFirst, FALSE);
   TDBNavigatorEx(nvData).EnableButton(nbPrior, FALSE);
   TDBNavigatorEx(nvData).EnableButton(nbNext, FALSE);
   TDBNavigatorEx(nvData).EnableButton(nbLast, FALSE);
   TDBNavigatorEx(nvData).EnableButton(nbInsert, FALSE);
   TDBNavigatorEx(nvData).EnableButton(nbDelete, FALSE);
   TDBNavigatorEx(nvData).EnableButton(nbEdit, FALSE);
   TDBNavigatorEx(nvData).EnableButton(nbPost, FALSE);
   TDBNavigatorEx(nvData).EnableButton(nbCancel, FALSE);
   TDBNavigatorEx(nvData).EnableButton(nbRefresh, FALSE);
  end;
end;

procedure TfmPreCalc.ChooseWoodObj(F_ISN, F_Name: TField;
                         pRoot: Double;
                         ChildOK :Boolean=TRUE;
                         ShowDeptPanel :Boolean=FALSE;
                         ShowFullNameAsHint :Boolean=FALSE;
                         pNameNum :integer=0;
                         pFilterISN :double=0;
                         DisableLine : String = '' //Строка с ISN-ми которые нужно заблокировать
                         );
var
  T_ISN: double;
  V :Variant;
begin
  T_ISN:=F_ISN.AsFloat;
  V:=VarArrayOf([ShowDeptPanel, pFilterISN, null, null, ShowFullNameAsHint, DisableLine]);
// if not(FIMain.Wood2(qrPreCalcHeadRuleISN.AsFloat, T_ISN, 18, V, FALSE, TRUE, FALSE, '', FALSE)) then Exit;
  if not(FIMain.Wood2(pRoot, T_ISN, 18, V, FALSE, TRUE, FALSE, '', FALSE)) then Exit;
  if not(F_ISN.DataSet.CanModify) then Exit;
  if T_ISN=F_ISN.AsFloat then Exit;
  CheckDSEditMode(F_ISN.DataSet);
  F_ISN.AsFloat:=T_ISN;
  if Assigned(F_Name) then
    F_Name.AsString:=V[pNameNum]; //S
  T_ISN:=  T_ISN;    
end;

procedure TfmPreCalc.SaveQuote;
var
  FileName         : string;
  FileISN, ImageISN: double;
  intfPackDoc      : IPackDocClient;

  Word             : Variant;
  SaveChanges      : OleVariant;

  CurISN           : double;
  IsAuto           : boolean;
begin
  // 14.07.2017 Kuznetsov S.M. Task 150725236003
  if ProtectFuncAccess('PRECALC.PRINT') then
    Exit;

  // 23.08.2013 Kuznetsov S.M. Task 50424285603. Только для добровольного автострахования и имущества
  if (qrPreCalcHeadRuleISN.AsFloat = p_AgrMotorCompulsory) or
     // Зеленая карта
     (qrPreCalcHeadRuleISN.AsFloat =   28005516) or
     (qrPreCalcHeadRuleISN.AsFloat =   36551416) or
     (qrPreCalcHeadRuleISN.AsFloat =  690865116) or
     (qrPreCalcHeadRuleISN.AsFloat = 1308816803) or
     (qrPreCalcHeadRuleISN.AsFloat = 2548900903) or
     (qrPreCalcHeadRuleISN.AsFloat = 2548903403) then
    Exit;
  IsAuto := False;
  if qrPreCalcParam.Active then
  begin
    CurISN := qrPreCalcParamISN.AsFloat;
    try
      qrPreCalcParam.DisableControls;
      IsAuto := qrPreCalcParam.Locate('CLASSISN', 1582134303, []); // Параметры транспортного средства
      qrPreCalcParam.Locate('ISN', CurISN, []);
    finally
      qrPreCalcParam.EnableControls;
    end;
  end;
  if not IsAuto and
     (qrPreCalcHeadRuleISN.AsFloat <> 4156694903 ) and   // Freeдом (квартира)
     (qrPreCalcHeadRuleISN.AsFloat <> 4156748803 ) and   // Freeдом (строение)
     (qrPreCalcHeadRuleISN.AsFloat <> 4161361203 ) and   // Платинум
     (qrPreCalcHeadRuleISN.AsFloat <> p_AGRPFIRECLASSIC2014 ) and   // Платинум 2014 17.06.2014 Kuznetsov S.M. Task 65600959303
     (qrPreCalcHeadRuleISN.AsFloat <> p_AGRPFIREKOMMERSANT) and //2015-05-14 Конев В.А. [81634728503]: Ошибка при расчете котировки "Коммерсант"
     (qrPreCalcHeadRuleISN.AsFloat <> 4188377203 ) and   // Экспресс-квартира
     (qrPreCalcHeadRuleISN.AsFloat <> 4188379903 ) and   // Экспресс-строение
     (qrPreCalcHeadRuleISN.AsFloat <> 4188381803 ) and   // Отпускной
     (qrPreCalcHeadRuleISN.AsFloat <> 4169721103 ) and   // Экспресс ГО
     (qrPreCalcHeadRuleISN.AsFloat <> p_AGRMOBILE) then  // Мобильный 01.10.2013 Kuznetsov S.M. Task 50847003403
    Exit;

  if not(Assigned(MenuPrintDoc)) then
    begin
    	MenuPrintDoc := TMenuPrintDoc.Create(self);
    	MenuPrintDoc.SetAppl(Application.Handle, FIMain, Self);
     	MenuPrintDoc.FieldDocISN:= qrPreCalcHead.FieldByName('ISN');
    end;

  MenuPrintDoc.vPrintWord.GenerateEx(152603, qrPreCalcHeadISN.AsFloat, 0, '#WORD before: MinimizeWindow; ');

  if (intfPackDoc = nil) then
  begin
    intfPackDoc := CreateCOMObject(Class_PackDocClient) as IPackDocClient ;
    intfPackDoc.SetAppl(Application.Handle, FIMain);
  end;

  try
  	ImageISN := intfPackDoc.GetObjectDocLastImageISN(985724525, qrPreCalcHeadISN.AsFloat, 4195443803);

    FileName := AisGetTempFileName(intfPackDoc.GetPackDocDir(), 'Котировка', '.doc', false);

    if FileName<>'' then
      if ForceDirectories(ExtractFilePath(FileName)) then
        MenuPrintDoc.vPrintWord.SaveAsDocument(FileName)
       else
        ShowMessage('Ошибка при попытке сохранения результата расчета в файл');
    MenuPrintDoc.ClosePrintDoc;

    try
      Word := GetActiveOleObject('Word.Application');
      if Word.Documents.Count = 0 then
      begin
        SaveChanges := wdDoNotSaveChanges;
        Word.Quit(SaveChanges, EmptyParam, EmptyParam);
      end;
      Word := Unassigned;
    except
    end;

  	if FileExists(FileName) then
	  begin
	    FileISN := 0;
  	  intfPackDoc.PackDocInsertFile(
        FileISN,
        985724525,
		    qrPreCalcHeadISN.AsFloat,
  		  4195443803,
        '',
  		  Now,
  		  'Получен',
		    '',
        '',
        ImageISN,
        FileName,
        True);

      if FileExists(FileName) then
        DeleteFile(FileName);
    end;
    StateChange := False;
  finally
    intfPackDoc := nil;
  end;
end;

procedure TfmPreCalc.dsPreCalcParamStateChange(Sender: TObject);
begin
  inherited;
  StateChange := True;
end;

procedure TfmPreCalc.qrPreCalcParamObjAfterDelete(DataSet: TDataSet);
begin
  inherited;
  g_CascoObj.OnCellClick(nil);
end;

procedure TfmPreCalc.g_Casco1CellClick(Column: TColumn);
var pGrid: TDbGrid;
  vMark: TBookmark;
  //22.10.2013 Соболев А.В. Задача 54197556703 Реализация: Добавление поля «Продление договора страхования» в котировку
  const Msg5 ='#RUS Для изменения КБМ необходимо заполнить поля "Продление" и "Предыдущий договор (договор другого ТС)"';
begin
  inherited;
  pGrid := (Column.Grid as TDbGrid);
  with pGrid do
   //22.10.2013 Соболев А.В. Задача 54197556703 Реализация: Добавление поля «Продление договора страхования» в котировку
   if (SelectedField.FieldName = 'VALNAME') and (DataSource.DataSet.FieldByName('IsReadOnly').AsFloat = 1) and
      (DataSource.DataSet.FieldByName('CLASSISN').AsFloat = TP_BonusIsn) then
     MsgBoxOk(Msg5);

  if qrPreCalcHeadRuleISN.AsFloat=p_AGRMOTORWIZARD then
  begin
    vMark:=qrPreCalcParam1.GetBookmark;
    qrPreCalcParam1.GotoBookmark(vMark);
  end;

  with pGrid.DataSource.DataSet do
    if (qrPreCalcHeadRuleISN.AsFloat=p_AGRMOTORWIZARD) and (FieldByName('DATATYPE').AsString = 'B')
       and (qrPreCalcHeadStatus.AsString <> 'М') then
      FieldByName('PARNAME').FocusControl;

end;

procedure TfmPreCalc.mRunMVCClick(Sender: TObject);
var
  vMsg, vISN : Variant;
  vxmllog    : variant;
  //txt        : string;
  //Stream     : TFileStream;
begin
  inherited;
  //if SaveDialog.execute then
  try
    Screen.Cursor:=crHourGlass;
    Application.ProcessMessages;
    FCon.AppServer.PreCalcPrem(User.ISN, qrPreCalcHeadISN.AsFloat, -999, vMsg, vISN, 0,0, vxmllog);
    Application.ProcessMessages;
    {Stream:= TFileStream.Create(SaveDialog.FileName, fmCreate);
    try
      txt := vartostr(vxmllog);
      Stream.WriteBuffer(Pointer(txt)^, Length(txt));
    finally
      Stream.Free;
    end;}
    //MessageDlg('Расчет завершен. Результаты сохранены в файл.',mtInformation	,[mbOK],0);
    MessageDlg('Расчет запущен. Ожидайте результат по email.',mtInformation	,[mbOK],0);
  finally
    Screen.Cursor:=crDefault;
  end;
end;

procedure TfmPreCalc.mSetMVCCalcClick(Sender: TObject);
var
   vISN : double;
   v    : variant;
   vCount,i   : integer;
begin
  inherited;
  if FIMain.Wood2(28763316, vISN, 351, V, false, true, true, 'Выбор филиалов', true) then
  begin
       qrPreCalcParam.BeforeInsert:=nil;
       qrPreCalcParam.BeforeDelete:=nil;//DSBeforeDelete;
       qrPreCalcParam.DisableControls;
       g_Casco.Options := g_Casco.Options - [dgConfirmDelete];
       try
         // удалим все старые модели
         //while qrPreCalcParam.locate('GROUPID;CLASSISN',VarArrayOf([99,2552212703]),[])  do qrPreCalcParam.delete;
         // добавим новые
         if VarIsArray(v) then
         begin
           vCount := VarArrayHighBound(v, 1);
           for i:= 0 to vCount do
           begin
             qrPreCalcParam.insert;
             qrPreCalcParamCLASSISN.value := 2552212703;
             qrPreCalcParamGROUPID.value := 99;
             qrPreCalcParamNO.value := 1000+i;
             qrPreCalcParamVAL.value := v[i][0];
             qrPreCalcParamAGRISN.value := qrPreCalcHeadAgrISN.value;
           end;
         end;

         //Param_ApplyUpdates;
         DSAfterPost(qrPreCalcParam);
       finally
         qrPreCalcParam.BeforeInsert:=AbortAction;
         qrPreCalcParam.BeforeDelete:=AbortAction;
         g_Casco.Options := g_Casco.Options + [dgConfirmDelete];
         qrPreCalcParam.EnableControls;
       end;
  end;
end;
{
var
  fMultiVariant: TfMultiVariant;
  vCount,i   : integer;
begin
  inherited;
  fMultiVariant := TfMultiVariant.CreateEx(self,FIMain,FCon);
  try
    fMultiVariant.showmodal;
    if fMultiVariant.ModalResult= mrOk then
    begin
       qrPreCalcParam.BeforeInsert:=nil;
       qrPreCalcParam.BeforeDelete:=nil;//DSBeforeDelete;
       qrPreCalcParam.DisableControls;
       g_Casco.Options := g_Casco.Options - [dgConfirmDelete];
       try
         // удалим все старые модели
         while qrPreCalcParam.locate('GROUPID;CLASSISN',VarArrayOf([99,1582136203]),[])  do
         begin
            qrPreCalcParam.delete;
         end;
         // добавим новые
         if VarIsArray(fMultiVariant.vModelList) then
         begin
           vCount := VarArrayHighBound(fMultiVariant.vModelList, 1);
           for i:= 0 to vCount do
           begin
             qrPreCalcParam.insert;
             qrPreCalcParamCLASSISN.value := 1582136203;
             qrPreCalcParamGROUPID.value := 99;
             qrPreCalcParamNO.value := 10+i;
             qrPreCalcParamVAL.value := fMultiVariant.vModelList[i];
             qrPreCalcParamAGRISN.value := qrPreCalcHeadAgrISN.value;
           end;
         end;

         // удалим все старые филиалы
         while qrPreCalcParam.locate('GROUPID;CLASSISN',VarArrayOf([99,2552212703]),[])  do
         begin
            qrPreCalcParam.delete;
         end;
         // добавим новые филиалы
         if VarIsArray(fMultiVariant.vFilialList) then
         begin
           vCount := VarArrayHighBound(fMultiVariant.vFilialList, 1);
           for i:= 0 to vCount do
           begin
             qrPreCalcParam.insert;
             qrPreCalcParamCLASSISN.value := 2552212703;
             qrPreCalcParamGROUPID.value := 99;
             qrPreCalcParamNO.value := 1000+i;
             qrPreCalcParamVAL.value := fMultiVariant.vFilialList[i];
             qrPreCalcParamAGRISN.value := qrPreCalcHeadAgrISN.value;
           end;
         end;
         Param_ApplyUpdates;
       finally
         qrPreCalcParam.BeforeInsert:=AbortAction;
         qrPreCalcParam.BeforeDelete:=AbortAction;
         g_Casco.Options := g_Casco.Options + [dgConfirmDelete];
         qrPreCalcParam.EnableControls;
       end;
    end;
  finally
    fMultiVariant.Free;
  end;
end;
}

procedure TfmPreCalc.miMVCSetModifClick(Sender: TObject);
var
   vISN : double;
   v    : variant;
   vCount,i   : integer;
begin
  inherited;
  if FIMain.Wood2(8244, vISN, 350, V, false, true, true, 'Выбор моделей ТС', true) then
  begin
       qrPreCalcParam.BeforeInsert:=nil;
       qrPreCalcParam.BeforeDelete:=nil;//DSBeforeDelete;
       qrPreCalcParam.DisableControls;
       g_Casco.Options := g_Casco.Options - [dgConfirmDelete];
       try
         // удалим все старые модели
         {while qrPreCalcParam.locate('GROUPID;CLASSISN',VarArrayOf([99,1582136203]),[])  do
         begin
            qrPreCalcParam.delete;
         end;}
         // добавим новые
         if VarIsArray(v) then
         begin
           vCount := VarArrayHighBound(v, 1);
           for i:= 0 to vCount do
           begin
             qrPreCalcParam.insert;
             qrPreCalcParamCLASSISN.value := 1582136203;
             qrPreCalcParamGROUPID.value := 99;
             qrPreCalcParamNO.value := 10+i;
             qrPreCalcParamVAL.value := v[i];
             qrPreCalcParamAGRISN.value := qrPreCalcHeadAgrISN.value;
             DSAfterPost(qrPreCalcParam);
           end;
         end;

         //Param_ApplyUpdates;
         //DSAfterPost(qrPreCalcParam);
       finally
         qrPreCalcParam.BeforeInsert:=AbortAction;
         qrPreCalcParam.BeforeDelete:=AbortAction;
         g_Casco.Options := g_Casco.Options + [dgConfirmDelete];
         qrPreCalcParam.EnableControls;
       end;
  end;
end;

procedure TfmPreCalc.pmMVCPopup(Sender: TObject);
begin
  inherited;
  miMVCSetFilial.Enabled := qrPreCalcHeadRuleIsn.value = p_AgrMotorR0;
end;

procedure TfmPreCalc.miMVCDelFilialClick(Sender: TObject);
begin
  inherited;
  qrPreCalcParam.BeforeInsert:=nil;
  qrPreCalcParam.BeforeDelete:=nil;//DSBeforeDelete;
  qrPreCalcParam.DisableControls;
  g_Casco.Options := g_Casco.Options - [dgConfirmDelete];
  try
    while qrPreCalcParam.locate('GROUPID;CLASSISN',VarArrayOf([99,2552212703]),[]) do
      qrPreCalcParam.delete;
    DSAfterPost(qrPreCalcParam);
  finally
    qrPreCalcParam.BeforeInsert:=AbortAction;
    qrPreCalcParam.BeforeDelete:=AbortAction;
    g_Casco.Options := g_Casco.Options + [dgConfirmDelete];
    qrPreCalcParam.EnableControls;
  end;
end;

procedure TfmPreCalc.miMVCDelModifClick(Sender: TObject);
begin
  inherited;
  qrPreCalcParam.BeforeInsert:=nil;
  qrPreCalcParam.BeforeDelete:=nil;//DSBeforeDelete;
  qrPreCalcParam.DisableControls;
  g_Casco.Options := g_Casco.Options - [dgConfirmDelete];
  try
    while qrPreCalcParam.locate('GROUPID;CLASSISN',VarArrayOf([99,1582136203]),[])  do
    begin
      qrPreCalcParam.delete;
      DSAfterPost(qrPreCalcParam);
    end;
  finally
    qrPreCalcParam.BeforeInsert:=AbortAction;
    qrPreCalcParam.BeforeDelete:=AbortAction;
    g_Casco.Options := g_Casco.Options + [dgConfirmDelete];
    qrPreCalcParam.EnableControls;
  end;
end;

procedure TfmPreCalc.g_CascoObjDrawColumnCell(Sender: TObject;
          const Rect: TRect; DataCol: Integer; Column: TColumn;
          State: TGridDrawState);
var i: integer;
  r: trect;
  PicIndex :Integer;
begin
  inherited;
  if (qrPreCalcHeadRuleISN.AsFloat=p_AGRMOTORWIZARD) then
  begin
    if ((State = []) or (State=[gdSelected])) then begin
      // ReadOnly
      if (TDBGrid(Sender).DataSource.DataSet.FieldByName('NO').AsFloat=0)
          //(TDBGrid(Sender).DataSource.DataSet.FieldByName('ClassISN').AsFloat<>p_RiskClassISN) and
         //  (TDBGrid(Sender).DataSource.DataSet.FieldByName('ClassISN').AsFloat<>p_RiskRuleISN)
                                                                        then
        //BGR
          TDBGrid(Sender).Canvas.Brush.Color := $0062DBCF; //clInfoBk;
      // Be add Group
      if TDBGrid(Sender).DataSource.DataSet.FieldByName('AddGroup').AsFloat=1 then
          TDBGrid(Sender).Canvas.Brush.Color := $0088C6E3; //clOlive;
      if (Column.FieldName='VALNAME')
         and (TDbGrid(Sender).DataSource.DataSet.FieldByName('IsReadOnly').AsFloat = 1)
      then
        TDBGrid(Sender).Canvas.Brush.Color := clInfoBk;
    end;
    if (Column.FieldName='VALNAME')
      and (TDbGrid(Sender).DataSource.DataSet.FieldByName('DATATYPE').AsString='B')
    then
      with TDBGrid (Sender).Canvas do begin
        FillRect(Rect);
        R := Rect; InflateRect(R, 0, -2);
        I :=DFCS_BUTTONCHECK;
        if TDbGrid(Sender).DataSource.DataSet.FieldByName('VALNAME').AsString='Y'
        then I := I or DFCS_CHECKED;
        DrawFrameControl(Handle, R, DFC_BUTTON, I);
    end
    else if (Column.FieldName='VisField') then begin
      // КОГДА ЗНАЧЕНИЯ checkbox = 0/1
      PicIndex:=IIF(Column.Field.DataSet.FieldByName('VisField').Value=1, dpBoxChecked, dpBox);
      PicDrawGridCell(Sender, Rect, DataCol, Column, State, 'VisField', PicIndex, FALSE);
    end
    else
      TDBGrid(Sender).DefaultDrawColumnCell(Rect, DataCol, Column, State);

  end;
end;

procedure TfmPreCalc.btShowProductsClick(Sender: TObject);
var
  vMsg, vISN : Variant;
  vxmllog    : variant;
begin
  try
    Screen.Cursor:=crHourGlass;
    Application.ProcessMessages;
    FCon.AppServer.PreCalcPrem(User.ISN, qrPreCalcHeadISN.AsFloat, -888, vMsg, vISN, 0,0, vxmllog);
    QueryRefresh(qrPreCalcParamObj);
    Application.ProcessMessages;
  finally
    Screen.Cursor:=crDefault;
  end;

end;

procedure TfmPreCalc.g_CascoCellClick(Column: TColumn);
var
  vMark: TBookmark;
begin
  inherited;
  if qrPreCalcHeadRuleISN.AsFloat=p_AGRMOTORWIZARD then
  begin
    vMark:=qrPreCalcParam.GetBookmark;
    qrPreCalcParam.GotoBookmark(vMark);
  end;

  with (Column.Grid as TDbGrid).DataSource.DataSet do
    if (qrPreCalcHeadRuleISN.AsFloat=p_AGRMOTORWIZARD) and (FieldByName('DATATYPE').AsString = 'B') and
       (qrPreCalcHeadStatus.AsString <> 'М') then
      FieldByName('PARNAME').FocusControl;
//    if (FieldByName('DATATYPE').AsString = 'B') and (FieldByName('CLASSISN').AsString = 'B')
end;

procedure TfmPreCalc.qrPreCalcCLAfterRefresh(DataSet: TDataSet);
begin
  inherited;
  cbFollowToPlaceOfReg.Enabled := qrPreCalcCLSBJCITYISN.Value <> 6;
end;

procedure TfmPreCalc.g_CascoExit(Sender: TObject);
begin
  inherited;
  CheckDSEditMode(TDbGrid(Sender).DataSource.DataSet);
  TDbGrid(Sender).DataSource.DataSet.Post;
end;

function TfmPreCalc.p_AGRPFIREKOMMERSANT: double;
begin
  if fAgrPFireKommersant = 0 then
  // 2015-04-22 Конев В.А. [81202637003] "Ошибка тестирования. Некорректно работает форма котировок "Коммерсант""
  // причина в том, что FCon.GetServer.GetDictiISN возвращает 0
  // поэтому вынужден был зашить ISN жестко, надеюсь временно
    //fAgrPFireKommersant:= 4810640203;
  fAgrPFireKommersant:= FCon.AppServer.GetDictiISN(cAGRPFIREKOMMERSANT);
  Result:=fAgrPFireKommersant;
end;

procedure TfmPreCalc.ActionBeforeEdit(DataSet :TDataSet);
begin
  Application.MessageBox(PChar('Невозможно внести изменения в котировку ГК.' + #13 +
                                'Объект только для чтения!'),
                               'Внимание!', MB_ICONWARNING+MB_OK);
  SysUtils.Abort;
end;

procedure TfmPreCalc.miCalculatorClick(Sender: TObject);
var
  vAgrIsn :double;
  FAgrFormCalc: TfmPreCalc;
begin
  //ShowMessage(qrPreCalcParam1ISN.AsFloat);
  vAgrIsn := FCon.AppServer.GetCalcTemplate(qrPreCalcHeadISN.AsFloat, 0, qrPreCalcParam1ISN.AsFloat,0);
  //ShowMessage(FloatToStr(vAgrIsn));
  if vAgrIsn  > 0 then
  begin
    FAgrFormCalc := TfmPreCalc.CreateEx(Application, FIMain, FCon);
    try
      TfmPreCalc(FAgrFormCalc).ISN := vAgrIsn;
      FAgrFormCalc.ShowModal;
      QueryRefresh(qrPreCalcParam1);
    finally
      FreeAndNil(FAgrFormCalc);
    end;
  end;
end;

procedure TfmPreCalc.pmCalculatorPopup(Sender: TObject);
var
  vAgrIsn :double;
begin
  if qrPreCalcHead.Active and (qrPreCalcHead.RecordCount > 0) and
     qrPreCalcParam1.Active and (qrPreCalcParam1.RecordCount > 0) then
  begin
    if qrPreCalcHeadRuleISN.AsFloat = p_AgrCalcFIREDKS then vAgrIsn := -1
     else
      vAgrIsn := FCon.AppServer.GetCalcTemplate(qrPreCalcHeadISN.AsFloat, 0, qrPreCalcParam1ISN.AsFloat,-1);
    miCalculator.Visible := (vAgrIsn >= 0);
    miDelGroup.Visible := qrPreCalcParam1AddGroup.Value<>0;
    miAddTemplGroup.Visible := (qrPreCalcHeadTemplateisn.Value = c_AGRCPLFIRER1) and miDelGroup.Visible;
    miAddGroup.Visible := (qrPreCalcHeadVariantValuation.Value = p_VariantValuationDetailed) and
      (not miAddTemplGroup.Visible) and miDelGroup.Visible;
  end else begin
    miCalculator.Visible := false;
    miAddTemplGroup.Visible := false;
    miAddGroup.Visible := false;
    miDelGroup.Visible := false;
  end;
end;

procedure TfmPreCalc.FillVariantValuationMenu(M :TPopupMenu; ParentISN :Double; PClickProc :TMenuClickProc);
var
  i :Integer;
  V :Variant;
  N :TMenuItem;
begin
  Screen.Cursor:=crHourGlass;
  try
    V:=FCon.AppServer.GetAgrStatusList(User.ISN, ParentISN);
    for i:=0 to VarArrayHighBound(V, 1) do begin
      N:=TMenuItem.Create(Self);
      N.Caption:=V[i][1];
      N.Hint:=V[i][3];
      N.TAG:=Trunc(V[i][2])-c_corrval;
      N.RadioItem := TRUE;
      N.GroupIndex:=1;
      N.OnClick:=PClickProc;
      M.Items.Add(N);
    end;
  finally
    Screen.Cursor:=crDefault;
  end;
end;

procedure TfmPreCalc.ppVariantValuationPopup(Sender: TObject);
var i : Integer;
begin
 with TPopupMenu(Sender).Items do
  for i:=0 to Count-1 do
   with Items[i] do
    begin
     Enabled:=(FCon.AppServer.GetCalcTemplate(qrPreCalcHeadISN.AsFloat, 0, 0, i) > 0);
     Checked:=(qrPreCalcHeadVariantValuation.AsFloat=tag+c_corrval);
  end;
end;

procedure TfmPreCalc.edVariantValuationBtnClick(Sender: TObject);
var P :TPoint;
begin
  if ppVariantValuation.Items.Count=0 then
    FillVariantValuationMenu(ppVariantValuation, p_acVariantValuation, VariantValuationClick);
  P.X:=edVariantValuation.Left;
  P.Y:=edVariantValuation.Top+edVariantValuation.Height+1;
  P:=edVariantValuation.Parent.ClientToScreen(P);
  ppVariantValuation.Popup(P.X, P.Y);
end;

procedure TfmPreCalc.VariantValuationClick(Sender: TObject);
begin
  CheckDSEditMode(qrPreCalcHead);
  qrPreCalcHeadVariantValuation.Value := TMenuItem(Sender).Tag+c_corrval;
  qrPreCalcHeadVariantValuationName.Value := TMenuItem(Sender).Caption;
end;

procedure TfmPreCalc.btStoreCalcResultToAgrClick(Sender: TObject);
begin
  FCon.AppServer.StoreCalcResultToAgr(qrPreCalcHeadISN.AsFloat);
end;

procedure TfmPreCalc.VVHintHandler(Sender: TObject);
begin
  mHint.Lines.Text := Application.Hint;
end;

procedure TfmPreCalc.miAddGroupClick(Sender: TObject);
var
  vIsn : double;
begin
  Screen.Cursor:=crHourGlass;
  try
    FCon.AppServer.InsertGroup(qrPreCalcHeadISN.AsFloat,
      IfThen(TMenuItem(Sender).Tag=0,StrToFloat(qrPreCalcParam1GroupId.AsString),
      ACFCEGROUPS[TMenuItem(Sender).Tag]));
    Param_ApplyUpdates;
    QueryRefresh(qrPreCalcParam);
    QueryRefresh(qrPreCalcParam1);
    if g_Casco1.Visible then g_Casco1.SetFocus;
  finally
    Screen.Cursor:=crDefault;
  end;
end;

//24.12.2015 Соболев А.В. Задача 91431554303 Ошибка в котировочном блоке
procedure TfmPreCalc.g_Casco1Enter(Sender: TObject);
begin
  EnterControl(Sender);
  g_CascoColEnter(Sender);
end;

procedure TfmPreCalc.edModelNameBtnClick(Sender: TObject);
begin
  inherited;
  if ChooseModificationCL(Sender) then begin
    Self.Update;
    CheckDSEditMode(qrPreCalcCL);
    qrPreCalcCL.FieldByName('CarMarkISN'  ).AsFloat  := MakeISN;
    qrPreCalcCL.FieldByName('CarMarkName' ).AsString := MakeName;
    qrPreCalcCL.FieldByName('CarModelISN' ).AsFloat  := ModelISN;
    qrPreCalcCL.FieldByName('CarModelName').AsString := ModelName;
    Param_ApplyUpdates;
  end;
end;

//02.03.2016 Ревин П.А. Задача 95949061603 Предварительная проверка клиентов
function TfmPreCalc.GetIntfCFSCall: ICFSCall;
var
  intf : IUnknown;
  vModuleSite : IAISFormModuleSite;
begin
  // Инициализация интерфейса СПМ
  if(FCFSCall = nil) then begin
    FIMain.QueryInterface(AISFormModuleSiteIID, vModuleSite);
    if(not Assigned(vModuleSite)) then  raise Exception.Create('Ошибка инициализации vModuleSite');
    intf := vModuleSite.LoadModule(Class_CFSClient);
    try
      FCFSCall := intf as ICFSCall;
    finally
      intf := nil;
    end;
  end;

  result := FCFSCall;
end;

//02.03.2016 Ревин П.А. Задача 95949061603 Предварительная проверка клиентов
procedure TfmPreCalc.LaunchEstimateClient;
begin
  if(intfCFSCall = nil) then begin
    ShowMessage('Не инициализирован интерфейс для обращения к оценке вероятности мошенничества');
    exit;
  end;
  intfCFSCall.LaunchEstimateClient(qrPreCalcHeadRuleISN.AsFloat);
end;

procedure TfmPreCalc.sbFraudClick(Sender: TObject);
begin
  inherited;
  LaunchEstimateClient;
end;

procedure TfmPreCalc.g_CascoMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
var
  Coord:  TGridCoord;
  CurRec: Integer;
  colFullName, colClassISN: TColumn;

function GetColumnByName(Grid : TDBGrid; const AName : String) : TColumn;
  var
    i : Integer;
  begin
    Result := Nil;
    for i := 0 to Grid.Columns.Count - 1 do begin
    if (Grid.Columns[i].Field <> Nil) and (CompareText(Grid.Columns[i].FieldName, AName) = 0) then begin
         Result := Grid.Columns[i];
         exit;
       end;
    end;
  end;
begin
  inherited;
  with TModDBGrid(g_Casco) do
  begin
    Coord := MouseCoord(X, Y);
    with Coord do
      if (Y < 1) or (X < 1) or (X > Columns.Count) then  Exit;
    CurRec :=  Datalink.ActiveRecord;
    DataLink.ActiveRecord := Coord.Y - 1;

    colFullName := GetColumnByName(g_Casco, 'FullName');
    colClassISN := GetColumnByName(g_Casco, 'CLASSISN');

    if (colFullName <> Nil) and ((colClassISN.Field.AsFloat = TP_CADASTRALVALUE) or (colClassISN.Field.AsFloat = Tp_InsSpecProgram)) then begin
       g_Casco.Hint := colFullName.Field.AsString;
       g_Casco.ShowHint := true;
       Application.ActivateHint(Mouse.CursorPos);
    end
    else
      g_Casco.ShowHint := false;

    DataLink.ActiveRecord := CurRec;
  end;
end;

//Makarova task  153457217903
procedure TfmPreCalc.sbLoadDataFromXlsClick(Sender: TObject);
var
  fFileISN, vsm: double;
  vTaskIsn: double;
  wFileName: wideString;
  pMsg: WideString;
  ConvertorFileName : string;
  SEInfo: TShellExecuteInfo;
  ExitCode: DWORD;
  i, vISNIndex: integer;
  vSrcParams: Variant; // параметры, кот. передаются в форму отбора договоров
  vClient:double;
begin
try
  CheckDSBrowseMode(qrPreCalcHead);  //будем записывать сюда клиента
  CheckDSBrowseMode(qrPreCalcParam);  //и параметры
  CheckDSBrowseMode(qrPreCalcParam1);
  fFileIsn := -1;
  //проверим наличие заявления на страхование в комплекте документов
  with qrGetFileIsn do
  try
    close;
    Params.ParamByName('pClassISN').Asfloat:=6653198503;
    Params.ParamByName('pDocISN').Asfloat:=qrPreCalcHeadISN.asfloat;
    Open;
    if not eof then
    begin
      fFileIsn:=FieldByName('fileisn').AsFloat;
      wFileName:=FieldByName('filename').Asstring;
      close;
    end
    else
    begin
      ShowMessage('Не найден документ "Заявление на страхование"');
      close;
      Exit;
    end;
  except
    on e: Exception do
    begin
      ShowMessage('Ошибка определения документа из КД '+e.Message);
      close;
      Exit;
    end;
  end;
  if (pos('.XLS',wFileName)=0) then
  begin
    ShowMessage('Загрузка данных в котировку возможна только из файла MS Excel.');
    Exit;
  end;

  ConvertorFileName := 'C:\Convertor\Convertor.exe';

	if not FileExists(ConvertorFileName) then begin
		ShowMessage('Файл ' + ConvertorFileName + ' не обнаружен. Обратитесь в службу поддержки для установки конвертера.');
		Exit;
	end;
   // 02.08.2017 Makarova task 153457217903  для определенных продуктов: Нотариусы, оценщики ФЛ, оценщики ЮЛ
  if qrPreCalcHeadRuleISN.AsFloat=3442999203 then
    ConvertorFileName := ConvertorFileName+' 14 "Котировка нотариус"'
  else
    if (qrPreCalcHeadRuleISN.AsFloat=3442997703) then
      ConvertorFileName := ConvertorFileName+' 14 "Котировка оценщик фл"'
    else
      if (qrPreCalcHeadRuleISN.AsFloat=3443048503) then
        ConvertorFileName := ConvertorFileName+' 14 "Котировка оценщик юл"'
      else
      begin
        ShowMessage('Не подходящий продукт. Загрузка прерывается.');   //такой ситуевины быть не должно т.к. данная кнопка только для определенного вида продуктов
        exit;
      end;

  Screen.Cursor := crHourGlass;
  try
    //считывание файла из Комплекта Документов на диск
    if not FIMain.PackDoc_Get(0, fFileISN, AisGetSubDir('PACKDOC\'+floattostr(fFileIsn)), wFileName) then
    begin
    	ShowMessage('Ошибка загрузки файла ' + wfileName + ' [ISN=' + FloatToStr(fFileISN) + ']');
      Screen.Cursor := crDefault;
      Exit;
  	end;
  except
    on E: Exception do
    begin
      ShowBDEError(Self, E.Message);
      Exit;
    end;
  end;

  memConvertCall.Text:=ConvertorFileName+' "' + wFileName + '"';
  WinExecWithWait(PChar(memConvertCall.Text));

  if Application.MessageBox('Конвертер отработал. Продолжить выполнение загрузки?',PChar(Application.Title), mb_yesno) = IDYES then
  begin
    try
      FCon.AppServer.LoadXlData(qrPreCalcHeadISN.AsFloat, pMsg);
      Param_ApplyUpdates;
      QueryRefresh(qrPreCalcParam);
      QueryRefresh(qrPreCalcParam1);
      if pMsg<>'' then
        ShowMessage('Загрузка параметров договора завершена с ошибками: '+pMsg)
      //else
      //  ShowMessage('Загрузка завершена без ошибок.');
    except
      on e:exception do
      begin
        ShowMessage('Ошибка в процессе загрузки данных: '+e.Message);
        Exit;
      end;
    end;
    vsm:=1;
    vTaskIsn := 0;
    try
      FCon.AppServer.FindClient(qrPreCalcHeadISN.AsFloat,-1,vsm,vtaskIsn);
    except
      on e:exception do
      begin
        ShowMessage('Ошибка в процессе загрузки клиента: '+e.Message);
        Exit;
      end;
    end;
    //ShowMessage('возврат от FindClient: '+floattostr(vTaskISN)+' режим '+floattostr(vsm));
    //найдено несколько похожих клиентов
    if (vTaskISN > 0) then
    begin
      vSrcParams:=VarArrayOf([7, 2, VarArrayOf(['TfmFindCustN', 2, 1, vTaskISN]), null]);
      FIMain.AnyCall(vSrcParams);
      if vSrcParams[3][0] = true then
      begin
        for i := VarArrayLowBound(vSrcParams[3][1][0], 1) to VarArrayHighBound(vSrcParams[3][1][0], 1) do
          if vSrcParams[3][1][0][i][0] = 'ISN' then
          begin
            vISNIndex := i;
            break;
          end;
        for i := VarArrayLowBound(vSrcParams[3][1], 1) to VarArrayHighBound(vSrcParams[3][1], 1) do
        begin
          vClient := vSrcParams[3][1][i][vISNIndex][1];
          //ShowMessage(floattostr(qrPreCalcHeadISN.AsFloat));
          FCon.AppServer.AddClient(qrPreCalcHeadISN.AsFloat,vClient);  //обновляем данные клиента
          break;
        end;
      end
      else
        if (Application.MessageBox('Клиент не найден в базе. Создать нового клиента?',PChar(Application.Title), mb_yesno) = IDYES) then
        try
          FCon.AppServer.AddClient(qrPreCalcHeadISN.AsFloat, 0);  //Создаем нового
        except
          on e:exception do
            ShowMessage('Ошибка в процессе создания нового клиента: '+e.Message);
        end;
    end
    else
    if (vTaskIsn=0) and (vsm=2) and (Application.MessageBox('Клиент не найден в базе. Создать нового клиента?',PChar(Application.Title), mb_yesno) = IDYES) then
    try
      FCon.AppServer.AddClient(qrPreCalcHeadISN.AsFloat, 0);  //Создаем нового
    except
      on e:exception do
        ShowMessage('Ошибка в процессе создания нового клиента: '+e.Message);
    end;
    end;
finally
  try
    FCon.AppServer.EraseTempTable;
  except
    ShowMessage('Временная таблица не очищена!!!');
  end;
  //после загрузки клиента меняется параметр в котировке - регион, обновляем
  Param_ApplyUpdates;
  QueryRefresh(qrPreCalcParam);
  QueryRefresh(qrPreCalcParam1);
  //-----
  qrPreCalcHead.Close;
  qrPreCalcHead.Open;
  QueryRefresh(qrPreCalcHead);
  Screen.Cursor := crDefault;
end;

end;

//Makarova запрет редактирования полей с данными из справочников
procedure TfmPreCalc.g_CascoKeyPress(Sender: TObject; var Key: Char);
var
  vRuleISN:   double;
  vClassName: string;
begin
  if (TdBGrid(sender).DataSource.DataSet.FieldByName('DataType').AsString='W') or
       (TdBGrid(sender).DataSource.DataSet.FieldByName('DataType').AsString='WM') then
  begin
    if (pos(lowercase(key),'!@#$%^&*()_+1234567890абвгдеёжзийклмнопрстуфхцчшщъэьюяqwertyuiop[]asdfghjkl;\zxcvbnm,./|"')<>0)
      or (key=chr(8)) then key:=chr(0);
  end;
  //28.11.2017 Tukmakov task 134224500303
  vRuleISN := qrPreCalcHeadRuleISN.AsFloat;
  if (vRuleISN = C_AGRFIRELIABAREND) or (vRuleISN = C_AGRFIRELIABOWNER) or (vRuleISN = C_AGRFIRERESPUKHOUSING) then
    with TDbGrid(Sender) do begin
      vClassName:= DataSource.DataSet.FieldByName('ClassConstName').AsString;

      if AnsiIndexText(vClassName, ['TP_CADISCOUNT', 'TP_LIMITSUM', 'TP_LIMITEVERYSUM','TP_OBJTOTALAREA','TP_SUM_AREA', 'TP_FRANCHSUM']) > -1 then
        if not (Key in ['0'..'9', #8]) and not (ord(Key) in [VK_CANCEL, VK_BACK, VK_CLEAR, VK_RETURN, VK_SHIFT, VK_ESCAPE, VK_END, VK_HOME, VK_LEFT,
                                                             VK_RIGHT, VK_INSERT, {VK_DELETE,} VK_LSHIFT, VK_RSHIFT])
        then key := #0;
    end;
end;

procedure TfmPreCalc.FormActivate(Sender: TObject);
begin
  inherited;
  with cdsAgrAdd do
  begin
    Close;
    Params[0].Value:=isn;
    Open;
  end;
{  with cdsTerr do
  begin
    Close;
    Params[0].Value:=isn;
    Open;
  end;}
end;

procedure TfmPreCalc.dsAgrAddDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  with cdsVariant do
  begin
    Close;
    Params[0].Value:=cdsAgrAdd.FieldValues['ISN'];
    Open;
  end;
end;

procedure TfmPreCalc.dsVariantDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  with qrPreCalcParam do
  begin
    Close;
    Open;
  end;
end;


procedure TfmPreCalc.dbgTerrEditButtonClick(Sender: TObject);
var
  pGrid: TDBGrid;
begin
  inherited;
  with TDbGrid(Sender) do begin
    if (SelectedField = DataSource.DataSet.FieldByName('ValName'))
     then GetAgrAddr;
     //ChooseWoodObj(cdsTerrCLASSISN, cdsTerrPARNAME, cdsTerrROOT.AsFloat);
  end;

 // g_CascoEditButtonClick(Sender);
end;
{   pGrid := (Column.Grid as TDbGrid);
  with pGrid do
  begin
//    if DataSource.DataSet.FieldByName('VAL').AsFloat = 0
    qrPreCalcParam.ParamByName('ClassIsn2').AsFloat := DataSource.DataSet.FieldByName('VAL').AsFloat;
  end;
  QueryRefresh(qrPreCalcParam);
end;
 }

 // popup menu   условий
procedure TfmPreCalc.FillPreCalcGroupMenu;
var
  i :integer;
  N, NDelItem :TMenuItem;
begin
//  qrPreCalcParamList.Close; qrPreCalcParamList.Open;
{  qrPreCalcParamList.First; }
  pmPreCalcGroup.Items.Clear;
  with qrPreCalcParamList do
  begin
    Close;
    params.ParamByName('AGRISN').AsFloat:= qrPreCalcParam.FieldByName('AgrISN').AsFloat;
    params.ParamByName('ParentISN').AsFloat:= cdsTerrISN.AsFloat;
    Open;
  end;
{ qrPreCalcParamList.Close;
 qrPreCalcParamList.params.ParamByName('AGRISN').AsFloat:= qrPreCalcParam.FieldByName('AgrISN').AsFloat;
 qrPreCalcParamList.params.ParamByName('ParentISN').AsFloat:= cdsTerrISN.AsFloat;

 qrPreCalcParamList.Open;}
// ShowMessage(IntToStr(qrPreCalcParamList.RecordCount));

  for i:=1 to qrPreCalcParamList.RecordCount do begin
    N:=TMenuItem.Create(Self);
//    N.Hint:=FloatToStr(qrFillSbjCitySbjCityISN.AsFloat)+'*'+FloatToStr(qrFillSbjCitySbjCityClassISN.AsFloat)+'@'+FloatToStr(qrFillSbjCityModeUseCLISN.AsFloat);
    N.Caption:='Добавить '+qrPreCalcParamList.Fields[1].AsString;
    N.Tag := qrPreCalcParamList.Fields[0].AsInteger;
//  N.OnClick := miAddGroupClickWithParent;
    pmPreCalcGroup.Items.Add(N);
    qrPreCalcParamList.Next;
  end;
  NDelItem := TMenuItem.Create(Self);
  NDelItem.Caption := 'Удалить группу';
  NDelItem.Tag := g_Casco1.DataSource.DataSet.FieldByName('GroupID').AsInteger;
//  NDelItem.OnClick := miDelGroupClickWithParent;
  pmPreCalcGroup.Items.Add(NDelItem);
end;

{procedure TfmPreCalc.miAddGroupClickWithParent(Sender: TObject);
var
  vIsn : double;
begin
  Screen.Cursor:=crHourGlass;
  try
    FCon.AppServer.InsertGroupWithParent(qrPreCalcParam.FieldByName('AgrISN').AsFloat,
      TMenuItem(Sender).Tag, dbgTerr.DataSource.DataSet.FieldByName('ISN').AsFloat);
    Param_ApplyUpdates;
//    QueryRefresh(qrPreCalcParam);
    QueryRefresh(qrPreCalcParam1);
    if g_Casco1.Visible then g_Casco1.SetFocus;
  finally
    Screen.Cursor:=crDefault;
  end;
end;

procedure TfmPreCalc.miDelGroupClickWithParent(Sender: TObject);
var
  vEx :string;
  vIsn : double;
begin
  inherited;
  vEx:='D';
  Screen.Cursor:=crHourGlass;
//  vIsn := g_Casco.DataSource.DataSet.FieldValues['ISN'];

  try
    FCon.AppServer.UpdateGroupWithParent(User.ISN, vEx, qrPreCalcParam.FieldByName('AgrISN').AsFloat, dbgTerr.DataSource.DataSet.FieldByName('ISN').AsFloat);

    Param_ApplyUpdates;

//    QueryRefresh(qrPreCalcParam);
    QueryRefresh(qrPreCalcParam1);
  finally
    Screen.Cursor:=crDefault;
  end;
end;
}

//function GetAgrAddr: float;
procedure TfmPreCalc.GetAgrAddr;
var
 f: TfmDlgTerr;
begin
  F:=TfmDlgTerr.CreateEx(Self, FIMain, FCon);
  try
    F.AgrISN:=qrPreCalcParam.FieldByName('AgrISN').AsFloat;
    F.ShowModal;
    Update;
    if F.ModalResult<>mrOk then Abort;

    if f.fAddrIsn <> 0 then
    ShowMessage('ok');
  finally

    F.Free;
  end;

end;
end.


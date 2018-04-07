unit UMAgrDM;
{*
  Серверный модуль договора автострахования и свяханного с ним функционала.
  @author A. Litvin, V. Unin

  @version 20070629 DmitryPo/VDI Изменено поведение метода CreateAgr2 (создание договора по котировке).
                                 Добавлена процедура spCreateAgrByPrecalc.
                                 Увеличен номер версии серверного модуля.
}                                        


interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  OraDMBase, Db, OracleData, Provider, Oracle, Dialogs,
  StdVcl, DBClient,
   DBTables, QueryData, UBaseAppServer
  {RemObjects:} , uROClasses, uROClient, uROTypes, uROClientIntf,  uROServer, uROSessions,   uROClassFactories, uROXMLIntf,
  {Required:} uRORemoteDataModule,
  {Ancestor Implementation:} uRODataSnapModule,
  {Used RODLs:} uRODataSnap_Intf,
  {Generated:} motorAgr_Intf, DBAccess, Ora, MemDS, DbOraComponents ;


type
  {*
    Класс модуля данных с запросами и серверными функциями.
    @author A. Litvin
  }
  TMAgrDM = class(TDMBase, IMAgrDM, IAppServer, IBaseAppServer)
    dspAgr: TDataSetProvider;
    dspSubj: TDataSetProvider;
    dspCond: TDataSetProvider;
    dspEquip: TDataSetProvider;
    dspAdd: TDataSetProvider;
    dspCar: TDataSetProvider;
    dspModelBranch: TDataSetProvider;
    dspModif: TDataSetProvider;
    dspPhone: TDataSetProvider;
    dspTmplList: TDataSetProvider;
    dspFSubj: TDataSetProvider;
    dspFCar: TDataSetProvider;
    dspFModel: TDataSetProvider;
    dspRiskCtg: TDataSetProvider;
    dspCarDoc: TDataSetProvider;
    dspCarSurvey: TDataSetProvider;
    dspCarDamage: TDataSetProvider;
    dspCarEquip: TDataSetProvider;
    dspWarn: TDataSetProvider;
    dspAgrTmpl: TDataSetProvider;
    dspEngaged: TDataSetProvider;
    dspBM: TDataSetProvider;
    dspRefund: TDataSetProvider;
    dspModelDicti: TDataSetProvider;
    dspFCarHist: TDataSetProvider;
    dspProlongHist: TDataSetProvider;
    dspCAAdd: TDataSetProvider;
    dspModelTSet: TDataSetProvider;
    dspModelTariff: TDataSetProvider;
    dspNewAgrRule: TDataSetProvider;
    qrAgr: TOracleDataSet;
    spAgr: TOracleQuery;
    qrCar: TOracleDataSet;
    spCar: TOracleQuery;
    qrModelBranch: TOracleDataSet;
    qrModif: TOracleDataSet;
    spModif: TOracleQuery;
    qrCAAdd: TOracleDataSet;
    qrModelTSet: TOracleDataSet;
    qrModelTariff: TOracleDataSet;
    spModelTariff: TOracleQuery;
    qrModelDicti: TOracleDataSet;
    spModelDicti: TOracleQuery;
    qrRefund: TOracleDataSet;
    qrEngaged: TOracleDataSet;
    qrBM: TOracleDataSet;
    qrFSubj: TOracleDataSet;
    qrFCar: TOracleDataSet;
    qrFModel: TOracleDataSet;
    qrTmplList: TOracleDataSet;
    qrFCarHist: TOracleDataSet;
    qrEquip: TOracleDataSet;
    spEquip: TOracleQuery;
    qrCond: TOracleDataSet;
    qrAdd: TOracleDataSet;
    spAdd: TOracleQuery;
    spCond: TOracleQuery;
    qrRiskCtg: TOracleDataSet;
    qrSubj: TOracleDataSet;
    spSubj: TOracleQuery;
    qrPhone: TOracleDataSet;
    spPhone: TOracleQuery;
    qrCarDoc: TOracleDataSet;
    spCarDoc: TOracleQuery;
    qrCarSurvey: TOracleDataSet;
    spCarSurvey: TOracleQuery;
    qrCarDamage: TOracleDataSet;
    spCarDamage: TOracleQuery;
    qrCarEquip: TOracleDataSet;
    spCarEquip: TOracleQuery;
    spMoveModif: TOracleQuery;
    spModifMerge: TOracleQuery;
    qrProlongHist: TOracleDataSet;
    spGetPrice: TOracleQuery;
    spSetSums: TOracleQuery;
    spCheckAgent: TOracleQuery;
    qrTFranch: TOracleDataSet;
    qrTLim: TOracleDataSet;
    qrTStatus: TOracleDataSet;
    spCalcPrem: TOracleQuery;
    qrWarn: TOracleDataSet;
    spWarn: TOracleQuery;
    spCreateAgr: TOracleQuery;
    spAgrSubj: TOracleQuery;
    spAgrObj: TOracleQuery;
    spCalcAmort: TOracleQuery;
    qrAgrTmpl: TOracleDataSet;
    qrNewAgrRule: TOracleDataSet;
    spAmortScheme: TOracleQuery;
    spDecodeVIN: TOracleQuery;
    spProlongAgr: TOracleQuery;
    spSetPrem: TOracleQuery;
    spCancelAgr: TOracleQuery;
    spCancelModes: TOracleQuery;
    qrPAdd: TOracleDataSet;
    dspPAdd: TDataSetProvider;
    spPAdd: TOracleQuery;
    qrAgrID: TOracleDataSet;
    dspAgrID: TDataSetProvider;
    spAgrID: TOracleQuery;
    spCheckName: TOracleQuery;
    qrCLAgr: TOracleDataSet;
    dspCLAgr: TDataSetProvider;
    spCLAgr: TOracleQuery;
    spChP6to12: TOracleQuery;
    qrTariffParam: TOracleDataSet;
    dspTariffParam: TDataSetProvider;
    qrTariffParamLV: TFloatField;
    qrTariffParamISN: TFloatField;
    qrTariffParamSHORTNAME: TStringField;
    qrTariffParamSHORTNAMEM: TStringField;
    qrTariff: TOracleDataSet;
    qrTariffISN: TFloatField;
    qrTariffTARIFFISN: TFloatField;
    qrTariffTARIFF: TFloatField;
    qrTariffX1: TFloatField;
    qrTariffX2: TFloatField;
    qrTariffX3: TFloatField;
    qrTariffX4: TFloatField;
    qrTariffX5: TFloatField;
    qrTariffDATEBEG: TDateTimeField;
    qrTariffDATEEND: TDateTimeField;
    qrTariffUPDATED: TDateTimeField;
    qrTariffUPDATEDBY: TFloatField;
    qrTariffUPDATEDBYNAME: TStringField;
    qrRealCaptTariff: TOracleDataSet;
    dspTariff: TDataSetProvider;
    dspRealCaptTariff: TDataSetProvider;
    qrRealCaptTariffISN: TFloatField;
    qrRealCaptTariffTARIFFISN: TFloatField;
    qrRealCaptTariffCLASSISN: TFloatField;
    qrRealCaptTariffFUNTYPE: TStringField;
    qrRealCaptTariffNO: TFloatField;
    qrRealCaptTariffSHORTNAME: TStringField;
    qrRealCaptTariffUPDATED: TDateTimeField;
    qrRealCaptTariffUPDATEDBY: TFloatField;
    qrRealCaptTariffNOX: TStringField;
    qrRealCaptTariffSHORTNAMEC: TStringField;
    qrTariffX1NAME: TStringField;
    qrTariffX2NAME: TStringField;
    qrTariffX3NAME: TStringField;
    qrTariffX4NAME: TStringField;
    qrTariffX5NAME: TStringField;
    spTariff: TOracleQuery;
    qrProdExt: TOracleQuery;
    qrCalcPreview: TOracleDataSet;
    dspCalcPreview: TDataSetProvider;
    qrProdExtClass: TOracleQuery;
    qrAgrCondProp: TOracleDataSet;
    spAgrCondProp: TOracleQuery;
    dspAgrCondProp: TDataSetProvider;
    qrAddr: TOracleDataSet;
    dsp_Addr: TDataSetProvider;
    spAddr: TOracleQuery;
    qrObjGrP: TOracleDataSet;
    dspObjGrP: TDataSetProvider;
    spObjGrP: TOracleQuery;
    qrObjTempl: TOracleDataSet;
    dspObjTempl: TDataSetProvider;
    spObjTempl: TOracleQuery;
    qrObjAddrP: TOracleDataSet;
    dspObjAddr: TDataSetProvider;
    spObjAddrP: TOracleQuery;
    qrObjCondP: TOracleDataSet;
    dspObjCondP: TDataSetProvider;
    spObjCondP: TOracleQuery;
    spCalcPrem2: TOracleQuery;
    grObjCarHist: TOracleDataSet;
    dspObjCarHist: TDataSetProvider;
    qrObjDocsP: TOracleDataSet;
    dspObjDocsP: TDataSetProvider;
    spObjDocsP: TOracleQuery;
    qrGetRulTariffTxt: TOracleDataSet;
    dspGetRulTariffTxt: TDataSetProvider;
    qrFillSbjCity: TOracleDataSet;
    dspFillSbjCity: TDataSetProvider;
    qrPreCalcPrem: TOracleDataSet;
    dspPreCalcPrem: TDataSetProvider;
    qrCar_LDU: TOracleDataSet;
    dspCar_LDU: TDataSetProvider;
    spPreCalcPrem: TOracleQuery;
    dspPreCalcParam: TDataSetProvider;
    qrPreCalcParam: TOracleDataSet;
    spPreCalcParam: TOracleQuery;
    dspPreCalcHead: TDataSetProvider;
    qrPreCalcHead: TOracleDataSet;
    spPreCalcHead: TOracleQuery;
    qrAVN: TOracleDataSet;
    spAVN: TOracleQuery;
    dspAVN: TDataSetProvider;
    spUpdateGroup: TOracleQuery;
    qrBodyType: TOracleDataSet;
    dspBodyType: TDataSetProvider;
    qrProtection: TOracleDataSet;
    dspProtection: TDataSetProvider;
    qrPreCalcCL: TOracleDataSet;
    dspPreCalcCL: TDataSetProvider;
    spPreCalcCL: TOracleQuery;
    spCreateAgrByPrecalc: TOracleQuery;
    spAgrFreeRequest: TOracleQuery;
    spGetBodyModel: TOracleQuery;
    qrListWarn: TOracleDataSet;
    spCopyCalc: TOracleQuery;
    spConvertCalc: TOracleQuery;
    qrRuleInRootIsn: TOracleDataSet;
    dspIsRuleInRootIsn: TDataSetProvider;
    dspDiscount: TDataSetProvider;
    spDiscount: TOracleQuery;
    qrDiscount: TOracleDataSet;
    qrDetailTariff: TOracleDataSet;
    dspDetailTariff: TDataSetProvider;
    spCalcPremEx: TOracleQuery;
    qrGetSystem: TOracleQuery;
    qrEquipPreCalc: TOracleDataSet;
    dspEquipPreCalc: TDataSetProvider;
    spEquipPreCalc: TOracleQuery;
    qrEstimateRraud: TOracleDataSet;
    dspEstimateRraud: TDataSetProvider;
    dspGetFraudQuestions: TDataSetProvider;
    qrGetFraudQuestions: TOracleDataSet;
    dspCreateFraudTask: TDataSetProvider;
    sp_CreateFraudTask: TOracleDataSet;
    dspCheckFireFraud: TDataSetProvider;
    sp_CheckFireFraud: TOracleDataSet;
    DSP_PROTECTFUNC: TDataSetProvider;
    qrPROTECTFUNC: TOracleDataSet;
    spLoadCarDamage: TOracleQuery;
    spInspectList: TOracleQuery;
    dspSetClientAgrs: TDataSetProvider;
    qrSetClientAgrs: TOracleDataSet;
    qrSetListParam: TOracleDataSet;
    dspSetListParam: TDataSetProvider;
    dspSyncObject: TDataSetProvider;
    qrSyncObject: TOracleDataSet;
    qrSetAddrRemark: TOracleDataSet;
    dspSetAddrRemark: TDataSetProvider;
    spCopyAgr: TOracleQuery;
    dspAgrIDCheck: TDataSetProvider;
    qrAgrIDCheck: TOracleDataSet;
    spUpdateInvisibleFields: TOracleQuery;
    qrSetListParamPreCalc: TOracleDataSet;
    dspSetListParamPreCalc: TDataSetProvider;
    dspCheckPhone: TDataSetProvider;
    qCheckPhone: TOracleDataSet;
    qrRepairTerms: TOracleDataSet;
    dspRepairTerms: TDataSetProvider;
    qrSetModifVisible: TOracleDataSet;
    dspSetModifVisible: TDataSetProvider;
    qrFireDiscount: TOracleDataSet;
    dspFireDiscount: TDataSetProvider;
    spFireDiscount: TOracleQuery;
    qrGetInsDurationPeriod: TOracleDataSet;
    dspGetInsDurationPeriod: TDataSetProvider;
    qrUpdateClaimRefundCar: TOracleDataSet;
    dspUpdateClaimRefundCar: TDataSetProvider;
    qrDiscountLiab: TOracleDataSet;
    dspDiscountLiab: TDataSetProvider;
    spDiscountLiab: TOracleQuery;
    qrDiscountHist: TOracleDataSet;
    dspDiscountHist: TDataSetProvider;
    qrScanAbCar: TOracleDataSet;
    dspScanAbCar: TDataSetProvider;
    dspScanAbSubj: TDataSetProvider;
    qrScanAbSubj: TOracleDataSet;
    qrBMCalcPlan: TOracleDataSet;
    dspBMCalcPlan: TDataSetProvider;
    sp_CheckFireLimitCoucur: TOracleDataSet;
    dspCheckFireLimitCoucur: TDataSetProvider;
    spQueueLimit: TOracleDataSet;
    dspQueueLimit: TDataSetProvider;
    qrSetPriorityMake: TOracleDataSet;
    dspSetPriorityMake: TDataSetProvider;
    spUpdatePreCalc: TOracleQuery;
    dspAgrClaimBM: TDataSetProvider;
    qrAgrClaimBM: TOracleDataSet;
    dspClaiminvoiceBM_New: TDataSetProvider;
    qrClaiminvoiceBM_New: TOracleDataSet;
    qrAgrClaimBM_New: TOracleDataSet;
    dspAgrClaimBM_New: TDataSetProvider;
    spAgrClaimBM_New: TOracleQuery;
    dspCalcExpectedBM: TDataSetProvider;
    qrCalcExpectedBM: TOracleDataSet;
    dspUpdAgrClaimBM: TDataSetProvider;
    spUpdAgrClaimBM: TOracleDataSet;
    spUpdClaiminvoiceBM_New: TOracleDataSet;
    dspUpdClaiminvoiceBM_New: TDataSetProvider;
    dspUpdClaiminvoiceline: TDataSetProvider;
    dspDelClaiminvoiceline: TDataSetProvider;
    spUpdClaiminvoiceline: TOracleDataSet;
    spDelClaiminvoiceline: TOracleDataSet;
    spSendCalcRequestXML: TOracleQuery;
    spGetCalcResponse: TOracleQuery;
    spFindOSAGO: TOracleQuery;
    qrGetAllowEmail: TOracleDataSet;
    dspGetAllowEmail: TDataSetProvider;
    qrSendPolicyByEmail: TOracleDataSet;
    dspSendPolicyByEmail: TDataSetProvider;
    spChangeModifStat: TOracleQuery;
    spCalcInsSumGap: TOracleQuery;
    dspAddOptions: TDataSetProvider;
    qrAddOptions: TOracleDataSet;
    spAddOptions: TOracleQuery;
    dspCrossSales: TDataSetProvider;
    spCrossSales: TOracleDataSet;
    qrRiskCtgML: TOracleDataSet;
    dspRiskCtgML: TDataSetProvider;
    spNextAgrSet: TOracleQuery;
    spChooseAgentAgrForDiscountA: TOracleQuery;
    spSearchRequestID: TOracleQuery;
    qrPayCard: TOracleDataSet;
    dspPayCard: TDataSetProvider;
    spPayCard: TOracleQuery;
    dspQrCrSl: TDataSetProvider;
    qrCrSl: TOracleDataSet;
    dspCrtAgrCrSls: TDataSetProvider;
    spCrtAgrCrSls: TOracleDataSet;
    dspAgrSubject: TDataSetProvider;
    qrAgrSubject: TOracleDataSet;
    spPJAgrSearchForDiscountPJ: TOracleQuery;
    qrDiscountGAP: TOracleDataSet;
    dspDiscountGAP: TDataSetProvider;
    spDiscountGAP: TOracleQuery;
    spGetCarCategory: TOracleQuery;
    dspDiscretes: TDataSetProvider;
    qrDiscretes: TOracleDataSet;
    spDiscretes: TOracleQuery;
    qrDiscrParams: TOracleDataSet;
    dspDiscrParams: TDataSetProvider;
    spDiscrParams: TOracleQuery;
    qrDiscretesCond: TOracleDataSet;
    dspDiscretesCond: TDataSetProvider;
    spDiscretesCond: TOracleQuery;
    qrGetCarModel: TOracleDataSet;
    dspGetCarModel: TDataSetProvider;
    spClearPayCard: TOracleQuery;
    sp_UpdNumAttr: TOracleQuery;
    qrFireDiscountL: TOracleDataSet;
    dspFireDiscountL: TDataSetProvider;
    spFireDiscountL: TOracleQuery;
    dspGetAgentAgr: TDataSetProvider;
    qrGetAgentAgr: TOracleDataSet;
    dspQrCrSlNEW: TDataSetProvider;
    qrCrSlNEW: TOracleDataSet;
    qrGetVariants: TOracleDataSet;
    dspGetVariants: TDataSetProvider;
    spGetReadOnlyCross: TOracleQuery;
    spCreateCrossAgr: TOracleQuery;
    qrFireAddRisks: TOracleDataSet;
    dspFireAddRisks: TDataSetProvider;
    spFireAddRisks: TOracleQuery;
    dspCalcDISDP: TDataSetProvider;
    qrCalcDISDP: TOracleDataSet;
    qrAddOptTab: TOracleDataSet;
    dspAddOptTab: TDataSetProvider;
    qrServicesTab: TOracleDataSet;
    dspServicesTab: TDataSetProvider;
    spServicesTab: TOracleQuery;
    qrServiceOptions: TOracleDataSet;
    dspServiceOptions: TDataSetProvider;
    spServiceOptions: TOracleQuery;
    qrNewOptionsTab: TOracleDataSet;
    dspNewOptionsTab: TDataSetProvider;
    spNewOptionsTab: TOracleQuery;
    qrStateRSA: TOracleDataSet;
    dspStateRSA: TDataSetProvider;
    qMWCarPrice: TOracleDataSet;
    dspMWCarPrice: TDataSetProvider;
    qrFireAddRisksObj: TOracleDataSet;
    dspFireAddRisksObj: TDataSetProvider;
    spFireAddRisksObj: TOracleQuery;
    spGetReasonForDiscountTypeR: TOracleQuery;
    qrAgrLinkList: TOracleDataSet;
    dsp_AgrLinkList: TDataSetProvider;
    spAgrLinkList: TOracleQuery;
    qrEconomOptions: TOracleDataSet;
    dspEconomOptions: TDataSetProvider;
    spEconomOptions: TOracleQuery;
    qrBigOptionsTab: TOracleDataSet;
    dspBigOptionsTab: TDataSetProvider;
    spBigOptionsTab: TOracleQuery;
    qMWCarPriceHist: TOracleDataSet;
    dspMWCarPriceHist: TDataSetProvider;
    qrCalcDiscountCross: TOracleDataSet;
    dspCalcDiscountCross: TDataSetProvider;
    dsp_CheckCondPayment: TDataSetProvider;
    sp_CheckCondPayment: TOracleDataSet;
    sp_CheckCondPaymentVIRTF: TFloatField;
    qrDiscountMB: TOracleDataSet;
    dspDiscountMB: TDataSetProvider;
    spDiscountMB: TOracleQuery;
    qSendRsaInfoRequestXML: TOracleQuery;
    spGetAnketaTemplateIsn: TOracleQuery;
    qrRSARequestHist: TOracleDataSet;
    dspRSARequestHist: TDataSetProvider;
    spStoreCalcResultToAgr: TOracleQuery;
    spGetCalcTemplate: TOracleQuery;
    qrGetParamValuesWithRemark: TOracleDataSet;
    dspGetParamValuesWithRemark: TDataSetProvider;
    qrBonusPlus: TOracleDataSet;
    dspBonusPlus: TDataSetProvider;
    qrRequestBonusPlus: TOracleDataSet;
    dspRequestBonusPlus: TDataSetProvider;
    qrResponseBonusPlus: TOracleDataSet;
    dspResponseBonusPlus: TDataSetProvider;
    grAccInsuredList: TOracleDataSet;
    dspGetAccInsuredList: TDataSetProvider;
    grGetCarAgrIsnHist: TOracleDataSet;
    dspGetCarAgrIsnHist: TDataSetProvider;
    qrFireCorrPremPlat: TOracleDataSet;
    dspFireCorrPremPlat: TDataSetProvider;
    spCorrPremPlat: TOracleQuery;
    qrGetCarClaimIsnHist: TOracleDataSet;
    dspGetCarClaimIsnHist: TDataSetProvider;
    spActualizeTS: TOracleQuery;
    qrScheduleIncorpExclRisks: TOracleDataSet;
    dspScheduleIncorpExclRisks: TDataSetProvider;
    qrRiskPlanFormGlobParams: TOracleDataSet;
    dspRiskPlanFormGlobParams: TDataSetProvider;
    spRiskPlanFormGlobParams: TOracleQuery;
    qrPremByRule: TOracleDataSet;
    dspPremByRule: TDataSetProvider;
    qrListAddToTechAdd: TOracleDataSet;
    dspListAddToTechAdd: TDataSetProvider;
    spReshippingReqRsa: TOracleQuery;
    spLoadFireObj: TOracleQuery;
    spCascoConds: TOracleQuery;
    dspCascoConds: TDataSetProvider;
    qrCascoConds: TOracleDataSet;
    qrCascoParams: TOracleDataSet;
    dspCascoParams: TDataSetProvider;
    spCascoParams: TOracleQuery;
    qrRegisterEOSAGO: TOracleDataSet;
    dspRegisterEOSAGO: TDataSetProvider;
    qrSettingsForLoadObj: TOracleDataSet;
    dspSettingsForLoadObj: TDataSetProvider;
    spLoadObjectValuablePropFL: TOracleQuery;
    spPickUpDocCar: TOracleQuery;
    qrGetFileIsn: TOracleDataSet;
    dspGetFileIsn: TDataSetProvider;
    spLoadXLData: TOracleQuery;
    spFindClient: TOracleQuery;
    spAddClient1: TOracleQuery;
    spSaveCustToQuote: TOracleQuery;
    spEraseTmpTbl: TOracleQuery;
    spAddClient: TOracleQuery;
    spCopyConclusionAgr: TOracleQuery;
    spGetAgr4WSMDicsount: TOracleQuery;
    qrAgrParams: TOracleDataSet;
    dspAgrParams: TDataSetProvider;
    spAgrParams: TOracleQuery;
    spAgrConds: TOracleQuery;
    dspAgrConds: TDataSetProvider;
    qrAgrConds: TOracleDataSet;
    spGetCalcResponseDate: TOracleQuery;
    spSendCalcRequestXMLDate: TOracleQuery;
    dspIfRegrExists: TDataSetProvider;
    sp_IfRegrExists: TOracleDataSet;
    dspAgrAdd: TDataSetProvider;
    dspVariant: TDataSetProvider;
    dspTerr: TDataSetProvider;
    odsAgrAdd: TOracleDataSet;
    odsVariant: TOracleDataSet;
    odsTerr: TOracleDataSet;
    spLoadXMLDataToCalc: TOracleQuery;
    qrAddrNew: TOracleDataSet;
    dspAddrNew: TDataSetProvider;
    spAddrNew: TOracleQuery;

//
//
    procedure dspCarAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure qrPhone_OUpdateRecord(DataSet: TDataSet;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure dspSubjAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure qrPhoneAfterOpen(DataSet: TDataSet);
    procedure MtsDataModuleDestroy(Sender: TObject);
    procedure dspAddBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure qrEquipAfterOpen(DataSet: TDataSet);
    procedure qrPhoneApplyRecord(Sender: TOracleDataSet; Action: Char;
      var Applied: Boolean; var NewRowId: String);
    procedure qrRefundAfterOpen(DataSet: TDataSet);
    procedure qrFCarHistAfterOpen(DataSet: TDataSet);
    procedure dspSubjBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure MtsDataModuleCreate(Sender: TObject);
    procedure dspCarBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure dspAgrCondPropBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure qrAddrAfterOpen(DataSet: TDataSet);
    procedure qrAddrApplyRecord(Sender: TOracleDataSet; Action: Char;
      var Applied: Boolean; var NewRowId: String);
    procedure dspCarDocAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure dspMAgrCASCOBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure qrPreCalcParamAfterOpen(DataSet: TDataSet);
    procedure qrPreCalcCLAfterOpen(DataSet: TDataSet);
    procedure dspDiscountBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure qrEquipPreCalcAfterOpen(DataSet: TDataSet);
    procedure dspCalcPreviewBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure dspUpdateClaimRefundCarBeforeExecute(Sender: TObject;
      var OwnerData: OleVariant);
    procedure dspDiscountLiabBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure RODataSnapModuleDeactivate(const aClientID: TGUID;
      aSession: TROSession);
    procedure OraSessionBeforeLogOn(Sender: TOracleSession);
    procedure dspDiscountGAPBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure dspDiscountGAPBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure dspDiscountMBBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure dspDiscountMBBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure dspRiskPlanFormGlobParamsBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure dspRiskPlanFormGlobParamsBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure dspScheduleIncorpExclRisksBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure dspAgrCondsBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);

  private
    FObjData: TObjData;
    procedure Lock();
    procedure UnLock();
    function ExtractXMLValue(XML, TagName: AnsiString): string;
  protected
    function GetPropertyValue(const AComponentName: UnicodeString; const APropName: UnicodeString): UnicodeString;
    function GetNextISN(const TableName: UnicodeString): Double;
    //2014-12-26 Конев В.А. Задача 73981111303 "Реализация продукта "Мобильный".
    // возвращает ISN из Dicti по его ConstName, наследуется из родительского модуля
    function GetDictiISN(const aConstName: UnicodeString): double;

    // Dmitry_Privalov/epam 2007.08.22 Задача 3977470903
    // Добавил параметр для фильтрации сумм по валюте
    // Dmitry_Privalov/epam 18.04.2008
    // Добавил параметр AgrIsn для фильтрации по продукту
    function GetFranchList(const FranchCurrIsn: Double; const AgrIsn: Double): variant;
    function GetLimList: Variant;
    procedure CalcPrem(const UserISN: Double; const AgrIsn: Double; const AddISN: Double; const ObjISN: Double; const TimeScale: variant;
                       var DBMSOutput: variant);
    procedure CalcPremEx(const UserISN: Double; const AgrIsn: Double; const AddISN: Double; const ObjISN: Double; const TimeScale: variant;
                         var DBMSOutput: variant; var pforcesrt: variant; var pXmlLog: variant; const pTestMode: Double);


    procedure SetAgrObj(const UserISN: Double; const AgrIsn: Double; const CarISN: Double; out NewCarISN: Double; const Ex: variant);
    procedure SetAgrSubj(const UserISN: Double; const AgrIsn: Double; const SubjISN: Double; const ChangeOwner: Double = 0);
    function CreateAgr(const UserISN: Double; const TmplISN: Double): Double;
    function CalcAmort(const S1: Double; const D0: Double; const D1: Double; const D2: Double; var Scheme: Double; const AgrRuleISN: Double;
                       const DateExt: Double): Double;
    function GetAgrStatusList(const UserISN: Double; const ParentISN: Double): variant;
    function ProlongAgr(const UserISN: Double; const SrcAgrISN: Double; out NewAgrISN: Double; const NewRuleISN: Double): Double;
    procedure SetPrem(const UserISN: Double; const AgrIsn: Double; const AddISN: Double; const CascoPrem: Double; const EquipPrem: Double;
                      const LiabPrem: Double; const LifePrem: Double; const CascoPremReason: Double; const TimeScale: Double;
                      const CascoPremBase: Double; const GapPrem: Double; const MotorBreakagePrem: Double);
    procedure CancelAgr(const UserISN: Double; const AgrIsn: Double; const PDate: DateTime; const Status: Integer; const Mode: Integer;
                        var DocISN: Double; const DocType: Integer);
    function GetCancelMode(const AgrIsn: Double; const PDate: DateTime): Integer;
    procedure DecodeVIN(const VIN: UnicodeString; out CtgISN: Double; out MakeISN: Double; out ModelISN: Double; out ModifISN: Double;
                        out Constructed: variant);
    function MakePrintForm(const UserISN: Double; const PFormISN: Double; const LangISN: Double; const AgrIsn: Double; const AddISN: Double;
                           const ObjList: variant; var Params: variant; const MimeEncode: Boolean): variant;
    procedure ModifMerge(const UserISN: Double; const SrcISN: Double; const DstISN: Double);
    procedure ModifPaste(const UserISN: Double; const ModifISN: Double; const ModelISN: Double);
    function GetCarPrice(const CarISN: Double; const DateCalc: DateTime): Double;
    procedure InsertEquip(const UserISN: Double; const AgrIsn: Double; const AddISN: Double; const ParentISN: Double; const ClassISNList: variant);
    procedure SetAgrSums(const UserISN: Double; const AgrIsn: Double);
    function GetVersion: Integer;
    function CheckAgent(const AgrIsn: Double): Integer;
    function GetCancelMode2(const UserISN: Double; const AgrIsn: Double; const PDate: DateTime): UnicodeString;
    function CheckName(const UserISN: Double; const PName: variant): variant;
    function CancelAgr2(const UserISN: Double; const Params: variant): variant;
    function GetCarPrice2(const Param: variant): variant;
    function CreateAgr2(const UserISN: Double; const Params: variant): variant;
    function ProlongAgr2(const UserISN: Double; const Params: variant): variant;
    function ChP6to12(const UserISN: Double; const Params: variant): variant;
    function SetAgrLimit(const UserISN: Double; const Params: variant): variant;
    function Get_Property1: Integer; safecall;
    procedure Set_Property1(Value: Integer); safecall;
    function FTariff(pCarISN, pTariffISN: Double): OleVariant; safecall;
    function doProdExt(const UserISN: Double; const AgrIsn: Double; const Param: variant): variant;
    { IAppServer }
    function AS_ApplyUpdates(const ProviderName: UnicodeString; const Delta: Binary; const MaxErrors: Integer; out ErrorCount: Integer;
                             var OwnerData: AnsiString): binary;
    function AS_GetRecords(const ProviderName: UnicodeString; const Count: Integer; out RecsOut: Integer; const Options: Integer;
                           const CommandText: UnicodeString; var Params: Binary; var OwnerData: AnsiString): binary;
    function AS_GetProviderNames: TProviderNames;
    function AS_GetParams(const ProviderName: UnicodeString; var OwnerData: AnsiString): binary;
    function AS_RowRequest(const ProviderName: UnicodeString; const Row: Binary; const RequestType: Integer; var OwnerData: AnsiString): binary;
    procedure AS_Execute(const ProviderName: UnicodeString; const CommandText: UnicodeString; var Params: Binary; var OwnerData: AnsiString);
    function ExecuteSP(const ProviderName: UnicodeString; var OwnerData: variant): variant;
    function GetReport(const ReportName: UnicodeString; var OwnerData: variant): variant;
    procedure CloseDS(const ProviderName: UnicodeString; const pGUID: UnicodeString);
    function doProdExtClass(const UserISN: Double; const AgrIsn: Double; const Param: variant; const ClassIsn: Double): variant;
    procedure CalcPrem2(const UserISN: Double; const AgrIsn: Double; const AddISN: Double; const ObjISN: Double; const TimeScale: variant;
                        var DBMSOutput: variant);
    procedure PreCalcPrem(const UserISN: Double; const pAgrISN: Double; const pRuleISN: Double; out pMsg: variant; out pISN: variant;
                          const nTestMode: Double; const pNeedLog: Double; out pXmlLog: variant);

    procedure UpdateGroup(const UserISN: Double; const pEx: UnicodeString; const pISN: Double);
    procedure CheckFreeRequest(const pUserISN: Double; const pAgrISN: Double; out pFreeRequest: Double); //Кудинова Е.Р. 29.08.07 Проверка наличия свободных заявок по договору }
    procedure GetBodyModel(const VIN: UnicodeString; const ModelISN: Double; out BodyModelISN: Double; out BodyModelName: UnicodeString);
    function ListWarnings(const pTag: Double; const pISN: Double; const pParam0: Double; const pParam1: Double; const pParam2: Double;
                          const pStrParam0: UnicodeString; const pStrParam1: UnicodeString; const pStrParam2: UnicodeString): variant;
    function GetListWarnings(const pTag, pISN, pParam0, pParam1, pParam2: Double; const pStrParam0, pStrParam1, pStrParam2: UnicodeString): Variant;
    function GetBuildNumber: OleVariant; safecall;
    procedure CopyCalc(const pOldIsn: Double; out pNewIsn: Double);
    procedure ConvertCalc(const pOldIsn: Double; out pNewIsn: Double);

    procedure CreateFraudTask(const pUserISN: Double; const pAgrISN: Double; const pClaimIsn: Double; const pCode: Double; const pDesc: UnicodeString;
                              const pEstimationISN: Double);
    procedure LoadCarDamage(const pSurveyISN: Double; const pPartISN: Double; const pDamageISN: Double; const pPartName: UnicodeString;
                            const pPartSide: UnicodeString; const pUserISN: Double);
    procedure AddToInspectList(const pUserISN: Double; const pUserLabel: UnicodeString; const pEx: Integer; const pClassISN: Double;
                               const pReceiverISN: Double; const PFormISN: Double; const pObjISN: Double; const pID: UnicodeString;
                               const pObjISN2: Double; const pMakeModel: UnicodeString; const pParkPlace: UnicodeString);
    function CopyAgr(const UserISN: Double; const Params: variant): variant;
    function CopyConclusionAgr(const UserISN: Double; const Params: variant): variant;
    procedure UpdateInvisibleField(const pUserISN: Double; const PACTION: UnicodeString; const pRuleISN: Double; const PGROUPID: Double;
                                   const PNO: Double; const pAgrISN: Double);
    function SendCalcRequestXML(const pAgrISN: Double; const pAddISN: Double; const pType: Double; const pXmlDoc: UnicodeString; var pMsg: UnicodeString): Double;
    function SendCalcRequestXMLDate(const pCrgDocISN: Double; const pRequestDate: DateTime; const pType: Double; var pMsg: UnicodeString): Double;
    function GetCalcResponse(const pSendCalcKBMISN: Double; const pType: Double): UnicodeString;
    function GetCalcResponseDate(const pSendCalcKBMISN: Double; const pCrgDocISN: Double; const pType: Double): UnicodeString;
    procedure UpdatePreCalc(const AgrISN: Double; const PreCalcISN: Double; const Del: Double);
    function PickUpDocCar(const UserISN: Double; const pAgrisn: Double; var ErrMessage: UnicodeString): Double;
    procedure GetOsagoNum(const pAgrIsn: Double);
    procedure ChangeModifStatus(const pISN: Double; const pSTATUS: UnicodeString);
    procedure CalcInsSumGap(const pAgrIsn: Double);
    procedure NextAgrIdSet(const pAgrIsn: Double; const pNextAgrIsn: Double);
    function ChooseAgentAgrForDiscountA(const AgrIsn: Double; const AddIsn: Double; const UserIsn: Double): Variant;
    function SearchRequestID(const pAgrISN: Double; const pRequestID: WideString): Double;
    function PJAgrSearchForDiscountPJ(const AgrIsn: Double; const AddIsn: Double; const UserIsn: Double): Variant;
    procedure GetCarCategory(const pModel: Double; const pSeats: Double; const pMaxLoad: Double; out pCategoryIsn: Double; out pCategoryCode: UnicodeString);
    procedure ClearPayCard (const pISN: Double);
    procedure UpdateNumAttrib(const pObjIsn: Double; const pName: UnicodeString; const pValue: Double; const pDiscr: UnicodeString);
    procedure GetReadOnlyCross(const pAgrIsn: Double; const pRuleIsn: Double; out pReadOnlyFields: AnsiString);
    procedure CreateCrossAgr(const pAgrIsn: Double; const pTaskIsn: Double; const pKindIsn: Double; const pRuleIsn: Double; const pVariant: Double;
                             const pInsuredSum: Double; const pLimitSum: Double; const pGO: Double; const pCallBack: Double; const pPrFO: Double;
                             out pNewAgrIsn: Double; out pPremiumSum: Double; out pNewAgrID: UnicodeString);
    function GetReasonForDiscountTypeR(const pAgrISN: Double; out pCtgFilialName: UnicodeString; out pReasonName: UnicodeString): Double;
    function SendRsaInfoRequestXML(const pAgrIsn: Double; const pAddIsn: Double; const pSerial: UnicodeString; const pNumber: UnicodeString): Double;
    function GetAnketaTemplateIsn(const pAgrIsn: Double; out pNeedCreate: Double): Double;
    function GetCalcTemplate(const pAgrIsn: Double; const pObjIsn: Double; const pParamIsn: Double; const pMode: Double): Double;
    procedure StoreCalcResultToAgr(const pAgrIsn: Double);
    procedure InsertGroup(const pAgrIsn: Double; const pClassIsn: Double);
    function SendPassToInsurer(const pAgrIsn: Double ;  const pPhone: UnicodeString) : integer;
    function GetAccInsuredList(const pAgrIsn: Double): Variant;
    function GetCarAgrIsnHist(const pAgrIsn: Double; const pCarObjISN: Double; const pVIN: UnicodeString): Variant;
    procedure CorrPremPlat(const pAgrISN: Double; const pAddISN: Double; const pParams: UnicodeString);
    function GetCarClaimIsnHist(const pVIN: UnicodeString): Variant;
    function GetPhoneListForSMS(const pAgrIsn: Double; const pInsurerSubjIsn: Double): UnicodeString;
    // 10.06.2016, sevryugin, 99191374003 (Реализация: "Контроль изменения премии (дыры)")
    procedure ActualizeTS(const pAgrISN: Double; const pAddISN: Double; const pCarISN: Double; var pResult: Double);
    // 16.09.2016RКарпушин 109266370903
    procedure ReshippingReqRsa(const pAgrISN: Double);
    procedure LoadFireObj(const pObjList: UnicodeString; const pAgrISN: Double; out pLog: UnicodeString);
    procedure LoadObjectValuablePropFL(const pObjList: UnicodeString);
    // 04.08.2017 Makarova task 153457217903
    procedure LoadXLData(const pagrisn: double; out pMsg: UnicodeString);
    procedure FindClient(const pagrIsn: double; const pSubjisn: double; var pSearchMode: double; out pFindTaskIsn: double);
    procedure AddClient1(const pSubjisn: double);
    procedure AddClient(const pagrIsn: double; const pSubjisn: double);
    procedure SaveCustToQuote(const pagrIsn: double; const pObjisn: double);
    procedure EraseTempTable;
    // Грачев Д.В. 27.03.2017 135290078503
    procedure GetAgr4WSMDicsount(const pClientISN: Variant; out pAgrISN: Variant);
    // 04.01.2018 Карпушин 182110489403
    procedure  LoadXMLDataToCalc(const pagrisn: double; out pMsg: UnicodeString);
  end;

var
  MAgrDM: TMAgrDM;

implementation

uses
  DIMimeStreams, DIMime
  {$IFDEF DELPHI7+}, Variants{$ENDIF}  , GRoutines, DM_Dispatcher,
  motorAgr_Invk;

const
 SRV_VERSION=225;

{$R *.DFM}

/////////

procedure TMAgrDM.MtsDataModuleDestroy(Sender: TObject);
begin
// if FPrintDM<>nil then FreeAndNil(FPrintDM);
 FreeAndNil(FObjData);
 inherited;
end;


function TMAgrDM.GetNextISN(const TableName: UnicodeString): Double;
begin
 Result:=inherited GetNextISN(TableName);
end;

function FF2SQL(F :Extended) :string;
var
 D :Char;
begin
 D:=DecimalSeparator;
 DecimalSeparator:='.';
 try
  Result:=FloatToStr(F);
 finally
  DecimalSeparator:=D;
 end;
end;


procedure TMAgrDM.dspSubjAfterApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
begin
 Debug_CurrProcName:='dspSubjAfterApplyUpdates';
 // DSPAfterApplyUpdates(Sender, OwnerData);
 //if VarIsNull(OwnerData) then
 //  OwnerData:=VarArrayOf([Integer(1), spSubj.ParamByName('pISN').AsFloat]);
 // передача на клиента нового ISN-а после создания записи
 with spSubj do
  begin
   if VariableIndex('ISN')=-1 then DeclareVariable('ISN', otFloat); // борьба с ошибкой "Unknown variable ISN"
   OwnerData:=VarArrayOf([Integer(1), GetVariable('ISN')]);
  end;
end;

// - qrPhone

procedure TMAgrDM.qrPhoneApplyRecord(Sender: TOracleDataSet; Action: Char;
  var Applied: Boolean; var NewRowId: String);
begin
  Debug_CurrProcName:='qrPhoneUpdateRecord';
  if Pos(Action, 'U')>0 then
  begin
   Sender.DeclareQueryVariables(spPhone);
   Sender.SetQueryVariables(spPhone);
   if (qrPhone.FieldByName('ISN').OldValue=NULL) then
    begin
     spPhone.SetVariable('PEX','I');
     spPhone.Execute;
     Applied:=TRUE;
     Exit;
    end;
   if (qrPhone.FieldByName('Phone').NewValue=NULL) and
      (qrPhone.FieldByName('Contact').NewValue=NULL) then
    begin
     spPhone.SetVariable('PEX','D');
     spPhone.Execute;
     Applied:=TRUE;
     Exit;
    end;
  end;
  if Pos(Action, 'IUD')>0 then begin
   Sender.DeclareQueryVariables(spPhone);
   Sender.SetQueryVariables(spPhone);
   spPhone.SetVariable('pEx', Action);
   spPhone.Execute;
  end;
  Applied:=TRUE;
end;

//Вариант для работы через BDE
procedure TMAgrDM.qrPhone_OUpdateRecord(DataSet: TDataSet;
  UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
begin
{
 Debug_CurrProcName:='qrPhoneUpdateRecord';
 if (UpdateKind=ukModify) then
  begin
   if (qrPhone.FieldByName('ISN').OldValue=NULL) then
    begin
     //updPhone.Apply(ukInsert);
     updPhone.Execute;
     UpdateAction:=uaApplied;
     Exit;
    end;
   if (qrPhone.FieldByName('Phone').NewValue=NULL) and
      (qrPhone.FieldByName('Contact').NewValue=NULL) then
    begin
     //updPhone.Apply(ukDelete);
     updPhone.Execute;
     UpdateAction:=uaApplied;
     Exit;
    end;
  end;
 //updPhone.Apply(UpdateKind);
 updPhone.Execute;
 UpdateAction:=uaApplied;
}
end;

// Key: ISN+ClassISN+Phone
procedure TMAgrDM.qrPhoneAfterOpen(DataSet: TDataSet);
begin
 DSAfterOpen(DataSet);
 Add2Key(DataSet, 'ClassISN');
 Add2Key(DataSet, 'Phone');
end;

// Key: ISN+CondISN
procedure TMAgrDM.qrEquipAfterOpen(DataSet: TDataSet);
begin
 DSAfterOpen(DataSet);
 Add2Key(DataSet, 'CondISN');
end;

// - qrCar
procedure TMAgrDM.dspCarAfterApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
begin
 Debug_CurrProcName:='dspCarAfterApplyUpdates';
// DSPAfterApplyUpdates(Sender, OwnerData);
// if VarIsNull(OwnerData) then
// OwnerData:=VarArrayOf([Integer(1), spCar.GetVariable('ISN')]);
 with spCar do
  begin
   if VariableIndex('ISN')=-1 then DeclareVariable('ISN', otFloat); // борьба с ошибкой "Unknown variable ISN"
   OwnerData:=VarArrayOf([Integer(1), GetVariable('ISN')]);
  end;
end;


procedure TMAgrDM.dspAddBeforeApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
var
 S :string;
begin
 Debug_CurrProcName:='dspAddBeforeApplyUpdates';
 Debug_CurrObject:=dspAdd;
// специальная обработка: дополнительные параметры, не входящие в картеж
 qrAdd.SetVariable(1, OwnerData[2]);
 qrAdd.SetVariable(2, OwnerData[3]);
// AL 22/11/03
 if VarArrayHighBound(OwnerData, 1)>4 then
  // для совместимости
  begin
   S:=' ADDTOCANCEL='+VarToStr(OwnerData[4])+
      ' EQUIP='+VarToStr(OwnerData[5])+
      ' METHOD='+VarToStr(OwnerData[6])+
      ' DISCOUNT='+VarToStr(OwnerData[7]);
   if VarArrayHighBound(OwnerData, 1)>9 then S:=S+' LIFE='+VarToStr(OwnerData[10]);
   //22.08.2017 153459326803 Шустов
   if VarArrayHighBound(OwnerData, 1)>10 then S:=S+' GAP='+VarToStr(OwnerData[11]);
   if VarArrayHighBound(OwnerData, 1)>7 then S:=S+' '+OwnerData[8];
   spAdd.SetVariable('ADDPARAM', S);
  end
 else
  spAdd.SetVariable('ADDPARAM', OwnerData[4]);
//
// SetUser(OwnerData[0], OwnerData[1]);
end;

procedure TMAgrDM.qrRefundAfterOpen(DataSet: TDataSet);
begin
 DSAfterOpen(DataSet);
 Add2Key(DataSet, 'ClaimISN');
end;

procedure TMAgrDM.qrFCarHistAfterOpen(DataSet: TDataSet);
begin
 DSAfterOpen(DataSet);
 Add2Key(DataSet, 'AgrISN');
end;

procedure TMAgrDM.dspSubjBeforeApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
begin
 DSPSetParams(Sender, OwnerData);
 Debug_CurrProcName:='dspSubjBeforeApplyUpdates';
// специальная обработка: дополнительные параметры, не входящие в картеж
 if VarArrayHighBound(OwnerData,1)>2 then
  spSubj.SetVariable('COPYADDR', OwnerData[3]);
end;



// ======= Удаленные процедуры =========

// Версия сервеного модуля для сравнения с клиентским
function TMAgrDM.GetVersion: Integer;
begin
 Result:=SRV_VERSION;
end;

// Формирование списка франшиз
function TMAgrDM.GetFranchList(const FranchCurrIsn: Double; const AgrIsn: Double): variant;
var
 i :Integer;
begin
  with qrTFranch do begin
    SetVariable ('PAGRISN', AgrIsn);
    SetVariable ('P_CURR_ISN', FranchCurrIsn);
    Open;
    Result:=VarArrayCreate([0, RecordCount], varDouble);
    Result[0]:=0; i:=1;
    while not(EOF) do  begin
      Result[i]:=Fields[0].AsFloat;
      Inc(i);
      Next;
    end;
   Close;       
  end;
end;


// Формирование списка лимитов по ГО
function TMAgrDM.GetLimList: Variant;
var
 i :Integer;
begin
  with qrTLim do begin
    Open;
    try
      Result := VarArrayCreate([0, RecordCount-1], varVariant);
      i:=0;
      while not(EOF) do begin
        Result[i]:=VarArrayOf([Fields[0].AsFloat, Fields[1].AsString]);
        Inc(i); Next;
      end;
    finally
      Close;
    end;
  end;
end;

// 19.11.2015 Карпушин 91279274103
function TMAgrDM.GetAccInsuredList(const pAgrIsn: Double): Variant;
var
 i :Integer;
begin
  with grAccInsuredList do begin
      SetVariable('pAgrISN', pAgrIsn);
      Open;
    try
      Result := VarArrayCreate([0, RecordCount-1], varVariant);
      i:=0;
      while not(EOF) do begin
        Result[i]:=Fields[0].AsFloat;
        Inc(i); Next;
      end;
    finally
      Close;
    end;
  end;
end;

// 17.03.2016 Карпушин 97418857003
function TMAgrDM.GetCarAgrIsnHist(const pAgrIsn: Double; const pCarObjISN: Double; const pVIN: UnicodeString): Variant;
var
 i :Integer;
begin
  with grGetCarAgrIsnHist do begin
      SetVariable('pAgrISN', pAgrIsn);
      SetVariable('pCarObjISN', pCarObjISN);
      SetVariable('pVIN', pVIN);
      Open;
    try
      Result := VarArrayCreate([0, RecordCount-1], varVariant);
      i:=0;
      while not(EOF) do begin
        Result[i]:=Fields[0].AsFloat; 
        Inc(i); Next;
      end;
    finally
      Close;
    end;
  end;
end;

// Расчет премии
// TimeScale=0 -- принудительный краткосрочный расчет
// TimeScale=1 -- принудительный пропорциональный расчет
// TimeScale=NULL -- согласно тарифам
procedure TMAgrDM.CalcPrem(const UserISN: Double; const AgrIsn: Double; const AddISN: Double; const ObjISN: Double; const TimeScale: variant; 
                       var DBMSOutput: variant);
var
 NeedOutput :Boolean;
 NumDLines: Integer;
 DBuff :string;
begin
//  SetUser(UserISN);
  NeedOutput:=not(VarIsNull(DBMSOutput));
  NumDLines:=1000000;

  if NeedOutput then
    OraSession.DBMS_Output.Enable(NumDLines);
  try
    with spCalcPrem do  begin
      SetVariable('pAgrISN', AgrISN);
      SetVariable('pAddISN', AddISN);
      SetVariable('pObjISN', ObjISN);
      SetVariable('pXMode', TimeScale);
      Execute;
    end;
    if NeedOutput then begin
      NumDLines := 20000;
      OraSession.DBMS_Output.Get_Lines(DBuff, NumDLines);
      DBMSOutput:=DBuff;
    end;
  finally
    if NeedOutput then
      OraSession.DBMS_Output.Disable;
  end;
end;

// Обновление сум в формуляре договора (премия, полученная премия, возмещения)
procedure TMAgrDM.SetAgrSums(const UserISN: Double; const AgrIsn: Double);
begin
  // SetUser(UserISN);
  with spSetSums do begin
    SetVariable('pAgrISN',AgrISN);
    Execute;
  end;
end;

// Установка AgrObject.DescISN
procedure TMAgrDM.SetAgrObj(const UserISN: Double; const AgrIsn: Double; const CarISN: Double; out NewCarISN: Double; const Ex: variant);
begin
//  SetUser(UserISN, '');
  with spAgrObj do begin
    SetVariable('pAgrISN',AgrISN);
    SetVariable('pCarISN',CarISN);
    SetVariable('pEx',Ex); // 21.11.2017, Task 175946560603, Sevryugin, Не изменяется категория ТС при поиске (парки)
    Execute;
    NewCarISN:=GetVariable('pCarISN'); // 07.11.2017, Sevryugin, Task 173506900103/162000501903, категория ТС
  end;
end;

// Установка Agreement.ClientISN
procedure TMAgrDM.SetAgrSubj(const UserISN: Double; const AgrIsn: Double; const SubjISN: Double; const ChangeOwner: Double = 0);
begin
  // SetUser(UserISN);
  with spAgrSubj do begin
    SetVariable('pAgrISN', AgrISN);
    SetVariable('pSubjISN', SubjISN);
    SetVariable('pChangeOwner', round(ChangeOwner)); // 22.04.2013 Kuznetsov S.M. Task 43424886103
    Execute;
  end;
end;

// Создание договора по шаблону
function TMAgrDM.CreateAgr(const UserISN: Double; const TmplISN: Double): Double;
begin
  // SetUser(UserISN);
  with spCreateAgr do begin
    ClearVariables;
    SetVariable('pTemplISN', TmplISN);
    SetVariable('pSaveParam', 'Y');
    SetVariable('pAddrISN', NULL);
    Execute;
    Result:=GetVariable('pAgrISN');
  end;
end;

// Толстолуцкий 21.05.15
Function TMAgrDM.SendRsaInfoRequestXML(const pAgrIsn: Double; const pAddIsn: Double;
 const pSerial: UnicodeString; const pNumber: UnicodeString): Double;
begin
  with qSendRsaInfoRequestXML do
    begin
      ClearVariables;
      SetVariable('pAgrIsn',pAgrIsn);
      SetVariable('pAddIsn',pAddIsn);
      SetVariable('pSerial',pSerial);
      SetVariable('pNumber',pNumber);
      Execute;
      Result:=GetVariable('RES');
    end;
end;

// AL 25/03/04: Создание договора по шаблону с передачей адреса
function TMAgrDM.CreateAgr2(const UserISN: Double; const Params: variant): variant;
begin
  // SetUser(UserISN);
  with spCreateAgrByPrecalc do begin
    ClearVariables;
    SetVariable('pSaveParam', 'Y');
    SetVariable('pAddrISN', Params[0]);
    SetVariable('pPrecalcISN', Params[1]); // ZK 12.02.2007 привязка договора к котировке

    // 20070704 DmitryPo/VDI Опция добавления транспортного средства в договор
    if(VarArrayHighBound(Params,1) > 1) then begin
      if(Params[2] = 0) then
        SetVariable('pCreateCar', 'N')
      else
        SetVariable('pCreateCar', 'Y');
    end else begin
      SetVariable('pCreateCar', 'N');
    end;
    // 16.05.2013 Соболев А.В. Передача выбранного пользователем шаблона
    if(VarArrayHighBound(Params,1) > 2) then begin
      if(Params[3] = 0) then
        SetVariable('pTemplateISN', null)
      else
        SetVariable('pTemplateISN', Params[3]);
    end else
      SetVariable('pTemplateISN', null);
    Execute;
    Result:=VarArrayOf([GetVariable('pAgrISN')]);
  end;
end;



function TMAgrDM.ProlongAgr(const UserISN: Double; const SrcAgrISN: Double; out NewAgrISN: Double; const NewRuleISN: Double): Double;
begin
  // SetUser(UserISN);
  with spProlongAgr do begin
    ClearVariables;
    SetVariable('pAddrISN', NULL);
    SetVariable('pSrcAgrISN',SrcAgrISN);
    if NewRuleISN<>0 then SetVariable('pNewAgrRuleISN', NewRuleISN);
    Execute;
    Result:=GetVariable('Result');
    NewAgrISN := GetVariable('pNewAgrISN');
  end;
end;


// AL 25/03/04: Продление договора с передачей адреса
function TMAgrDM.ProlongAgr2(const UserISN: Double; const Params: variant): variant;
begin
  // SetUser(UserISN);
  with spProlongAgr do begin
    ClearVariables;
    SetVariable('pSrcAgrISN', Params[0]);
    if Params[1]<>0 then SetVariable('pNewAgrRuleISN', Params[1]);
    SetVariable('pAddrISN', Params[2]);
    SetVariable('PDELETEAGENT', Params[3]);
    // 22.09.2010 Мерзляков М. М. задача 17353135103
    // правило копирования участников со статусом "запрет использования"
    if(VarArrayHighBound(Params, 1) > 3) then
      SetVariable('pClientUseBanRule', Params[4]);
    //Гиринов А.С. 26.12.13 task = 42865793703 Копирование эмитента
    if(VarArrayHighBound(Params, 1) > 4) then
      SetVariable('pCopyEmittent', Params[5]);
    Execute;
    Result:=VarArrayOf([GetVariable('Result'), GetVariable('pNewAgrISN')]);
  end;
end;



function TMAgrDM.CalcAmort(const S1: Double; const D0: Double; const D1: Double; const D2: Double; var Scheme: Double; const AgrRuleISN: Double;
                       const DateExt: Double): Double;
begin
  if Scheme=0 then // определить схему амортизации по продукту
    with spAmortScheme do begin
      ClearVariables;
      SetVariable('pAgrRuleISN',AgrRuleISN);
      SetVariable('pDate',D2);
      Execute;
      Scheme:=GetVariable('Result');
    end;
  with spCalcAmort do begin
    SetVariable('pS1',S1);
    SetVariable('pD0',D0);
    SetVariable('pD1',D1);
    SetVariable('pD2',D2);
    SetVariable('pScheme',Scheme);
    SetVariable('pDateExt',DateExt);
    Execute;
    Result:=GetVariable('Result');
  end;
end;

// Получение списка статусов договора
function TMAgrDM.GetAgrStatusList(const UserISN: Double; const ParentISN: Double): variant;
var
 i :Integer;
begin
  // SetUser(UserISN);
  with qrTStatus do begin
    SetVariable('pParentISN',ParentISN);
    Open;
    Result:=VarArrayCreate([0, RecordCount-1], varVariant);
    i:=0;
    while not(EOF) do begin
      Result[i]:=VarArrayOf([MimeEncodeString(Fields[0].AsString), Fields[1].AsString, Fields[2].AsFloat, Fields[3].AsString]);
      Inc(i); Next;
    end;
    Close;
  end;

end;



procedure TMAgrDM.SetPrem(const UserISN: Double; const AgrIsn: Double; const AddISN: Double; const CascoPrem: Double; const EquipPrem: Double;
                          const LiabPrem: Double; const LifePrem: Double; const CascoPremReason: Double; const TimeScale: Double;
                          const CascoPremBase: Double; const GapPrem: Double; const MotorBreakagePrem: Double);
begin
//  SetUser(UserISN, '');
  with spSetPrem do begin
    ClearVariables;
    SetVariable('pAgrISN', AgrISN);
    SetVariable('pAddISN', AddISN);
    if CascoPrem<>-1 then begin SetVariable('pCascoPrem', CascoPrem); SetVariable('pTimeScale', TimeScale); end;
    if EquipPrem<>-1 then SetVariable('pEquipPrem', EquipPrem);
    if LiabPrem<>-1 then SetVariable('pLiabPrem', LiabPrem);
    if LifePrem<>-1 then SetVariable('pLifePrem', LifePrem);
    if CascoPremReason <> -1 then
     SetVariable('pDiscountReason', CascoPremReason);
    if CascoPremBase <> -1 then
     SetVariable('pDiscountBase', CascoPremBase);
    if GapPrem<>-1 then SetVariable('pGapPrem', GapPrem);
    if MotorBreakagePrem<>-1 then SetVariable('pMotorBreakagePrem', MotorBreakagePrem);
    Execute;
  end;
end;


// AL 26/12/03: Остается для совместимости с клиентом
procedure TMAgrDM.CancelAgr(const UserISN: Double; const AgrIsn: Double; const PDate: DateTime; const Status: Integer; const Mode: Integer; 
                        var DocISN: Double; const DocType: Integer);
var
 V :Variant;
begin
 V:=CancelAgr2(UserISN, VarArrayOf([AgrISN, PDate, Char(Status), Mode, DocISN, DocType, NULL]));
 DocISN:=V[0];
end;


// AL 26/12/03: Прекращение договора
function TMAgrDM.CancelAgr2(const UserISN: Double; const Params: variant): variant;
begin
  // SetUser(UserISN);
  with spCancelAgr do begin
    ClearVariables;
    SetVariable('pAgrISN', Params[0]);
    SetVariable('pDate', Params[1]);
    SetVariable('pStatus', Params[2]);
    SetVariable('pMode', Params[3]);
    if Params[4]<>0 then
      SetVariable('pDocISN', Params[4])
    else
      SetVariable('pDocISN', NULL);
    SetVariable('pDocType', Params[5]);
    SetVariable('pLoad', Params[6]);
    SetVariable('pDateBeg', Params[7]); //20/10/06 Угринович А.Н.
    // AL 22/01/04: исправление ошибки передачи статуса при английском языке
    if VarArrayHighBound(Params, 1)>=8 then
      SetVariable('pStatus', MimeDecodeString(Params[8]));
    //Ivanov DI - параметры для новых методов "пропорционально"
    if VarArrayHighBound(Params, 1)>=9 then
      SetVariable('pRiskSums', MimeDecodeString(Params[9]));
    if VarArrayHighBound(Params, 1)>=11 then  begin
      if StrToFloat(VarToStr(Params[10]))=-1 then
        SetVariable('pUserCalcPrevSum', NULL)
      else
        SetVariable('pUserCalcPrevSum', Params[10]);
      if StrToFloat(VarToStr(Params[11]))=-1 then
        SetVariable('pUserCalcCurSum',  NULL)
      else
        SetVariable('pUserCalcCurSum',  Params[11]);
    end;
    if VarArrayHighBound(Params, 1)>=11 then begin
      if StrToFloat(VarToStr(Params[12]))=-1 then
        SetVariable('pNewRule', NULL)
      else
        SetVariable('pNewRule', Params[12]);
    end;
    if VarArrayHighBound(Params, 1)>=12 then begin
      if StrToFloat(VarToStr(Params[13]))=-1 then
        SetVariable('pParseCond', NULL)
      else
        SetVariable('pParseCond', Params[13]);
    end;
    Execute;
    Result:=VarArrayOf([GetVariable('pDocISN')]);
  end;
end;


function TMAgrDM.GetCancelMode(const AgrIsn: Double; const PDate: DateTime): Integer;
begin
  with spCancelModes do begin
    SetVariable('pAgrISN',AgrISN);
    SetVariable('pDate',PDate);
    Execute;
    Result:=Pos('*', GetVariable('pModes'))-1;
  end;
end;


function TMAgrDM.GetCancelMode2(const UserISN: Double; const AgrIsn: Double; const PDate: DateTime): UnicodeString;
begin
  // SetUser(UserISN);
  with spCancelModes do begin
    SetVariable('pAgrISN',AgrISN);
    SetVariable('pDate',PDate);
    Execute;
    Result:=GetVariable('pModes');
  end;
end;


procedure TMAgrDM.DecodeVIN(const VIN: UnicodeString; out CtgISN: Double; out MakeISN: Double; out ModelISN: Double; out ModifISN: Double; 
                        out Constructed: variant);
begin
  with spDecodeVIN do begin
    SetVariable('pVIN',VIN);
    Execute;
    CtgISN:=GetVariable('pCtgISN');
    MakeISN:=GetVariable('pMakeISN');
    ModelISN:=GetVariable('pModelISN');
    ModifISN:=GetVariable('pModifISN');
    Constructed:=GetVariable('pConstructed');
  end;
end;

// Печать в ppReport
function TMAgrDM.MakePrintForm(const UserISN: Double; const PFormISN: Double; const LangISN: Double; const AgrIsn: Double; const AddISN: Double; 
                           const ObjList: variant; var Params: variant; const MimeEncode: Boolean): variant;
begin
  //
end;


procedure TMAgrDM.ModifMerge(const UserISN: Double; const SrcISN: Double; const DstISN: Double);
begin
  // SetUser(UserISN);
  with spModifMerge do begin
    SetVariable('pSrcModifISN',SrcISN);
    SetVariable('pDstModifISN',DstISN);
    SetVariable('pDelSrc',0);
    Execute;
  end;
end;


procedure TMAgrDM.ModifPaste(const UserISN: Double; const ModifISN: Double; const ModelISN: Double);
begin
  // SetUser(UserISN);
  with spMoveModif do  begin
    SetVariable('pModelISN',ModelISN);
    SetVariable('pModifISN',ModifISN);
    Execute;
  end;
end;


function TMAgrDM.GetCarPrice2(const Param: variant): variant;
begin
  with spGetPrice do begin
    SetVariable('pCarISN', Param[0]);
    SetVariable('pDateCalc', Param[1]);
    Execute;
    Result:=VarArrayOf([
           GetVariable('pPrice'),
           GetVariable('pCurrISN'),
           GetVariable('pCurrCode')])
  end;
end;

function TMAgrDM.GetCarPrice(const CarISN: Double; const DateCalc: DateTime): Double;
var
 V :Variant;
begin
  V:=GetCarPrice2(VarArrayOf([CarISN, DateCalc]));
  Result:=V[0];
end;


procedure TMAgrDM.InsertEquip(const UserISN: Double; const AgrIsn: Double; const AddISN: Double; const ParentISN: Double; const ClassISNList: variant);
var
 i, L, H :Integer;
begin
  Debug_CurrProcName:='TMAgrDM.InsertEquip';
  Debug_CurrObject:=spEquip;
  // SetUser(UserISN);
  with spEquip do begin
    SetVariable('pEx', 'I');
    DeclareVariable('State', otString); SetVariable('State', 'Y');
    DeclareVariable('AgrISN', otFloat); SetVariable('AgrISN', AgrISN);
    DeclareVariable('AddISN', otFloat); SetVariable('AddISN', AddISN);
    DeclareVariable('ParentISN', otFloat); SetVariable('ParentISN', ParentISN);
    DeclareVariable('Model', otString); SetVariable('Model', NULL);
    DeclareVariable('Constructed', otDate); SetVariable('Constructed', NULL);
    DeclareVariable('Price', otFloat); SetVariable('Price', NULL);
    DeclareVariable('Discount', otFloat); SetVariable('Discount', NULL);
    DeclareVariable('CurrISN', otFloat); SetVariable('CurrISN', NULL);
    DeclareVariable('PremSum', otFloat); SetVariable('PremSum', NULL);
    DeclareVariable('Cost', otFloat); SetVariable('Cost', NULL);
    DeclareVariable('Discount2Equip', otFloat); SetVariable('Discount2Equip', NULL);
    DeclareVariable('ISN', otFloat);
    DeclareVariable('CondISN', otFloat);
    DeclareVariable('ClassISN', otFloat);
    //Prepare;  --?
    L:=VarArrayLowBound(ClassISNList, 1);
    H:=VarArrayHighBound(ClassISNList, 1);
    for i:=L to H do begin
      SetVariable('ISN', NULL);
      SetVariable('CondISN', NULL);
      SetVariable('ClassISN', ClassISNList[i]);
      Execute;
    end;
    //Unprepare;  --?
  end;
end;


function TMAgrDM.CheckAgent(const AgrIsn: Double): Integer;
begin
  with spCheckAgent do begin
    SetVariable('pAgrISN',AgrISN);
    Execute;
    Result:=GetVariable('Result');
  end;
end;


// AL 25/12/03: Проверка имени
function TMAgrDM.CheckName(const UserISN: Double; const PName: variant): variant;
const
  MAX_NAME_LIST=10;
var
 V2, V3 :Variant;

 function GetCheckNameRes(Res :Variant) :Variant;
 var
   S, SN, SL, vWord :string;
   P, Q, i, Cnt :Integer;
 begin
   Result:=NULL;
   if VarIsNull(Res) then Exit;
   S:=VarToStr(Res);
   P:=Pos('|',S);
   if P=0 then Exit;
   vWord:=Trim(Copy(S,1,P-1));
   S:=Copy(S,P+1,1000);
   Cnt:=0;
   for i:=1 to Length(S) do if S[i]=';' then Inc(Cnt);
   Result:=VarArrayCreate([0, Cnt-1], varVariant);
   i:=0;
   while S<>'' do  begin
     P:=Pos(';',S);
     if P=0 then Break;
     Q:=Pos(':',S);
     if (Q<P) and (Q<>0) then begin
       SN:=Copy(S,1,Q-1);
       SL:=Copy(S,Q+1,P-Q-1);
     end else begin
       SN:=Copy(S,1,P-1);
       SL:=' ';
     end;
     Result[i]:=VarArrayOf([Trim(SN), Trim(SL), vWord]);
     S:=Copy(S,P+1,1000);
     Inc(i);
   end;
 end;

begin
  Debug_CurrProcName:='TMAgrDM.CheckName';
  Debug_CurrObject:=spCheckName;
  // SetUser(UserISN);
  with spCheckName do begin
    SetVariable('pName', PName);
    SetVariable('pOrd', 2); // имя
    Execute;
    V2:=GetCheckNameRes(GetVariable('Result'));
    SetVariable('pOrd', 3); // отчество
    Execute;
    V3:=GetCheckNameRes(GetVariable('Result'));
  end;
  Result:=VarArrayOf([V2, V3]);
end;

// AL 1/06/04: Временная процедура коррекции срока договора ОСАГО
// с 6 до 12 месяцев с сохранением периода использования 6 месяцев
function TMAgrDM.ChP6to12(const UserISN: Double; const Params: variant): variant;
begin
  Debug_CurrProcName:='TMAgrDM.ChP6to12';
  Debug_CurrObject:=spChP6to12;
  // SetUser(UserISN);
  with spChP6to12 do begin
    SetVariable('pAgrISN', Params[0]);
    Execute;
  end;
end;

// AL 29/07/04
function TMAgrDM.SetAgrLimit(const UserISN: Double; const Params: variant): variant;
const
 INSRT_SQL='INSERT INTO ListISN(TaskISN, ObjISN) VALUES(%s, %s); ';
 PROC_SQL='MAGRFC.SETAGRLIMIT(%s, %s, %s, %s); ';
var
  i :Integer;
  TaskISN :Double;
  vParam : string;
begin
  Debug_CurrProcName:='TMAgrDM.SetAgrLimit';
  // SetUser(UserISN);
  TaskISN:=GetNextISN('TASKS');
  with qrAnySQL do begin
    SQL.Clear;
    SQL.Add('BEGIN ');
    for i:=VarArrayLowBound(Params[2],1) to VarArrayHighBound(Params[2],1) do
      SQL.Add(Format(INSRT_SQL, [FF2SQL(TaskISN), FF2SQL(Params[2][i])]));

    if VarArrayHighBound(Params,1) >= 3 then
      vParam := FF2SQL(Params[3])
    else
      vParam := 'null';

    SQL.Add(Format(PROC_SQL, [FF2SQL(Params[0]), FF2SQL(Params[1]), FF2SQL(TaskISN), vParam]));
    SQL.Add('COMMIT; END;');
    Execute;
  end;
end;


function TMAgrDM.Get_Property1: Integer;
begin

end;

procedure TMAgrDM.Set_Property1(Value: Integer);
begin

end;

//Yunin V.A. 30/08/04
function TMAgrDM.FTariff(pCarISN, pTariffISN: Double): OleVariant;
var
  i :integer;
begin
  with qrTariff do
    begin
      SetVariable('pCarISN', pCarISN);
      SetVariable('pTariffISN', pTariffISN);
      Open;
      Result:=VarArrayCreate([0, RecordCount-1], varVariant);
      i:=0;
      while not(EOF) do begin
        Result[i]:=VarArrayOf([Fields[0].AsFloat, Fields[1].AsFloat, Fields[2].AsFloat, Fields[3].AsFloat, Fields[4].AsFloat, Fields[5].AsFloat, Fields[6].AsFloat]);
        Inc(i);
        Next;
                        end;
      Close;
    end;

end;

function TMAgrDM.doProdExt(const UserISN: Double; const AgrIsn: Double; const Param: variant): variant;
begin
  // SetUser(UserISN);
  qrProdExt.ClearVariables;
  qrProdExt.setvariable('agrisn',agrisn);
  if (param=null) or (vartype(param)=varString) or (vartype(param)=varOleStr) then
       qrProdExt.setvariable('isnlist',param)
  else qrProdExt.setvariable('isn',param);
  qrProdExt.Execute;
  result:=vararrayof([qrProdExt.getvariable('isn'),qrProdExt.GetVariable('isnlist')]);
end;

procedure TMAgrDM.MtsDataModuleCreate(Sender: TObject);
begin
  inherited;
  FObjData := TObjData.FCreate(self, OraSession);
  FObjData.CheckData := False;
end;

function TMAgrDM.AS_ApplyUpdates(const ProviderName: UnicodeString; const Delta: Binary; const MaxErrors: Integer; out ErrorCount: Integer; 
                             var OwnerData: AnsiString): binary;
var
  PrvName: WideString;
  LogName: string;
  lOwnerData: Variant;
begin
  Lock;
  try
//Петраков А.  17.01.2012  в RO Ownerdata тип ansistring, поэтому преобразуем
  lOwnerData:=StrToVarArray(AnsiString(OwnerData));

    PrvName := FObjData.GetSubProvider(ProviderName, lOwnerData, LogName);
    Result := inherited AS_ApplyUpdates(PrvName, Delta, MaxErrors, ErrorCount, OwnerData)
  finally
    UnLock
  end
end;

function TMAgrDM.AS_GetRecords(const ProviderName: UnicodeString; const Count: Integer; out RecsOut: Integer; const Options: Integer;
                           const CommandText: UnicodeString; var Params: Binary; var OwnerData: AnsiString): binary;
var
  PrvName: WideString;
  LogName: string;
  lOwnerData: Variant;
begin
  Lock;
  try
   //Петраков А.  17.01.2012  в RO Ownerdata тип ansistring, поэтому преобразуем
   lOwnerData:=StrToVarArray(AnsiString(OwnerData));

    PrvName := FObjData.GetSubProvider(ProviderName, lOwnerData, LogName);
    Result := inherited AS_GetRecords(PrvName, Count, RecsOut, Options, CommandText, Params, OwnerData)
  finally
    FObjData.CloseQuery(ProviderName);
    UnLock
  end
end;

function TMAgrDM.AS_GetProviderNames: TProviderNames;
begin
  Lock;
  try
    Result := inherited AS_GetProviderNames;
    FObjData.GetProviders(Result)
  finally UnLock
  end
end;

function TMAgrDM.AS_GetParams(const ProviderName: UnicodeString; var OwnerData: AnsiString): binary;
var
  PrvName: WideString;
  LogName: string;
  lOwnerData: Variant;
begin
  Lock;
  try
   //Петраков А.  17.01.2012  в RO Ownerdata тип ansistring, поэтому преобразуем
    lOwnerData:=StrToVarArray(AnsiString(OwnerData));

    PrvName := FObjData.GetSubProvider(ProviderName, lOwnerData, LogName);
    Result := inherited AS_GetParams(PrvName, OwnerData)
  finally
    UnLock
  end
end;

function TMAgrDM.AS_RowRequest(const ProviderName: UnicodeString; const Row: Binary; const RequestType: Integer; var OwnerData: AnsiString): binary;
var
  PrvName: WideString;
  LogName: string;
  lOwnerData: Variant;
begin
  Lock;
  try
    //Петраков А.  17.01.2012  в RO Ownerdata тип ansistring, поэтому преобразуем
    lOwnerData:=StrToVarArray(AnsiString(OwnerData));


    PrvName := FObjData.GetSubProvider(ProviderName, lOwnerData, LogName);
    Result := inherited AS_RowRequest(PrvName, Row, RequestType, OwnerData)
  finally
    UnLock
  end
end;

procedure TMAgrDM.AS_Execute(const ProviderName: UnicodeString; const CommandText: UnicodeString; var Params: Binary; var OwnerData: AnsiString);
var
  PrvName: WideString;
  LogName: string;
  lOwnerData: Variant;
begin
  Lock;
  try
    //Петраков А.  17.01.2012  в RO Ownerdata тип ansistring, поэтому преобразуем
    lOwnerData:=StrToVarArray(AnsiString(OwnerData));

    PrvName := FObjData.GetSubProvider(ProviderName, lOwnerData, LogName);
    inherited AS_Execute(PrvName, CommandText, Params, OwnerData);
// Нужно преобразовать опять OwnerData, так как AS_EXECUTE мог изменить ее содержимое
    lOwnerData:=StrToVarArray(AnsiString(OwnerData));
    FObjData.GetProviderResult(ProviderName, lOwnerData);
    OwnerData:=Var_ToStr(lOwnerData);
  finally
    UnLock
  end
end;

function TMAgrDM.ExecuteSP(const ProviderName: UnicodeString; var OwnerData: variant): variant;
begin
  Lock;
  try
    Result := FObjData.ExecuteSP(ProviderName, OwnerData)
  finally
    UnLock;
  end
end;

function TMAgrDM.GetReport(const ReportName: UnicodeString; var OwnerData: variant): variant;
begin
  Lock;
  try
    Result := FObjData.GetReport(ReportName, OwnerData);
  finally
    UnLock;
  end
end;

procedure TMAgrDM.CloseDS(const ProviderName: UnicodeString; const pGUID: UnicodeString);
begin
  Lock;
  try
    FObjData.CloseDS(ProviderName, pGUID);
  finally
    UnLock;
  end
end;


procedure TMAgrDM.dspCarBeforeApplyUpdates(Sender: TObject;  var OwnerData: OleVariant);
var
  AgrISN :variant;
  AddISN :variant;
begin
  Debug_CurrProcName:='dspCarBeforeApplyUpdates';
  DSPSetParams(Sender, OwnerData);
  // специальная обработка: дополнительные параметры, не входящие в картеж
  if VarArrayHighBound(OwnerData,1)>2 then
  begin
    AgrISN:=OwnerData[3];
    AddISN:=OwnerData[4]; // 23.11.2009 Мерзляков М. М. задача 12196811203
    spCar.SetVariable('pAGRISN', AgrISN);
    spCar.SetVariable('pADDISN', AddISN);

    //qrCar.SetVariable('PAGRISN', AgrISN);
    //qrCar.SetVariable('PADDISN', AddISN);
  end;
    //with Application do MessageBox(PChar('_!_'), PChar(Title), MB_OK);
end;

function TMAgrDM.doProdExtClass(const UserISN: Double; const AgrIsn: Double; const Param: variant; const ClassIsn: Double): variant;
begin
  // SetUser(UserISN);
  qrProdExtClass.ClearVariables;
  qrProdExtClass.setvariable('agrisn',agrisn);
  qrProdExtClass.setvariable('isnlist',param);
  qrProdExtClass.setvariable('ClassIsn',ClassIsn);
  qrProdExtClass.Execute;
end;


procedure TMAgrDM.dspAgrCondPropBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
    spAgrCondProp.ClearVariables;
    qrAgrCondProp.ClearVariables;

    with spAgrCondProp do begin
//      SetUser(OwnerData[0], OwnerData[1]);
      SetVariable('PEXE',OwnerData[2]);
      SetVariable('PAGRISN',OwnerData[3]);
      SetVariable('PADDISN',OwnerData[4]);
      SetVariable('POBJISN',OwnerData[5]);
      SetVariable('PTARIFFCLASSISN',OwnerData[6]);
      SetVariable('PPROPERTYISN',OwnerData[7]);
      SetVariable('PPROPERTYOLDISN',OwnerData[8]);
      SetVariable('PDATECALC',OwnerData[9]);
      SetVariable('PREMARK',OwnerData[10]); // ZK 02.02.2007 ДИТ-07-1-028068

      //Execute;
    end;

    qrAgrCondProp.SetVariable('PAGRISN',OwnerData[3]);
    qrAgrCondProp.SetVariable('PADDISN',OwnerData[4]);

end;

procedure TMAgrDM.qrAddrAfterOpen(DataSet: TDataSet);
begin
  inherited;
  DSAfterOpen(DataSet);
  Add2Key(DataSet, 'ClassISN');
end;

procedure TMAgrDM.qrAddrApplyRecord(Sender: TOracleDataSet; Action: Char;
  var Applied: Boolean; var NewRowId: String);
begin
  Debug_CurrProcName:='qrAddrUpdateRecord';
  if Pos(Action, 'U')>0 then
  begin
   Sender.DeclareQueryVariables(spAddr);
   Sender.SetQueryVariables(spAddr);
    if (qrAddr.FieldByName('ISN').OldValue=NULL) then
    begin
     spAddr.SetVariable('PEX','I');
     spAddr.Execute;
     Applied:=TRUE;
     Exit;
    end;
  end;
  if Pos(Action, 'IUD')>0 then begin
   Sender.DeclareQueryVariables(spAddr);
   Sender.SetQueryVariables(spAddr);
   spAddr.SetVariable('pEx', Action);
   spAddr.Execute;
  end;
  Applied:=TRUE;

end;

procedure TMAgrDM.CalcPrem2(const UserISN: Double; const AgrIsn: Double; const AddISN: Double; const ObjISN: Double; const TimeScale: variant; 
                        var DBMSOutput: variant);
var
  NeedOutput :Boolean;
  LOB: TLOBLocator;
begin
  // SetUser(UserISN);
  NeedOutput:=not(VarIsNull(DBMSOutput));
  OraSession.DBMS_Output.Disable;
  with spCalcPrem2 do  begin
    SetVariable('pAgrISN', AgrISN);
    SetVariable('pAddISN', AddISN);
    SetVariable('pObjISN', ObjISN);
    SetVariable('pXMode', TimeScale);
    if NeedOutput then
      SetVariable('NeedLog', 1)
    else
      SetVariable('NeedLog', 0);
    LOB := TLOBLocator.Create(Session, otCLOB);
    SetComplexVariable('log', LOB);
    Execute;
    DBMSOutput := Lob.AsString;
    Lob.Free;
  end;
end;

procedure TMAgrDM.dspCarDocAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:=VarArrayOf([Integer(1), spCarDoc.GetVariable('PMESSAGTEXT')]);
end;

// Yunin V.A. 02/11/06 расчет котировки
procedure TMAgrDM.PreCalcPrem(const UserISN: Double; const pAgrISN: Double; const pRuleISN: Double; out pMsg: variant; out pISN: variant;
                          const nTestMode: Double; const pNeedLog: Double; out pXmlLog: variant);
var
  LOB : TLOBLocator;
begin
  // SetUser(UserISN);
  spPreCalcPrem.ClearVariables;
  spPreCalcPrem.SetVariable('pAgrISN', pAgrISN);
  spPreCalcPrem.SetVariable('pRuleISN', pRuleISN);
  spPreCalcPrem.SetVariable('nTestMode', nTestMode);
  spPreCalcPrem.SetVariable('pNeedLog', pNeedLog);
  LOB := TLOBLocator.Create(spPreCalcPrem.Session, otCLOB);
  try
    spPreCalcPrem.SetComplexVariable('PXMLLOG', LOB);
    spPreCalcPrem.Execute;
    pXMLlog := Lob.AsString;
  finally
    Lob.Free;
  end;
  pMsg:=spPreCalcPrem.GetVariable('pMsg');
  pISN:=spPreCalcPrem.GetVariable('pISN');

end;


procedure TMAgrDM.dspMAgrCASCOBeforeGetRecords(Sender: TObject;   var OwnerData: OleVariant);
begin
  inherited;
  DSPSetParams(Sender, OwnerData);
end;

procedure TMAgrDM.qrPreCalcParamAfterOpen(DataSet: TDataSet);
begin     // против key violation
// Key: ISN+ClassISN+ParName+ParentISN
 DSAfterOpen(DataSet);
 Add2Key(DataSet, 'ClassISN');
 Add2Key(DataSet, 'ParName');
 Add2Key(DataSet, 'ParentISN');
end;

procedure TMAgrDM.UpdateGroup(const UserISN: Double; const pEx: UnicodeString; const pISN: Double);
begin
  // SetUser(UserISN);
  spUpdateGroup.ClearVariables;
  spUpdateGroup.SetVariable('pEx', pEx);
  spUpdateGroup.SetVariable('pISN', pISN);
  spUpdateGroup.Execute;
end;


procedure TMAgrDM.qrPreCalcCLAfterOpen(DataSet: TDataSet);
var
  i   : integer;
  fld : TField;
begin
  // Dmitry_Popov/EPAM 20070801 Задача #3962483403 не происходит POST DataSet-а котировки ОСАГО
  // Устанавливаем нестандартные(не ISN) параметры ключа в наборе данных
  for i := 0 to DataSet.FieldCount-1 do begin
    fld := DataSet.Fields[i];
    if(AnsiCompareText(fld.FieldName,'AGRISN') = 0)
      then fld.ProviderFlags := [pfInUpdate, pfInKey]
      else fld.ProviderFlags := [pfInUpdate];
  end;
end;


Procedure TMAgrDM.CheckFreeRequest(const pUserISN: Double; const pAgrISN: Double; out pFreeRequest: Double);
begin
//  SetUser(pUserISN);
  with spAgrFreeRequest do begin
   ClearVariables;
   SetVariable('pAgrISN', pAgrISN);
   Execute;
   pFreeRequest:=GetVariable('pFreeRequest');
  end;
end;

// Yankovsky/EPAM 14/11/07 - Task 4364585403
procedure TMAgrDM.GetBodyModel(const VIN: UnicodeString; const ModelISN: Double; out BodyModelISN: Double; out BodyModelName: UnicodeString);
begin
  with spGetBodyModel do
  begin
    SetVariable('pVIN',VIN);
    SetVariable('pModelISN',ModelISN);
    Execute;
    BodyModelISN:=GetVariable('pBodyModelISN');
    BodyModelName:=GetVariable('pBodyModelName');
  end;
end;

//2015-01-16 Конев В.А. Задача 73701949703
// сделал самостоятельной функцией, чтобы можно было использовать и в другой функции
// Dmitry_Privalov/epam 16.01.2007 task 4595561103
function TMAgrDM.ExtractXMLValue(XML, TagName: AnsiString) : string;
// функция узкоспециализирована - предполагает уникальность тегов
var
  TagNameLen : integer;
  OpenTagPos : integer;
  CloseTagPos : integer;
begin
  OpenTagPos := Pos('<' + TagName + '>', XML);
  CloseTagPos := Pos('</' + TagName + '>', XML);
  if (OpenTagPos > 0) and (CloseTagPos > 0) and (OpenTagPos < CloseTagPos)
  then begin
    TagNameLen := Length(TagName);
    Result := Copy(XML, OpenTagPos + TagNameLen + 2, CloseTagPos + 1 - OpenTagPos - TagNameLen - 3);
  end
  else if (TagName = 'message')
  then begin
    Result := XML;
  end
  else begin
    Result := '';
  end;
end;


//22.02.2017 Krymskii 132992205303
function TMAgrDM.PickUpDocCar(const UserISN: Double; const pAgrisn: Double; var ErrMessage: UnicodeString): Double;
var LOB : TLOBLocator;
begin
//  SetUser(UserISN);
  with spPickUpDocCar do
  begin
      SetVariable('PAGRISN', pAgrIsn);
      LOB := TLOBLocator.CreateTemporary(Session, otCLOB, true);
      try
        Execute;
        Result := GetVariable('perrflag');
        ErrMessage  := GetVariable('ErrMessage');
      finally
        Lob.Free;
      end;
  end;
end;

// Dmitry_Privalov/epam 16.01.2007 tasc 4595561103
// Список предупреждений
function TMAgrDM.ListWarnings(const pTag: Double; const pISN: Double; const pParam0: Double; const pParam1: Double; const pParam2: Double;
                              const pStrParam0: UnicodeString; const pStrParam1: UnicodeString; const pStrParam2: UnicodeString): variant;
var
	i : Integer;

//2015-01-16 Конев В.А. Задача 73701949703
// сделал самостоятельной функцией, чтобы можно было использовать и в другой функции
{	function ExtractXMLValue(XML, TagName: AnsiString) : string;
	// функция узкоспециализирована - предполагает уникальность тегов
	var
		TagNameLen : integer;
		OpenTagPos : integer;
		CloseTagPos : integer;
	begin
		OpenTagPos := Pos('<' + TagName + '>', XML);
		CloseTagPos := Pos('</' + TagName + '>', XML);
		if (OpenTagPos > 0) and (CloseTagPos > 0) and (OpenTagPos < CloseTagPos)
		then begin
			TagNameLen := Length(TagName);
			Result := Copy(XML, OpenTagPos + TagNameLen + 2, CloseTagPos + 1 - OpenTagPos - TagNameLen - 3);
		end
		else if (TagName = 'message')
		then begin
			Result := XML;
		end
		else begin
			Result := '';
		end;
	end;}

begin
  with qrListWarn do begin
     Close;
     SetVariable('pISN', pIsn);
     SetVariable('pTag', pTag);
     SetVariable('pParam0', pParam0);
     SetVariable('pParam1', pParam1);
     SetVariable('pParam2', pParam2);
     SetVariable('pStrParam0', pStrParam0);
     SetVariable('pStrParam1', pStrParam1);
     SetVariable('pStrParam2', pStrParam2);

     Open;
     Result:=VarArrayCreate([0, 2 * RecordCount], varOleStr);
     Result[0]:=0; i:=1;
     while not(EOF) do
      begin
       Result[i]:=ExtractXMLValue(Fields[0].AsString, 'message');
       Result[i + 1]:=ExtractXMLValue(Fields[0].AsString,  'style');

       i := i + 2;
       Next;
      end;
     Close;
  end;
end;

//2015-01-16 Конев В.А. Задача 73701949703
// Функция по своей функциональности идентична ListWarnings
// но возвращает массив массивов, количество строк не удваивается
// и возвращаются все параметры, переданные с сервера
// Количество элементов в массиве соответствует количеству предупреждений
// Каждый элемент массива представляет собой также массив, состоящий из 4-х элементов:
// сообщение (строка) и 3 флага:
//  pstyle   - стиль окна (комбинация флагов кнопок, иконок и т.п. окна MessageBox).
//  pstopkey - результат, при возвращении которого из диалога клиентская функция возвращает FALSE
//             и дальнейшие сообщения не показываются. Представляет собой число - одну из констант WARN.ID...
// ptag     - число, передается в функцию уведомления на клиенте. Может использоваться для идентификации сообщения.
function TMAgrDM.GetListWarnings(const pTag: Double; const pISN: Double; const pParam0: Double; const pParam1: Double; const pParam2: Double;
                              const pStrParam0: UnicodeString; const pStrParam1: UnicodeString; const pStrParam2: UnicodeString): variant;
var
	i : Integer;
  vTag: double;
  fsStr2Float: TFormatSettings;
  vLogMsg: string;
  vMsg, vStyle, vKey, vTagStr : string;
begin
  with qrListWarn do begin
     Close;
     SetVariable('pISN', pIsn);
     SetVariable('pTag', pTag);
     SetVariable('pParam0', pParam0);
     SetVariable('pParam1', pParam1);
     SetVariable('pParam2', pParam2);
     SetVariable('pStrParam0', pStrParam0);
     SetVariable('pStrParam1', pStrParam1);
     SetVariable('pStrParam2', pStrParam2);

     Open;
     vLogMSG:='Src='+Fields[0].AsString+#13#10+'reccount='+IntToStr(RecordCount);

     Result:=VarArrayCreate([0, RecordCount], varVariant);
     Result[0]:=0;

     i:=1;
     fsStr2Float.DecimalSeparator := '.';
     vLogMSG:='';
     while not(EOF) do
      begin
       vMsg:=ExtractXMLValue(Fields[0].AsString,  'message');
       vStyle:=ExtractXMLValue(Fields[0].AsString,  'style');
       vKey:=ExtractXMLValue(Fields[0].AsString,  'stopkey');
       vTagStr:=ExtractXMLValue(Fields[0].AsString,  'tag');
       vLogMSG:=vLogMSG+'msg='+vMsg+';style='+vStyle+';key='+vKey+';tag='+vTagStr+#13#10;
       vTag := 0;
       TryStrToFloat(vTagStr, vTag, fsStr2Float);
       Result[i] := VarArrayOf(
                    [ ExtractXMLValue(Fields[0].AsString, 'message')
                    , StrToIntDef(vStyle, 0)
                    , StrToIntDef(vKey, 0)
                    , vTag] );
       Inc(I);
       Next;
      end;
     Close;
  end;
end;


function TMAgrDM.GetBuildNumber: OleVariant;
begin

end;

procedure TMAgrDM.CopyCalc(const pOldIsn: Double; out pNewIsn: Double);
begin
  spCopyCalc.SetVariable('ISN',pOldIsn);
  spCopyCalc.Execute;
  pNewIsn := spCopyCalc.GetVariable('RESULT');
end;

procedure TMAgrDM.ConvertCalc(const pOldIsn: Double; out pNewIsn: Double);
begin
  spConvertCalc.SetVariable('ISN',pOldIsn);
  spConvertCalc.Execute;
  pNewIsn := spConvertCalc.GetVariable('RESULT');
end;

procedure TMAgrDM.dspDiscountBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;

  spDiscount.ClearVariables;
  qrDiscount.ClearVariables;
//    SetUser(OwnerData[0], OwnerData[1]);
    spDiscount.SetVariable('pExe', OwnerData[2]);
    spDiscount.SetVariable('pISN', OwnerData[3]);
    spDiscount.SetVariable('pAgrISN', OwnerData[4]);
    spDiscount.SetVariable('pTariff', OwnerData[5]);
    spDiscount.SetVariable('pX1', OwnerData[6]);
    spDiscount.SetVariable('pTariffClassISN', OwnerData[7]);
    spDiscount.SetVariable('pRemark', OwnerData[8]);
    spDiscount.SetVariable('PCALCPREVDISCOUNT', OwnerData[9]);
    if VarArrayHighBound(OwnerData, 1) > 9 then
      spDiscount.SetVariable('pRiskRuleISN', OwnerData[10]);
    if VarArrayHighBound(OwnerData, 1) > 10 then
      spDiscount.SetVariable('pBase', OwnerData[11]);

    qrDiscount.SetVariable('PAGRISN', OwnerData[4]);

end;

procedure TMAgrDM.CalcPremEx(const UserISN: Double; const AgrIsn: Double; const AddISN: Double; const ObjISN: Double; const TimeScale: variant;
                         var DBMSOutput: variant; var pforcesrt: variant; var pXmlLog: variant; const pTestMode: Double);
var
  NeedOutput :Boolean;
  NumDLines: Integer;
  DBuff :string;
  LOB: TLOBLocator;
begin
  // SetUser(UserISN);

  // Определяем систему расчета (нужно для лога)
  if VarIsNull(pforcesrt) then
    with qrGetSystem do begin
      SetVariable('PISN', AgrISN);
      Execute;
      pforcesrt := GetVariable('psystem');
    end;

  NeedOutput:=not(VarIsNull(DBMSOutput));
  NumDLines:=1000000;
  if NeedOutput and (pforcesrt <> 1) then
    OraSession.DBMS_Output.Enable(NumDLines);
  try
    with spCalcPremEx do  begin
      SetVariable('pAgrISN', AgrISN);
      SetVariable('pAddISN', AddISN);
      SetVariable('pObjISN', ObjISN);
      SetVariable('pXMode', TimeScale);
      SetVariable('pTestMode', pTestMode);
      SetVariable('pforcesrt', pforcesrt);
      // если включен режим лога то сохранение результатов не производим
      // чтобы возможные ошибка сохранения не мешали просмотру лога расчета
      if NeedOutput then  begin
        SetVariable('preturnxmllog', 1);
        SetVariable('pnoupdate', 1);
      end else begin
        SetVariable('preturnxmllog', 0);
        SetVariable('pnoupdate', 0);
      end;
      LOB := TLOBLocator.Create(Session, otCLOB);
      SetComplexVariable('log', LOB);
      Execute;
      pXMLlog := Lob.AsString;
      Lob.Free;
    end;
    if NeedOutput and (pforcesrt <> 1) then begin
      NumDLines := 20000;
      OraSession.DBMS_Output.Get_Lines(DBuff, NumDLines);
      DBMSOutput:=DBuff;
    end;
  finally
    if NeedOutput and (pforcesrt <> 1) then
      OraSession.DBMS_Output.Disable;
  end;
end;

procedure TMAgrDM.qrEquipPreCalcAfterOpen(DataSet: TDataSet);
begin
  inherited;
  inherited;

  DSAfterOpen(DataSet);
  Add2Key(DataSet, 'GroupId');
end;


procedure TMAgrDM.CreateFraudTask(const pUserISN: Double; const pAgrISN: Double; const pClaimIsn: Double; const pCode: Double; const pDesc: UnicodeString; 
                              const pEstimationISN: Double);
begin

//  SetUser(pUserISN);
  with sp_CreateFraudTask do begin

    SetVariable('pAgrISN', pAgrISN);
    SetVariable('pClaimISN', pClaimISN);
    SetVariable('pCode', pCode);
    SetVariable('pDesc', pDesc);
    SetVariable('pEstimationISN', pEstimationISN);
    ExecSql;
  end;    

end;

procedure TMAgrDM.LoadCarDamage(const pSurveyISN: Double; const pPartISN: Double; const pDamageISN: Double; const pPartName: UnicodeString; 
                            const pPartSide: UnicodeString; const pUserISN: Double);
begin
  with spLoadCarDamage do begin
    SetVariable('pSurveyISN', pSurveyISN);
    SetVariable('pPartISN', pPartISN);
    SetVariable('pDamageISN', pDamageISN);
    SetVariable('pPartName', pPartName);
    SetVariable('pPartSide', pPartSide);
    SetVariable('pUserISN', pUserISN);
    Execute;
  end;
end;

procedure TMAgrDM.AddToInspectList(const pUserISN: Double; const pUserLabel: UnicodeString; const pEx: Integer; const pClassISN: Double; 
                               const pReceiverISN: Double; const PFormISN: Double; const pObjISN: Double; const pID: UnicodeString; 
                               const pObjISN2: Double; const pMakeModel: UnicodeString; const pParkPlace: UnicodeString);
begin
//  SetUser(pUserISN, pUserLabel);

  spInspectList.ClearVariables;
  spInspectList.SetVariable('pEx', chr(pEx));
  spInspectList.SetVariable('pClassISN', pClassISN);
  spInspectList.SetVariable('pReceiverISN', pReceiverISN);
  spInspectList.SetVariable('pFormISN', pFormISN);
  spInspectList.SetVariable('pObjISN', pObjISN);
  spInspectList.SetVariable('pID', pID);
  spInspectList.SetVariable('pObjISN2', pObjISN2);
  spInspectList.SetVariable('pMakeModel', pMakeModel);
  spInspectList.SetVariable('pParkPlace', pParkPlace);
  spInspectList.Execute;
end;

function TMAgrDM.CopyAgr(const UserISN: Double; const Params: variant): variant;
begin
  // SetUser(UserISN);
  with spCopyAgr do begin
    ClearVariables;
    SetVariable('pSrcAgrISN', Params[0]);
    if Params[1] <> 0 then SetVariable('pNewAgrRuleISN', Params[1]);
    if Params[2] <> 0 then SetVariable('pNewAgrDetailISN', Params[2]);
    if Params[3] <> 0 then SetVariable('pCopyM', Params[3]);
    if Params[4] <> 0 then SetVariable('pAddrISN', Params[4]);
    if Params[5] <> '' then SetVariable('pClientUseBanRule', Params[5]);
    Execute;
    Result:=VarArrayOf([GetVariable('pNewAgrISN')]);
  end;
end;

function TMAgrDM.CopyConclusionAgr(const UserISN: Double; const Params: variant): variant;
begin
  with spCopyConclusionAgr do begin
    ClearVariables;
    SetVariable('pSrcAgrISN', Params[0]);
    if Params[1] <> 0 then SetVariable('pNewAgrRuleISN', Params[1]);
    if Params[2] <> 0 then SetVariable('pNewAgrDetailISN', Params[2]);
    if Params[3] <> 0 then SetVariable('pCopyM', Params[3]);
    if Params[4] <> 0 then SetVariable('pAddrISN', Params[4]);
    if Params[5] <> '' then SetVariable('pClientUseBanRule', Params[5]);
    Execute;
    Result:=VarArrayOf([GetVariable('pNewAgrISN')]);
  end;
end;


// Yunin V.A. 16/10/2012
function TMAgrDM.GetCalcResponse(const pSendCalcKBMISN: Double; const pType: Double): UnicodeString;
begin
  with spGetCalcResponse do begin
    ClearVariables;
    SetVariable('pSendCalcKBMISN',pSendCalcKBMISN);
    SetVariable('pType',pType);
    Execute;
    Result:=GetVariable('Result');
  end;
end;

function TMAgrDM.GetCalcResponseDate(const pSendCalcKBMISN: Double; const pCrgDocISN: Double; const pType: Double): UnicodeString;
begin
  with spGetCalcResponseDate do begin
    ClearVariables;
    SetVariable('pSendCalcKBMISN',pSendCalcKBMISN);
    SetVariable('pCrgDocISN',pCrgDocISN);
    SetVariable('pType',pType);
    Execute;
    Result:=GetVariable('Result');
  end;
end;

function TMAgrDM.SendCalcRequestXML(const pAgrISN: Double; const pAddISN: Double; const pType: Double; const pXmlDoc: UnicodeString; var pMsg: UnicodeString): Double;
begin
  with spSendCalcRequestXML do begin
    ClearVariables;
    SetVariable('pAgrISN',pAgrISN);
    SetVariable('pAddISN',pAgrISN);
    SetVariable('pType',pType);
    SetVariable('pXMLDOC','');
    SetVariable('pMsg','');
    Execute;
    pMsg:=GetVariable('pMsg');
    Result:=GetVariable('Result');
  end;
end;

function TMAgrDM.SendCalcRequestXMLDate(const pCrgDocISN: Double; const pRequestDate: DateTime; const pType: Double; var pMsg: UnicodeString): Double;
begin
  with spSendCalcRequestXMLdate do begin
    ClearVariables;
    SetVariable('pCrgDocISN',pCrgDocISN);
    SetVariable('pRequestDate',pRequestDate);
    SetVariable('pType',pType);
    SetVariable('pMsg',pMsg);
    Execute;
    pMsg:=GetVariable('pMsg');
    Result:=GetVariable('Result');
  end;
end;

procedure TMAgrDM.UpdateInvisibleField(const pUserISN: Double; const PACTION: UnicodeString; const pRuleISN: Double; const PGROUPID: Double;
                                   const PNO: Double; const pAgrISN: Double);
begin
//  SetUser(pUserISN);
  with spUpdateInvisibleFields do begin
    ClearVariables;
    SetVariable('pAction', pAction);
    SetVariable('pRuleIsn', pRuleIsn);
    SetVariable('pGroupId', pGroupId);
    SetVariable('pNo', pNo);
    SetVariable('pAgrIsn', PAGRISN);
    Execute;
  end;
end;

procedure TMAgrDM.dspCalcPreviewBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
//  try
//    SetUser(OwnerData[0], OwnerData[1]);
//  finally
//    SetComplete;
//  end;
end;

procedure TMAgrDM.dspUpdateClaimRefundCarBeforeExecute(Sender: TObject;  var OwnerData: OleVariant);
begin
  inherited;
//    SetUser(OwnerData[0], OwnerData[1]);
end;



procedure TMAgrDM.dspDiscountLiabBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;

  spDiscountLiab.ClearVariables;
  qrDiscountLiab.ClearVariables;
//    SetUser(OwnerData[0], OwnerData[1]);
    spDiscountLiab.SetVariable('pExe', OwnerData[2]);
    spDiscountLiab.SetVariable('pISN', OwnerData[3]);
    spDiscountLiab.SetVariable('pAgrISN', OwnerData[4]);
    spDiscountLiab.SetVariable('pTariff', OwnerData[5]);
    spDiscountLiab.SetVariable('pX1', OwnerData[6]);
    spDiscountLiab.SetVariable('pTariffClassISN', OwnerData[7]);
    spDiscountLiab.SetVariable('pRemark', OwnerData[8]);
    spDiscountLiab.SetVariable('PCALCPREVDISCOUNT', OwnerData[9]);
    if VarArrayHighBound(OwnerData, 1) > 9 then
      spDiscountLiab.SetVariable('pRiskRuleISN', OwnerData[10]);
    if VarArrayHighBound(OwnerData, 1) > 10 then
      spDiscountLiab.SetVariable('pBase', OwnerData[11]);

    qrDiscountLiab.SetVariable('PAGRISN', OwnerData[4]);
end;

procedure TMAgrDM.RODataSnapModuleDeactivate(const aClientID: TGUID; aSession: TROSession);
//var i :Integer;
begin
// for i:=0 to ComponentCount-1 do
//  if Components[i] is TOracleDataSet then
//   TOracleDataSet(Components[i]).CloseAll;
 inherited;
end;

procedure TMAgrDM.Lock;
begin

end;

procedure TMAgrDM.UnLock;
begin

end;

function TMAgrDM.GetPropertyValue(const AComponentName,
  APropName: UnicodeString): UnicodeString;
begin
  result:=GetPropVal(self,AComponentName,APropName);
end;



procedure Create_MAgrDM(out anInstance : IUnknown);
begin
  anInstance := TMAgrDM.Create(nil);
end;


var
  fClassFactory: TROPooledClassFactory;

procedure TMAgrDM.OraSessionBeforeLogOn(Sender: TOracleSession);
//var ss: AnsiString;
begin
//  ss:=OraSession.LogonDatabase;
//  OutputDebugString(PAnsiChar(SS));
end;

procedure TMAgrDM.UpdatePreCalc(const AgrISN: Double; const PreCalcISN: Double; const Del: Double);
begin
  with spUpdatePreCalc do begin
    ClearVariables;
    SetVariable('pAgrISN', AgrISN);
    SetVariable('pPreCalcISN', PreCalcISN);
    SetVariable('pDel', Del);
    Execute;
  end;
end;

procedure TMAgrDM.GetOsagoNum(const pAgrIsn: Double);
begin
  with spFindOsago do begin
    ClearVariables;
    SetVariable('pAgrISN', pAgrISN);
    Execute;
  end;
end;

procedure TMAgrDM.ChangeModifStatus(const pISN: Double; const pSTATUS: UnicodeString);
begin
  with spChangeModifStat do begin
    ClearVariables;
    SetVariable('pISN', pISN);
    SetVariable('pSTATUS', pSTATUS);
    Execute;
  end;
end;

procedure TMAgrDM.CalcInsSumGap(const pAgrIsn: Double);
begin
  with spCalcInsSumGap do begin
    ClearVariables;
    SetVariable('pAgrISN', pAgrISN);
    Execute;
  end;
end;

procedure TMAgrDM.NextAgrIdSet(const pAgrIsn: Double; const pNextAgrIsn: Double);
begin
  with spNextAgrSet do begin
    ClearVariables;
    SetVariable('pAgrISN', pAgrISN);
    SetVariable('pNextAgrIsn', pNextAgrIsn);
    Execute;
  end;

end;

function TMAgrDM.ChooseAgentAgrForDiscountA(const AgrIsn: Double; const AddIsn: Double; const UserIsn: Double): Variant;
begin
  // SetUser(UserISN);
  with spChooseAgentAgrForDiscountA do begin
    ClearVariables;
    SetVariable('pAgrIsn',AgrIsn);
    SetVariable('pAddIsn',AddIsn);
    SetVariable('pUserIsn',UserIsn);
    Execute;
    Result:=VarArrayOf([GetVariable('Result'), GetVariable('pAgentAgrId')]);
  end;
end;

function TMAgrDM.SearchRequestID(const pAgrISN: Double; const pRequestID: WideString): Double;
begin
  with spSearchRequestID do begin
    ClearVariables;
    SetVariable('pAgrIsn',pAgrISN);
    SetVariable('pRequestID',pRequestID);
    Execute;
    Result := GetVariable('Result');
  end;
end;

function TMAgrDM.PJAgrSearchForDiscountPJ(const AgrIsn: Double; const AddIsn: Double; const UserIsn: Double): Variant;
begin
  // SetUser(UserISN);
  with spPJAgrSearchForDiscountPJ do begin
    ClearVariables;
    SetVariable('pAgrIsn',AgrIsn);
    SetVariable('pAddIsn',AddIsn);
    SetVariable('pUserIsn',UserIsn);
    Execute;
    Result:=VarArrayOf([GetVariable('Result'), GetVariable('pAgrId'), GetVariable('pTariff')]);
  end;
end;

procedure TMAgrDM.dspDiscountGAPBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;

  spDiscountGAP.ClearVariables;
  //qrDiscountGAP.ClearVariables;
 //   SetUser(OwnerData[0], OwnerData[1]);
    spDiscountGAP.SetVariable('pExe', OwnerData[2]);
    spDiscountGAP.SetVariable('pISN', OwnerData[3]);
    spDiscountGAP.SetVariable('pAgrISN', OwnerData[4]);
    spDiscountGAP.SetVariable('pTariff', OwnerData[5]);
    spDiscountGAP.SetVariable('pX1', OwnerData[6]);
    spDiscountGAP.SetVariable('pTariffClassISN', OwnerData[7]);
    spDiscountGAP.SetVariable('pRemark', OwnerData[8]);
    spDiscountGAP.SetVariable('PCALCPREVDISCOUNT', OwnerData[9]);
    if VarArrayHighBound(OwnerData, 1) > 9 then
      spDiscountGAP.SetVariable('pRiskRuleISN', OwnerData[10]);
    if VarArrayHighBound(OwnerData, 1) > 10 then
      spDiscountGAP.SetVariable('pBase', OwnerData[11]);

    //qrDiscountGAP.SetVariable('PAGRISN', OwnerData[4]);
    spDiscountGAP.Execute;
end;

procedure TMAgrDM.GetCarCategory(const pModel: Double; const pSeats: Double; const pMaxLoad: Double; out pCategoryIsn: Double; out pCategoryCode: UnicodeString);
begin
  with spGetCarCategory do begin
    ClearVariables;
    SetVariable('pModel',pModel);
    SetVariable('pSeats',pSeats);
    SetVariable('pMaxLoad',pMaxLoad);
    Execute;
    pCategoryIsn:=GetVariable('pCategoryIsn');
    pCategoryCode:=GetVariable('pCategoryCode');
  end;
end;

procedure TMAgrDM.ClearPayCard(const pISN: Double);
begin
  with spClearPayCard do begin
    ClearVariables;
    SetVariable('pISN',pISN);
    Execute;
  end;
end;

procedure TMAgrDM.UpdateNumAttrib(const pObjIsn: Double; const pName: UnicodeString; const pValue: Double; const pDiscr: UnicodeString);
begin
    with sp_UpdNumAttr do begin
      SetVariable('POBJISN',POBJISN);
      SetVariable('PNAME',PNAME);
      SetVariable('PVALUE',PVALUE);
      SetVariable('PDISCR',PDISCR);
      Execute;
    end;
end;

procedure TMAgrDM.GetReadOnlyCross(const pAgrIsn: Double; const pRuleIsn: Double; out pReadOnlyFields: AnsiString);
begin
  with spGetReadOnlyCross do begin
    ClearVariables;
    SetVariable('pAgrIsn',pAgrIsn);
    SetVariable('pRuleIsn',pRuleIsn);
    Execute;
    pReadOnlyFields:=GetVariable('pReadOnlyFields');
  end;
end;

procedure TMAgrDM.CreateCrossAgr(const pAgrIsn: Double; const pTaskIsn: Double; const pKindIsn: Double; const pRuleIsn: Double; const pVariant: Double;
                             const pInsuredSum: Double; const pLimitSum: Double; const pGO: Double; const pCallBack: Double; const pPrFO: Double;
                             out pNewAgrIsn: Double; out pPremiumSum: Double; out pNewAgrID: UnicodeString);
begin
  with spCreateCrossAgr do begin
    ClearVariables;
    SetVariable('pAgrIsn',pAgrIsn);
    SetVariable('pTaskIsn',pTaskIsn);
    SetVariable('pKindIsn',pKindIsn);
    SetVariable('pRuleIsn',pRuleIsn);
    SetVariable('pVariant',pVariant);
    SetVariable('pInsuredSum',pInsuredSum);
    SetVariable('pLimitSum',pLimitSum);
    SetVariable('pGO',pGO);
    SetVariable('pCallBack',pCallBack);
    SetVariable('pPrFO',pPrFO);
    Execute;
    pNewAgrIsn:=GetVariable('pNewAgrIsn');
    pPremiumSum:=GetVariable('pPremiumSum');
    pNewAgrID:=GetVariable('pNewAgrID');
  end;
end;


procedure TMAgrDM.dspDiscountGAPBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  qrDiscountGAP.SetVariable('PAGRISN', OwnerData[2]);
  qrDiscountGAP.SetVariable('PADDISN', OwnerData[3]);
  qrDiscountGAP.SetVariable('PRISKRULEISN', OwnerData[4]);

end;

function TMAgrDM.GetReasonForDiscountTypeR(const pAgrISN: Double; out pCtgFilialName: UnicodeString; out pReasonName: UnicodeString): Double;
begin
  with spGetReasonForDiscountTypeR do
  begin
    ClearVariables;
    SetVariable('pAgrISN', NULL);
    Execute;
    Result:=GetVariable('Result');
    pCtgFilialName := GetVariable('pCtgFilialName');
    pReasonName := GetVariable('pReasonName');
  end;
end;

// возвращает ISN из Dicti по Constname
function TMAgrDM.GetDictiISN(const aConstName: UnicodeString): double;
begin
  Result:=inherited GetDictiISN(aConstName);
end;

procedure TMAgrDM.dspDiscountMBBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  spDiscountMB.ClearVariables;
  //qrDiscountMB.ClearVariables;
 //   SetUser(OwnerData[0], OwnerData[1]);
    spDiscountMB.SetVariable('pExe', OwnerData[2]);
    spDiscountMB.SetVariable('pISN', OwnerData[3]);
    spDiscountMB.SetVariable('pAgrISN', OwnerData[4]);
    spDiscountMB.SetVariable('pTariff', OwnerData[5]);
    spDiscountMB.SetVariable('pX1', OwnerData[6]);
    spDiscountMB.SetVariable('pTariffClassISN', OwnerData[7]);
    spDiscountMB.SetVariable('pRemark', OwnerData[8]);
    spDiscountMB.SetVariable('PCALCPREVDISCOUNT', OwnerData[9]);
    if VarArrayHighBound(OwnerData, 1) > 9 then
      spDiscountMB.SetVariable('pRiskRuleISN', OwnerData[10]);
    if VarArrayHighBound(OwnerData, 1) > 10 then
      spDiscountMB.SetVariable('pBase', OwnerData[11]);
    //qrDiscountMB.SetVariable('PAGRISN', OwnerData[4]);
    spDiscountMB.Execute;
end;

procedure TMAgrDM.dspDiscountMBBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  qrDiscountMB.SetVariable('PAGRISN', OwnerData[2]);
  qrDiscountMB.SetVariable('PADDISN', OwnerData[3]);
  qrDiscountMB.SetVariable('PRISKRULEISN', OwnerData[4]);
end;

function TMAgrDM.GetAnketaTemplateIsn(const pAgrIsn: Double; out pNeedCreate: Double): Double;
begin
  with spGetAnketaTemplateIsn do
    begin
      ClearVariables;
      SetVariable('pAgrIsn',pAgrIsn);
      Execute;
      pNeedCreate:=GetVariable('pNeedCreate');
      Result:=GetVariable('Result');
    end;
end;

function TMAgrDM.GetCalcTemplate(const pAgrIsn: Double; const pObjIsn: Double; const pParamIsn: Double; const pMode: Double): Double;
begin
  with spGetCalcTemplate do
    begin
      ClearVariables;
      SetVariable('pAgrIsn',pAgrIsn);
      SetVariable('pObjIsn',pObjIsn);
      SetVariable('pParamIsn',pParamIsn);
      SetVariable('pMode',pMode);
      Execute;
      Result:=GetVariable('Result');
    end;
end;

procedure TMAgrDM.StoreCalcResultToAgr(const pAgrIsn: Double);
begin
  with spStoreCalcResultToAgr do
    begin
      ClearVariables;
      SetVariable('pAgrIsn',pAgrIsn);
      Execute;
    end;
end;

procedure TMAgrDM.InsertGroup(const pAgrIsn: Double; const pClassIsn: Double);
begin
  spUpdateGroup.ClearVariables;
  spUpdateGroup.SetVariable('pEx', 'I');
  spUpdateGroup.SetVariable('pISN', pAgrIsn);
  spUpdateGroup.SetVariable('pClassIsn', pClassIsn);
  spUpdateGroup.Execute;
end;


function TMAgrDM.SendPassToInsurer(const pAgrIsn: Double; const pPhone: UnicodeString ): integer;
begin
 { with OdacSession do
    begin
      if not connected then connect;
      try
        Result:=ExecProc('AIS.WSAGRPASSBOOK.GetPassBookHRef',[pAgrIsn,'A',true]);
      except
      end;
      Result:=ExecProc('AIS.WSAGRPASSBOOK.SendMessageForAgr',[pAgrIsn,pPhone]);
    end;}

  with qrAnySQL do begin
    SQL.Clear;
    DeleteVariables;
    SQL.Add('begin');
    SQL.Add(':Result:=AIS.WSAGRPASSBOOK.GetPassBookHRef(:pAgrIsn, ''A'', true);');
    SQL.Add('Commit;');
    SQL.Add('end;');
    DeclareAndSet('pAgrIsn',otFloat,pAgrIsn);
    DeclareVariable('Result',otString);
    Execute;
  end;


  with qrAnySQL do begin
    SQL.Clear;
    DeleteVariables;
    SQL.Add('begin');
    SQL.Add(':Result:=AIS.WSAGRPASSBOOK.SendMessageForAgr(:pAgrIsn, :pPhone);');
    SQL.Add('Commit;');
    SQL.Add('end;');
    DeclareAndSet('pAgrIsn',otFloat,pAgrIsn);
    DeclareAndSet('pPhone',otString,pPhone);
    DeclareVariable('Result',otInteger);
    Execute;
    Result:=GetVariable('Result');
  end;
end;

procedure TMAgrDM.LoadFireObj(const pObjList: UnicodeString; const pAgrISN: Double; out pLog: UnicodeString);
var
  LOB: TLOBLocator;
begin
  with spLoadFireObj do  begin
    ClearVariables;
    SetVariable('pAgrISN', pAgrIsn);
    SetVariable('pLog', pLog);
    LOB := TLOBLocator.CreateTemporary(Session, otCLOB, True);
    try
      LOB.AsWideString := pObjList;
      SetComplexVariable('pObjList', LOB);
      Execute;
      pLog:=GetVariable('pLog');
    finally
      FreeAndNil(LOB);
    end;
  end;
end;

procedure TMAgrDM.LoadObjectValuablePropFL(const pObjList: UnicodeString);
var
  LOB: TLOBLocator;
begin
  with spLoadObjectValuablePropFL do  begin
    ClearVariables;
    LOB := TLOBLocator.CreateTemporary(Session, otCLOB, True);
    try
      LOB.AsWideString := pObjList;
      SetComplexVariable('pObjList', LOB);
      Execute;
    finally
      FreeAndNil(LOB);
    end;
  end;
end;

procedure TMAgrDM.CorrPremPlat(const pAgrISN: Double; const pAddISN: Double; const pParams: UnicodeString);
begin
  with spCorrPremPlat do
  begin
    ClearVariables;
    SetVariable('pAgrISN', pAgrISN);
    SetVariable('pAddISN', pAddISN);
    SetVariable('pParams', pParams);
    Execute;
  end;
end;

//Senyushkin 12.05.2016 task-999789671103- История по убытку ТС
//получение isn убытков по VIN, в которых ТС является: объектом страхования, участником
function TMAgrDM.GetCarClaimIsnHist(const pVIN: UnicodeString): Variant;
var
 i :Integer;
begin

  with qrGetCarClaimIsnHist do begin
      SetVariable('pVIN', pVIN);
      Open;
    try
      Result := VarArrayCreate([0, RecordCount-1], varVariant);
      i:=0;
      while not(EOF) do begin
        Result[i]:=Fields[0].AsFloat;
        Inc(i); Next;
      end;
    finally
      Close;
    end;
  end;
end;

function TMAgrDM.GetPhoneListForSMS(const pAgrIsn,
  pInsurerSubjIsn: Double): UnicodeString;
begin
 { with OdacSession do
    begin
      if not connected then connect;

      Result:=ExecProc('AIS.WSAGRPASSBOOK.GetPhoneListForSMS',[pAgrIsn,pInsurerSubjIsn]);
    end;}

  with qrAnySQL do begin
    SQL.Clear;
    DeleteVariables;
    SQL.Add('begin');
    SQL.Add(':Result:=AIS.WSAGRPASSBOOK.GetPhoneListForSMS(:pAgrISN,:pInsurerSubjIsn);');
    SQL.Add('end;');
    DeclareAndSet('pAgrISN',otFloat,pAgrISN);
    DeclareAndSet('pInsurerSubjIsn',otFloat,pInsurerSubjIsn);
    DeclareVariable('Result',otString);
    Execute;
    Result:=GetVariable('Result');
  end;     


end;

// 10.06.2016, sevryugin, 99191374003 (Реализация: "Контроль изменения премии (дыры)")
procedure TMAgrDM.ActualizeTS(const pAgrISN: Double; const pAddISN: Double; const pCarISN: Double; var pResult: Double);
begin
  with spActualizeTS do begin
    SetVariable('pAgrISN',pAgrISN);
    SetVariable('pAddISN',pAddISN);
    SetVariable('pCarISN',pCarISN);
    Execute;
    pResult:=GetVariable('pResult');
  end;
end;

// 16.09.2016 Карпушин 109266370903
procedure TMAgrDM.ReshippingReqRsa(const pAgrISN: Double);
begin
  with spReshippingReqRsa do begin
    SetVariable('pAgrISN',pAgrISN);
    Execute;
  end;
end;

// 04.08.2017 Makarova task 153457217903
procedure TMAgrDM.LoadXLData(const pagrIsn: double; out pMsg: UnicodeString);
begin
  with spLoadXLData do
  begin
    SetVariable('pagrisn', pagrisn);
    Execute;
    pMsg:=GetVariable('pMsg');
  end;
end;
// 04.08.2017 Makarova task 153457217903
procedure TMAgrDM.FindClient(const pagrIsn: double; const pSubjisn: double; var pSearchMode: double; out pFindTaskIsn: double);
begin
  with spFindClient do
  begin
    SetVariable('pagrisn', pagrisn);
    if psubjisn=-1 then
      SetVariable('psubjisn', null)
    else
      SetVariable('psubjisn', psubjisn);
    SetVariable('psearchmode', psearchmode);
    Execute;
    pFindTaskIsn:=GetVariable('pfindtaskisn');
    pSearchMode:=GetVariable('pSearchMode');
  end;
end;

// 04.08.2017 Makarova task 153457217903
procedure TMAgrDM.AddClient1(const pSubjIsn: double);
begin
  with spAddClient do
  begin
    SetVariable('psubjisn', psubjisn);
    Execute;
  end;
end;

// 14.08.2017 Makarova task 153457217903
procedure TMAgrDM.AddClient(const pAgrIsn: double; const pSubjIsn: double);
begin
  with spAddClient do
  begin
    SetVariable('pagrisn', pagrisn);
    SetVariable('psubjisn', psubjisn);
    Execute;
  end;
end;

procedure TMAgrDM.dspRiskPlanFormGlobParamsBeforeGetRecords(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  qrRiskPlanFormGlobParams.SetVariable('PAGRISN', OwnerData[2]);
end;

procedure TMAgrDM.dspRiskPlanFormGlobParamsBeforeApplyUpdates(
  Sender: TObject; var OwnerData: OleVariant);
begin
  with spRiskPlanFormGlobParams do
  begin
    ClearVariables;
    SetVariable('pEx', OwnerData[2]);
    SetVariable('ISN', OwnerData[3]);
    SetVariable('AgrISN', OwnerData[4]);
    SetVariable('CovContPeriodIsn', OwnerData[5]);
    SetVariable('CovContPeriodDateBeg', OwnerData[6]);
    Execute;
  end;
end;

procedure TMAgrDM.dspScheduleIncorpExclRisksBeforeGetRecords(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  qrScheduleIncorpExclRisks.SetVariable('PAGRISN', OwnerData[2]);
end;

// 04.08.2017 Makarova task 153457217903
procedure TMAgrDM.SaveCustToQuote(const pagrIsn: double; const pObjisn: double);
begin
with spSaveCustToQuote do
  begin
    ClearVariables;
    SetVariable('pagrisn', pagrisn);
    SetVariable('pobjisn', pobjisn);
    Execute;
  end;
end;

// 04.08.2017 Makarova task 153457217903
procedure TMAgrDM.EraseTempTable;
begin
  spEraseTmpTbl.Execute;
end;

procedure TMAgrDM.GetAgr4WSMDicsount(const pClientISN: Variant;
  out pAgrISN: Variant);
begin
  with spGetAgr4WSMDicsount do
  begin
    ClearVariables;
    SetVariable('pClientISN', pClientISN);
    Execute;
    pAgrISN := GetVariable('pAgrISN');
  end;
end;

procedure TMAgrDM.dspAgrCondsBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  With qrAgrConds Do
  begin
    SetVariable('PAGRISN', OwnerData[2]);
    SetVariable('PADDISN', OwnerData[3]);
    SetVariable('PRISKRULEISN', OwnerData[4]);
    SetVariable('PFORMPAGE', OwnerData[5])
  end; 
end;

// 04.01.2018 Карпушин 182110489403
procedure TMAgrDM.LoadXMLDataToCalc(const pagrIsn: double; out pMsg: UnicodeString);
begin
  with spLoadXMLDataToCalc do
  begin
    SetVariable('pagrisn', pagrisn);
    Execute;
    pMsg:=GetVariable('pMsg');
  end;
end;


initialization
  fClassFactory := TROPooledClassFactory.Create('MAgrDM', Create_MAgrDM, TMAgrDM_Invoker, IniParams.LargePool, pbcreateAdditional,false);
  DM_Disp.Add(fClassFactory);

{ Это убираем - нужно для MIDAS
initialization
  TComponentFactory.Create(ComServer, TMAgrDM,
    Class_MAgrDM, ciMultiInstance, tmBoth);
}

finalization
  UnRegisterClassFactory(fClassFactory);
  fClassFactory := nil;


end.

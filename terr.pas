unit terr;
{*
 Модуль реализации формы отображения территорий страхования.
 @author: Маслов С.С.

 ver 1.01 Добавлена возможность фильтрации объектов и поиска территории по объекту
}
interface


uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uBaseForm, DBCtrls, Buttons, ExtCtrls, ComCtrls, StdCtrls, Mask,
  DBEditBtn, Grids, DBGrids, ServEdit, DBExtCtl, Db, DBClient, Menus
  , dicti_const, agr, Subj, PickDate, CarModel, DIMime, Prot_Fn
  {$IFDEF DELPHI7+}, Variants{$ENDIF}, DlgBDEError,
  ais_tlb, ExtClientDataSet, XMLView, ImgList, ToolWin, ConDM, PrintMenu, Word97,
  JCtrls, ExtDlgs, ssconn;

type
 {* Форма отображения территории страхования в договоре }
  TfrTerr = class(TFrame)
    qAddr: TClientDataSet;
    qAddrObj: TClientDataSet;
    dsAddr: TDataSource;
    dsAddrObj: TDataSource;
    qAddrISN: TFloatField;
    qAddrCLASSISN: TFloatField;
    qAddrPLACEISN: TFloatField;
    qAddrPERISN: TFloatField;
    qAddrAGRISN: TFloatField;
    qAddrDISCR: TStringField;
    qAddrREMARK: TStringField;
    qAddrUPDATED: TDateTimeField;
    qAddrUPDATEDBY: TFloatField;
    qAddrCOUNTRYISN: TFloatField;
    qAddrCITYISN: TFloatField;
    qAddrCITY: TStringField;
    qAddrZIP: TStringField;
    qAddrOBJISN: TFloatField;
    qAddrINSUREDSUM: TFloatField;
    qAddrLIMITSUM: TFloatField;
    qAddrCURRISN: TFloatField;
    qAddrREMARK1: TStringField;
    qAddrCC: TStringField;
    qAddrCNAME: TStringField;
    qAddrCITYNAME: TStringField;
	qAddrADDR: TStringField;
    qAddrObjID: TStringField;
    qAddrObjNAME: TStringField;
    qAddrObjDATEBEG: TDateTimeField;
    qAddrObjDATEEND: TDateTimeField;
    qAddrObjISN2: TFloatField;
    qAddrObjADDRISN: TFloatField;
    qAddrObjINSUREDSUM: TFloatField;
    qAddrObjLIMITSUM: TFloatField;
    qAddrObjRCNT: TFloatField;
    qAddrObjCODE: TStringField;
    qAddrObjOBJISN: TFloatField;
    qAddrObjSELECTION: TFloatField;
    qAddrSTREETISN: TFloatField;
    qAddrHOUSE: TStringField;
    qAddrSTREETNAME: TStringField;
    qAddrKORPUS: TStringField;
    qAddrSTROENIE: TStringField;
	qAddrLIMITEVERYSUM: TFloatField;
	qAddrpml: TFloatField;
	qAddrcurrpmlisn: TFloatField;
	qAddrlimitcomb: TFloatField;
	qAddrcurrcombisn: TFloatField;
	qAddrccurpml: TStringField;
	qAddrccombpml: TStringField;
	q_Coordinates: TClientDataSet;
    q_CoordinatesISN: TFloatField;
    q_CoordinatesOBJISN: TFloatField;
    q_CoordinatesADDRISN: TFloatField;
    q_CoordinatesORDERNO: TFloatField;
    q_CoordinatesLATITUDE: TFloatField;
    q_CoordinatesLONGITUDE: TFloatField;
    q_CoordinatesALTITUDE: TFloatField;
    q_CoordinatesLATITUDESTR: TStringField;
    q_CoordinatesLONGITUDESTR: TStringField;
    q_CoordinatesREMARK: TStringField;
    q_CoordinatesUPDATED: TDateTimeField;
    q_CoordinatesUPDATEDBYNAME: TStringField;
    q_CoordinatesUPDATEDBY: TFloatField;
    ds_Coordinates: TDataSource;
    pmCoordinates: TPopupMenu;
    pmCoordinatesImport: TMenuItem;
    OpenPictureDialog: TOpenPictureDialog;
    pmCoordinatesShow: TMenuItem;
    pmTerr: TPopupMenu;
    mHistory: TMenuItem;
    mCopyTerr: TMenuItem;
    N2: TMenuItem;
    mSortTerrByObjNumber: TMenuItem;
    mSortTerrByName: TMenuItem;
    N5: TMenuItem;
    mDelSelTerr: TMenuItem;
    mDelTerrNotRefObj: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    mSelectAll: TMenuItem;
    mUnselectAll: TMenuItem;
    qAddrSELECTION: TFloatField;
    sBar: TStatusBar;
    edTaskIsn: TEdit;
    qrAdd: TClientDataSet;
    qrAddISN: TFloatField;
    qrAddAGRISN: TFloatField;
    qrAddPARENTISN: TFloatField;
    qrAddID: TStringField;
    qrAddDATEBEG: TDateTimeField;
    qrAddDATEEND: TDateTimeField;
    qrAddDATESIGN: TDateTimeField;
    qrAddPREMIUMSUM: TFloatField;
    qrAddRULEISN: TFloatField;
    qrAddRULENAME: TStringField;
    qrAddDATEISSUE: TDateTimeField;
    qrAddSTATUS: TStringField;
    qrAddFULLSTATUS: TStringField;
    qrAddMONTHS: TStringField;
    qrAddPREMSUMDELTA: TFloatField;
    qrAddDISCR: TStringField;
    qrAddNEXTADDISN: TFloatField;
    qrAddEMPLISN: TFloatField;
    qrAddEMPLNAME: TStringField;
    qrAddCREATED: TDateTimeField;
    qrAddREMARK: TMemoField;
    qrAddDEPTISN: TFloatField;
    qrAddNAME: TStringField;
    qrAddINCOMEPREM: TFloatField;
    dsAdd: TDataSource;
    Panel1: TPanel;
    JPanel1: TJPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    l_street: TLabel;
    l_house: TLabel;
    sbFillAddr: TSpeedButton;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit2: TDBEditBtn;
    DBEdit3: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit1: TDBEditBtn;
    Button1: TButton;
    Button2: TButton;
    edb_Street: TDBEditBtn;
    ed_House: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;


    procedure qAddrNewRecord(DataSet: TDataSet);
    procedure qAddrBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure sbCountryClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure qrAddBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure qAddrBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    fagrisn: double;
    FSort   : Double; {Поле для хранения правила сортировки территорий}
    procedure setagrisn(aisn: double);
  public
    paramx1: double;
    currisn: integer;
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    property agrisn: double read fagrisn write setagrisn;
  end;

implementation


  //formtmp:TBaseForm;
uses mconnect, GRoutines, CheckLst, ComObj, StrUtils, CalcPreview, uAppSrvIntf, untEquip, TypInfo, Math, LoadExcelData, PackDocUtils, ShellApi; {, NewFindCust;}

{$R *.DFM}

procedure TfrTerr.setagrisn(aisn: double);
begin
 if aisn=fagrisn then exit;
 fagrisn:=aisn;
// if qrAdd.Active then qrAdd.close;
// qrAdd.Open;
 if qaddr.active then qaddr.close;
// if qaddrobj.active then qaddrobj.close;
 qaddr.params.parambyname('pagrisn').asfloat:=aisn;
 //qaddrobj.params.parambyname('pagrisn').asfloat:=aisn;
 qaddr.open;
// qaddrobj.open;
end;


procedure TfrTerr.qAddrNewRecord(DataSet: TDataSet);
begin
  dataset['perisn']:=FAgrIsn;
  dataset['agrisn']:=FAgrIsn;
  dataset['discr']:='A';

end;



procedure TfrTerr.qAddrBeforeApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
begin
   OwnerData:=VarArrayOf([User.ISN, User.SLabel, FAgrISN, FSort, 0])
end;

procedure TfrTerr.sbCountryClick(Sender: TObject);
var vclassisn,visn:double;
    vname: widestring;
begin
 if TDBEditBtn(sender).tag=0 then vclassisn:=p_country
 else vclassisn:=p_city;
// if not tbaseform(owner).imain.gsearch(i,visn,vname) then exit;
// if not imain.gsearch(i,visn,vname) then exit;
 if not (Owner as TBaseForm).GetIMain.gsearch(vclassisn,visn,vname) then exit;


 if qAddr.state=dsBrowse then qAddr.edit;
  if TDBEditBtn(sender).tag=0 then begin
   qAddr['countryisn'] :=visn ;
   qAddr['cname']:=vname;
 end else
 begin
   qAddr['cityisn']:=visn;
   qAddr['cityname']:=vname;
 end;
end;

procedure TfrTerr.Button1Click(Sender: TObject);
begin
 with qaddr do begin
  if not (state in [dsEdit,dsInsert]) then edit;
  fieldbyname('CITYISN').asfloat:=3783;
  fieldbyname('COUNTRYISN').asfloat:=2570;
  fieldbyname('remark1').value:=null;
 end;
 qaddr['cityname']:='Москва';
 qaddr['cname']:='Россия';
end;


constructor TfrTerr.Create(AOwner: TComponent);
begin
 inherited Create(AOwner);
{ ObjISNList:=TISNList.Create;
 ObjISNList.OnChange:=ObjISNListChange;
 ObjISNListChange(ObjISNList);}
 FSort := 0;
 
end;


procedure TfrTerr.qrAddBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
 OwnerData:=VarArrayOf([User.ISN, User.SLabel, FAgrISN, 0]);
end;


procedure TfrTerr.qAddrBeforePost(DataSet: TDataSet);
begin
   if qaddrisn.isnull then
  dataset['isn']:= TUConnection(qaddr.remoteserver).appserver.getnextisn('agraddr');
end;

end.

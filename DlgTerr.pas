unit DlgTerr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseForm, DBCtrls, Buttons, ExtCtrls, terr, StdCtrls, ConDM, DB;

type
  TfmDlgTerr = class(TBaseForm)
    pnl1: TPanel;
    bvl1: TBevel;
    btnOk: TButton;
    btnCancel: TButton;
    frTerr1: TfrTerr;
    procedure FormShow(Sender: TObject);
    procedure frTerr1qAddrBeforePost(DataSet: TDataSet);
    procedure btnOkClick(Sender: TObject);
    procedure frTerr1qAddrNewRecord(DataSet: TDataSet);
    procedure frTerr1qAddrBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);

  private

    { Private declarations }
  public
    { Public declarations }
    AgrIsn: Double;
    fAddrIsn: Double;
    vAddressStr: string;
//    property AddrIsn: Double  read Getaddrisn write SetAddrIsn;
  end;

var
  fmDlgTerr: TfmDlgTerr;

implementation

{$R *.dfm}



procedure TfmDlgTerr.FormShow(Sender: TObject);
begin
  inherited;
  frTerr1.agrisn:= AgrIsn;  
  QueryRefresh(frterr1.qAddr);
end;

procedure TfmDlgTerr.frTerr1qAddrBeforePost(DataSet: TDataSet);
begin
  inherited;
  frTerr1.qAddrBeforePost(DataSet);
end;


procedure TfmDlgTerr.btnOkClick(Sender: TObject);
begin
  inherited;
  frTerr1.qAddr.Post;
  if frTerr1.qAddr.ChangeCount > 0 then DSAfterPost(frTerr1.qAddr);
  vAddressStr := frTerr1.DBMemo1.Lines.GetText;
  fAddrIsn:= frTerr1.qAddrISN.AsFloat;

end;

procedure TfmDlgTerr.frTerr1qAddrNewRecord(DataSet: TDataSet);
begin
  inherited;
  frTerr1.qAddrNewRecord(DataSet);

end;

procedure TfmDlgTerr.frTerr1qAddrBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  frTerr1.qAddrBeforeApplyUpdates(Sender, OwnerData);

end;

end.

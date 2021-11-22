unit Unit2;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataModule2 = class(TDataModule)
    ADOConnection1: TADOConnection;
    DataSNadani: TDataSource;
    ADOTZamov: TADOTable;
    ADOTPraciv: TADOTable;
    DataSPoslugi: TDataSource;
    DataSZamov: TDataSource;
    DataSPraciv: TDataSource;
    DataSChek: TDataSource;
    ADOQNadani: TADOQuery;
    ADOQPoslugi: TADOQuery;
    ADOQDel: TADOQuery;
    DataSDel: TDataSource;
    ADOQCheke: TADOQuery;
    ADOQSec: TADOQuery;            
    DataSSec: TDataSource;
    ADOQVCh: TADOQuery;
    DataSVCh: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{$R *.dfm}

end.

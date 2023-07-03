unit TabelPoin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection;

type
  TTFpoin = class(TForm)
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    dbgrd1: TDBGrid;
    ds1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TFpoin: TTFpoin;

implementation

{$R *.dfm}

end.

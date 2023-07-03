unit TabelPoin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls;

type
  TTFpoin = class(TForm)
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    dbgrd1: TDBGrid;
    ds1: TDataSource;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    cbb1: TComboBox;
    Edit4: TEdit;
    cbb2: TComboBox;
    Edit5: TEdit;
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

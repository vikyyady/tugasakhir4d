unit TabelOrtu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls;

type
  TFtabelOrtu = class(TForm)
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    ds1: TDataSource;
    dbgrd1: TDBGrid;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    cbb1: TComboBox;
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FtabelOrtu: TFtabelOrtu;

implementation

{$R *.dfm}

procedure TFtabelOrtu.btn1Click(Sender: TObject);
begin
  if edit1.Text = '' then    // VALIDASI INPUTAN KOSONG
  begin
    Edit1.SetFocus;
    ShowMessage('Nik wajib Diisi!');
  end
  else if edit2.Text = '' then
  begin
    Edit2.SetFocus;
    ShowMessage('Nama wajib Diisi!');
  end
  else
  begin
    ZQuery1.SQL.Clear;   // Kode simpan
    ZQuery1.SQL.Add('INSERT INTO tabel_ortu VALUES (null, "' + edit1.Text + '", "' + edit2.Text + '", "' + edit3.Text + '", "' + edit4.Text + '", "' + edit5.Text + '", "' + edit6.Text + '", "' + cbb1.Text + '", "' + edit7.Text + '")');
    ZQuery1.ExecSQL;

    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('SELECT * FROM tabel_ortu');
    ZQuery1.Open;
  end;
end;

end.

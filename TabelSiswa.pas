unit TabelSiswa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls, ComCtrls;

type
  TFsiswa = class(TForm)
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
    dtp1: TDateTimePicker;
    Edit5: TEdit;
    cbb1: TComboBox;
    Edit6: TEdit;
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fsiswa: TFsiswa;

implementation

{$R *.dfm}

procedure TFsiswa.btn1Click(Sender: TObject);
var
  dateString: string;
begin
  if edit1.Text = '' then    // VALIDASI INPUTAN KOSONG
  begin
    Edit1.SetFocus;
    ShowMessage('Nis wajib Diisi!');
  end
  else if edit2.Text = '' then
  begin
    Edit2.SetFocus;
    ShowMessage('Nama wajib Diisi!');
  end
  else
  begin
    dateString := FormatDateTime('YYYY-MM-DD', dtp1.Date); // Mengonversi tanggal menjadi string

    ZQuery1.SQL.Clear;   // Kode simpan
    ZQuery1.SQL.Add('INSERT INTO tabel_siswa VALUES (null, "' + edit1.Text + '", "' + edit2.Text + '", "' + edit3.Text + '", "' + edit4.Text + '", "' + dateString + '", "' + cbb1.Text + '", "' + edit5.Text + '", "' + edit6.Text + '")');
    ZQuery1.ExecSQL;

    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('SELECT * FROM tabel_siswa');
    ZQuery1.Open;
  end;

end;

end.

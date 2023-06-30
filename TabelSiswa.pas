unit TabelSiswa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls, ComCtrls, frxClass,
  frxDBSet;

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
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    btn6: TButton;
    procedure bersih;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fsiswa: TFsiswa;
  id: string;

implementation

{$R *.dfm}

procedure TFsiswa.bersih;
begin
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  dtp1.Date := Now; // Mengatur tanggal menjadi hari ini
  cbb1.ClearSelection; // Menghapus item yang dipilih pada ComboBox
  Edit5.Clear;
  Edit6.Clear;
end;

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
    bersih;
  end;

end;

procedure TFsiswa.btn2Click(Sender: TObject);
begin
  id := ZQuery1.FieldByName('id_siswa').AsString; // Mendapatkan nilai ID dari record yang dipilih

  if id = '' then
  begin
    ShowMessage('Tidak ada record yang dipilih.');
    Exit;
  end;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('UPDATE tabel_siswa SET nis = "' + Edit1.Text + '",');
  ZQuery1.SQL.Add('nama_siswa = "' + Edit2.Text + '",');
  ZQuery1.SQL.Add('nik = "' + Edit3.Text + '",');
  ZQuery1.SQL.Add('tempat_lahir = "' + Edit4.Text + '",');
  ZQuery1.SQL.Add('tanggal_lahir = "' + FormatDateTime('YYYY-MM-DD', dtp1.Date) + '",');
  ZQuery1.SQL.Add('jenis_kelamin = "' + cbb1.Text + '",');
  ZQuery1.SQL.Add('alamat = "' + Edit5.Text + '",');
  ZQuery1.SQL.Add('telp = "' + Edit6.Text + '"');
  ZQuery1.SQL.Add('WHERE id_siswa = "' + id + '"');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('SELECT * FROM tabel_siswa');
  ZQuery1.Open;

  ShowMessage('Data Berhasil Di Edit');
end;
procedure TFsiswa.dbgrd1CellClick(Column: TColumn);
begin
  Edit1.Text := ZQuery1.FieldByName('nis').AsString;
  Edit2.Text := ZQuery1.FieldByName('nama_siswa').AsString;
  Edit3.Text := ZQuery1.FieldByName('nik').AsString;
  Edit4.Text := ZQuery1.FieldByName('tempat_lahir').AsString;
  dtp1.Date := ZQuery1.FieldByName('tanggal_lahir').AsDateTime;
  cbb1.Text := ZQuery1.FieldByName('jenis_kelamin').AsString;
  Edit5.Text := ZQuery1.FieldByName('alamat').AsString;
  Edit6.Text := ZQuery1.FieldByName('telp').AsString;
end;

procedure TFsiswa.btn3Click(Sender: TObject);
begin
  id := ZQuery1.FieldByName('id_siswa').AsString; // Mendapatkan nilai ID dari record yang dipilih

  if id = '' then
  begin
    ShowMessage('Tidak ada record yang dipilih.');
    Exit;
  end;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('DELETE FROM tabel_siswa WHERE id_siswa = "' + id + '"');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('SELECT * FROM tabel_siswa');
  ZQuery1.Open;

  ShowMessage('Data berhasil dihapus');
end;

procedure TFsiswa.btn4Click(Sender: TObject);
begin
bersih;
end;

procedure TFsiswa.btn5Click(Sender: TObject);
begin
Close;
end;

procedure TFsiswa.btn6Click(Sender: TObject);
begin
frxReport1.ShowReport()
end;

end.

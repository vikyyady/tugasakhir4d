unit TabelWalikelas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls;

type
  TFwaliKelas = class(TForm)
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
    cbb1: TComboBox;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    procedure bersih;
    procedure btn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn2Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FwaliKelas: TFwaliKelas;
  id: string;

implementation

{$R *.dfm}

procedure TFwaliKelas.bersih;
begin
  Edit1.Clear;
  Edit2.Clear;
  cbb1.ClearSelection;
  Edit3.Clear;
  Edit4.Clear;
  Edit5.Clear;
  Edit6.Clear;
  Edit7.Clear;
end;

procedure TFwaliKelas.btn1Click(Sender: TObject);
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
    ZQuery1.SQL.Clear;   // Kode simpan
    ZQuery1.SQL.Add('INSERT INTO tabel_waliKelas VALUES (null, "' + edit1.Text + '", "' + edit2.Text + '", "' + cbb1.Text + '", "' + edit3.Text + '", "' + edit4.Text + '", "' + edit5.Text + '", "' + edit6.Text + '", "' + edit7.Text + '")');
    ZQuery1.ExecSQL;

    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('SELECT * FROM tabel_waliKelas');
    ZQuery1.Open;
  end;
end;

procedure TFwaliKelas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // Lakukan penutupan form dan pembebasan sumber daya yang diperlukan di sini
  ZQuery1.Close;
  ZConnection1.Disconnect;
  Action := caFree; // Bebaskan form dari memori
end;

procedure TFwaliKelas.btn2Click(Sender: TObject);
begin
  id := ZQuery1.FieldByName('id_waliKelas').AsString; // Mendapatkan nilai ID dari record yang dipilih

  if id = '' then
  begin
    ShowMessage('Tidak ada record yang dipilih.');
    Exit;
  end;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('UPDATE tabel_waliKelas SET nip = "' + Edit1.Text + '",');
  ZQuery1.SQL.Add('nama = "' + Edit2.Text + '",');
  ZQuery1.SQL.Add('jenis_kelamin = "' + cbb1.Text + '",');
  ZQuery1.SQL.Add('pendidikan = "' + Edit3.Text + '",');
  ZQuery1.SQL.Add('telp = "' + Edit4.Text + '",');
  ZQuery1.SQL.Add('matpel = "' + Edit5.Text + '",');
  ZQuery1.SQL.Add('alamat = "' + Edit6.Text + '",'); // Tambahkan tanda kutip tambahan di sini
  ZQuery1.SQL.Add('status = "' + Edit7.Text + '"');
  ZQuery1.SQL.Add('WHERE id_waliKelas = "' + id + '"');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('SELECT * FROM tabel_siswa');
  ZQuery1.Open;

  ShowMessage('Data Berhasil Di Edit');
end;

procedure TFwaliKelas.dbgrd1CellClick(Column: TColumn);
begin
  Edit1.Text := ZQuery1.FieldByName('nip').AsString;
  Edit2.Text := ZQuery1.FieldByName('nama').AsString;
  cbb1.Text := ZQuery1.FieldByName('jenis_kelamin').AsString;
  Edit3.Text := ZQuery1.FieldByName('pendidikan').AsString;
  Edit4.Text := ZQuery1.FieldByName('telp').AsString;
  Edit5.Text := ZQuery1.FieldByName('matpel').AsString;
  Edit6.Text := ZQuery1.FieldByName('alamat').AsString;
  Edit7.Text := ZQuery1.FieldByName('status').AsString;
end;

procedure TFwaliKelas.btn3Click(Sender: TObject);
begin
  id := ZQuery1.FieldByName('id_waliKelas').AsString; // Mendapatkan nilai ID dari record yang dipilih

  if id = '' then
  begin
    ShowMessage('Tidak ada record yang dipilih.');
    Exit;
  end;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('DELETE FROM tabel_waliKelas WHERE id_waliKelas = "' + id + '"');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('SELECT * FROM tabel_waliKelas');
  ZQuery1.Open;

  ShowMessage('Data berhasil dihapus');
end;
procedure TFwaliKelas.btn4Click(Sender: TObject);
begin
bersih;
end;

procedure TFwaliKelas.btn5Click(Sender: TObject);
begin
Close;
end;

end.

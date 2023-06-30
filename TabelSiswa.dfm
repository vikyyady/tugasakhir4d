object Fsiswa: TFsiswa
  Left = 210
  Top = 120
  Width = 674
  Height = 500
  Caption = 'TABEL SISWA'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 32
    Top = 8
    Width = 26
    Height = 19
    Caption = 'NIS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 32
    Top = 40
    Width = 99
    Height = 19
    Caption = 'NAMA SISWA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 32
    Top = 72
    Width = 26
    Height = 19
    Caption = 'NIK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 32
    Top = 104
    Width = 112
    Height = 19
    Caption = 'TEMPAT LAHIR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 32
    Top = 136
    Width = 124
    Height = 19
    Caption = 'TANGGAL LAHIR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 32
    Top = 168
    Width = 113
    Height = 19
    Caption = 'JENIS KELAMIN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl7: TLabel
    Left = 32
    Top = 200
    Width = 63
    Height = 19
    Caption = 'ALAMAT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl8: TLabel
    Left = 32
    Top = 232
    Width = 127
    Height = 19
    Caption = 'NOMER TELEPON'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object dbgrd1: TDBGrid
    Left = 8
    Top = 336
    Width = 641
    Height = 120
    DataSource = ds1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object Edit1: TEdit
    Left = 208
    Top = 0
    Width = 313
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 208
    Top = 32
    Width = 313
    Height = 21
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 208
    Top = 64
    Width = 313
    Height = 21
    TabOrder = 3
  end
  object Edit4: TEdit
    Left = 208
    Top = 96
    Width = 313
    Height = 21
    TabOrder = 4
  end
  object dtp1: TDateTimePicker
    Left = 208
    Top = 128
    Width = 313
    Height = 29
    Date = 45104.594050474540000000
    Time = 45104.594050474540000000
    TabOrder = 5
  end
  object Edit5: TEdit
    Left = 208
    Top = 192
    Width = 313
    Height = 21
    TabOrder = 6
  end
  object cbb1: TComboBox
    Left = 208
    Top = 160
    Width = 313
    Height = 21
    ItemHeight = 13
    TabOrder = 7
    Items.Strings = (
      'Laki-Laki'
      'Perempuan')
  end
  object Edit6: TEdit
    Left = 208
    Top = 224
    Width = 313
    Height = 21
    TabOrder = 8
  end
  object btn1: TButton
    Left = 16
    Top = 280
    Width = 89
    Height = 41
    Caption = 'TAMBAH DATA'
    TabOrder = 9
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 120
    Top = 280
    Width = 89
    Height = 41
    Caption = 'EDIT DATA'
    TabOrder = 10
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 224
    Top = 280
    Width = 89
    Height = 41
    Caption = 'HAPUS DATA'
    TabOrder = 11
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 328
    Top = 280
    Width = 97
    Height = 41
    Caption = 'CLEAR'
    TabOrder = 12
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 440
    Top = 280
    Width = 97
    Height = 41
    Caption = 'KELUAR'
    TabOrder = 13
    OnClick = btn5Click
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    Port = 3306
    Database = 'tugas_akhir'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'E:\SEMESTER 4\VISUAL 2\Tugas Akhir\libmysql.dll'
    Left = 584
    Top = 96
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select *from tabel_siswa')
    Params = <>
    Left = 584
    Top = 208
  end
  object ds1: TDataSource
    DataSet = ZQuery1
    Left = 584
    Top = 152
  end
end

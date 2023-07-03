object TFpoin: TTFpoin
  Left = 436
  Top = 94
  Width = 674
  Height = 500
  Caption = 'TABEL POIN'
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
    Width = 71
    Height = 19
    Caption = 'ID SISWA'
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
    Top = 104
    Width = 140
    Height = 19
    Caption = 'NAMA WALI KELAS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 32
    Top = 72
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
  object lbl5: TLabel
    Left = 32
    Top = 136
    Width = 160
    Height = 19
    Caption = 'JENIS PELANGGARAN'
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
    Width = 38
    Height = 19
    Caption = 'POIN'
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
    Width = 60
    Height = 19
    Caption = 'STATUS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object dbgrd1: TDBGrid
    Left = 8
    Top = 320
    Width = 641
    Height = 120
    DataSource = ds1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Edit1: TEdit
    Left = 216
    Top = 8
    Width = 313
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 216
    Top = 40
    Width = 313
    Height = 21
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 216
    Top = 104
    Width = 313
    Height = 21
    TabOrder = 3
  end
  object cbb1: TComboBox
    Left = 216
    Top = 72
    Width = 313
    Height = 21
    ItemHeight = 13
    TabOrder = 4
    Items.Strings = (
      'Laki-laki'
      'Perempuan')
  end
  object Edit4: TEdit
    Left = 216
    Top = 168
    Width = 313
    Height = 21
    TabOrder = 5
  end
  object cbb2: TComboBox
    Left = 216
    Top = 136
    Width = 313
    Height = 21
    ItemHeight = 13
    TabOrder = 6
    Items.Strings = (
      'Ringan'
      'Sedang'
      'Berat')
  end
  object Edit5: TEdit
    Left = 216
    Top = 200
    Width = 313
    Height = 21
    TabOrder = 7
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
    Left = 608
    Top = 8
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select *from tabel_poin')
    Params = <>
    Left = 560
    Top = 24
  end
  object ds1: TDataSource
    DataSet = ZQuery1
    Left = 608
    Top = 72
  end
end

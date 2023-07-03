object FtabelOrtu: TFtabelOrtu
  Left = 293
  Top = 138
  Width = 671
  Height = 500
  Caption = 'TABEL ORTU'
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
    Caption = 'NIK'
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
    Width = 45
    Height = 19
    Caption = 'NAMA'
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
    Width = 94
    Height = 19
    Caption = 'PENDIDIKAN'
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
    Width = 86
    Height = 19
    Caption = 'PEKERJAAN'
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
  object lbl6: TLabel
    Left = 32
    Top = 168
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
  object lbl7: TLabel
    Left = 32
    Top = 200
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
  object lbl8: TLabel
    Left = 32
    Top = 232
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
    Top = 72
    Width = 313
    Height = 21
    TabOrder = 3
  end
  object Edit4: TEdit
    Left = 216
    Top = 104
    Width = 313
    Height = 21
    TabOrder = 4
  end
  object Edit5: TEdit
    Left = 216
    Top = 136
    Width = 313
    Height = 21
    TabOrder = 5
  end
  object Edit6: TEdit
    Left = 216
    Top = 168
    Width = 313
    Height = 21
    TabOrder = 6
  end
  object Edit7: TEdit
    Left = 216
    Top = 232
    Width = 313
    Height = 21
    TabOrder = 7
  end
  object cbb1: TComboBox
    Left = 216
    Top = 200
    Width = 313
    Height = 21
    ItemHeight = 13
    TabOrder = 8
    Items.Strings = (
      'Laki-laki'
      'Perempuan')
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
    Top = 8
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select *from tabel_ortu')
    Params = <>
    Left = 608
    Top = 64
  end
  object ds1: TDataSource
    DataSet = ZQuery1
    Left = 568
    Top = 96
  end
end

object FwaliKelas: TFwaliKelas
  Left = 585
  Top = 141
  Width = 672
  Height = 500
  Caption = 'Tabel Wali Kelas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 32
    Top = 8
    Width = 26
    Height = 19
    Caption = 'NIP'
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
  object lbl3: TLabel
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
  object lbl4: TLabel
    Left = 32
    Top = 104
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
    Width = 136
    Height = 19
    Caption = 'MATA PELAJARAN'
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
    OnCellClick = dbgrd1CellClick
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
  object cbb1: TComboBox
    Left = 216
    Top = 72
    Width = 313
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    Items.Strings = (
      'Laki-laki'
      'Perempuan')
  end
  object Edit3: TEdit
    Left = 216
    Top = 104
    Width = 313
    Height = 21
    TabOrder = 4
  end
  object Edit4: TEdit
    Left = 216
    Top = 136
    Width = 313
    Height = 21
    TabOrder = 5
  end
  object Edit5: TEdit
    Left = 216
    Top = 168
    Width = 313
    Height = 21
    TabOrder = 6
  end
  object Edit6: TEdit
    Left = 216
    Top = 200
    Width = 313
    Height = 21
    TabOrder = 7
  end
  object Edit7: TEdit
    Left = 216
    Top = 232
    Width = 313
    Height = 21
    TabOrder = 8
  end
  object btn1: TButton
    Left = 16
    Top = 280
    Width = 97
    Height = 41
    Caption = 'TAMBAH DATA'
    TabOrder = 9
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 128
    Top = 280
    Width = 97
    Height = 41
    Caption = 'EDIT DATA'
    TabOrder = 10
    OnClick = btn2Click
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
    Left = 616
    Top = 16
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select *from tabel_waliKelas')
    Params = <>
    Left = 616
    Top = 64
  end
  object ds1: TDataSource
    DataSet = ZQuery1
    Left = 616
    Top = 112
  end
end

object TFpoin: TTFpoin
  Left = 426
  Top = 149
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

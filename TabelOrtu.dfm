object TFortu: TTFortu
  Left = 417
  Top = 171
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
  object btn1: TButton
    Left = 24
    Top = 280
    Width = 81
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
    Width = 89
    Height = 41
    Caption = 'CLEAR'
    TabOrder = 12
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 432
    Top = 280
    Width = 89
    Height = 41
    Caption = 'LAPORAN'
    TabOrder = 13
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 536
    Top = 280
    Width = 89
    Height = 41
    Caption = 'CLOSE'
    TabOrder = 14
    OnClick = btn6Click
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
  object frxReport1: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45110.698237129600000000
    ReportOptions.LastChange = 45110.706056307900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 552
    Top = 184
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      object ReportTitle1: TfrxReportTitle
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 1122.520410000000000000
        object Memo1: TfrxMemoView
          Left = 411.968770000000000000
          Top = 15.118120000000000000
          Width = 343.937230000000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'LAPORAN TABEL ORANG TUA')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 22.677180000000000000
        Top = 98.267780000000000000
        Width = 1122.520410000000000000
        object Memo2: TfrxMemoView
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NIK')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 94.488250000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NAMA ORANG TUA')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 275.905690000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'PENDIDIKAN')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 408.189240000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'PEKERJAAN')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 536.693260000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NOMER TELEPON')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 691.653990000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ALAMAT')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 869.291900000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'JENIS KELAMIN')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 1001.575450000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'STATUS')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 181.417440000000000000
        Width = 1122.520410000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo10: TfrxMemoView
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'nik'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."nik"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 94.488250000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          DataField = 'nama'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."nama"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 275.905690000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DataField = 'pendidikan'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."pendidikan"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 408.189240000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataField = 'pekerjaan'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."pekerjaan"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 536.693260000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          DataField = 'telp'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."telp"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 691.653990000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          DataField = 'alamat'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."alamat"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 869.291900000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DataField = 'jenis_kelamin'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."jenis_kelamin"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 1001.575450000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'status'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."status"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = ZQuery1
    Left = 600
    Top = 224
  end
end

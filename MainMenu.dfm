object Form1: TForm1
  Left = 423
  Top = 279
  Width = 870
  Height = 408
  Caption = 'Main Menu'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object mm1: TMainMenu
    Left = 112
    Top = 40
    object mniProgram1: TMenuItem
      Caption = 'FILE'
      object mniSiswa1: TMenuItem
        Caption = 'Tabek Siswa'
        OnClick = mniSiswa1Click
      end
      object mnitabelwla1: TMenuItem
        Caption = 'Tabel Wali Kelas'
        OnClick = mnitabelwla1Click
      end
      object mniOrangTua1: TMenuItem
        Caption = 'Tabel Orang Tua'
        OnClick = mniOrangTua1Click
      end
    end
    object mniExit1: TMenuItem
      Caption = 'KELUAR'
      OnClick = mniExit1Click
    end
  end
end

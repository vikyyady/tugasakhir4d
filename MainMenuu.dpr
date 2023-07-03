program MainMenuu;

uses
  Forms,
  MainMenu in 'MainMenu.pas' {Form1},
  TabelSiswa in 'TabelSiswa.pas' {Fsiswa},
  TabelWalikelas in 'TabelWalikelas.pas' {FwaliKelas},
  TabelOrtu in 'TabelOrtu.pas' {TFortu},
  TabelPoin in 'TabelPoin.pas' {TFpoin};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFsiswa, Fsiswa);
  Application.CreateForm(TFwaliKelas, FwaliKelas);
  Application.CreateForm(TTFortu, TFortu);
  Application.CreateForm(TTFpoin, TFpoin);
  Application.Run;
end.

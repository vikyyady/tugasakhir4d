program MainMenuu;

uses
  Forms,
  MainMenu in 'MainMenu.pas' {Form1},
  TabelSiswa in 'TabelSiswa.pas' {Fsiswa},
  TabelWalikelas in 'TabelWalikelas.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFsiswa, Fsiswa);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.

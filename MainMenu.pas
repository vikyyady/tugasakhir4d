unit MainMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TForm1 = class(TForm)
    mm1: TMainMenu;
    mniProgram1: TMenuItem;
    mniExit1: TMenuItem;
    mniSiswa1: TMenuItem;
    procedure mniSiswa1Click(Sender: TObject);
    procedure mniExit1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses TabelSiswa;

{$R *.dfm}

procedure TForm1.mniSiswa1Click(Sender: TObject);
begin
Fsiswa.show;
end;

procedure TForm1.mniExit1Click(Sender: TObject);
begin
Close;
end;

end.

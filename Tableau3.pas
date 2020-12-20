unit Tableau3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Inifiles;

type
  TForm3 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    UpDown1: TUpDown;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Déclarations privées }
    nb_level:integer;
  public
    { Déclarations publiques }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

function chemin_application:string;
var
   ch:string;
   i:integer;
begin
     ch:=application.exename;
     i:=length(ch);
     repeat
           dec(i);
     until (ch[i] in ['\',':']);
     chemin_application:=copy(ch,1,i);
end;

procedure TForm3.Button1Click(Sender: TObject);
var
  theini : TInifile;
begin
  nb_level:=updown1.position;
  TheIni := TIniFile.Create(chemin_application+'gloutoman.ini');
  theini.writeinteger('Niveaux','Nombre de niveaux',nb_level);
  TheIni.Free;
  close;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TForm3.FormShow(Sender: TObject);
var
   theini:TInifile;
begin
  TheIni := TIniFile.Create(chemin_application+'gloutoman.ini');
  nb_level:=theini.readinteger('Niveaux','Nombre de niveaux',1);
  TheIni.Free;
  updown1.position:=nb_level;
end;

end.

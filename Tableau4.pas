unit Tableau4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Inifiles;

type
  TForm4 = class(TForm)
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
    ch_tableaux:shortstring;
  end;

var
  Form4: TForm4;

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

procedure TForm4.Button1Click(Sender: TObject);
var
   theini:TInifile;
begin
  ch_tableaux:=edit1.text;
  TheIni := TIniFile.Create(chemin_application+'gloutoman.ini');
  theini.writestring('Chemins','tableaux',ch_tableaux);
  TheIni.Free;
  close;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TForm4.FormShow(Sender: TObject);
var
   theini:TInifile;
begin
  TheIni := TIniFile.Create(chemin_application+'gloutoman.ini');
  ch_tableaux:=theini.readstring('Chemins','tableaux',chemin_application+'niveaux\');
  TheIni.Free;
  edit1.text:=ch_tableaux;
end;

end.

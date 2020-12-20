program Editeur;

uses
  Forms,
  Tableau1 in 'Tableau1.pas' {Form1},
  Tableau2 in 'Tableau2.pas' {Form2},
  Tableau3 in 'Tableau3.pas' {Form3},
  Tableau4 in 'Tableau4.pas' {Form4},
  UnitAPropos in 'UnitAPropos.pas' {FormAPropos};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'Editeur de Tableaux 2020';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TFormAPropos, FormAPropos);
  Application.Run;
end.

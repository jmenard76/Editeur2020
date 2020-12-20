unit Tableau2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, ComCtrls, Grids;

type
  TForm2 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    labelx: TLabel;
    labely: TLabel;
    label_select: TLabel;
    label_description: TLabel;
    Label_figurant: TLabel;
    Labelfigx: TLabel;
    Editfigx: TEdit;
    Labelfigy: TLabel;
    Editfigy: TEdit;
    Labelfigcoul: TLabel;
    Editlien: TEdit;
    ComboBoxfigcoul: TComboBox;
    SpeedButton1: TSpeedButton;
    Bevel1: TBevel;
    Label1: TLabel;
    grid_liens: TStringGrid;
    LabelAide: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form2: TForm2;

implementation

uses Tableau1;


{$R *.DFM}

procedure TForm2.SpeedButton1Click(Sender: TObject);
begin
     if (form1.fantome_select>0)and(speedbutton1.down) then
     begin
          form1.donner_xy:=true;
          form1.image1.cursor:=crfpos;
          form1.bouton_appliquer.enabled:=false;
     end
     else
     begin
          form1.donner_xy:=false;
          form1.image1.cursor:=crdefault;
          form1.bouton_appliquer.enabled:=true;
     end;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  form1.bouton_properties.Down:=false;
  form1.N3.Checked:=false;
end;

end.

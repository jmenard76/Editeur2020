unit Tableau1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, ExtCtrls, Buttons, ComCtrls, StdCtrls, ImgList, System.ImageList,
  AboutDlg;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Image1: TImage;
    Fichier1: TMenuItem;
    Affichage1: TMenuItem;
    Outils1: TMenuItem;
    N1: TMenuItem;
    Panel1: TPanel;
    bouton_nouveau1: TSpeedButton;
    bouton_ouvrir1: TSpeedButton;
    bouton_sauver1: TSpeedButton;
    Bevel1: TBevel;
    bouton_annuler1: TSpeedButton;
    bouton_copier1: TSpeedButton;
    bouton_remplir1: TSpeedButton;
    bouton_grille1: TSpeedButton;
    bouton_convertir1: TSpeedButton;
    StatusBar1: TStatusBar;
    Nouveau1: TMenuItem;
    Ouvrir1: TMenuItem;
    Sauvegarder1: TMenuItem;
    Sauvegardersous1: TMenuItem;
    N2: TMenuItem;
    Quitter1: TMenuItem;
    Grille1: TMenuItem;
    N3: TMenuItem;
    Insrerleniveau1: TMenuItem;
    Convertirunniveau1: TMenuItem;
    Vrifierletableau1: TMenuItem;
    Chemindaccs1: TMenuItem;
    Apropos1: TMenuItem;
    Panel_outils1: TPanel;
    bouton_mur1x1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    bouton_glouto1: TSpeedButton;
    bouton_glouto2: TSpeedButton;
    bouton_fantome1: TSpeedButton;
    bouton_fantome2: TSpeedButton;
    bouton_fantome3: TSpeedButton;
    bouton_fantome4: TSpeedButton;
    bouton_cerise: TSpeedButton;
    bouton_banane: TSpeedButton;
    SpeedButton17: TSpeedButton;
    SpeedButton18: TSpeedButton;
    bouton_effacer: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton20: TSpeedButton;
    SpeedButton21: TSpeedButton;
    SpeedButton22: TSpeedButton;
    SpeedButton23: TSpeedButton;
    SpeedButton24: TSpeedButton;
    SpeedButton25: TSpeedButton;
    SpeedButton26: TSpeedButton;
    SpeedButton27: TSpeedButton;
    SpeedButton28: TSpeedButton;
    SpeedButton29: TSpeedButton;
    SpeedButton30: TSpeedButton;
    SpeedButton31: TSpeedButton;
    SpeedButton32: TSpeedButton;
    SpeedButton33: TSpeedButton;
    SpeedButton34: TSpeedButton;
    SpeedButton35: TSpeedButton;
    SpeedButton36: TSpeedButton;
    SpeedButton37: TSpeedButton;
    SpeedButton38: TSpeedButton;
    SpeedButton39: TSpeedButton;
    SpeedButton40: TSpeedButton;
    SpeedButton41: TSpeedButton;
    SpeedButton42: TSpeedButton;
    SpeedButton43: TSpeedButton;
    SpeedButton44: TSpeedButton;
    zone_outils1: TImage;
    ImageList1: TImageList;
    UpDown1: TUpDown;
    Image_mur: TImage;
    Bevel2: TBevel;
    SpeedButton1: TSpeedButton;
    bouton_properties: TSpeedButton;
    ImageList2: TImageList;
    ImageList3: TImageList;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    click_outils: TCheckBox;
    bouton_scenario: TSpeedButton;
    image_fond: TImage;
    UpDown2: TUpDown;
    bouton_appliquer: TSpeedButton;
    Panel2: TPanel;
    Label1: TLabel;
    Bevel3: TBevel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Edit1: TEdit;
    CheckBox3: TCheckBox;
    ComboBox1: TComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    bouton_fantome5: TSpeedButton;

    procedure cacher_outils;
    procedure dessiner;
    procedure nouvelle_partie;
    procedure charger_tableau(nom_fichier:string);
    procedure enregistrer_tableau(nom_fichier:string);
    procedure sauverback;
    procedure restituerback;
    procedure proprietes_selection(valeur:integer);
    procedure remplir(x,y:integer);
    procedure decaler_fantomes;
    procedure decaler_objet;
    procedure verifier_objets(x,y:integer);

    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure zone_outils1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Grille1Click(Sender: TObject);
    procedure bouton_grille1Click(Sender: TObject);
    procedure Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure bouton_mur1x1Click(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure bouton_effacerClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Apropos1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure bouton_glouto1Click(Sender: TObject);
    procedure bouton_glouto2Click(Sender: TObject);
    procedure bouton_ceriseClick(Sender: TObject);
    procedure bouton_bananeClick(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure SpeedButton18Click(Sender: TObject);
    procedure SpeedButton20Click(Sender: TObject);
    procedure SpeedButton21Click(Sender: TObject);
    procedure SpeedButton22Click(Sender: TObject);
    procedure SpeedButton24Click(Sender: TObject);
    procedure SpeedButton25Click(Sender: TObject);
    procedure SpeedButton26Click(Sender: TObject);
    procedure SpeedButton27Click(Sender: TObject);
    procedure SpeedButton28Click(Sender: TObject);
    procedure SpeedButton23Click(Sender: TObject);
    procedure bouton_fantome1Click(Sender: TObject);
    procedure bouton_fantome2Click(Sender: TObject);
    procedure bouton_fantome3Click(Sender: TObject);
    procedure bouton_fantome4Click(Sender: TObject);
    procedure bouton_fantome5Click(Sender: TObject);
    procedure Nouveau1Click(Sender: TObject);
    procedure bouton_nouveau1Click(Sender: TObject);
    procedure Ouvrir1Click(Sender: TObject);
    procedure bouton_ouvrir1Click(Sender: TObject);
    procedure Quitter1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Sauvegarder1Click(Sender: TObject);
    procedure bouton_sauver1Click(Sender: TObject);
    procedure Sauvegardersous1Click(Sender: TObject);
    procedure bouton_annuler1Click(Sender: TObject);
    procedure SpeedButton29Click(Sender: TObject);
    procedure SpeedButton30Click(Sender: TObject);
    procedure SpeedButton31Click(Sender: TObject);
    procedure SpeedButton32Click(Sender: TObject);
    procedure SpeedButton33Click(Sender: TObject);
    procedure SpeedButton34Click(Sender: TObject);
    procedure SpeedButton35Click(Sender: TObject);
    procedure SpeedButton36Click(Sender: TObject);
    procedure SpeedButton37Click(Sender: TObject);
    procedure SpeedButton38Click(Sender: TObject);
    procedure SpeedButton39Click(Sender: TObject);
    procedure SpeedButton40Click(Sender: TObject);
    procedure SpeedButton41Click(Sender: TObject);
    procedure SpeedButton42Click(Sender: TObject);
    procedure SpeedButton43Click(Sender: TObject);
    procedure SpeedButton44Click(Sender: TObject);
    procedure bouton_propertiesClick(Sender: TObject);
    procedure zone_outils1Click(Sender: TObject);
    procedure click_outilsClick(Sender: TObject);
    procedure UpDown2Click(Sender: TObject; Button: TUDBtnType);
    procedure N3Click(Sender: TObject);
    procedure bouton_appliquerClick(Sender: TObject);
    procedure bouton_scenarioClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure Chemindaccs1Click(Sender: TObject);
    procedure Insrerleniveau1Click(Sender: TObject);
    procedure Vrifierletableau1Click(Sender: TObject);
    procedure UpDown1Changing(Sender: TObject; var AllowChange: Boolean);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
    tableau,tableauback:array[1..80,1..50] of integer;
    couleur_fond:TColor;
    couleur_mur,couleur_murf,outils,old_outils,selection_x,selection_y,selection,selection_id,
    nb_fantomes,fantome_select:integer;
    nb_bouton,nb_tempo,nb_porte,nb_telep,nb_cle:integer;
    afficher_outils,modif,save,outils_click,donner_xy:boolean;
    nomfich,lien_tableau:string;
    scenario_cerises,scenario_points,scenario_objet:boolean;
    objet,points:integer;
  end;

TCaseselect=record
  x,y:integer;
end;
TPacman=record
  x,y:integer;
  present:boolean;
end;
TFantome=record
  x,y:integer;
  present:boolean;
  couleur:1..4;
end;
TTempo=record
  x,y,valeur:integer;
  lien:array[1..10] of integer;
  present,seule:boolean;
end;
TBouton=record
  x,y,lien:integer;
  present:boolean;
end;
TPorte=record
  x,y,tempoFermeture:integer;
  present:boolean;
end;
TTeleporteur=record
  x,y,lien:integer;
  present:boolean;
end;
TCle=record
  x,y,lien:integer;
  present:boolean;
end;

//
//  Constantes
//
const
     IMG_CERISE=0;
     IMG_PORTEELEC=1;
     IMG_INVISIBLE=16;
     IMG_PORTEH=26;
     IMG_PORTEV=27;
     IMG_PORTECOULH=28;
     IMG_PORTECOULV=29;
     IMG_ERREUR=30;

     MESSAGE1='Etes-vous sûr de vouloir effacer ce tableau ?';
     MESSAGE2='Ouvrir un tableau';
     MESSAGE3='Voulez-vous enregistrer les modifications du tableau ?';
     MESSAGE4='Enregistrer sous';
     MESSAGE5='Voulez-vous effacer aussi le fantome ?';

     crcursorv3=5;
     crcursorh3=6;
     crcursorm=7;
     crgomme=8;
     crmur1=9;
     crmur2=10;
     crmur3=11;
     crmur4=12;
     crfpos=13;

var
  Form1: TForm1;

implementation

uses Tableau2, Tableau3, Tableau4, UnitAPropos;
//
//  Variables générales
//
var
   gloutoman:array[1..2] of TPacman;
   fantome:array[1..10] of TFantome;
   tempo:array[1..5] of TTempo;
   bouton:array[1..5] of TBouton;
   porte:array[1..10] of TPorte;
   teleporteur:array[1..5] of TTeleporteur;
   cle:array[1..5] of TCle;

{$R *.DFM}
{$R curseur.res}

//
//  *******************
//  **   Fonctions   **
//  *******************
//
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
//
//  ********************
//  **   Procédures   **
//  ********************
//
procedure TForm1.cacher_outils;
begin
     panel_outils1.visible:=false;
     afficher_outils:=false;
end;

procedure TForm1.nouvelle_partie;
var
   x,y,i,o:integer;
begin
     for x:=1 to 80 do
     for y:=1 to 50 do
         tableau[x,y]:=0;

     for x:=1 to 80 do
     begin
          tableau[x,1]:=couleur_mur;
          tableau[x,50]:=couleur_mur;
     end;
     for y:=1 to 50 do
     begin
          tableau[1,y]:=couleur_mur;
          tableau[80,y]:=couleur_mur;
     end;
     nb_fantomes:=0;
     for i:=1 to 2 do
     begin
          gloutoman[i].present:=false;
          gloutoman[i].x:=0;
          gloutoman[i].y:=0;
     end;
     for i:=1 to 10 do
     begin
          fantome[i].present:=false;
          fantome[i].x:=0;
          fantome[i].y:=0;
          fantome[i].couleur:=1;
     end;

     for i:=1 to 5 do
     begin
          bouton[i].present:=false;
          bouton[i].x:=0;
          bouton[i].y:=0;
          bouton[i].lien:=0;
          tempo[i].present:=false;
          tempo[i].x:=0;
          tempo[i].y:=0;
          tempo[i].valeur:=0;
          for o:=1 to 10 do
              tempo[i].lien[o]:=0;
          teleporteur[i].present:=false;
          teleporteur[i].x:=0;
          teleporteur[i].y:=0;
          teleporteur[i].lien:=0;
          cle[i].present:=false;
          cle[i].x:=0;
          cle[i].y:=0;
          cle[i].lien:=0;
     end;
     for i:=1 to 10 do
     begin
          porte[i].present:=false;
          porte[i].x:=0;
          porte[i].y:=0;
     end;

     nb_bouton:=0;
     nb_tempo:=0;
     nb_porte:=0;
     nb_telep:=0;
     nb_cle:=0;

     scenario_cerises:=true;
     scenario_points:=false;
     points:=0;
     scenario_objet:=false;
     objet:=0;

     form2.label_figurant.caption:='';
     form2.labelfigx.caption:='';
     form2.labelfigy.caption:='';
     form2.labelfigcoul.caption:='';
     form2.editfigx.visible:=false;
     form2.editfigy.visible:=false;
     fantome_select:=0;
     bouton_appliquer.enabled:=false;
     donner_xy:=false;
     form2.speedbutton1.down:=false;
     form2.speedbutton1.visible:=false;
     form2.comboboxfigcoul.visible:=false;
     form2.editlien.visible:=false;
     selection_ID:=0;
     form2.label1.visible:=false;
     form2.grid_liens.visible:=false;

     modif:=false;
     form1.sauverback;
end;

procedure TForm1.charger_tableau(nom_fichier:string);
var
   f1:textfile;
   x,y,i,o:integer;
   s:string;
begin
     form1.nouvelle_partie;
     nomfich:=nom_fichier;
     assignfile(f1,nom_fichier);
     reset(f1);
     readln(f1,couleur_fond);
     readln(f1,s);
     gloutoman[1].present:=StrToBool(s);
     readln(f1,gloutoman[1].x);
     readln(f1,gloutoman[1].y);
     readln(f1,s);
     gloutoman[2].present:=StrToBool(s);
     readln(f1,gloutoman[2].x);
     readln(f1,gloutoman[2].y);
     for i:=1 to 10 do
     begin
          readln(f1,s);
          fantome[i].present:=StrToBool(s);
          readln(f1,fantome[i].x);
          readln(f1,fantome[i].y);
          readln(f1,fantome[i].couleur);
          if fantome[i].present then inc(nb_fantomes,1);
     end;
     for x:=1 to 80 do
     for y:=1 to 50 do
     begin
          readln(f1,tableau[x,y]);
          if tableau[x,y]=35 then readln(f1,lien_tableau);
     end;

     for i:=1 to 5 do
     begin
          readln(f1,s);
          bouton[i].present:=StrToBool(s);
          if bouton[i].present then inc(nb_bouton,1);
          readln(f1,bouton[i].x);
          readln(f1,bouton[i].y);
          readln(f1,bouton[i].lien);
     end;
     for i:=1 to 5 do
     begin
          readln(f1,s);
          tempo[i].present:=StrToBool(s);
          if tempo[i].present then inc(nb_tempo,1);
          readln(f1,tempo[i].x);
          readln(f1,tempo[i].y);
          readln(f1,tempo[i].valeur);
          for o:=1 to 10 do
              readln(f1,tempo[i].lien[o]);
     end;
     for i:=1 to 5 do
     begin
          readln(f1,s);
          teleporteur[i].present:=StrToBool(s);
          if teleporteur[i].present then inc(nb_telep,1);
          readln(f1,teleporteur[i].x);
          readln(f1,teleporteur[i].y);
          readln(f1,teleporteur[i].lien);
     end;
     for i:=1 to 10 do
     begin
          readln(f1,s);
          porte[i].present:=StrToBool(s);
          if porte[i].present then inc(nb_porte,1);
          readln(f1,porte[i].x);
          readln(f1,porte[i].y);
          readln(f1,porte[i].tempoFermeture);
     end;
     for i:=1 to 5 do
     begin
          readln(f1,s);
          cle[i].present:=StrToBool(s);
          if cle[i].present then inc(nb_cle,1);
          readln(f1,cle[i].x);
          readln(f1,cle[i].y);
          readln(f1,cle[i].lien);
     end;
     readln(f1,s);
     scenario_cerises:=StrToBool(s);
     readln(f1,s);
     scenario_points:=StrToBool(s);
     readln(f1,points);
     readln(f1,s);
     scenario_objet:=StrToBool(s);
     readln(f1,objet);

     closefile(f1);
     image_fond.canvas.brush.color:=couleur_fond;
     image_fond.canvas.pen.color:=couleur_fond;
     image_fond.canvas.rectangle(0,0,25,25);
     case couleur_fond of
          clblack:updown2.position:=1;
          clmaroon:updown2.position:=2;
          clgreen:updown2.position:=3;
          clolive:updown2.position:=4;
          clnavy:updown2.position:=5;
          clpurple:updown2.position:=6;
          clteal:updown2.position:=7;
          clgray:updown2.position:=8;
     end;
     form1.sauverback;
     form1.dessiner;
end;

procedure TForm1.enregistrer_tableau(nom_fichier:string);
var
   f1:textfile;
   x,y,i,o:integer;
begin
     AssignFile(f1,nom_fichier);
     Rewrite(f1);
     Writeln(f1,couleur_fond);
     writeln(f1, gloutoman[1].present);
     writeln(f1,gloutoman[1].x);
     writeln(f1,gloutoman[1].y);
     writeln(f1, gloutoman[2].present);
     writeln(f1,gloutoman[2].x);
     writeln(f1,gloutoman[2].y);
     for i:=1 to 10 do
     begin
          writeln(f1,fantome[i].present);
          writeln(f1,fantome[i].x);
          writeln(f1,fantome[i].y);
          writeln(f1,fantome[i].couleur);
     end;
     for x:=1 to 80 do
     for y:=1 to 50 do
     begin
          writeln(f1,tableau[x,y]);
          if tableau[x,y]=35 then writeln(f1,lien_tableau);
     end;

     for i:=1 to 5 do
     begin
          writeln(f1,bouton[i].present);
          writeln(f1,bouton[i].x);
          writeln(f1,bouton[i].y);
          writeln(f1,bouton[i].lien);
     end;
     for i:=1 to 5 do
     begin
          writeln(f1,tempo[i].present);
          writeln(f1,tempo[i].x);
          writeln(f1,tempo[i].y);
          writeln(f1,tempo[i].valeur);
          for o:=1 to 10 do
              writeln(f1,tempo[i].lien[o]);
     end;
     for i:=1 to 5 do
     begin
          writeln(f1,teleporteur[i].present);
          writeln(f1,teleporteur[i].x);
          writeln(f1,teleporteur[i].y);
          writeln(f1,teleporteur[i].lien);
     end;
     for i:=1 to 10 do
     begin
          writeln(f1,porte[i].present);
          writeln(f1,porte[i].x);
          writeln(f1,porte[i].y);
          writeln(f1,porte[i].tempoFermeture);
     end;
     for i:=1 to 5 do
     begin
          writeln(f1,cle[i].present);
          writeln(f1,cle[i].x);
          writeln(f1,cle[i].y);
          writeln(f1,cle[i].lien);
     end;
     writeln(f1,scenario_cerises);
     writeln(f1,scenario_points);
     writeln(f1,points);
     writeln(f1,scenario_objet);
     writeln(f1,objet);

     closefile(f1);
     modif:=false;
     form1.sauverback;
end;
//
//  ******************
//  **   Dessiner   **
//  ******************
//
procedure TForm1.dessiner;
var
   x,y,i:integer;
begin
     image1.canvas.brush.color:=couleur_fond;
     image1.canvas.pen.color:=couleur_fond;
     image1.canvas.rectangle(0,0,640,400);
//
//   Dessin de la grille
//
if grille1.checked then
begin
     image1.canvas.pen.color:=clgray;
     image1.canvas.pen.mode:=pmnotcopy;
     for x:=1 to 79 do
     begin
          image1.canvas.moveto(x*8,0);
          image1.canvas.lineto(x*8,image1.height);
     end;
     for y:=1 to 49 do
     begin
          image1.canvas.moveto(0,y*8);
          image1.canvas.lineto(image1.width,y*8);
     end;
     image1.canvas.pen.mode:=pmcopy;
end;
//
//  Dessin du tableau
//
for x:=1 to 80 do
for y:=1 to 50 do
begin
     case tableau[x,y] of
          1..15:imagelist1.draw(image1.canvas,x*8-8,y*8-8,tableau[x,y]-1);
          16:imagelist1.draw(image1.canvas,x*8-8,y*8-8,couleur_murf);
          20..26,28..48:imagelist3.draw(image1.canvas,x*8-16,y*8-16,tableau[x,y]-20);
          27:imagelist1.draw(image1.canvas,x*8-8,y*8-8,16);
          17:begin
                  if (tableau[x-2,y]>=1) and (tableau[x-2,y]<=15) then
                  imagelist3.draw(image1.canvas,x*8-16,y*8-16,IMG_PORTEV)
                  else if (tableau[x,y+2]>=1) and (tableau[x,y+2]<=15) then
                  imagelist3.draw(image1.canvas,x*8-16,y*8-16,IMG_PORTEH)
                  else imagelist3.draw(image1.canvas,x*8-16,y*8-16,IMG_ERREUR);
                  if (tableau[x-2,y]>=1) and (tableau[x-2,y]<=15) and
                  (tableau[x,y+2]>=1) and (tableau[x,y+2]<=15)then
                  imagelist3.draw(image1.canvas,x*8-16,y*8-16,IMG_ERREUR);
          end;
          18:begin
                  if (tableau[x+2,y]>=1) and (tableau[x+2,y]<=15) then
                  imagelist3.draw(image1.canvas,x*8-16,y*8-16,IMG_PORTECOULV)
                  else if (tableau[x,y-2]>=1) and (tableau[x,y-2]<=15) then
                  imagelist3.draw(image1.canvas,x*8-16,y*8-16,IMG_PORTECOULH)
                  else imagelist3.draw(image1.canvas,x*8-16,y*8-16,IMG_ERREUR);
                  if (tableau[x+2,y]>=1) and (tableau[x+2,y]<=15) and
                  (tableau[x,y-2]>=1) and (tableau[x,y-2]<=15)then
                  imagelist3.draw(image1.canvas,x*8-16,y*8-16,IMG_ERREUR);
          end;
     end;
end;
for i:=1 to 2 do
begin
     if gloutoman[i].present then
     begin
          imagelist2.draw(image1.canvas,gloutoman[i].x*8-16,gloutoman[i].y*8-15,i-1);
     end;
end;
for i:=1 to nb_fantomes do
begin
     if fantome[i].present then
     begin
          imagelist2.draw(image1.canvas,fantome[i].x*8-16,fantome[i].y*8-14,fantome[i].couleur+1);
     end;
end;

end;

procedure TForm1.sauverback;
var
   x,y:integer;
begin
     //modif:=true;
     donner_xy:=false;
     form2.speedbutton1.down:=false;
     for x:=1 to 80 do
     for y:=1 to 50 do
         tableauback[x,y]:=tableau[x,y];
end;

procedure TForm1.restituerback;
var
   x,y:integer;
begin
     for x:=1 to 80 do
     for y:=1 to 50 do
         tableau[x,y]:=tableauback[x,y];
     form1.dessiner;
end;

procedure TForm1.decaler_fantomes;
var
   i:integer;
begin
     for i:=1 to nb_fantomes do
         if not(fantome[i].present) then
         begin
              fantome[i].present:=fantome[i+1].present;
              fantome[i+1].present:=false;
              fantome[i].x:=fantome[i+1].x;
              fantome[i+1].x:=0;
              fantome[i].y:=fantome[i+1].y;
              fantome[i+1].y:=0;
              fantome[i].couleur:=fantome[i+1].couleur;
              fantome[i+1].couleur:=1;
         end;
end;

procedure TForm1.decaler_objet;
var
   i,o:integer;
begin
     for i:=1 to nb_bouton do
         if not(bouton[i].present) then
         begin
              bouton[i].present:=bouton[i+1].present;
              bouton[i+1].present:=false;
              bouton[i].x:=bouton[i+1].x;
              bouton[i+1].x:=0;
              bouton[i].y:=bouton[i+1].y;
              bouton[i+1].y:=0;
              bouton[i].lien:=bouton[i+1].lien;
              bouton[i+1].lien:=0;
         end;
     for i:=1 to nb_tempo do
         if not(tempo[i].present) then
         begin
              tempo[i].present:=tempo[i+1].present;
              tempo[i+1].present:=false;
              tempo[i].x:=tempo[i+1].x;
              tempo[i+1].x:=0;
              tempo[i].y:=tempo[i+1].y;
              tempo[i+1].y:=0;
              tempo[i].valeur:=tempo[i+1].valeur;
              tempo[i+1].valeur:=0;
              for o:=1 to 10 do
              begin
                   tempo[i].lien[o]:=tempo[i+1].lien[o];
                   tempo[i+1].lien[o]:=0;
              end;
         end;
     for i:=1 to nb_telep do
         if not(teleporteur[i].present) then
         begin
              teleporteur[i].present:=teleporteur[i+1].present;
              teleporteur[i+1].present:=false;
              teleporteur[i].x:=teleporteur[i+1].x;
              teleporteur[i+1].x:=0;
              teleporteur[i].y:=teleporteur[i+1].y;
              teleporteur[i+1].y:=0;
              teleporteur[i].lien:=teleporteur[i+1].lien;
              teleporteur[i+1].lien:=0;
         end;
     for i:=1 to nb_porte do
         if not(porte[i].present) then
         begin
              porte[i].present:=porte[i+1].present;
              porte[i+1].present:=false;
              porte[i].x:=porte[i+1].x;
              porte[i+1].x:=0;
              porte[i].y:=porte[i+1].y;
              porte[i+1].y:=0;
              porte[i].tempoFermeture:=porte[i+1].tempoFermeture;
              porte[i+1].tempoFermeture:=0;
         end;
     for i:=1 to nb_cle do
         if not(cle[i].present) then
         begin
              cle[i].present:=cle[i+1].present;
              cle[i+1].present:=false;
              cle[i].x:=cle[i+1].x;
              cle[i+1].x:=0;
              cle[i].y:=cle[i+1].y;
              cle[i+1].y:=0;
              cle[i].lien:=cle[i+1].lien;
              cle[i+1].lien:=0;
         end;
end;

procedure TForm1.remplir(x,y:integer);
var
   x1,y1,boucle:integer;
begin
       for y1:=0 to 50 do
  begin
       if tableau[x,y+y1]>0 then break;
       for x1:=0 downto -80 do
       begin
            if (tableau[x+x1,y+y1]=0) then tableau[x+x1,y+y1]:=selection
            else break;
       end;
  end;

  for y1:=0 to 50 do
  begin
       if tableau[x+1,y+y1]>0 then break;
       for x1:=1 to 80 do
       begin
            if (tableau[x+x1,y+y1]=0) then tableau[x+x1,y+y1]:=selection
            else break;
       end;
  end;
  for y1:=-1 downto -50 do
  begin
       if tableau[x,y+y1]>0 then break;
       for x1:=0 to 80 do
       begin
            if (tableau[x+x1,y+y1]=0) then tableau[x+x1,y+y1]:=selection
            else break;
       end;
  end;
  for y1:=-1 downto -50 do
  begin
       if tableau[x-1,y+y1]>0 then break;
       for x1:=-1 downto -80 do
       begin
            if (tableau[x+x1,y+y1]=0) then tableau[x+x1,y+y1]:=selection
            else break;
       end;
  end;
end;
//
//  ***************
//  **   Form1   **
//  ***************
//
procedure TForm1.FormActivate(Sender: TObject);
begin
     screen.cursors[crcursorv3]:=loadcursor(hinstance,'MUR3V');
     screen.cursors[crcursorh3]:=loadcursor(hinstance,'MUR3H');
     screen.cursors[crcursorm]:=loadcursor(hinstance,'MUR');
     screen.cursors[crgomme]:=loadcursor(hinstance,'GOMME');
     screen.cursors[crmur1]:=loadcursor(hinstance,'MUR1');
     screen.cursors[crmur2]:=loadcursor(hinstance,'MUR2');
     screen.cursors[crmur3]:=loadcursor(hinstance,'MUR3');
     screen.cursors[crmur4]:=loadcursor(hinstance,'MUR4');
     screen.cursors[crfpos]:=loadcursor(hinstance,'FPOS');
end;

procedure TForm1.FormShow(Sender: TObject);
var
   x,y:integer;
begin
     couleur_mur:=2;
     couleur_murf:=17;
     couleur_fond:=clblack;
     updown1.position:=couleur_mur;
     outils:=1;
     outils_click:=click_outils.checked;
     for x:=1 to 3 do
     for y:=1 to 3 do
          imagelist1.draw(image_mur.canvas,(x*8)-8,(y*8)-8,couleur_mur-1);
     //imagelist1.draw(image_mur.canvas,8,8,updown1.position-1);
     image_fond.canvas.brush.color:=couleur_fond;
     image_fond.canvas.pen.color:=couleur_fond;
     image_fond.canvas.rectangle(0,0,25,25);
     opendialog1.initialdir:=chemin_application+'niveaux\';
     savedialog1.initialdir:=chemin_application+'niveaux\';
     form1.nouvelle_partie;
     form1.dessiner;
end;

procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
     statusbar1.panels[0].text:=' X : '+inttostr((x div 8)+1);
     statusbar1.panels[1].text:=' Y : '+inttostr((y div 8)+1);
     if afficher_outils then
     begin
          cacher_outils;
     end;
     if (shift=[ssleft])and(bouton_copier1.down)and(outils=1) then
     begin
          tableau[(x div 8)+1,(y div 8)+1]:=selection;
          form1.dessiner;
     end;
end;

procedure TForm1.Insrerleniveau1Click(Sender: TObject);
begin
  Form3.ShowModal();
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     if modif then
     if messagedlg(MESSAGE3,mtconfirmation,[mbYes,mbNo],0)=mryes then
        form1.sauvegarder1click(sender);
end;
//
//  ***************
//  **   Menus   **
//  ***************
//
procedure TForm1.Apropos1Click(Sender: TObject);
begin
     formAPropos.ShowModal;
end;

procedure TForm1.click_outilsClick(Sender: TObject);
begin
     outils_click:=click_outils.checked;
end;

procedure TForm1.zone_outils1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
     if not(outils_click) then
     begin
          panel_outils1.visible:=true;
          afficher_outils:=true;
     end;
end;

procedure TForm1.zone_outils1Click(Sender: TObject);
begin
     if outils_click and not(panel_outils1.visible) then
     begin
          panel_outils1.visible:=true;
          afficher_outils:=true;
     end
     else if outils_click and panel_outils1.visible then
     begin
          panel_outils1.visible:=false;
          afficher_outils:=false;
     end;
end;

procedure TForm1.Nouveau1Click(Sender: TObject);
begin
     if messagedlg(MESSAGE1,mtconfirmation,[mbYes,mbNo],0)=mryes then
     begin
        nomfich:='';
        form1.nouvelle_partie;
        form1.dessiner;
     end;
end;

procedure TForm1.bouton_nouveau1Click(Sender: TObject);
begin
     form1.Nouveau1Click(sender);
end;

procedure TForm1.Grille1Click(Sender: TObject);
begin
     grille1.checked:=not(grille1.checked);
     bouton_grille1.down:=grille1.checked;
     form1.dessiner;
end;

procedure TForm1.bouton_grille1Click(Sender: TObject);
begin
     grille1.checked:=not(grille1.checked);
     bouton_grille1.down:=grille1.checked;
     form1.dessiner;
end;

procedure TForm1.Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
     cacher_outils;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
     cacher_outils;
end;

procedure TForm1.Quitter1Click(Sender: TObject);
begin
     form1.close;
end;

procedure TForm1.Ouvrir1Click(Sender: TObject);
begin
     opendialog1.title:=MESSAGE2;
     if opendialog1.execute then
     begin
        form1.charger_tableau(opendialog1.filename);
        form1.dessiner;
     end;
end;

procedure TForm1.bouton_ouvrir1Click(Sender: TObject);
begin
     form1.ouvrir1click(sender);
end;

procedure TForm1.Sauvegarder1Click(Sender: TObject);
begin
     if nomfich<>'' then form1.enregistrer_tableau(nomfich)
     else form1.sauvegardersous1click(sender);
end;

procedure TForm1.bouton_sauver1Click(Sender: TObject);
begin
     form1.sauvegarder1click(sender);
end;

procedure TForm1.Sauvegardersous1Click(Sender: TObject);
begin
     savedialog1.title:=MESSAGE4;
     if savedialog1.execute then
     begin
          nomfich:=savedialog1.filename;
          if copy(nomfich,length(nomfich)-2,3)<>'gty' then
             nomfich:=nomfich+'.gty';
          form1.enregistrer_tableau(nomfich);
     end;
end;

procedure TForm1.bouton_annuler1Click(Sender: TObject);
begin
     form1.restituerback;
end;

procedure TForm1.bouton_propertiesClick(Sender: TObject);
begin
     if bouton_properties.down then
     begin
          form2.left:=form1.left-(form2.width+20);
          form2.top:=form1.top+80;
          form2.show;
     end
     else form2.hide;
     n3.checked:=bouton_properties.down;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
     n3.checked:=not(n3.checked);
     bouton_properties.down:=n3.checked;
     Form1.bouton_propertiesClick(sender);
end;
//
//  *******************
//  **   MouseDown   **
//  *******************
//
procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
   x1,y1,i,numFantome:integer;
   texte:string;
begin
     if outils>1 then modif:=true;

     x1:=(x div 8)+1;
     y1:=(y div 8)+1;
     
     if donner_xy then
     begin
          fantome[fantome_select].x:=x1;
          fantome[fantome_select].y:=y1;
          donner_xy:=false;
          form2.speedbutton1.down:=donner_xy;
          image1.cursor:=crdefault;
          bouton_appliquer.enabled:=true;
     end;

     case outils of
          1:begin
            if bouton_copier1.down then
            begin
                 tableau[x1,y1]:=selection;
                 form1.dessiner;
            end;

            if bouton_remplir1.down then
            begin
                 form1.remplir(x1,y1);
            end;
            if (not(bouton_copier1.down))and(not(bouton_remplir1.down))then
            begin
                 selection_x:=x1;
                 selection_y:=y1;
                 selection:=tableau[x1,y1];
                 form1.proprietes_selection(selection);
            end;
          end;
          2:begin
                 form1.verifier_objets(x1,y1);
                 form1.decaler_objet;
                 tableau[x1,y1]:=0;
                 for i:=1 to 10 do
                 begin
                      if (fantome[i].x=x1)and(fantome[i].y=y1)then
                         if messagedlg(MESSAGE5,mtconfirmation,[mbYes,mbNo],0)=mryes then
                         begin
                              fantome[i].present:=false;
                              dec(nb_fantomes,1);
                              form1.decaler_fantomes;
                         end;
                 end;
          end;
          3:tableau[x1,y1]:=couleur_mur;
          4:begin
                 tableau[x1,y1]:=couleur_mur;
                 tableau[x1+1,y1]:=couleur_mur;
                 tableau[x1+2,y1]:=couleur_mur;
          end;
          5:begin
                 tableau[x1,y1]:=couleur_mur;
                 tableau[x1,y1+1]:=couleur_mur;
                 tableau[x1,y1+2]:=couleur_mur;
          end;
          6:begin
                 tableau[(x div 8)+1,(y div 8)+1]:=couleur_mur;
                 tableau[(x div 8)+2,(y div 8)+1]:=couleur_mur;
                 tableau[(x div 8)+3,(y div 8)+1]:=couleur_mur;
                 tableau[(x div 8)+3,(y div 8)+2]:=couleur_mur;
                 tableau[(x div 8)+3,(y div 8)+3]:=couleur_mur;
                 tableau[(x div 8)+3,(y div 8)+4]:=couleur_mur;
                 tableau[(x div 8)+4,(y div 8)+4]:=couleur_mur;
                 tableau[(x div 8)+5,(y div 8)+4]:=couleur_mur;
                 tableau[(x div 8)+6,(y div 8)+4]:=couleur_mur;
                 tableau[(x div 8)+6,(y div 8)+5]:=couleur_mur;
                 tableau[(x div 8)+6,(y div 8)+6]:=couleur_mur;
                 tableau[(x div 8)+5,(y div 8)+6]:=couleur_mur;
                 tableau[(x div 8)+4,(y div 8)+6]:=couleur_mur;
                 tableau[(x div 8)+3,(y div 8)+6]:=couleur_mur;
                 tableau[(x div 8)+3,(y div 8)+7]:=couleur_mur;
                 tableau[(x div 8)+3,(y div 8)+8]:=couleur_mur;
                 tableau[(x div 8)+3,(y div 8)+9]:=couleur_mur;
                 tableau[(x div 8)+2,(y div 8)+9]:=couleur_mur;
                 tableau[(x div 8)+1,(y div 8)+9]:=couleur_mur;
                 tableau[(x div 8)+1,(y div 8)+8]:=couleur_mur;
                 tableau[(x div 8)+1,(y div 8)+7]:=couleur_mur;
                 tableau[(x div 8)+1,(y div 8)+6]:=couleur_mur;
                 tableau[(x div 8)+1,(y div 8)+5]:=couleur_mur;
                 tableau[(x div 8)+1,(y div 8)+4]:=couleur_mur;
                 tableau[(x div 8)+1,(y div 8)+3]:=couleur_mur;
                 tableau[(x div 8)+1,(y div 8)+2]:=couleur_mur;
          end;
          7:begin
                 tableau[(x div 8)+1,(y div 8)+1]:=couleur_mur;
                 tableau[(x div 8),(y div 8)+1]:=couleur_mur;
                 tableau[(x div 8)-1,(y div 8)+1]:=couleur_mur;
                 tableau[(x div 8)+1,(y div 8)+2]:=couleur_mur;
                 tableau[(x div 8)-1,(y div 8)+2]:=couleur_mur;
                 tableau[(x div 8)+1,(y div 8)+3]:=couleur_mur;
                 tableau[(x div 8)-1,(y div 8)+3]:=couleur_mur;
                 tableau[(x div 8)+1,(y div 8)+4]:=couleur_mur;
                 tableau[(x div 8)-1,(y div 8)+4]:=couleur_mur;
                 tableau[(x div 8)-2,(y div 8)+4]:=couleur_mur;
                 tableau[(x div 8)-3,(y div 8)+4]:=couleur_mur;
                 tableau[(x div 8)-4,(y div 8)+4]:=couleur_mur;
                 tableau[(x div 8)+1,(y div 8)+5]:=couleur_mur;
                 tableau[(x div 8)-4,(y div 8)+5]:=couleur_mur;
                 tableau[(x div 8)+1,(y div 8)+6]:=couleur_mur;
                 tableau[(x div 8)-1,(y div 8)+6]:=couleur_mur;
                 tableau[(x div 8)-2,(y div 8)+6]:=couleur_mur;
                 tableau[(x div 8)-3,(y div 8)+6]:=couleur_mur;
                 tableau[(x div 8)-4,(y div 8)+6]:=couleur_mur;
                 tableau[(x div 8)+1,(y div 8)+7]:=couleur_mur;
                 tableau[(x div 8)-1,(y div 8)+7]:=couleur_mur;
                 tableau[(x div 8)+1,(y div 8)+8]:=couleur_mur;
                 tableau[(x div 8)-1,(y div 8)+8]:=couleur_mur;
                 tableau[(x div 8)+1,(y div 8)+9]:=couleur_mur;
                 tableau[(x div 8),(y div 8)+9]:=couleur_mur;
                 tableau[(x div 8)-1,(y div 8)+9]:=couleur_mur;
          end;
          8:begin
                 tableau[(x div 8)+1,(y div 8)+1]:=couleur_mur;
                 tableau[(x div 8)+1,(y div 8)+2]:=couleur_mur;
                 tableau[(x div 8)+1,(y div 8)+3]:=couleur_mur;
                 tableau[(x div 8)+2,(y div 8)+1]:=couleur_mur;
                 tableau[(x div 8)+2,(y div 8)+3]:=couleur_mur;
                 tableau[(x div 8)+3,(y div 8)+1]:=couleur_mur;
                 tableau[(x div 8)+3,(y div 8)+3]:=couleur_mur;
                 tableau[(x div 8)+4,(y div 8)+1]:=couleur_mur;
                 tableau[(x div 8)+4,(y div 8)+3]:=couleur_mur;
                 tableau[(x div 8)+4,(y div 8)+4]:=couleur_mur;
                 tableau[(x div 8)+4,(y div 8)+5]:=couleur_mur;
                 tableau[(x div 8)+4,(y div 8)+6]:=couleur_mur;
                 tableau[(x div 8)+5,(y div 8)+1]:=couleur_mur;
                 tableau[(x div 8)+5,(y div 8)+6]:=couleur_mur;
                 tableau[(x div 8)+6,(y div 8)+1]:=couleur_mur;
                 tableau[(x div 8)+6,(y div 8)+3]:=couleur_mur;
                 tableau[(x div 8)+6,(y div 8)+4]:=couleur_mur;
                 tableau[(x div 8)+6,(y div 8)+5]:=couleur_mur;
                 tableau[(x div 8)+6,(y div 8)+6]:=couleur_mur;
                 tableau[(x div 8)+7,(y div 8)+1]:=couleur_mur;
                 tableau[(x div 8)+7,(y div 8)+3]:=couleur_mur;
                 tableau[(x div 8)+8,(y div 8)+1]:=couleur_mur;
                 tableau[(x div 8)+8,(y div 8)+3]:=couleur_mur;
                 tableau[(x div 8)+9,(y div 8)+1]:=couleur_mur;
                 tableau[(x div 8)+9,(y div 8)+2]:=couleur_mur;
                 tableau[(x div 8)+9,(y div 8)+3]:=couleur_mur;
          end;
          9:begin
                 tableau[(x div 8)+1,(y div 8)+1]:=couleur_mur;
                 tableau[(x div 8)+1,(y div 8)]:=couleur_mur;
                 tableau[(x div 8)+1,(y div 8)-1]:=couleur_mur;
                 tableau[(x div 8)+2,(y div 8)+1]:=couleur_mur;
                 tableau[(x div 8)+2,(y div 8)-1]:=couleur_mur;
                 tableau[(x div 8)+3,(y div 8)+1]:=couleur_mur;
                 tableau[(x div 8)+3,(y div 8)-1]:=couleur_mur;
                 tableau[(x div 8)+4,(y div 8)+1]:=couleur_mur;
                 tableau[(x div 8)+4,(y div 8)-1]:=couleur_mur;
                 tableau[(x div 8)+4,(y div 8)-2]:=couleur_mur;
                 tableau[(x div 8)+4,(y div 8)-3]:=couleur_mur;
                 tableau[(x div 8)+4,(y div 8)-4]:=couleur_mur;
                 tableau[(x div 8)+5,(y div 8)+1]:=couleur_mur;
                 tableau[(x div 8)+5,(y div 8)-4]:=couleur_mur;
                 tableau[(x div 8)+6,(y div 8)+1]:=couleur_mur;
                 tableau[(x div 8)+6,(y div 8)-1]:=couleur_mur;
                 tableau[(x div 8)+6,(y div 8)-2]:=couleur_mur;
                 tableau[(x div 8)+6,(y div 8)-3]:=couleur_mur;
                 tableau[(x div 8)+6,(y div 8)-4]:=couleur_mur;
                 tableau[(x div 8)+7,(y div 8)+1]:=couleur_mur;
                 tableau[(x div 8)+7,(y div 8)-1]:=couleur_mur;
                 tableau[(x div 8)+8,(y div 8)+1]:=couleur_mur;
                 tableau[(x div 8)+8,(y div 8)-1]:=couleur_mur;
                 tableau[(x div 8)+9,(y div 8)+1]:=couleur_mur;
                 tableau[(x div 8)+9,(y div 8)]:=couleur_mur;
                 tableau[(x div 8)+9,(y div 8)-1]:=couleur_mur;
          end;
          10:begin
                 gloutoman[1].x:=x1;
                 gloutoman[1].y:=y1;
                 gloutoman[1].present:=true;
          end;
          11:begin
                 gloutoman[2].x:=x1;
                 gloutoman[2].y:=y1;
                 gloutoman[2].present:=true;
          end;
          12..15:begin
                 if nb_fantomes<10 then
                 begin
                      inc(nb_fantomes,1);
                      fantome[nb_fantomes].x:=x1;
                      fantome[nb_fantomes].y:=y1;
                      fantome[nb_fantomes].couleur:=outils-11;
                      fantome[nb_fantomes].present:=true;
                 end;
          end;
          50:begin
                 for numFantome := 1 to nb_fantomes do
                  begin
                      fantome[numFantome].present:=false;
                      fantome[numFantome].x:=0;
                      fantome[numFantome].y:=0;
                      fantome[numFantome].couleur:=1;
                  end;
                  nb_fantomes:=0;
          end;
          16,19..27,30..35,37..40,42..48:tableau[x1,y1]:=outils;
          28:begin
                  if nb_bouton<5 then
                  begin
                       tableau[x1,y1]:=outils;
                       inc(nb_bouton,1);
                       bouton[nb_bouton].present:=true;
                       bouton[nb_bouton].x:=x1;
                       bouton[nb_bouton].y:=y1;
                  end;
          end;
          29:begin
                  if nb_tempo<5 then
                  begin
                       tableau[x1,y1]:=outils;
                       inc(nb_tempo,1);
                       tempo[nb_tempo].present:=true;
                       tempo[nb_tempo].x:=x1;
                       tempo[nb_tempo].y:=y1;
                  end;
          end;
          36:begin
                  if nb_telep<5 then
                  begin
                       tableau[x1,y1]:=outils;
                       inc(nb_telep,1);
                       teleporteur[nb_telep].present:=true;
                       teleporteur[nb_telep].x:=x1;
                       teleporteur[nb_telep].y:=y1;
                  end;
          end;
          17,18:begin
                  if nb_porte<10 then
                  begin
                       tableau[x1,y1]:=outils;
                       inc(nb_porte,1);
                       porte[nb_porte].present:=true;
                       porte[nb_porte].x:=x1;
                       porte[nb_porte].y:=y1;
                  end;
          end;
          41:begin
                  if nb_cle<5 then
                  begin
                       tableau[x1,y1]:=outils;
                       inc(nb_cle,1);
                       cle[nb_cle].present:=true;
                       cle[nb_cle].x:=x1;
                       cle[nb_cle].y:=y1;
                  end;
          end;
     end;
     form1.dessiner;
end;
//
//  ****************
//  **   Outils   **
//  ****************
//
procedure TForm1.UpDown1Changing(Sender: TObject; var AllowChange: Boolean);
var
   x,y:integer;
begin
     couleur_mur:=updown1.position;
     for x:=1 to 3 do
     for y:=1 to 3 do
          imagelist1.draw(image_mur.canvas,(x*8)-8,(y*8)-8,couleur_mur-1);
     image_mur.Repaint;
end;

procedure TForm1.UpDown2Click(Sender: TObject; Button: TUDBtnType);
begin
     case updown2.position of
          1:couleur_fond:=clblack;
          2:couleur_fond:=clmaroon;
          3:couleur_fond:=clgreen;
          4:couleur_fond:=clolive;
          5:couleur_fond:=clnavy;
          6:couleur_fond:=clpurple;
          7:couleur_fond:=clteal;
          8:couleur_fond:=clgray;
     end;
     image_fond.canvas.brush.color:=couleur_fond;
     image_fond.canvas.pen.color:=couleur_fond;
     image_fond.canvas.rectangle(0,0,25,25);
     form1.dessiner;
end;

procedure TForm1.bouton_appliquerClick(Sender: TObject);
var
   o:integer;
begin
     if fantome_select>0 then
     begin
          if (strtoint(form2.editfigx.text)>2)and(strtoint(form2.editfigx.text)<69)then
          fantome[fantome_select].x:=strtoint(form2.editfigx.text);
          if (strtoint(form2.editfigy.text)>2)and(strtoint(form2.editfigy.text)<49)then
          fantome[fantome_select].y:=strtoint(form2.editfigy.text);
          if form2.comboboxfigcoul.text='Rouge' then fantome[fantome_select].couleur:=1;
          if form2.comboboxfigcoul.text='Orange' then fantome[fantome_select].couleur:=2;
          if form2.comboboxfigcoul.text='Rose' then fantome[fantome_select].couleur:=3;
          if form2.comboboxfigcoul.text='Bleu' then fantome[fantome_select].couleur:=4;
          dessiner;
     end;
     case selection of
          17,18:porte[selection_ID].tempoFermeture:=strtoint(form2.editlien.text);
          28:bouton[selection_ID].lien:=strtoint(form2.editlien.text);
          29:begin
                  tempo[selection_ID].valeur:=strtoint(form2.editlien.text);
                  for o:=1 to 10 do
                       tempo[selection_ID].lien[o]:=strtoint(form2.grid_liens.Cells[1,o-1]);
          end;
          36:teleporteur[selection_ID].lien:=strtoint(form2.editlien.text);
          41:cle[selection_ID].lien:=strtoint(form2.editlien.text);
     end;
     bouton_appliquer.Enabled:=false;
end;

procedure TForm1.bouton_scenarioClick(Sender: TObject);
begin
     panel2.show;
     //
     checkbox1.checked:=scenario_cerises;
     checkbox2.checked:=scenario_points;
     edit1.text:=inttostr(points);
     checkbox2.checked:=scenario_objet;
     combobox1.itemindex:=objet;
     combobox1.enabled:=checkbox3.checked;
     //
     panel_outils1.visible:=false;
     afficher_outils:=false;
end;

procedure TForm1.SpeedButton8Click(Sender: TObject);
begin
     outils:=1;
     image1.cursor:=crdefault;
     cacher_outils;
     bouton_copier1.down:=false;
     bouton_remplir1.down:=false;
end;

procedure TForm1.bouton_effacerClick(Sender: TObject);
begin
     outils:=2;
     image1.cursor:=crgomme;
     cacher_outils;
     sauverback;
end;

procedure TForm1.bouton_mur1x1Click(Sender: TObject);
begin
     outils:=3;
     image1.cursor:=crcursorm;
     cacher_outils;
     sauverback;
end;


procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
     outils:=4;
     image1.cursor:=crcursorv3;
     cacher_outils;
     sauverback;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
     outils:=5;
     image1.cursor:=crcursorh3;
     cacher_outils;
     sauverback;
end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
begin
     outils:=6;
     image1.cursor:=crmur1;
     cacher_outils;
     sauverback;
end;

procedure TForm1.SpeedButton5Click(Sender: TObject);
begin
     outils:=7;
     image1.cursor:=crmur2;
     cacher_outils;
     sauverback;
end;

procedure TForm1.SpeedButton6Click(Sender: TObject);
begin
     outils:=8;
     image1.cursor:=crmur3;
     cacher_outils;
     sauverback;
end;

procedure TForm1.SpeedButton7Click(Sender: TObject);
begin
     outils:=9;
     image1.cursor:=crmur4;
     cacher_outils;
      sauverback;
end;

procedure TForm1.bouton_glouto1Click(Sender: TObject);
begin
     outils:=10;
     image1.cursor:=crdefault;
     cacher_outils;
     sauverback;
end;

procedure TForm1.bouton_glouto2Click(Sender: TObject);
begin
     outils:=11;
     image1.cursor:=crdefault;
     cacher_outils;
     sauverback;
end;

procedure TForm1.bouton_ceriseClick(Sender: TObject);
begin
     outils:=20;
     image1.cursor:=crcross;
     cacher_outils;
     sauverback;
end;

procedure TForm1.bouton_bananeClick(Sender: TObject);
begin
     outils:=21;
     image1.cursor:=crcross;
     cacher_outils;
     sauverback;
end;

procedure TForm1.SpeedButton17Click(Sender: TObject);
begin
     outils:=22;
     image1.cursor:=crcross;
     cacher_outils;
     sauverback;
end;

procedure TForm1.SpeedButton18Click(Sender: TObject);
begin
     outils:=23;
     image1.cursor:=crcross;
     cacher_outils;
     sauverback;
end;

procedure TForm1.SpeedButton20Click(Sender: TObject);
begin
     outils:=24;
     image1.cursor:=crcross;
     cacher_outils;
     sauverback;
end;

procedure TForm1.SpeedButton21Click(Sender: TObject);
begin
     outils:=25;
     image1.cursor:=crcross;
     cacher_outils;
     sauverback;
end;

procedure TForm1.SpeedButton22Click(Sender: TObject);
begin
     outils:=26;
     image1.cursor:=crcross;
     cacher_outils;
     sauverback;
end;

procedure TForm1.SpeedButton24Click(Sender: TObject);
begin
     outils:=17;
     image1.cursor:=crcross;
     cacher_outils;
     sauverback;
end;

procedure TForm1.SpeedButton25Click(Sender: TObject);
begin
     outils:=18;
     image1.cursor:=crcross;
     cacher_outils;
     sauverback;
end;

procedure TForm1.SpeedButton26Click(Sender: TObject);
begin
     outils:=27;
     image1.cursor:=crcross;
     cacher_outils;
     sauverback;
end;

procedure TForm1.SpeedButton27Click(Sender: TObject);
begin
     outils:=28;
     image1.cursor:=crcross;
     cacher_outils;
     sauverback;
end;

procedure TForm1.SpeedButton28Click(Sender: TObject);
begin
     outils:=29;
     image1.cursor:=crcross;
     cacher_outils;
     sauverback;
end;

procedure TForm1.SpeedButton23Click(Sender: TObject);
begin
     outils:=16;
     sauverback;
     image1.cursor:=crcross;
     cacher_outils;
end;

procedure TForm1.bouton_fantome1Click(Sender: TObject);
begin
     outils:=12;
     image1.cursor:=crdefault;
     cacher_outils;
end;

procedure TForm1.bouton_fantome2Click(Sender: TObject);
begin
     outils:=13;
     image1.cursor:=crdefault;
     cacher_outils;
end;

procedure TForm1.bouton_fantome3Click(Sender: TObject);
begin
     outils:=14;
     image1.cursor:=crdefault;
     cacher_outils;
end;

procedure TForm1.bouton_fantome4Click(Sender: TObject);
begin
     outils:=15;
     image1.cursor:=crdefault;
     cacher_outils;
end;

procedure TForm1.bouton_fantome5Click(Sender: TObject);
begin
     outils:=50;
     image1.cursor:=crdefault;
     cacher_outils;
end;

procedure TForm1.SpeedButton29Click(Sender: TObject);
begin
     outils:=30;
     image1.cursor:=crcross;
     cacher_outils;
     sauverback;
end;

procedure TForm1.SpeedButton30Click(Sender: TObject);
begin
     outils:=31;
     image1.cursor:=crcross;
     cacher_outils;
     sauverback;
end;

procedure TForm1.SpeedButton31Click(Sender: TObject);
begin
     outils:=32;
     image1.cursor:=crcross;
     cacher_outils;
     sauverback;
end;

procedure TForm1.SpeedButton32Click(Sender: TObject);
begin
     outils:=33;
     image1.cursor:=crcross;
     cacher_outils;
     sauverback;
end;

procedure TForm1.SpeedButton33Click(Sender: TObject);
begin
     outils:=34;
     image1.cursor:=crcross;
     cacher_outils;
     sauverback;
end;

procedure TForm1.SpeedButton34Click(Sender: TObject);
begin
     outils:=35;
     image1.cursor:=crcross;
     cacher_outils;
     sauverback;
end;

procedure TForm1.SpeedButton35Click(Sender: TObject);
begin
     outils:=36;
     image1.cursor:=crcross;
     cacher_outils;
     sauverback;
end;

procedure TForm1.SpeedButton36Click(Sender: TObject);
begin
     outils:=37;
     image1.cursor:=crcross;
     cacher_outils;
     sauverback;
end;

procedure TForm1.SpeedButton37Click(Sender: TObject);
begin
     outils:=38;
     image1.cursor:=crcross;
     cacher_outils;
     sauverback;
end;

procedure TForm1.SpeedButton38Click(Sender: TObject);
begin
     outils:=39;
     image1.cursor:=crcross;
     cacher_outils;
     sauverback;
end;

procedure TForm1.SpeedButton39Click(Sender: TObject);
begin
     outils:=40;
     image1.cursor:=crcross;
     cacher_outils;
     sauverback;
end;

procedure TForm1.SpeedButton40Click(Sender: TObject);
begin
     outils:=41;
     image1.cursor:=crcross;
     cacher_outils;
     sauverback;
end;

procedure TForm1.SpeedButton41Click(Sender: TObject);
begin
     outils:=42;
     image1.cursor:=crcross;
     cacher_outils;
     sauverback;
end;

procedure TForm1.SpeedButton42Click(Sender: TObject);
begin
     outils:=43;
     image1.cursor:=crcross;
     cacher_outils;
     sauverback;
end;

procedure TForm1.SpeedButton43Click(Sender: TObject);
begin
     outils:=44;
     image1.cursor:=crcross;
     cacher_outils;
     sauverback;
end;

procedure TForm1.SpeedButton44Click(Sender: TObject);
begin
     outils:=45;
     image1.cursor:=crcross;
     cacher_outils;
     sauverback;
end;
//
//  ********************
//  **   Propriétes   **
//  ********************
//
procedure TForm1.proprietes_selection(valeur:integer);
var
   x,y,i,o:integer;
   texte:string;
begin
     form2.labelx.caption:='X : '+inttostr(selection_x);
     form2.labely.caption:='Y : '+inttostr(selection_y);
     form2.label_select.caption:='Valeur : '+inttostr(selection);
     case selection of
          0:texte:='Fond du tableau.';
          1..15:texte:='Mur visible.';
          16:texte:='Mur à fantômes.'#13#10#10'Les fantômes peuvent le traverser mais pas les GloutoMan.';
          17:texte:='Porte électrique.'#13#10#10'Commandée par un bouton et/ou une temporisation.';
          18:texte:='Porte coulissante.'#13#10#10'Commandée par un bouton et/ou une temporisation.';
          20:texte:='Cerise.'#13#10#10'4 cerises doivent être disposées dans le tableau.';
          21:texte:='Banane.'#13#10#10'4 bananes doivent être disposées dans le tableau.';
          22:texte:='Bonus 10 points.';
          23:texte:='Bonus 100 points.';
          24:texte:='Bonus 500 points.';
          25:texte:='Bonus 1000 points.';
          26:texte:='Bonus multiplicateur x2.';
          27:texte:='Mur invisible.';
          28:texte:='Bouton.'#13#10#10'Peut ouvrir une porte électrique ou coulissante.';
          29:texte:='Temporisation.'#13#10#10'Peut ouvrir jusqu''à 10 portes électrique et coulissantes.';
          30:texte:='Pacgom.';
          31:texte:='Colle.'#13#10#10'Ralentis les GloutoMan..';
          32:texte:='Patinoire.'#13#10#10'Accélère les GloutoMan.';
          33:texte:='Glace.'#13#10#10'Bloque les GloutoMan pendant 3 secondes.';
          34:texte:='Timer.'#13#10#10'Bloque les fantômes pendant 5 secondes.';
          35:texte:='Passage secret.'#13#10#10'Passe au niveau suivant.';
          36:texte:='Téléporteur.'#13#10#10'Envoie un GloutoMan vers un autre téléporteur.';
          37:texte:='Vie supplémentaire.';
          38:texte:='Médi Kit.'#13#10#10'Vie supplémentaire à utiliser si besoin.';
          39:texte:='Gousse d''ail.'#13#10#10'Ail supplémentaire.';
          40:texte:='Poison.'#13#10#10'Fait perdre une vie aux GloutoMan.';
          41:texte:='Télécommande.';
          42:texte:='Dynamite.'#13#10#10'Explose les murs à fantômes.';
          43:texte:='Bombe.'#13#10#10'Explose tous les murs et objets.';
     end;
     form2.label_description.caption:=texte;

     form2.label_figurant.caption:='';
     form2.labelfigx.caption:='';
     form2.labelfigy.caption:='';
     form2.labelfigcoul.caption:='';
     form2.editfigx.visible:=false;
     form2.editfigy.visible:=false;
     fantome_select:=0;
     bouton_appliquer.enabled:=false;
     donner_xy:=false;
     form2.speedbutton1.down:=false;
     form2.speedbutton1.visible:=false;
     form2.comboboxfigcoul.visible:=false;
     form2.editlien.visible:=false;
     selection_ID:=0;
     form2.label1.visible:=false;
     form2.grid_liens.visible:=false;
     form2.LabelAide.Visible:=false;

     // Gloutoman

     for i:=1 to 2 do
     begin
          if (gloutoman[i].x=selection_x)and(gloutoman[i].y=selection_y)then
          begin
               form2.label_figurant.caption:='Gloutoman';
               form2.labelfigx.caption:='X : '+inttostr(gloutoman[i].x);
               form2.labelfigy.caption:='Y : '+inttostr(gloutoman[i].y);
               case i of
                    1:form2.labelfigcoul.caption:='Couleur : Jaune';
                    2:form2.labelfigcoul.caption:='Couleur : Vert';
               end;
          end;
     end;

     // Fantomes

     for i:=1 to 10 do
     begin
          if (fantome[i].x=selection_x)and(fantome[i].y=selection_y)then
          begin
               form2.editfigx.visible:=true;
               form2.editfigy.visible:=true;
               form2.comboboxfigcoul.visible:=true;
               form2.label_figurant.caption:='Fantome '+inttostr(i);
               form2.labelfigx.caption:='X : ';
               form2.editfigx.text:=inttostr(fantome[i].x);
               form2.labelfigy.caption:='Y : ';
               form2.editfigy.text:=inttostr(fantome[i].y);
               form2.labelfigcoul.caption:='Couleur :';
               case fantome[i].couleur of
                    1:form2.comboboxfigcoul.text:='Rouge';
                    2:form2.comboboxfigcoul.text:='Orange';
                    3:form2.comboboxfigcoul.text:='Rose';
                    4:form2.comboboxfigcoul.text:='Bleu';
               end;
               form2.speedbutton1.visible:=true;
               bouton_appliquer.enabled:=true;
               fantome_select:=i;
          end;
     end;

     // Tempos

     for i:=1 to 5 do
     begin
          if (tempo[i].x=selection_x)and(tempo[i].y=selection_y)then
          begin
               form2.label_figurant.caption:='Temporisation '+inttostr(i);
               form2.labelfigx.caption:='X : '+inttostr(tempo[i].x);
               form2.labelfigy.caption:='Y : '+inttostr(tempo[i].y);
               form2.labelfigcoul.caption:='Valeur :';
               form2.editlien.visible:=true;
               form2.editlien.text:=inttostr(tempo[i].valeur);
               form2.LabelAide.Visible:=false;
               form2.label1.visible:=true;
               form2.grid_liens.visible:=true;
               for o:=1 to 10 do
               begin
                   form2.grid_liens.Cells[0,o-1] := inttostr(o);
                   form2.grid_liens.Cells[1,o-1] := inttostr(tempo[i].lien[o]);
               end;
               bouton_appliquer.enabled:=true;
               selection_ID:=i;
          end;
     end;

     //  Bouton

     for i:=1 to 5 do
     begin
          if (bouton[i].x=selection_x)and(bouton[i].y=selection_y)then
          begin
               form2.label_figurant.caption:='Bouton '+inttostr(i);
               form2.labelfigx.caption:='X : '+inttostr(bouton[i].x);
               form2.labelfigy.caption:='Y : '+inttostr(bouton[i].y);
               form2.labelfigcoul.caption:='   Lien :';
               form2.editlien.visible:=true;
               form2.editlien.text:=inttostr(bouton[i].lien);
               form2.LabelAide.Visible:=true;
               form2.LabelAide.Caption:='N° de porte à ouvrir';
               bouton_appliquer.enabled:=true;
               selection_ID:=i;
          end;
     end;

     //  Téléporteur

     for i:=1 to 5 do
     begin
          if (teleporteur[i].x=selection_x)and(teleporteur[i].y=selection_y)then
          begin
               form2.label_figurant.caption:='Téléporteur '+inttostr(i);
               form2.labelfigx.caption:='X : '+inttostr(teleporteur[i].x);
               form2.labelfigy.caption:='Y : '+inttostr(teleporteur[i].y);
               form2.labelfigcoul.caption:='   Lien :';
               form2.editlien.visible:=true;
               form2.editlien.text:=inttostr(teleporteur[i].lien);
               form2.LabelAide.Visible:=true;
               form2.LabelAide.Caption:='N° de téléporteur de destination';
               bouton_appliquer.enabled:=true;
               selection_ID:=i;
          end;
     end;

     //  Porte

     for i:=1 to 10 do
     begin
          if (porte[i].x=selection_x)and(porte[i].y=selection_y)then
          begin
               form2.label_figurant.caption:='Porte '+inttostr(i);
               form2.labelfigx.caption:='X : '+inttostr(porte[i].x);
               form2.labelfigy.caption:='Y : '+inttostr(porte[i].y);
               form2.labelfigcoul.caption:='Fermeture :';
               form2.editlien.visible:=true;
               form2.editlien.text:=inttostr(porte[i].tempoFermeture);
               form2.LabelAide.Visible:=true;
               form2.LabelAide.Caption:='Durée en secondes pour la fermeture de la porte';
               bouton_appliquer.enabled:=true;
               selection_ID:=i;
          end;
     end;
     
     //  Cle

     for i:=1 to 5 do
     begin
          if (cle[i].x=selection_x)and(cle[i].y=selection_y)then
          begin
               form2.label_figurant.caption:='Cle '+inttostr(i);
               form2.labelfigx.caption:='X : '+inttostr(cle[i].x);
               form2.labelfigy.caption:='Y : '+inttostr(cle[i].y);
               form2.labelfigcoul.caption:='Lien :';
               form2.editlien.visible:=true;
               form2.editlien.text:=inttostr(cle[i].lien);
               bouton_appliquer.enabled:=true;
               selection_ID:=i;
          end;
     end;
end;

procedure TForm1.verifier_objets(x,y:integer);
var
   i:integer;
begin
     case tableau[x,y] of
          28:begin
          for i:=1 to 5 do
              if (bouton[i].x=x)and(bouton[i].y=y)then
              begin
                   bouton[i].present:=false;
                   dec(nb_bouton,1);
              end;
          end;
          29:begin
          for i:=1 to 5 do
              if (tempo[i].x=x)and(tempo[i].y=y)then
              begin
                   tempo[i].present:=false;
                   dec(nb_tempo,1);
              end;
          end;
          36:begin
          for i:=1 to 5 do
              if (teleporteur[i].x=x)and(teleporteur[i].y=y)then
              begin
                   teleporteur[i].present:=false;
                   dec(nb_telep,1);
              end;
          end;
          17,18:begin
          for i:=1 to 10 do
              if (porte[i].x=x)and(porte[i].y=y)then
              begin
                   porte[i].present:=false;
                   dec(nb_porte,1);
              end;
          end;
          41:begin
          for i:=1 to 5 do
              if (cle[i].x=x)and(cle[i].y=y)then
              begin
                   cle[i].present:=false;
                   dec(nb_cle,1);
              end;
          end;
     end;
end;

procedure TForm1.Vrifierletableau1Click(Sender: TObject);
begin
  //
end;

//
//  *******************
//  **   Scénarios   **
//  *******************
//
procedure TForm1.BitBtn2Click(Sender: TObject);
begin
     panel2.hide;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
     scenario_cerises:=checkbox1.checked;
     scenario_points:=checkbox2.checked;
     points:=strtoint(edit1.text);
     scenario_objet:=checkbox3.checked;
     objet:=combobox1.itemindex;
     panel2.hide;
end;

procedure TForm1.CheckBox3Click(Sender: TObject);
begin
     combobox1.enabled:=checkbox3.checked;
end;

procedure TForm1.Chemindaccs1Click(Sender: TObject);
begin
  Form4.ShowModal();
end;

end.

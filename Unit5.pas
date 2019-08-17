unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, jpeg, ExtCtrls, unit6, Vcl.DBCtrls, Data.DB,
  Data.Win.ADODB,unit3, Vcl.Imaging.pngimage,unit1;

type
  TForm5 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image6: TImage;
    Image7: TImage;
    Image3: TImage;
    Timer1: TTimer;
    Label2: TLabel;
    Label1: TLabel;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DBImage3: TDBImage;
    DBImage4: TDBImage;
    DBImage5: TDBImage;
    DBImage6: TDBImage;
    DBImage7: TDBImage;
    DBImage8: TDBImage;
    DBImage9: TDBImage;
    DBImage10: TDBImage;
    DBImage2: TDBImage;
    DBImage1: TDBImage;
    GroupBox1: TGroupBox;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Label3: TLabel;
    Image4: TImage;
    Image5: TImage;
    Image11: TImage;
    procedure Image7Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image11Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  t: integer;

implementation
uses
unit4    ;
{$R *.dfm}

procedure TForm5.FormCreate(Sender: TObject);
begin
DoubleBuffered:=true;
end;

procedure TForm5.Image10Click(Sender: TObject);
begin
 form6.adotable1.active:=true;
  form6.adotable2.active:=true;
form6.GroupBox1.Left:=-140;
form6.Image6.Visible:=false;
form6.Image7.Visible:=true;
form6.ADOTable1.Active:=true;
  form6.show;
  Form5.Hide;
end;

procedure TForm5.Image11Click(Sender: TObject);
begin
form4.Edit1.Text:='Поиск...';
form4.GroupBox1.Left:=-140;
form4.Image6.Visible:=false;
form4.Image7.Visible:=true;
form4.Show;
form5.Close;
end;

procedure TForm5.Image3Click(Sender: TObject);
var
kol:integer;
begin
kol:=form4.adotable1.fieldbyname('kol').AsInteger;
if form4.adotable1.fieldbyname('kol').Asinteger>strtoint(Label3.Caption) then
begin
Label3.Caption:=inttostr(strtoint(Label3.Caption)+1);
  if strtoint(Label3.Caption)=2 then
  begin
  DBImage1.Visible:=false;
  DBImage2.Visible:=true;
  end;
  if strtoint(Label3.Caption)=3 then
    begin
  DBImage2.Visible:=false;
  DBImage3.Visible:=true;
  end;
  if strtoint(Label3.Caption)=4 then
    begin
  DBImage3.Visible:=false;
  DBImage4.Visible:=true;
  end;
  if strtoint(Label3.Caption)=5 then
    begin
  DBImage4.Visible:=false;
  DBImage5.Visible:=true;
  end;
  if strtoint(Label3.Caption)=6 then
    begin
  DBImage5.Visible:=false;
  DBImage6.Visible:=true;
  end;
  if strtoint(Label3.Caption)=7 then
    begin
  DBImage6.Visible:=false;
  DBImage7.Visible:=true;
  end;
  if strtoint(Label3.Caption)=8 then
    begin
  DBImage7.Visible:=false;
  DBImage8.Visible:=true;
  end;
  if strtoint(Label3.Caption)=9 then
    begin
  DBImage8.Visible:=false;
  DBImage9.Visible:=true;
  end;
  if strtoint(Label3.Caption)=10 then
    begin
  DBImage9.Visible:=false;
  DBImage10.Visible:=true;
  end;
  if strtoint(Label3.Caption)=1 then
    begin
  DBImage1.Visible:=true;
  DBImage2.Visible:=false;

  end;
end;
end;

procedure TForm5.Image4Click(Sender: TObject);
var
kol:integer;
begin
kol:=form4.adotable1.fieldbyname('kol').AsInteger;
if 1<strtoint(Label3.Caption) then
begin
Label3.Caption:=inttostr(strtoint(Label3.Caption)-1);
  if strtoint(Label3.Caption)=2 then
  begin
  DBImage1.Visible:=false;
  DBImage2.Visible:=true;
  end;
  if strtoint(Label3.Caption)=3 then
    begin
  DBImage2.Visible:=false;
  DBImage3.Visible:=true;
  end;
  if strtoint(Label3.Caption)=4 then
    begin
  DBImage3.Visible:=false;
  DBImage4.Visible:=true;
  end;
  if strtoint(Label3.Caption)=5 then
    begin
  DBImage4.Visible:=false;
  DBImage5.Visible:=true;
  end;
  if strtoint(Label3.Caption)=6 then
    begin
  DBImage5.Visible:=false;
  DBImage6.Visible:=true;
  end;
  if strtoint(Label3.Caption)=7 then
    begin
  DBImage6.Visible:=false;
  DBImage7.Visible:=true;
  end;
  if strtoint(Label3.Caption)=8 then
    begin
  DBImage7.Visible:=false;
  DBImage8.Visible:=true;
  end;
  if strtoint(Label3.Caption)=9 then
    begin
  DBImage8.Visible:=false;
  DBImage9.Visible:=true;
  end;
  if strtoint(Label3.Caption)=10 then
    begin
  DBImage9.Visible:=false;
  DBImage10.Visible:=true;
  end;
  if strtoint(Label3.Caption)=1 then
    begin
  DBImage1.Visible:=true;
  DBImage2.Visible:=false;

  end;
end;
end;

procedure TForm5.Image5Click(Sender: TObject);
begin
form1.close;
end;

procedure TForm5.Image6Click(Sender: TObject);
begin
  Image6.visible := False;
  Image7.visible := True;
  t := 0;
  Timer1.Enabled := True;
end;

procedure TForm5.Image7Click(Sender: TObject);
begin
  Image6.visible := True;
  Image7.visible := False;
  Timer1.Enabled := True;
  t := 1;
end;

procedure TForm5.Image9Click(Sender: TObject);
begin
form3.GroupBox1.Left:=-140;
form3.Image6.Visible:=false;
form3.Image7.Visible:=true;
form5.Hide;
form3.show;
end;

procedure TForm5.Timer1Timer(Sender: TObject);
begin
  if t = 1 then
  begin
    if GroupBox1.Left < 0 then
      GroupBox1.Left := GroupBox1.Left + 5
    else
      Timer1.Enabled := False;
  end
  else
  begin
    if GroupBox1.Left > -140 then
      GroupBox1.Left := GroupBox1.Left - 5
    else
      Timer1.Enabled := False;
  end;
end;

end.

unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg, ComCtrls, Buttons, Vcl.Samples.Gauges,
  Vcl.Imaging.pngimage, Data.DB, Data.Win.ADODB, Vcl.DBCtrls;

type
  TForm3 = class(TForm)
    Image1: TImage;
    Image5: TImage;
    Image4: TImage;
    Label1: TLabel;
    Image3: TImage;
    Image6: TImage;
    Image7: TImage;
    Gauge1: TGauge;
    Timer1: TTimer;
    DBMemo1: TDBMemo;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    GroupBox1: TGroupBox;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    procedure Image6Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure Image11Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  t: integer;

implementation

uses Unit4, Unit5, Unit6, unit7, unit9, unit1;

{$R *.dfm}

procedure TForm3.Image10Click(Sender: TObject);
var
i: integer;
begin
 form6.adotable1.active:=true;
  form6.adotable2.active:=true;
form6.GroupBox1.Left:=-140;
form6.Image6.Visible:=false;
form6.Image7.Visible:=true;

form6.ListBox1.Clear;
i:=1;
form6.ADOTable1.Active:=true;
for i:=1 to form6.ADOTable1.RecordCount do
begin
form6.ListBox1.Items.add(form6.ADOTable1.FieldbyName('name').AsString);
form6.ADOTable1.NEXT;
end;
  Form3.Hide;
  form6.Show;

end;

procedure TForm3.Image11Click(Sender: TObject);
begin

  form1.Close;
end;

procedure TForm3.Image6Click(Sender: TObject);
begin
  Image6.visible := False;
  Image7.visible := True;
  t := 0;
  Timer1.Enabled := True;
end;

procedure TForm3.Image7Click(Sender: TObject);
begin
  Image6.visible := True;
  Image7.visible := False;
  Timer1.Enabled := True;
  t := 1;
end;

procedure TForm3.Image9Click(Sender: TObject);
  var
r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,namee:string;
i:integer;
begin
form4.Edit1.Text:='Поиск...';
form4.GroupBox1.Left:=-140;
form4.Image6.Visible:=false;
form4.Image7.Visible:=true;

Form4.ListBox1.Items.Clear;
Form3.Hide;
form4.ADOTable1.Active:=true;
i:=1;

for i:= 1 to Form4.ADOTable1.RecordCount do
begin

namee:=Form4.ADOTable1.FieldbyName('name').AsString;
//ShowMessage(namee);
//ShowMessage(Form4.ADOTable1.FieldbyName('raz1').asstring);

r1:=Form4.ADOTable1.FieldbyName('raz1').AsString;
r2:=Form4.ADOTable1.FieldbyName('raz2').AsString;
r3:=Form4.ADOTable1.FieldbyName('raz3').AsString;
r4:=Form4.ADOTable1.FieldbyName('raz4').AsString;
r5:=Form4.ADOTable1.FieldbyName('raz5').AsString;
r6:=Form4.ADOTable1.FieldbyName('raz6').AsString;
r7:=Form4.ADOTable1.FieldbyName('raz7').AsString;
r8:=Form4.ADOTable1.FieldbyName('raz8').AsString;
r9:=Form4.ADOTable1.FieldbyName('raz9').AsString;
r10:=Form4.ADOTable1.FieldbyName('raz10').AsString;

Form4.ListBox1.Items.add(namee);
if r1 <> '-' then
Form4.ListBox1.Items.add('      '+r1);
if r2 <> '-' then
Form4.ListBox1.Items.add('      '+r2);
if r3 <> '-' then
Form4.ListBox1.Items.add('      '+r3);
if r4 <> '-' then
Form4.ListBox1.Items.add('      '+r4);
if r5 <> '-' then
Form4.ListBox1.Items.add('      '+r5);
if r6 <> '-' then
Form4.ListBox1.Items.add('      '+r6);
if r7 <> '-' then
Form4.ListBox1.Items.add('      '+r7);
if r8 <> '-' then
Form4.ListBox1.Items.add('      '+r8);
if r9 <> '-' then
Form4.ListBox1.Items.add('     '+r9);
if r10 <> '-' then
Form4.ListBox1.Items.add('     '+r10);

Form4.ADOTable1.next;

end;

  form4.Show;
end;

procedure TForm3.Timer1Timer(Sender: TObject);
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

procedure TForm3.BitBtn1Click(Sender: TObject);
begin
  form4.Show();
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
  form6.Show();
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
DoubleBuffered:=true;
end;

end.

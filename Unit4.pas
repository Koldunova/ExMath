unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Unit5, unit3, unit6, Data.DB,
  Data.Win.ADODB, Vcl.Imaging.pngimage,unit1;

type
  TForm4 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image7: TImage;
    Image3: TImage;
    Image4: TImage;
    Image8: TImage;
    Edit1: TEdit;
    Image6: TImage;
    Timer1: TTimer;
    ListBox1: TListBox;
    ADOTable1: TADOTable;
    GroupBox1: TGroupBox;
    Image5: TImage;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    procedure Label2Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ListBox1DblClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Image11Click(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  t: integer;

implementation

{$R *.dfm}

procedure TForm4.Edit1Change(Sender: TObject);
var
r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,namee:string;
i:integer;
begin
if Length(Edit1.Text) > 0 then   //Все классно!)
begin
ADOTable1.Filtered:=false;
ADOTable1.Filter:='name  LIKE ' + #39 +'%' + Edit1.Text + '%' + #39;
ADOTable1.Filtered:=true;
Form4.ListBox1.Items.Clear;
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

end
else
begin
 ADOTable1.Filtered:=false;
Form4.ListBox1.Items.Clear;
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
end;
end;

procedure TForm4.Edit1Click(Sender: TObject);
begin
Edit1.Text:='';
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
DoubleBuffered:=true;
end;

procedure TForm4.Image10Click(Sender: TObject);
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
  form6.show;
  Form4.Hide;
end;

procedure TForm4.Image11Click(Sender: TObject);
begin
form1.close;
end;

procedure TForm4.Image6Click(Sender: TObject);
begin
  Image6.visible := False;
  Image7.visible := True;

  t := 0;
  Timer1.Enabled := True;

end;

procedure TForm4.Image7Click(Sender: TObject);
begin
  Image6.visible := True;
  Image7.visible := False;
   Timer1.Enabled := True;
  t := 1;

end;

procedure TForm4.Image9Click(Sender: TObject);
begin
//////////////////////////
form3.GroupBox1.Left:=-140;
form3.Image6.Visible:=false;
form3.Image7.Visible:=true;       //выплывающая полоса
///////////////////////////
    form1.qry1.SQL.Clear;
      form1.qry1.SQL.Add('Select progress from progress where IDD= ' + #39 +
        id + #39);
     form1. qry1.Active := true;
      // ShowMessage('goood2');
      if form1.qry1.RecordCount = 1 then
      begin
       // ShowMessage(qry1.FieldByName('progress').AsString);
        form3.Gauge1.progress := form1.qry1.FieldByName('progress').AsInteger;
      end;
  form3.show;
  Form4.Hide;
end;

procedure TForm4.Label2Click(Sender: TObject);
begin
  form5.show();
end;

procedure TForm4.ListBox1DblClick(Sender: TObject);
var
i:integer;
j,t:String;
begin
form5.ADOTable1.Active:=true;
ADOTable1.Active:=true;
if ListBox1.ItemIndex<>-1 then
begin
t:=ListBox1.Items[ListBox1.ItemIndex];
if (t[1]=' ') and (t[2]=' ') then
  i:=0
else
  i:=1;

if i=1 then
begin
  ADOTable1.First;
  form5.ADOTable1.First;
  while ListBox1.Items[ListBox1.ItemIndex]<>ADOTable1.FieldByName('name').AsString do
    begin
    ADOTable1.next;
    form5.ADOTable1.next;
    end;
    form5.Show;
    form5.label1.Caption:='Тема: ' +  ListBox1.Items[ListBox1.ItemIndex];
    form4.Hide;
    //////////////////////////
  form5.GroupBox1.Left:=-140;
  form5.Image6.Visible:=false;
  form5.Image7.Visible:=true;       //выплывающая полоса
///////////////////////////
end;
end;

end;

procedure TForm4.Timer1Timer(Sender: TObject);
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

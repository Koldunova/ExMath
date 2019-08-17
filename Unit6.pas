unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, Data.DB, Data.Win.ADODB,
  Vcl.Imaging.pngimage,unit1, Unit12, Unit13;

type
  TForm6 = class(TForm)
    Image1: TImage;
    Image6: TImage;
    Image7: TImage;
    Image5: TImage;
    Image11: TImage;
    Timer1: TTimer;
    ListBox1: TListBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ADOTable1: TADOTable;
    GroupBox1: TGroupBox;
    Image14: TImage;
    Image15: TImage;
    Image16: TImage;
    Image2: TImage;
    Image9: TImage;
    ADOTable2: TADOTable;
    Label6: TLabel;
    Label7: TLabel;
    procedure Label1Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Image15Click(Sender: TObject);
    procedure Image16Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;
  t: integer;

implementation

uses Unit7,
unit4,unit3;

{$R *.dfm}

procedure TForm6.Image7Click(Sender: TObject);
begin
  Image6.visible := True;
  Image7.visible := False;
  Timer1.Enabled := True;
  t := 1;
end;


procedure TForm6.Image9Click(Sender: TObject);
begin
form1.close;
end;

procedure TForm6.FormCreate(Sender: TObject);
begin
DoubleBuffered:=true;
end;

procedure TForm6.Image15Click(Sender: TObject);
begin
form3.GroupBox1.Left:=-140;
form3.Image6.Visible:=false;
form3.Image7.Visible:=true;
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
form6.hide;
end;

procedure TForm6.Image16Click(Sender: TObject);
var
r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,namee:string;
i:integer;
begin
form4.Edit1.Text:='Поиск...';
 form4.GroupBox1.Left:=-140;
form4.Image6.Visible:=false;
form4.Image7.Visible:=true;
form4.ADOTable1.Active:=true;
Form4.ListBox1.Items.Clear;
form4.Show;
form4.ADOTable1.First;
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

form6.Hide;
end;

procedure TForm6.Image2Click(Sender: TObject);
var
hour,t,sec,p,U:integer;
l,tests,n,h,num:string;
begin
FORM13.ListBox1.Clear;
FORM7.Edit1.Text:='Ваш ответ';
form7.Label4.Caption:='1';
Form7.DBImage1.Visible:=true;
Form7.DBImage2.Visible:=false;
Form7.DBImage3.Visible:=false;
Form7.DBImage4.Visible:=false;
Form7.DBImage5.Visible:=false;
Form7.DBImage6.Visible:=false;
Form7.DBImage7.Visible:=false;
Form7.DBImage8.Visible:=false;
Form7.DBImage9.Visible:=false;
Form7.DBImage10.Visible:=false;
ADOTable2.Refresh;
ADOTable1.Refresh;
num:=Label6.Caption;                 // номер теста
num:=StringReplace(num, ' ', '', [rfReplaceAll, rfIgnoreCase]);
l:=form13.Label6.Caption;            // НОМЕР УЧАЩЕГОСЯ

ADOTable2.First;

U:=0;

while U<>1 do
if ADOTable2.FieldByName('IDD').AsString=l then
  BEGIN
  tests:=ADOTable2.FieldByName('block').AsString;   // заблокированные тесты
  U:=1
END
  else
ADOTable2.Next;
tests:=StringReplace(tests, ' ', '', [rfReplaceAll, rfIgnoreCase]);
num:=StringReplace(num, ' ', '', [rfReplaceAll, rfIgnoreCase]);
//ShowMessage(tests);      тут все хорошо

h:='-';
n:='';
p:=1;
while (p<=length(tests)) and (h<>'+') do
 begin
	while tests[p] <> ',' do
		begin
			n:=n+tests[p];
			inc(p);
		end;


 if n<>'' then

	if (strtoint(n)=strtoint(num))  then
		begin
      MessageBox(0, 'Вы проходили этот тест', 'Внимание', MB_OK);
		 //	ShowMessage('Вы проходили этот тест'); //      то сообщи что он пройден
      h:='+';                                //   измени ключ
      break;
 		end
  else
    begin
       n:='';

	     inc(p);
	  end
 else
	     inc(p);

 end;

if h='-' then
  begin
    form7.Timer1.Enabled:=true;
    Form7.ADOTable1.Active:=true;
    Form7.ADOTable2.Active:=true;

    t:=strtoint(label5.caption);
    hour:=round(t/60);
    sec:=t-hour*60;
    // считает  сколько минут и секунд на тест
    if hour<10 then
      form7.label9.caption:='0'+inttostr(hour)
    else
      form7.label9.caption:=inttostr(hour);

    if sec<10 then
      form7.label10.caption:='0'+inttostr(sec)
    else
      form7.label10.caption:=inttostr(sec);



    form7.label1.caption:='Тест по темe: ' + Label1.Caption;
    form7.label6.Caption:=label3.Caption;
    form7.show;
    form7.Label8.Caption:=ADOTable1.FieldByName('Код').Asstring;
    FORM7.ADOTable1.First;
    FORM7.ADOTable2.First;
    while (FORM7.ADOTable1.FieldByName('num').Asstring<> num)
    and (FORM7.ADOTable2.FieldByName('num').Asstring<> num)  do
    begin
        FORM7.ADOTable1.next;
       FORM7.ADOTable2.next;
    end;
     //ShowMessage(FORM7.ADOTable2.FieldByName('num').Asstring);


  end;
end;

procedure TForm6.Image6Click(Sender: TObject);
begin
  Image7.visible := True;
  Image6.visible := False;
  Timer1.Enabled := True;
  t := 0;
end;

procedure TForm6.Label1Click(Sender: TObject);
begin
  form7.show();
end;

procedure TForm6.ListBox1Click(Sender: TObject);
var
i:integer;
begin
if ListBox1.ItemIndex<>-1 then      ///////////////////////
      begin                         ////////////////////////
ADOTable1.Active:=true;
form7.ADOTable1.Active:=true;
form7.ADOTable2.Active:=true;
label1.Caption:=listbox1.Items[listbox1.ItemIndex];
ADOTable1.First;
for i:=1 to ADOTable1.RecordCount do
begin
  if ADOTable1.FieldByName('name').AsString=label1.Caption then
  begin
    Label3.Caption:=ADOTable1.FieldByName('kol').AsString;
    label5.Caption:=ADOTable1.FieldByName('time').AsString;
    Label6.Caption:=ADOTable1.FieldByName('Код').AsString;
    Break;
  end
  else
  ADOTable1.Next;
end;
image2.Visible:=true;
      end;///////////////////
end;

procedure TForm6.Timer1Timer(Sender: TObject);
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

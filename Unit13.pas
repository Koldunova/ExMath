unit Unit13;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  TForm13 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Image1: TImage;
    Label6: TLabel;
    ListBox1: TListBox;
    ADOTable1: TADOTable;
    procedure Image1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form13: TForm13;

implementation
uses
unit7, unit9, unit6;

{$R *.dfm}

procedure TForm13.FormCreate(Sender: TObject);
begin
DoubleBuffered:=true;
end;

procedure TForm13.Image1Click(Sender: TObject);
var
id,point,count,kos:real;
block:string;
progress:real;
begin
form6.Visible:=true;
//  ShowMessage('goood1');
adotable1.Active:=true;
id:=strtoint(label6.caption); //номер ученика
//  ShowMessage(inttostr(id));
//  ShowMessage('goood2');
point:=strtoint(label5.caption); //его баллы
//  ShowMessage(label5.caption);
block:=adotable1.fieldbyname('block').asstring; //заблокированные тесты
//  ShowMessage('goood3');
block:=block+', '+ form7.label8.Caption;    //дозапись теста
//  ShowMessage(block);
adotable1.first;
//  ShowMessage('goood4');
kos:=0;
while kos<>1 do
  if adotable1.fieldbyname('IDD').asinteger = id then
    kos:=1
  else
    ADOTable1.Next;
//ShowMessage('kos');
//ShowMessage(inttostr(kos));
//ShowMessage('итоговый номер учащегося');
//ShowMessage(inttostr(id));
if kos=1 then
begin
      count:=form6.adotable1.recordcount; //количество тестов
       // ShowMessage(inttostr(count));
      progress:=(point*10)/count;  // глобальный прогресс
       // ShowMessage(floattostr(progress));
      ADOTable1.Edit;
      ADOTable1.FieldByName('progress').Value:= progress;
      ADOTable1.FieldByName('count').Value:= count;
      ADOTable1.FieldByName('block').Value:= block;
      ADOTable1.Post;
end;
  form13.Close;
  ADOTable1.Refresh;
  end;

end.

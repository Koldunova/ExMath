unit Unit12;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Unit11, Data.DB,
  Vcl.StdCtrls, Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.ExtDlgs;

type
  TForm12 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    ADOTable2: TADOTable;
    OpenPictureDialog1: TOpenPictureDialog;
    DataSource2: TDataSource;
    ADOTable3: TADOTable;
    DataSource3: TDataSource;
    ADOTable4: TADOTable;
    DataSource4: TDataSource;
    Label4: TLabel;
    ADOTable5: TADOTable;
    tests: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    DBGrid2: TDBGrid;
    ComboBox2: TComboBox;
    Edit1: TEdit;
    DBImage2: TDBImage;
    Button3: TButton;
    Button5: TButton;
    book: TGroupBox;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    ComboBox1: TComboBox;
    DBImage1: TDBImage;
    Button2: TButton;
    Button1: TButton;
    Button4: TButton;
    procedure DBGrid1CellClick(Column: TColumn);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure DBGrid2Enter(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form12: TForm12;

implementation
uses
  Unit1;

{$R *.dfm}

procedure TForm12.Button1Click(Sender: TObject);
begin
DBImage1.Picture.LoadFromFile(f);
DBImage1.Update();
Button2.Caption:='Загрузить';
MessageBox(0, 'Изменения приняты', 'Внимание', MB_OK);
end;

procedure TForm12.Button2Click(Sender: TObject);
begin
if OpenPictureDialog1.Execute()  then
  begin
    f := OpenPictureDialog1.FileName;
    Button2.Caption := 'Загружено';
  end;
end;

procedure TForm12.Button3Click(Sender: TObject);
begin
ADOTable5.first;
while ADOTable5.FieldByName('num').AsInteger <> ADOTable3.FieldByName('Код').asinteger do
begin
ADOTable5.Next;
end;
ADOTable5.Edit;
if ComboBox2.Text='1' then
ADOTable5.FieldByName('z1').AsString:=Edit1.text;
if ComboBox2.Text='2' then
ADOTable5.FieldByName('z2').AsString:=Edit1.text;
if ComboBox2.Text='3' then
ADOTable5.FieldByName('z3').AsString:=Edit1.text;
if ComboBox2.Text='4' then
ADOTable5.FieldByName('z4').AsString:=Edit1.text;
if ComboBox2.Text='5' then
ADOTable5.FieldByName('z5').AsString:=Edit1.text;
if ComboBox2.Text='6' then
ADOTable5.FieldByName('z6').AsString:=Edit1.text;
if ComboBox2.Text='7' then
ADOTable5.FieldByName('z7').AsString:=Edit1.text;
if ComboBox2.Text='8' then
ADOTable5.FieldByName('z8').AsString:=Edit1.text;;
if ComboBox2.Text='9' then
ADOTable5.FieldByName('z9').AsString:=Edit1.text;
if ComboBox2.Text='10' then
ADOTable5.FieldByName('z10').AsString:=Edit1.text;
ADOTable5.Post;
ShowMessage('Изменения вступили в силу');

end;

procedure TForm12.Button4Click(Sender: TObject);
begin
ADOTable2.Delete;
ADOTable1.Delete;
ComboBox1.Clear;
end;

procedure TForm12.Button5Click(Sender: TObject);
begin
ADOTable3.Active:=true;
ADOTable5.Active:=true;
ADOTable5.Open;
ADOTable4.Active:=true;
ADOTable5.Delete;
ADOTable4.Delete;
ADOTable3.Delete;
ComboBox2.Clear;
end;

procedure TForm12.ComboBox1Change(Sender: TObject);
begin
ADOTable2.First;
while ADOTable2.FieldByName('num').AsString<>Label4.Caption do
ADOTable2.next;

if ComboBox1.Text='1' then
  DBImage1.DataField:='pic1';
if ComboBox1.Text='2' then
  DBImage1.DataField:='pic2';
if ComboBox1.Text='3' then
  DBImage1.DataField:='pic3';
if ComboBox1.Text='4' then
  DBImage1.DataField:='pic4';
if ComboBox1.Text='5' then
  DBImage1.DataField:='pic5';
if ComboBox1.Text='6' then
  DBImage1.DataField:='pic6';
if ComboBox1.Text='7' then
  DBImage1.DataField:='pic7';
if ComboBox1.Text='8' then
  DBImage1.DataField:='pic8';
if ComboBox1.Text='9' then
  DBImage1.DataField:='pic9';
if ComboBox1.Text='10' then
  DBImage1.DataField:='pic10';

  DBImage1.Visible:=true;

end;

procedure TForm12.ComboBox2Change(Sender: TObject);
begin
//ShowMessage('+');
ADOTable4.First;
while ADOTable4.FieldByName('num').AsString<>Label4.Caption do
ADOTable4.next;
//ShowMessage('+');
if ComboBox2.Text='1' then
DBImage2.DataField:='zadanie1';
if ComboBox2.Text='2' then
DBImage2.DataField:='zadanie2';
if ComboBox2.Text='3' then
DBImage2.DataField:='zadanie3';
if ComboBox2.Text='4' then
DBImage2.DataField:='zadanie4';
if ComboBox2.Text='5' then
DBImage2.DataField:='zadanie5';
if ComboBox2.Text='6' then
DBImage2.DataField:='zadanie6';
if ComboBox2.Text='7' then
DBImage2.DataField:='zadanie7';
if ComboBox2.Text='8' then
DBImage2.DataField:='zadanie8';
if ComboBox2.Text='9' then
DBImage2.DataField:='zadanie9';
if ComboBox2.Text='10' then
DBImage2.DataField:='zadanie10';
DBImage2.Visible:=true;
end;

procedure TForm12.DBGrid1CellClick(Column: TColumn);
var
i:integer;
begin
ComboBox1.Clear;
DBImage1.DataField:='';
Label4.Caption:=ADOTable1.FieldByName('Код').Asstring;
for i := 1 to ADOTable1.FieldByName('kol').AsInteger do
  ComboBox1.Items.Add(inttostr(i));

end;

procedure TForm12.DBGrid2CellClick(Column: TColumn);
var
i:integer;
begin
ComboBox2.Clear;
DBImage2.DataField:='';
Label4.Caption:=ADOTable3.FieldByName('Код').Asstring;
for i := 1 to ADOTable3.FieldByName('kol').AsInteger do
  ComboBox2.Items.Add(inttostr(i));
end;

procedure TForm12.DBGrid2Enter(Sender: TObject);
var
i:integer;
begin
ComboBox2.Clear;
DBImage2.DataField:='';
Label4.Caption:=ADOTable3.FieldByName('Код').Asstring;
for i := 1 to ADOTable3.FieldByName('kol').AsInteger do
  ComboBox2.Items.Add(inttostr(i));
end;

procedure TForm12.FormCreate(Sender: TObject);
begin
DoubleBuffered:=true;
end;

procedure TForm12.N2Click(Sender: TObject);
begin
n2.Checked:=true;
n3.Checked:=false;
book.Visible:=true;
tests.Visible:=false;
end;

procedure TForm12.N3Click(Sender: TObject);
begin
n3.Checked:=true;
n2.Checked:=false;
tests.Visible:=true;
book.Visible:=false;
end;

end.

unit Unit9;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB, Vcl.Imaging.pngimage,
  Vcl.DBCtrls, unit11, Unit12, Unit3, ShellAPI;

type
  TForm9 = class(TForm)
    GroupBox1: TGroupBox;
    RadioButton2: TRadioButton;
    RadioButton1: TRadioButton;
    Edit1: TEdit;
    Label1: TLabel;
    Image1: TImage;
    Label6: TLabel;
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    Image6: TImage;
    Image7: TImage;
    Timer1: TTimer;
    OpenDialog1: TOpenDialog;
    ADOTable2: TADOTable;
    DataSource2: TDataSource;
    DBGrid2: TDBGrid;
    Button1: TButton;
    DBText1: TDBText;
    DBText2: TDBText;
    DBGrid1: TDBGrid;
    GroupBox2: TGroupBox;
    Image5: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image8: TImage;
    Image9: TImage;
    DBText3: TDBText;
    DBMemo1: TDBMemo;
    procedure Image7Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Image8Click(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;
  T: integer;

implementation

uses
  unit1, unit10;
{$R *.dfm}

procedure TForm9.Button1Click(Sender: TObject);
begin
  form3.adotable1.post;
end;

procedure TForm9.DBGrid1CellClick(Column: TColumn);
var
  id: integer;
begin
  id := ADOTable1.FieldByName('id').AsInteger;
  //ShowMessage(inttostr(id));
  ADOTable2.Filtered := false;
  ADOTable2.Filter := 'IDD like ' + inttostr(id);
  ADOTable2.Filtered := true;
end;

procedure TForm9.Edit1Change(Sender: TObject);
var
i:integer;
begin

if RadioButton1.Checked=true then
  i:=1
else
  i:=2;

if (Length(Edit1.Text) > 0)  and (i=2) then
begin
ADOTable1.Filtered:=false;
ADOTable1.Filter:='surname like ' +#39+'%'+ Edit1.Text+ '%'+ #39;
ADOTable1.Filtered:=true
end
else

//ShowMessage(inttostr(i));
if (Length(Edit1.Text) > 0)  and (i=1) then
begin
ADOTable1.Filtered:=false;
ADOTable1.Filter:='group like ' +#39+'%'+ Edit1.Text+ '%'+ #39;
ADOTable1.Filtered:=true
end
else ADOTable1.Filtered:=false;



end;

procedure TForm9.Edit1Click(Sender: TObject);
begin
Edit1.Clear;
end;

procedure TForm9.FormCreate(Sender: TObject);
begin
DoubleBuffered:=true;
end;

procedure TForm9.Image2Click(Sender: TObject);
var
  f: textfile;
  a, b: string;
begin
  if OpenDialog1.Execute then
  begin
    Assignfile(f, 'add\location1.txt');
    rewrite(f);
    a := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=';
    b := ';Persist Security Info=False';
    WriteLn(f, a + OpenDialog1.FileName + b);
    closefile(f);
  end;
end;

procedure TForm9.Image3Click(Sender: TObject);
begin
  Form9.Close;
  form1.Close;
end;

procedure TForm9.Image4Click(Sender: TObject);
begin
if (FileExists('Spravochka.chm') ) then

ShellExecute(Handle, 'open', 'Spravochka.chm', 0, 0, SW_SHOWNORMAL)

else

ShowMessage('Файл справки \"Spravochka.chm\" в папке с исполняемым файлом не найден. Для исправления данной ситуации можно либо переустановить программу, либо искать файл самостоятельно.');

//  form10.Memo1.Lines.Clear;
  //form10.Memo1.Lines.LoadFromFile('add\readme.txt');
    // form10.Show;
end;

procedure TForm9.Image6Click(Sender: TObject);
begin
  Image6.visible := false;
  Image7.visible := True;
  T := 0;
  Timer1.Enabled := True;
end;

procedure TForm9.Image7Click(Sender: TObject);
begin
  Image6.visible := True;
  Image7.visible := false;
  Timer1.Enabled := True;
  T := 1;
end;

procedure TForm9.Image8Click(Sender: TObject);
begin
with form11 do
begin
  ADOTable1.Active:=true;
  ADOTable2.Active:=true;
  ADOTable3.Active:=true;
  ADOTable4.Active:=true;
  ADOTable5.Active:=true;
end;
  form11.Show;
  form11.book.visible := True;
  form11.test.visible := false;
  form11.Label1.Caption := '0';
  form11.combobox1.text := 'Количество заданий';
  form11.combobox2.text := 'Количество глав';
  if form11.combobox2.text = 'Количество глав' then // gotovo
  begin
    form11.Edit13.text := '';
    form11.Edit2.text := '';
    form11.Edit1.text := '';
    form11.edit14.text := ' ';
    form11.edit15.text := ' ';
    form11.edit16.text := ' ';
    form11.edit17.text := ' ';
    form11.edit18.text := ' ';
    form11.edit19.text := ' ';
    form11.edit20.text := ' ';
    form11.edit21.text := ' ';
    form11.edit22.text := ' ';
    form11.edit23.text := ' ';

    form11.label21.visible := True;
    form11.label22.visible := True;
    form11.label23.visible := True;
    form11.label24.visible := True;
    form11.label25.visible := True;
    form11.label26.visible := True;
    form11.label27.visible := True;
    form11.label28.visible := True;
    form11.label29.visible := True;
    form11.label30.visible := True;
    form11.label31.visible := True;
    form11.label32.visible := True;
    form11.label33.visible := True;
    form11.label34.visible := True;
    form11.label35.visible := True;
    form11.label36.visible := True;
    form11.BitBtn11.visible := True;
    form11.BitBtn12.visible := True;
    form11.BitBtn13.visible := True;
    form11.BitBtn14.visible := True;
    form11.BitBtn15.visible := True;
    form11.BitBtn16.visible := True;
    form11.BitBtn17.visible := True;
    form11.BitBtn18.visible := True;
    form11.BitBtn19.visible := True;
    form11.BitBtn20.visible := True;
    form11.edit14.visible := True;
    form11.edit15.visible := True;
    form11.edit16.visible := True;
    form11.edit17.visible := True;
    form11.edit18.visible := True;
    form11.edit19.visible := True;
    form11.edit20.visible := True;
    form11.edit21.visible := True;
    form11.edit22.visible := True;
    form11.edit23.visible := True;

    form11.label21.Enabled := false;
    form11.label22.Enabled := false;
    form11.label23.Enabled := false;
    form11.label24.Enabled := false;
    form11.label25.Enabled := false;
    form11.label26.Enabled := false;
    form11.label27.Enabled := false;
    form11.label28.Enabled := false;
    form11.label29.Enabled := false;
    form11.label30.Enabled := false;
    form11.label31.Enabled := false;
    form11.label32.Enabled := false;
    form11.label33.Enabled := false;
    form11.label34.Enabled := false;
    form11.label35.Enabled := false;
    form11.label36.Enabled := false;
    form11.BitBtn11.Enabled := false;
    form11.BitBtn12.Enabled := false;
    form11.BitBtn13.Enabled := false;
    form11.BitBtn14.Enabled := false;
    form11.BitBtn15.Enabled := false;
    form11.BitBtn16.Enabled := false;
    form11.BitBtn17.Enabled := false;
    form11.BitBtn18.Enabled := false;
    form11.BitBtn19.Enabled := false;
    form11.BitBtn20.Enabled := false;
    form11.edit14.Enabled := false;
    form11.edit15.Enabled := false;
    form11.edit16.Enabled := false;
    form11.edit17.Enabled := false;
    form11.edit18.Enabled := false;
    form11.edit19.Enabled := false;
    form11.edit20.Enabled := false;
    form11.edit21.Enabled := false;
    form11.edit22.Enabled := false;
    form11.edit23.Enabled := false;

  end;

  if form11.combobox1.text = 'Количество заданий' then // gotovo
  begin
    form11.edit8.text := ' ';
    form11.edit9.text := ' ';
    form11.edit10.text := ' ';
    form11.edit11.text := ' ';
    form11.edit12.text := ' ';
    form11.edit3.text := ' ';
    form11.edit4.text := ' ';
    form11.edit5.text := ' ';
    form11.edit6.text := ' ';
    form11.edit7.text := ' ';

    form11.label13.Enabled := false;
    form11.label14.Enabled := false;
    form11.label15.Enabled := false;
    form11.label16.Enabled := false;
    form11.label17.Enabled := false;
    form11.label8.Enabled := false;
    form11.label9.Enabled := false;
    form11.label10.Enabled := false;
    form11.label11.Enabled := false;
    form11.label12.Enabled := false;
    form11.label2.Enabled := false;
    form11.label3.Enabled := false;
    form11.label4.Enabled := false;
    form11.label5.Enabled := false;
    form11.Label6.Enabled := false;
    form11.label7.Enabled := false;
    form11.BitBtn1.Enabled := false;
    form11.BitBtn2.Enabled := false;
    form11.BitBtn3.Enabled := false;
    form11.BitBtn4.Enabled := false;
    form11.BitBtn5.Enabled := false;
    form11.BitBtn6.Enabled := false;
    form11.BitBtn7.Enabled := false;
    form11.BitBtn8.Enabled := false;
    form11.BitBtn9.Enabled := false;
    form11.BitBtn10.Enabled := false;
    form11.edit8.Enabled := false;
    form11.edit9.Enabled := false;
    form11.edit10.Enabled := false;
    form11.edit11.Enabled := false;
    form11.edit12.Enabled := false;
    form11.edit3.Enabled := false;
    form11.edit4.Enabled := false;
    form11.edit5.Enabled := false;
    form11.edit6.Enabled := false;
    form11.edit7.Enabled := false;

    form11.label13.visible := True;
    form11.label14.visible := True;
    form11.label15.visible := True;
    form11.label16.visible := True;
    form11.label17.visible := True;
    form11.label8.visible := True;
    form11.label9.visible := True;
    form11.label10.visible := True;
    form11.label11.visible := True;
    form11.label12.visible := True;
    form11.label2.visible := True;
    form11.label3.visible := True;
    form11.label4.visible := True;
    form11.label5.visible := True;
    form11.Label6.visible := True;
    form11.label7.visible := True;
    form11.BitBtn1.visible := True;
    form11.BitBtn2.visible := True;
    form11.BitBtn3.visible := True;
    form11.BitBtn4.visible := True;
    form11.BitBtn5.visible := True;
    form11.BitBtn6.visible := True;
    form11.BitBtn7.visible := True;
    form11.BitBtn8.visible := True;
    form11.BitBtn9.visible := True;
    form11.BitBtn10.visible := True;
    form11.edit8.visible := True;
    form11.edit9.visible := True;
    form11.edit10.visible := True;
    form11.edit11.visible := True;
    form11.edit12.visible := True;
    form11.edit3.visible := True;
    form11.edit4.visible := True;
    form11.edit5.visible := True;
    form11.edit6.visible := True;
    form11.edit7.visible := True;

  end;
end;

procedure TForm9.Image9Click(Sender: TObject);
begin
with form12 do
begin
  ADOTable1.Active:=true;
  ADOTable2.Active:=true;
  ADOTable3.Active:=true;
  ADOTable4.Active:=true;
  ADOTable5.Active:=true;
end;
form12.Show;
form12.ADOTable1.Active:=true;
form12.ADOTable2.Active:=true;
end;

procedure TForm9.Timer1Timer(Sender: TObject);
begin
  if T = 1 then
  begin
    if GroupBox2.Left < 0 then
      GroupBox2.Left := GroupBox2.Left + 5
    else
      Timer1.Enabled := false;
  end
  else
  begin
    if GroupBox2.Left > -140 then
      GroupBox2.Left := GroupBox2.Left - 5
    else
      Timer1.Enabled := false;
  end;
end;

end.

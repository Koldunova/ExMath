unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, DB, ADODB, Vcl.Imaging.pngimage, Vcl.Imaging.GIFImg;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    edt1: TEdit;
    Image3: TImage;
    Image2: TImage;
    Image1: TImage;
    medt1: TMaskEdit;
    con1: TADOConnection;
    qry1: TADOQuery;
    qry2: TADOQuery;
    Image4: TImage;
    Image5: TImage;
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image4DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure medt1Change(Sender: TObject);
    procedure medt1KeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  name, surname, login, password, id: string;
  progress: integer;

implementation

uses  unit3, unit9, unit13,
  Unit11,Unit2, Unit4, Unit5, Unit12, Unit6, Unit7, Unit10 ;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var
  f: textfile;
  s,u: string;
begin
DoubleBuffered:=true;
Form1.Left:=(Screen.WorkAreaWidth-Form1.Width)div 2;
Form1.top:=(Screen.WorkAreaheight-Form1.height)div 2;
form1.Hide;
///////form1.Visible:=false;
///////form10.show ;
/// ///
  // ShowMessage('+');
  con1.Connected := false;
  con1.ConnectionString := '';
  // ShowMessage('+');
  Assignfile(f, 'add\location1.txt');
  Reset(f);
  while not(eof(f)) do
  begin
    /// ShowMessage(con1.ConnectionString);
    Readln(f, s);
    con1.ConnectionString := con1.ConnectionString + s;
  end;
  /// ShowMessage(con1.ConnectionString);                     //////////////////
  ///
  con1.Connected := true;
  qry1.Active := true;
  qry2.Active := true;
  CloseFile(f);
  // form9.ADOTable1.Active:=true;
  // form9.DataSource1.Enabled:=true;
  //////////////////////////////////////ошибка
  {}
end;

procedure TForm1.Image2Click(Sender: TObject);
var
u:string;
begin
  form4.adotable1.active:=true;
    form3.ADOTable1.Active:=true;
  form5.adotable1.active:=true;
  form6.adotable1.active:=true;
  form6.adotable2.active:=true;
  form7.adotable1.active:=true;
  form7.adotable2.active:=true;
  form9.adotable1.active:=true;
  form9.adotable2.active:=true;

  form11.adotable1.active:=true;
  form11.adotable2.active:=true;
  form11.adotable3.active:=true;
  form11.adotable4.active:=true;
  form11.adotable5.active:=true;
  form11.adotable6.active:=true;
  form13.adotable1.active:=true;
 form12.adotable1.active:=true;
  form12.adotable2.active:=true;

  form12.adotable3.active:=true;
  form12.DataSource3.Enabled:=true;

  form12.adotable4.active:=true;
  form12.adotable5.active:=true;
  login := edt1.text;
  password := medt1.text;
  if (login = 'admin') and (password = 'admin') then
  begin
    form9.ADOTable1.Active:=true;
    form9.ADOTable2.Active:=true;
    form9.Show;
    Form1.hide;
  end

  else
  begin
    qry1.SQL.Clear;
    qry1.SQL.Add('Select * from users where login= ' + #39 + login + #39 +
      ' and password =' + #39 + password + #39);
    qry1.Active := true;
    if qry1.RecordCount = 1 then
    Begin
    //  name := qry1.FieldByName('name').AsString;
      surname := qry1.FieldByName('surname').AsString;
      id := qry1.FieldByName('id').AsString;
      form3.Label1.Caption := surname + ' ' + qry1.FieldByName('name').AsString;
      form13.Label6.Caption:=id;
      qry1.SQL.Clear;
      qry1.SQL.Add('Select progress from progress where IDD= ' + #39 +
        id + #39);
      qry1.Active := true;
      // ShowMessage('goood2');
      if qry1.RecordCount = 1 then
      begin
       // ShowMessage(qry1.FieldByName('progress').AsString);
        form3.Gauge1.progress := qry1.FieldByName('progress').AsInteger;
      end;
      form3.Show;
      Form1.hide;

    End
    else
    begin
      MessageBox(0, 'Проверьте правильность логина и пароля', 'Внимание', MB_OK);
      medt1.Clear;
      medt1.Text:='Введите пароль';
       medt1.PasswordChar:=#0;

    end;
    qry1.Active := false;
  
  end;

end;

procedure TForm1.Image3Click(Sender: TObject);
begin
  form2.Show();
  Form1.hide();
end;

procedure TForm1.Image4Click(Sender: TObject);
begin
medt1.PasswordChar:=#0;
image4.Visible:=false;
image5.Visible:=true;

end;

procedure TForm1.Image4DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
//medt1.PasswordChar:=#7;
end;



procedure TForm1.Image5Click(Sender: TObject);
begin
medt1.PasswordChar:=#7;
image4.Visible:=true;
image5.Visible:=false;
{if medt1.PasswordChar=#0 then
begin
image5.Visible:=false;
image4.Visible:=true;
end;}
end;

procedure TForm1.medt1Change(Sender: TObject);
begin
//medt1.PasswordChar:=#7;
end;

procedure TForm1.medt1KeyPress(Sender: TObject; var Key: Char);
begin
 medt1.PasswordChar:=#7;
 if  medt1.PasswordChar=#7 then
 begin
 image4.Visible:=true;
image5.Visible:=false;
 end
 else
image5.Visible:=true;
end;

end.

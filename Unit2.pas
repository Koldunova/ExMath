unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, unit1, unit3;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Image2: TImage;
    Image1: TImage;
    Image3: TImage;
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  surname, name, group, password, login: string;

implementation

{$R *.dfm}

procedure TForm2.FormCreate(Sender: TObject);
begin
DoubleBuffered:=true;
end;

procedure TForm2.Image1Click(Sender: TObject);
begin
  form1.Show();
  Form2.Hide();
end;

procedure TForm2.Image2Click(Sender: TObject);
var
  id,i,y: integer;
begin
  login := Edit4.Text;
  y:=form1.qry1.RecordCount;
  form1.qry1.First;
  i:=0;
//ShowMessage('+');
  while (i<>1) and (y>0) do
    begin
    if login<>form1.qry1.FieldByName('login').asstring then
      begin
      form1.qry1.Next;
      dec(y);
      end
    else
      begin
      edit4.Clear;
      MessageBox(0, '“акой логин уже использетс€, придумайте новый', '¬нимание', MB_OK);

        i:=1;
      end;
   end;
  //ShowMessage('+');
    if login='admin' then
    begin
      edit4.Clear;
      MessageBox(0, '“акой логин уже использетс€, придумайте новый', '¬нимание', MB_OK);
      i:=1;
    end;
  if i=0 then
    begin
      password := Edit5.Text;
      name := Edit2.Text;
      surname := Edit1.Text;
      group := Edit3.Text;
      if (login = '') or (name = '') or (password = '') or (surname = '') or
        (group = '') or (login = ' ') or (name = ' ') or (password = ' ') or
        (surname = ' ') or (group = ' ') then
        //ShowMessage('ѕусто')
      else
      begin
        // ShowMessage('переменные');
        form1.qry1.Active := true;

        // ShowMessage('актив');
        form1.qry1.SQL.Clear;
        form1.qry1.SQL.Add('Select * from users where surname= ' + #39 + surname +
          #39 + ' and login= ' + #39 + login + #39);
        // ShowMessage('запрос');
        form1.qry1.Active := true;
        if form1.qry1.RecordCount = 1 then
        begin

        MessageBox(0, '¬ы зарегистрированы', '¬нимание', MB_OK);
          form1.qry1.Active := false;
          // ShowMessage('поиск -');
        end

        else

        begin
          // ShowMessage('поиск +');
          form1.qry1.Active := true;
          form1.qry1.Insert;

          // ShowMessage('добавл€ем');
          form1.qry1.FieldByName('surname').Value := surname;
          form1.qry1.FieldByName('group').Value := group;
          form1.qry1.FieldByName('name').Value := name;
          form1.qry1.FieldByName('password').Value := password;
          form1.qry1.FieldByName('login').Value := login;
          form1.qry1.Post;

          // ShowMessage('берем');
          form1.qry1.SQL.Clear;
          // -------------------------------
          // ShowMessage('запрос');

          form1.qry1.SQL.Add('Select * from users where surname= ' + #39 +
            surname + #39);

          // ShowMessage('провер€ем');

          form1.qry1.Active := true;

          if form1.qry1.RecordCount = 1 then
          BEGIN
            id := form1.qry1.FieldByName('id').AsInteger;
            // ShowMessage(INTTOSTR(ID));
          END;

          // ShowMessage('вставл€ем прогресс');

          form1.qry2.Active := true;
          form1.qry2.Insert;
          // ShowMessage('ID');

          form1.qry2.FieldByName('IDD').Value := id;
          form1.qry2.FieldByName('count').Value := 0;
          form1.qry2.FieldByName('block').Value := '';
          form1.qry2.FieldByName('point').Value := 0;
          form1.qry2.FieldByName('progress').Value := 0;
          form1.qry2.Post;
          form1.qry2.Active := false;
          //form3.Label1.Caption := surname + ' ' + name;
          // ShowMessage('сохран€ем');

          // ShowMessage('показываем');
          form1.qry1.Active:=false;
         form1.qry2.Active:=false;
         form1.qry1.Active:=true;
         form1.qry2.Active:=true;
         form1.qry1.First;
         form1.qry2.First;
         Edit1.Clear;
         Edit2.Clear;
         Edit3.Clear;
         Edit4.Clear;
         Edit5.Clear;
          form1.Show;
          Form2.close;
        end;
      end;
    end;

end;

end.


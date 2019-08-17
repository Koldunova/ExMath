unit Unit10;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.GIFImg,
  Vcl.ExtCtrls;

type
  TForm10 = class(TForm)
    Image1: TImage;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;
  i:integer;
implementation

{$R *.dfm}
uses unit1;

procedure TForm10.FormCreate(Sender: TObject);
begin
DoubleBuffered:=true;
Form10.Left:=(Screen.WorkAreaWidth-Form10.Width)div 2;
Form10.top:=(Screen.WorkAreaheight-Form10.height)div 2;
i:=9;
Timer1.Enabled:=true;
end;

procedure TForm10.Image1Click(Sender: TObject);
begin
form10.close;
form1.show;
Timer1.Enabled:=false;

end;

procedure TForm10.Timer1Timer(Sender: TObject);
begin
form1.Hide;
i:=i-1;
if i=0 then
begin
Timer1.Enabled:=false;
Form10.Hide;
Form1.show;
end;
end;

end.

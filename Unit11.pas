unit Unit11;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, unit10, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Data.DB, Data.Win.ADODB, Vcl.ExtDlgs;

type
  TForm11 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    ADOTable3: TADOTable;
    ADOTable2: TADOTable;
    OpenPictureDialog1: TOpenPictureDialog;
    book: TGroupBox;
    Label1: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Edit13: TEdit;
    ComboBox2: TComboBox;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit19: TEdit;
    Edit20: TEdit;
    Edit21: TEdit;
    Edit22: TEdit;
    Edit23: TEdit;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    BitBtn16: TBitBtn;
    BitBtn17: TBitBtn;
    BitBtn18: TBitBtn;
    BitBtn19: TBitBtn;
    BitBtn20: TBitBtn;
    ADOTable4: TADOTable;
    DataSource4: TDataSource;
    ADOTable5: TADOTable;
    DBImage11: TDBImage;
    DBImage12: TDBImage;
    DBImage13: TDBImage;
    DBImage14: TDBImage;
    DBImage15: TDBImage;
    DBImage16: TDBImage;
    DBImage17: TDBImage;
    DBImage18: TDBImage;
    DBImage19: TDBImage;
    DBImage20: TDBImage;
    ADOTable6: TADOTable;
    test: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Edit1: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    DBImage1: TDBImage;
    DBImage2: TDBImage;
    DBImage3: TDBImage;
    DBImage4: TDBImage;
    DBImage5: TDBImage;
    DBImage6: TDBImage;
    DBImage7: TDBImage;
    DBImage8: TDBImage;
    DBImage9: TDBImage;
    DBImage10: TDBImage;
    Edit2: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    ComboBox1: TComboBox;
    procedure N8Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;
  f, f1, f2, f3, f4, f5, f6, f7, f8, f9: string;
  flag: integer;

implementation

{$R *.dfm}

uses Unit9;

procedure TForm11.BitBtn10Click(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
  begin
    f9 := OpenPictureDialog1.FileName;
    BitBtn10.Kind := bkOK;
    BitBtn10.Caption := 'Загружено';
  end;

end;

procedure TForm11.BitBtn11Click(Sender: TObject);
begin
 if OpenPictureDialog1.Execute then
  begin
    f := OpenPictureDialog1.FileName;
    BitBtn11.Kind := bkOK;
    BitBtn11.Caption := 'Загружено';
  end;
end;

procedure TForm11.BitBtn12Click(Sender: TObject);
begin
 if OpenPictureDialog1.Execute then
  begin
    f1 := OpenPictureDialog1.FileName;
    BitBtn12.Kind := bkOK;
    BitBtn12.Caption := 'Загружено';
  end;
end;

procedure TForm11.BitBtn13Click(Sender: TObject);
begin
 if OpenPictureDialog1.Execute then
  begin
    f2 := OpenPictureDialog1.FileName;
    BitBtn13.Kind := bkOK;
    BitBtn13.Caption := 'Загружено';
  end;
end;

procedure TForm11.BitBtn14Click(Sender: TObject);
begin
 if OpenPictureDialog1.Execute then
  begin
    f3 := OpenPictureDialog1.FileName;
    BitBtn14.Kind := bkOK;
    BitBtn14.Caption := 'Загружено';
  end;
end;

procedure TForm11.BitBtn15Click(Sender: TObject);
begin
 if OpenPictureDialog1.Execute then
  begin
    f4 := OpenPictureDialog1.FileName;
    BitBtn15.Kind := bkOK;
    BitBtn15.Caption := 'Загружено';
  end;
end;

procedure TForm11.BitBtn16Click(Sender: TObject);
begin
 if OpenPictureDialog1.Execute then
  begin
    f5 := OpenPictureDialog1.FileName;
    BitBtn16.Kind := bkOK;
    BitBtn16.Caption := 'Загружено';
  end;
end;

procedure TForm11.BitBtn17Click(Sender: TObject);
begin
 if OpenPictureDialog1.Execute then
  begin
    f6 := OpenPictureDialog1.FileName;
    BitBtn17.Kind := bkOK;
    BitBtn17.Caption := 'Загружено';
  end;
end;

procedure TForm11.BitBtn18Click(Sender: TObject);
begin
 if OpenPictureDialog1.Execute then
  begin
    f7 := OpenPictureDialog1.FileName;
    BitBtn18.Kind := bkOK;
    BitBtn18.Caption := 'Загружено';
  end;
end;

procedure TForm11.BitBtn19Click(Sender: TObject);
begin
 if OpenPictureDialog1.Execute then
  begin
    f8 := OpenPictureDialog1.FileName;
    BitBtn19.Kind := bkOK;
    BitBtn19.Caption := 'Загружено';
  end;
end;

procedure TForm11.BitBtn1Click(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
  begin
    f := OpenPictureDialog1.FileName;
    BitBtn1.Kind := bkOK;
    BitBtn1.Caption := 'Загружено';
  end;
end;

procedure TForm11.BitBtn20Click(Sender: TObject);
begin
 if OpenPictureDialog1.Execute then
  begin
    f9 := OpenPictureDialog1.FileName;
    BitBtn20.Kind := bkOK;
    BitBtn20.Caption := 'Загружено';
  end;
end;

procedure TForm11.BitBtn2Click(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
  begin
    BitBtn2.Kind := bkOK;
    BitBtn2.Caption := 'Загружено';
    f1 := OpenPictureDialog1.FileName;
    // DBImage6.Picture.LoadFromFile(OpenPictureDialog1.FileName);
  end;

end;

procedure TForm11.BitBtn3Click(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
  begin

    BitBtn3.Kind := bkOK;
    BitBtn3.Caption := 'Загружено';
    f2 := OpenPictureDialog1.FileName;
    // DBImage6.Picture.LoadFromFile(OpenPictureDialog1.FileName);
  end;

end;

procedure TForm11.BitBtn4Click(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
  begin

    BitBtn4.Kind := bkOK;
    BitBtn4.Caption := 'Загружено';
    f3 := OpenPictureDialog1.FileName;
    // DBImage6.Picture.LoadFromFile(OpenPictureDialog1.FileName);
  end;

end;

procedure TForm11.BitBtn5Click(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
  begin

    BitBtn5.Kind := bkOK;
    BitBtn5.Caption := 'Загружено';
    f4 := OpenPictureDialog1.FileName;
    // DBImage6.Picture.LoadFromFile(OpenPictureDialog1.FileName);
  end;

end;

procedure TForm11.BitBtn6Click(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
  begin
    BitBtn6.Kind := bkOK;
    BitBtn6.Caption := 'Загружено';

    f5 := OpenPictureDialog1.FileName;
    // DBImage6.Picture.LoadFromFile(OpenPictureDialog1.FileName);
  end;

end;

procedure TForm11.BitBtn7Click(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
  begin
    BitBtn7.Kind := bkOK;
    BitBtn7.Caption := 'Загружено';

    f6 := OpenPictureDialog1.FileName;
    // DBImage6.Picture.LoadFromFile(OpenPictureDialog1.FileName);
  end;

end;

procedure TForm11.BitBtn8Click(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
  begin
    BitBtn8.Kind := bkOK;
    BitBtn8.Caption := 'Загружено';

    f7 := OpenPictureDialog1.FileName;
    // DBImage6.Picture.LoadFromFile(OpenPictureDialog1.FileName);
  end;

end;

procedure TForm11.BitBtn9Click(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
  begin
    f8 := OpenPictureDialog1.FileName;
    BitBtn9.Kind := bkOK;
    BitBtn9.Caption := 'Загружено';

    // DBImage6.Picture.LoadFromFile(OpenPictureDialog1.FileName);
  end;

end;

procedure TForm11.ComboBox1Change(Sender: TObject);
begin

  

    if ComboBox1.text = 'Количество заданий' then // gotovo
    begin

      Edit8.text := ' ';
      Edit9.text := ' ';
      Edit10.text := ' ';
      Edit11.text := ' ';
      Edit12.text := ' ';
      Edit3.text := ' ';
      Edit4.text := ' ';
      Edit5.text := ' ';
      Edit6.text := ' ';
      Edit7.text := ' ';

      Label13.enabled := false;
      Label14.enabled := false;
      Label15.enabled := false;
      Label16.enabled := false;
      Label17.enabled := false;
      Label8.enabled := false;
      Label9.enabled := false;
      Label10.enabled := false;
      Label11.enabled := false;
      Label12.enabled := false;
      Label2.enabled := false;
      Label3.enabled := false;
      Label4.enabled := false;
      Label5.enabled := false;
      Label6.enabled := false;
      Label7.enabled := false;
      BitBtn1.enabled := false;
      BitBtn2.enabled := false;
      BitBtn3.enabled := false;
      BitBtn4.enabled := false;
      BitBtn5.enabled := false;
      BitBtn6.enabled := false;
      BitBtn7.enabled := false;
      BitBtn8.enabled := false;
      BitBtn9.enabled := false;
      BitBtn10.enabled := false;
      Edit8.enabled := false;
      Edit9.enabled := false;
      Edit10.enabled := false;
      Edit11.enabled := false;
      Edit12.enabled := false;
      Edit3.enabled := false;
      Edit4.enabled := false;
      Edit5.enabled := false;
      Edit6.enabled := false;
      Edit7.enabled := false;

      Label13.visible := true;
      Label14.visible := true;
      Label15.visible := true;
      Label16.visible := true;
      Label17.visible := true;
      Label8.visible := true;
      Label9.visible := true;
      Label10.visible := true;
      Label11.visible := true;
      Label12.visible := true;
      Label2.visible := true;
      Label3.visible := true;
      Label4.visible := true;
      Label5.visible := true;
      Label6.visible := true;
      Label7.visible := true;
      BitBtn1.visible := true;
      BitBtn2.visible := true;
      BitBtn3.visible := true;
      BitBtn4.visible := true;
      BitBtn5.visible := true;
      BitBtn6.visible := true;
      BitBtn7.visible := true;
      BitBtn8.visible := true;
      BitBtn9.visible := true;
      BitBtn10.visible := true;
      Edit8.visible := true;
      Edit9.visible := true;
      Edit10.visible := true;
      Edit11.visible := true;
      Edit12.visible := true;
      Edit3.visible := true;
      Edit4.visible := true;
      Edit5.visible := true;
      Edit6.visible := true;
      Edit7.visible := true;
    end;

    If ComboBox1.text = '1' then
    begin
      Edit8.text := ' ';
      Edit9.text := '-';
      Edit10.text := '-';
      Edit11.text := '-';
      Edit12.text := '-';
      Edit3.text := '-';
      Edit4.text := '-';
      Edit5.text := '-';
      Edit6.text := '-';
      Edit7.text := '-';

      Label13.enabled := true;
      Label14.enabled := false;
      Label15.enabled := false;
      Label16.enabled := false;
      Label17.enabled := false;
      Label8.enabled := false;
      Label9.enabled := false;
      Label10.enabled := false;
      Label11.enabled := false;
      Label12.enabled := false;
      Label2.enabled := false;
      Label3.enabled := false;
      Label4.enabled := false;
      Label5.enabled := true;
      Label6.enabled := true;
      Label7.enabled := true;
      BitBtn1.enabled := true;
      BitBtn2.enabled := false;
      BitBtn3.enabled := false;
      BitBtn4.enabled := false;
      BitBtn5.enabled := false;
      BitBtn6.enabled := false;
      BitBtn7.enabled := false;
      BitBtn8.enabled := false;
      BitBtn9.enabled := false;
      BitBtn10.enabled := false;
      Edit8.enabled := true;
      Edit9.enabled := true;
      Edit10.enabled := false;
      Edit11.enabled := false;
      Edit12.enabled := false;
      Edit3.enabled := false;
      Edit4.enabled := false;
      Edit5.enabled := false;
      Edit6.enabled := false;
      Edit7.enabled := false;

      Label13.visible := true;
      Label14.visible := false;
      Label15.visible := false;
      Label16.visible := false;
      Label17.visible := false;
      Label8.visible := false;
      Label9.visible := false;
      Label10.visible := false;
      Label11.visible := false;
      Label12.visible := false;
      Label2.visible := false;
      Label3.visible := false;
      Label4.visible := false;
      Label5.visible := true;
      Label6.visible := true;
      Label7.visible := true;
      BitBtn1.visible := true;
      BitBtn2.visible := false;
      BitBtn3.visible := false;
      BitBtn4.visible := false;
      BitBtn5.visible := false;
      BitBtn6.visible := false;
      BitBtn7.visible := false;
      BitBtn8.visible := false;
      BitBtn9.visible := false;
      BitBtn10.visible := false;
      Edit8.visible := true;
      Edit9.visible := false;
      Edit10.visible := false;
      Edit11.visible := false;
      Edit12.visible := false;
      Edit3.visible := false;
      Edit4.visible := false;
      Edit5.visible := false;
      Edit6.visible := false;
      Edit7.visible := false;

    end;

    If ComboBox1.text = '2' then
    begin
      Edit8.text := ' ';
      Edit9.text := ' ';
      Edit10.text := '-';
      Edit11.text := '-';
      Edit12.text := '-';
      Edit3.text := '-';
      Edit4.text := '-';
      Edit5.text := '-';
      Edit6.text := '-';
      Edit7.text := '-';

      Label13.enabled := true;
      Label14.enabled := true;
      Label15.enabled := false;
      Label16.enabled := false;
      Label17.enabled := false;
      Label8.enabled := false;
      Label9.enabled := false;
      Label10.enabled := false;
      Label11.enabled := false;
      Label12.enabled := false;
      Label2.enabled := false;
      Label3.enabled := false;
      Label4.enabled := false;
      Label5.enabled := true;
      Label6.enabled := true;
      Label7.enabled := true;
      BitBtn1.enabled := true;
      BitBtn2.enabled := true;
      BitBtn3.enabled := false;
      BitBtn4.enabled := false;
      BitBtn5.enabled := false;
      BitBtn6.enabled := false;
      BitBtn7.enabled := false;
      BitBtn8.enabled := false;
      BitBtn9.enabled := false;
      BitBtn10.enabled := false;
      Edit8.enabled := true;
      Edit9.enabled := true;
      Edit10.enabled := true;
      Edit11.enabled := false;
      Edit12.enabled := false;
      Edit3.enabled := false;
      Edit4.enabled := false;
      Edit5.enabled := false;
      Edit6.enabled := false;
      Edit7.enabled := false;

      Label13.visible := true;
      Label14.visible := true;
      Label15.visible := false;
      Label16.visible := false;
      Label17.visible := false;
      Label8.visible := false;
      Label9.visible := false;
      Label10.visible := false;
      Label11.visible := false;
      Label12.visible := false;
      Label2.visible := false;
      Label3.visible := false;
      Label4.visible := false;
      Label5.visible := true;
      Label6.visible := true;
      Label7.visible := true;
      BitBtn1.visible := true;
      BitBtn2.visible := true;
      BitBtn3.visible := false;
      BitBtn4.visible := false;
      BitBtn5.visible := false;
      BitBtn6.visible := false;
      BitBtn7.visible := false;
      BitBtn8.visible := false;
      BitBtn9.visible := false;
      BitBtn10.visible := false;
      Edit8.visible := true;
      Edit9.visible := true;
      Edit10.visible := false;
      Edit11.visible := false;
      Edit12.visible := false;
      Edit3.visible := false;
      Edit4.visible := false;
      Edit5.visible := false;
      Edit6.visible := false;
      Edit7.visible := false;

    end;

    If ComboBox1.text = '3' then
    begin

      Edit8.text := ' ';
      Edit9.text := ' ';
      Edit10.text := ' ';
      Edit11.text := '-';
      Edit12.text := '-';
      Edit3.text := '-';
      Edit4.text := '-';
      Edit5.text := '-';
      Edit6.text := '-';
      Edit7.text := '-';

      Label13.enabled := true;
      Label14.enabled := true;
      Label15.enabled := true;
      Label16.enabled := false;
      Label17.enabled := false;
      Label8.enabled := false;
      Label9.enabled := false;
      Label10.enabled := false;
      Label11.enabled := false;
      Label12.enabled := false;
      Label2.enabled := false;
      Label3.enabled := false;
      Label4.enabled := false;
      Label5.enabled := true;
      Label6.enabled := true;
      Label7.enabled := true;
      BitBtn1.enabled := true;
      BitBtn2.enabled := true;
      BitBtn3.enabled := true;
      BitBtn4.enabled := false;
      BitBtn5.enabled := false;
      BitBtn6.enabled := false;
      BitBtn7.enabled := false;
      BitBtn8.enabled := false;
      BitBtn9.enabled := false;
      BitBtn10.enabled := false;
      Edit8.enabled := true;
      Edit9.enabled := true;
      Edit10.enabled := true;
      Edit11.enabled := false;
      Edit12.enabled := false;
      Edit3.enabled := false;
      Edit4.enabled := false;
      Edit5.enabled := false;
      Edit6.enabled := false;
      Edit7.enabled := false;

      Label13.visible := true;
      Label14.visible := true;
      Label15.visible := true;
      Label16.visible := false;
      Label17.visible := false;
      Label8.visible := false;
      Label9.visible := false;
      Label10.visible := false;
      Label11.visible := false;
      Label12.visible := false;
      Label2.visible := false;
      Label3.visible := false;
      Label4.visible := false;
      Label5.visible := true;
      Label6.visible := true;
      Label7.visible := true;
      BitBtn1.visible := true;
      BitBtn2.visible := true;
      BitBtn3.visible := true;
      BitBtn4.visible := false;
      BitBtn5.visible := false;
      BitBtn6.visible := false;
      BitBtn7.visible := false;
      BitBtn8.visible := false;
      BitBtn9.visible := false;
      BitBtn10.visible := false;
      Edit8.visible := true;
      Edit9.visible := true;
      Edit10.visible := true;
      Edit11.visible := false;
      Edit12.visible := false;
      Edit3.visible := false;
      Edit4.visible := false;
      Edit5.visible := false;
      Edit6.visible := false;
      Edit7.visible := false;

    end;

    If ComboBox1.text = '4' then
    begin

      Edit8.text := ' ';
      Edit9.text := ' ';
      Edit10.text := ' ';
      Edit11.text := ' ';
      Edit12.text := '-';
      Edit3.text := '-';
      Edit4.text := '-';
      Edit5.text := '-';
      Edit6.text := '-';
      Edit7.text := '-';

      Label13.enabled := true;
      Label14.enabled := true;
      Label15.enabled := true;
      Label16.enabled := true;
      Label17.enabled := false;
      Label8.enabled := false;
      Label9.enabled := false;
      Label10.enabled := false;
      Label11.enabled := false;
      Label12.enabled := false;
      Label2.enabled := false;
      Label3.enabled := false;
      Label4.enabled := false;
      Label5.enabled := true;
      Label6.enabled := true;
      Label7.enabled := true;
      BitBtn1.enabled := true;
      BitBtn2.enabled := true;
      BitBtn3.enabled := true;
      BitBtn4.enabled := true;
      BitBtn5.enabled := false;
      BitBtn6.enabled := false;
      BitBtn7.enabled := false;
      BitBtn8.enabled := false;
      BitBtn9.enabled := false;
      BitBtn10.enabled := false;
      Edit8.enabled := true;
      Edit9.enabled := true;
      Edit10.enabled := true;
      Edit11.enabled := true;
      Edit12.enabled := false;
      Edit3.enabled := false;
      Edit4.enabled := false;
      Edit5.enabled := false;
      Edit6.enabled := false;
      Edit7.enabled := false;

      Label13.visible := true;
      Label14.visible := true;
      Label15.visible := true;
      Label16.visible := true;
      Label17.visible := false;
      Label8.visible := false;
      Label9.visible := false;
      Label10.visible := false;
      Label11.visible := false;
      Label12.visible := false;
      Label2.visible := false;
      Label3.visible := false;
      Label4.visible := false;
      Label5.visible := true;
      Label6.visible := true;
      Label7.visible := true;
      BitBtn1.visible := true;
      BitBtn2.visible := true;
      BitBtn3.visible := true;
      BitBtn4.visible := true;
      BitBtn5.visible := false;
      BitBtn6.visible := false;
      BitBtn7.visible := false;
      BitBtn8.visible := false;
      BitBtn9.visible := false;
      BitBtn10.visible := false;
      Edit8.visible := true;
      Edit9.visible := true;
      Edit10.visible := true;
      Edit11.visible := true;
      Edit12.visible := false;
      Edit3.visible := false;
      Edit4.visible := false;
      Edit5.visible := false;
      Edit6.visible := false;
      Edit7.visible := false;

    end;

    If ComboBox1.text = '5' then
    begin
      Edit8.text := ' ';
      Edit9.text := ' ';
      Edit10.text := ' ';
      Edit11.text := ' ';
      Edit12.text := ' ';
      Edit3.text := '-';
      Edit4.text := '-';
      Edit5.text := '-';
      Edit6.text := '-';
      Edit7.text := '-';

      Label13.enabled := true;
      Label14.enabled := true;
      Label15.enabled := true;
      Label16.enabled := true;
      Label17.enabled := true;
      Label8.enabled := false;
      Label9.enabled := false;
      Label10.enabled := false;
      Label11.enabled := false;
      Label12.enabled := false;
      Label2.enabled := false;
      Label3.enabled := false;
      Label4.enabled := false;
      Label5.enabled := true;
      Label6.enabled := true;
      Label7.enabled := true;
      BitBtn1.enabled := true;
      BitBtn2.enabled := true;
      BitBtn3.enabled := true;
      BitBtn4.enabled := true;
      BitBtn5.enabled := true;
      BitBtn6.enabled := false;
      BitBtn7.enabled := false;
      BitBtn8.enabled := false;
      BitBtn9.enabled := false;
      BitBtn10.enabled := false;
      Edit8.enabled := true;
      Edit9.enabled := true;
      Edit10.enabled := true;
      Edit11.enabled := true;
      Edit12.enabled := true;
      Edit3.enabled := false;
      Edit4.enabled := false;
      Edit5.enabled := false;
      Edit6.enabled := false;
      Edit7.enabled := false;

      Label13.visible := true;
      Label14.visible := true;
      Label15.visible := true;
      Label16.visible := true;
      Label17.visible := true;
      Label8.visible := false;
      Label9.visible := false;
      Label10.visible := false;
      Label11.visible := false;
      Label12.visible := false;
      Label2.visible := false;
      Label3.visible := false;
      Label4.visible := false;
      Label5.visible := true;
      Label6.visible := true;
      Label7.visible := true;
      BitBtn1.visible := true;
      BitBtn2.visible := true;
      BitBtn3.visible := true;
      BitBtn4.visible := true;
      BitBtn5.visible := true;
      BitBtn6.visible := false;
      BitBtn7.visible := false;
      BitBtn8.visible := false;
      BitBtn9.visible := false;
      BitBtn10.visible := false;
      Edit8.visible := true;
      Edit9.visible := true;
      Edit10.visible := true;
      Edit11.visible := true;
      Edit12.visible := true;
      Edit3.visible := false;
      Edit4.visible := false;
      Edit5.visible := false;
      Edit6.visible := false;
      Edit7.visible := false;

    end;

    If ComboBox1.text = '6' then
    begin

      Edit8.text := ' ';
      Edit9.text := ' ';
      Edit10.text := ' ';
      Edit11.text := ' ';
      Edit12.text := ' ';
      Edit3.text := ' ';
      Edit4.text := '-';
      Edit5.text := '-';
      Edit6.text := '-';
      Edit7.text := '-';

      Label13.enabled := true;
      Label14.enabled := true;
      Label15.enabled := true;
      Label16.enabled := true;
      Label17.enabled := true;
      Label8.enabled := true;
      Label9.enabled := false;
      Label10.enabled := false;
      Label11.enabled := false;
      Label12.enabled := false;
      Label2.enabled := true;
      Label3.enabled := true;
      Label4.enabled := true;
      Label5.enabled := true;
      Label6.enabled := true;
      Label7.enabled := true;
      BitBtn1.enabled := true;
      BitBtn2.enabled := true;
      BitBtn3.enabled := true;
      BitBtn4.enabled := true;
      BitBtn5.enabled := true;
      BitBtn6.enabled := true;
      BitBtn7.enabled := false;
      BitBtn8.enabled := false;
      BitBtn9.enabled := false;
      BitBtn10.enabled := false;
      Edit8.enabled := true;
      Edit9.enabled := true;
      Edit10.enabled := true;
      Edit11.enabled := true;
      Edit12.enabled := true;
      Edit3.enabled := true;
      Edit4.enabled := false;
      Edit5.enabled := false;
      Edit6.enabled := false;
      Edit7.enabled := false;

      Label13.visible := true;
      Label14.visible := true;
      Label15.visible := true;
      Label16.visible := true;
      Label17.visible := true;
      Label8.visible := true;
      Label9.visible := false;
      Label10.visible := false;
      Label11.visible := false;
      Label12.visible := false;
      Label2.visible := true;
      Label3.visible := true;
      Label4.visible := true;
      Label5.visible := true;
      Label6.visible := true;
      Label7.visible := true;
      BitBtn1.visible := true;
      BitBtn2.visible := true;
      BitBtn3.visible := true;
      BitBtn4.visible := true;
      BitBtn5.visible := true;
      BitBtn6.visible := true;
      BitBtn7.visible := false;
      BitBtn8.visible := false;
      BitBtn9.visible := false;
      BitBtn10.visible := false;
      Edit8.visible := true;
      Edit9.visible := true;
      Edit10.visible := true;
      Edit11.visible := true;
      Edit12.visible := true;
      Edit3.visible := true;
      Edit4.visible := false;
      Edit5.visible := false;
      Edit6.visible := false;
      Edit7.visible := false;

    end;

    If ComboBox1.text = '7' then
    begin
      Edit8.text := ' ';
      Edit9.text := ' ';
      Edit10.text := ' ';
      Edit11.text := ' ';
      Edit12.text := ' ';
      Edit3.text := ' ';
      Edit4.text := ' ';
      Edit5.text := '-';
      Edit6.text := '-';
      Edit7.text := '-';

      Label13.enabled := true;
      Label14.enabled := true;
      Label15.enabled := true;
      Label16.enabled := true;
      Label17.enabled := true;
      Label8.enabled := true;
      Label9.enabled := true;
      Label10.enabled := false;
      Label11.enabled := false;
      Label12.enabled := false;
      Label2.enabled := true;
      Label3.enabled := true;
      Label4.enabled := true;
      Label5.enabled := true;
      Label6.enabled := true;
      Label7.enabled := true;
      BitBtn1.enabled := true;
      BitBtn2.enabled := true;
      BitBtn3.enabled := true;
      BitBtn4.enabled := true;
      BitBtn5.enabled := true;
      BitBtn6.enabled := true;
      BitBtn7.enabled := true;
      BitBtn8.enabled := false;
      BitBtn9.enabled := false;
      BitBtn10.enabled := false;
      Edit8.enabled := true;
      Edit9.enabled := true;
      Edit10.enabled := true;
      Edit11.enabled := true;
      Edit12.enabled := true;
      Edit3.enabled := true;
      Edit4.enabled := true;
      Edit5.enabled := false;
      Edit6.enabled := false;
      Edit7.enabled := false;

      Label13.visible := true;
      Label14.visible := true;
      Label15.visible := true;
      Label16.visible := true;
      Label17.visible := true;
      Label8.visible := true;
      Label9.visible := true;
      Label10.visible := false;
      Label11.visible := false;
      Label12.visible := false;
      Label2.visible := true;
      Label3.visible := true;
      Label4.visible := true;
      Label5.visible := true;
      Label6.visible := true;
      Label7.visible := true;
      BitBtn1.visible := true;
      BitBtn2.visible := true;
      BitBtn3.visible := true;
      BitBtn4.visible := true;
      BitBtn5.visible := true;
      BitBtn6.visible := true;
      BitBtn7.visible := true;
      BitBtn8.visible := false;
      BitBtn9.visible := false;
      BitBtn10.visible := false;
      Edit8.visible := true;
      Edit9.visible := true;
      Edit10.visible := true;
      Edit11.visible := true;
      Edit12.visible := true;
      Edit3.visible := true;
      Edit4.visible := true;
      Edit5.visible := false;
      Edit6.visible := false;
      Edit7.visible := false;

    end;

    If ComboBox1.text = '8' then
    begin

      Edit8.text := ' ';
      Edit9.text := ' ';
      Edit10.text := ' ';
      Edit11.text := ' ';
      Edit12.text := ' ';
      Edit3.text := ' ';
      Edit4.text := ' ';
      Edit5.text := ' ';
      Edit6.text := '-';
      Edit7.text := '-';

      Label13.enabled := true;
      Label14.enabled := true;
      Label15.enabled := true;
      Label16.enabled := true;
      Label17.enabled := true;
      Label8.enabled := true;
      Label9.enabled := true;
      Label10.enabled := true;
      Label11.enabled := false;
      Label12.enabled := false;
      Label2.enabled := true;
      Label3.enabled := true;
      Label4.enabled := true;
      Label5.enabled := true;
      Label6.enabled := true;
      Label7.enabled := true;
      BitBtn1.enabled := true;
      BitBtn2.enabled := true;
      BitBtn3.enabled := true;
      BitBtn4.enabled := true;
      BitBtn5.enabled := true;
      BitBtn6.enabled := true;
      BitBtn7.enabled := true;
      BitBtn8.enabled := true;
      BitBtn9.enabled := false;
      BitBtn10.enabled := false;
      Edit8.enabled := true;
      Edit9.enabled := true;
      Edit10.enabled := true;
      Edit11.enabled := true;
      Edit12.enabled := true;
      Edit3.enabled := true;
      Edit4.enabled := true;
      Edit5.enabled := true;
      Edit6.enabled := false;
      Edit7.enabled := false;

      Label13.visible := true;
      Label14.visible := true;
      Label15.visible := true;
      Label16.visible := true;
      Label17.visible := true;
      Label8.visible := true;
      Label9.visible := true;
      Label10.visible := true;
      Label11.visible := false;
      Label12.visible := false;
      Label2.visible := true;
      Label3.visible := true;
      Label4.visible := true;
      Label5.visible := true;
      Label6.visible := true;
      Label7.visible := true;
      BitBtn1.visible := true;
      BitBtn2.visible := true;
      BitBtn3.visible := true;
      BitBtn4.visible := true;
      BitBtn5.visible := true;
      BitBtn6.visible := true;
      BitBtn7.visible := true;
      BitBtn8.visible := true;
      BitBtn9.visible := false;
      BitBtn10.visible := false;
      Edit8.visible := true;
      Edit9.visible := true;
      Edit10.visible := true;
      Edit11.visible := true;
      Edit12.visible := true;
      Edit3.visible := true;
      Edit4.visible := true;
      Edit5.visible := true;
      Edit6.visible := false;
      Edit7.visible := false;

    end;

    If ComboBox1.text = '9' then // готово
    begin

      Edit8.text := ' ';
      Edit9.text := ' ';
      Edit10.text := ' ';
      Edit11.text := ' ';
      Edit12.text := ' ';
      Edit3.text := ' ';
      Edit4.text := ' ';
      Edit5.text := ' ';
      Edit6.text := ' ';
      Edit7.text := '-';

      Label13.enabled := true;
      Label14.enabled := true;
      Label15.enabled := true;
      Label16.enabled := true;
      Label17.enabled := true;
      Label8.enabled := true;
      Label9.enabled := true;
      Label10.enabled := true;
      Label11.enabled := true;
      Label12.enabled := false;
      Label2.enabled := true;
      Label3.enabled := true;
      Label4.enabled := true;
      Label5.enabled := true;
      Label6.enabled := true;
      Label7.enabled := true;
      BitBtn1.enabled := true;
      BitBtn2.enabled := true;
      BitBtn3.enabled := true;
      BitBtn4.enabled := true;
      BitBtn5.enabled := true;
      BitBtn6.enabled := true;
      BitBtn7.enabled := true;
      BitBtn8.enabled := true;
      BitBtn9.enabled := true;
      BitBtn10.enabled := false;
      Edit8.enabled := true;
      Edit9.enabled := true;
      Edit10.enabled := true;
      Edit11.enabled := true;
      Edit12.enabled := true;
      Edit3.enabled := true;
      Edit4.enabled := true;
      Edit5.enabled := true;
      Edit6.enabled := true;
      Edit7.enabled := false;

      Label13.visible := true;
      Label14.visible := true;
      Label15.visible := true;
      Label16.visible := true;
      Label17.visible := true;
      Label8.visible := true;
      Label9.visible := true;
      Label10.visible := true;
      Label11.visible := true;
      Label12.visible := false;
      Label2.visible := true;
      Label3.visible := true;
      Label4.visible := true;
      Label5.visible := true;
      Label6.visible := true;
      Label7.visible := true;
      BitBtn1.visible := true;
      BitBtn2.visible := true;
      BitBtn3.visible := true;
      BitBtn4.visible := true;
      BitBtn5.visible := true;
      BitBtn6.visible := true;
      BitBtn7.visible := true;
      BitBtn8.visible := true;
      BitBtn9.visible := true;
      BitBtn10.visible := false;
      Edit8.visible := true;
      Edit9.visible := true;
      Edit10.visible := true;
      Edit11.visible := true;
      Edit12.visible := true;
      Edit3.visible := true;
      Edit4.visible := true;
      Edit5.visible := true;
      Edit6.visible := true;
      Edit7.visible := false;

    end;

    If ComboBox1.text = '10' then // готово
    begin

      Edit8.text := ' ';
      Edit9.text := ' ';
      Edit10.text := ' ';
      Edit11.text := ' ';
      Edit12.text := ' ';
      Edit3.text := ' ';
      Edit4.text := ' ';
      Edit5.text := ' ';
      Edit6.text := ' ';
      Edit7.text := ' ';

      Label13.enabled := true;
      Label14.enabled := true;
      Label15.enabled := true;
      Label16.enabled := true;
      Label17.enabled := true;
      Label8.enabled := true;
      Label9.enabled := true;
      Label10.enabled := true;
      Label11.enabled := true;
      Label12.enabled := true;
      Label2.enabled := true;
      Label3.enabled := true;
      Label4.enabled := true;
      Label5.enabled := true;
      Label6.enabled := true;
      Label7.enabled := true;
      BitBtn1.enabled := true;
      BitBtn2.enabled := true;
      BitBtn3.enabled := true;
      BitBtn4.enabled := true;
      BitBtn5.enabled := true;
      BitBtn6.enabled := true;
      BitBtn7.enabled := true;
      BitBtn8.enabled := true;
      BitBtn9.enabled := true;
      BitBtn10.enabled := true;
      Edit8.enabled := true;
      Edit9.enabled := true;
      Edit10.enabled := true;
      Edit11.enabled := true;
      Edit12.enabled := true;
      Edit3.enabled := true;
      Edit4.enabled := true;
      Edit5.enabled := true;
      Edit6.enabled := true;
      Edit7.enabled := true;

      Label13.visible := true;
      Label14.visible := true;
      Label15.visible := true;
      Label16.visible := true;
      Label17.visible := true;
      Label8.visible := true;
      Label9.visible := true;
      Label10.visible := true;
      Label11.visible := true;
      Label12.visible := true;
      Label2.visible := true;
      Label3.visible := true;
      Label4.visible := true;
      Label5.visible := true;
      Label6.visible := true;
      Label7.visible := true;
      BitBtn1.visible := true;
      BitBtn2.visible := true;
      BitBtn3.visible := true;
      BitBtn4.visible := true;
      BitBtn5.visible := true;
      BitBtn6.visible := true;
      BitBtn7.visible := true;
      BitBtn8.visible := true;
      BitBtn9.visible := true;
      BitBtn10.visible := true;
      Edit8.visible := true;
      Edit9.visible := true;
      Edit10.visible := true;
      Edit11.visible := true;
      Edit12.visible := true;
      Edit3.visible := true;
      Edit4.visible := true;
      Edit5.visible := true;
      Edit6.visible := true;
      Edit7.visible := true;

    end;
  end;


procedure TForm11.ComboBox2Change(Sender: TObject);
begin


if combobox2.text='Количество глав' then //gotovo
	begin
    edit14.text:=' ';
	edit15.text:=' ';
	edit16.text:=' ';
	edit17.text:=' ';
	edit18.text:=' ';
	edit19.text:=' ';
	edit20.text:=' ';
	edit21.text:=' ';
	edit22.text:=' ';
	edit23.text:=' ';

	label21.visible:=true;
	label22.visible:=true;
	label23.visible:=true;
	label24.visible:=true;
	label25.visible:=true;
	label26.visible:=true;
	label27.visible:=true;
	label28.visible:=true;
	label29.visible:=true;
	label30.visible:=true;
	label31.visible:=true;
	label32.visible:=true;
	label33.visible:=true;
	label34.visible:=true;
	label35.visible:=true;
	label36.visible:=true;
	BitBtn11.visible:=true;
	BitBtn12.visible:=true;
	BitBtn13.visible:=true;
	BitBtn14.visible:=true;
	BitBtn15.visible:=true;
	BitBtn16.visible:=true;
	BitBtn17.visible:=true;
	BitBtn18.visible:=true;
	BitBtn19.visible:=true;
	BitBtn20.visible:=true;
	edit14.visible:=true;
	edit15.visible:=true;
	edit16.visible:=true;
	edit17.visible:=true;
	edit18.visible:=true;
	edit19.visible:=true;
	edit20.visible:=true;
	edit21.visible:=true;
	edit22.visible:=true;
	edit23.visible:=true;

	label21.enabled:=false;
	label22.enabled:=false;
	label23.enabled:=false;
	label24.enabled:=false;
	label25.enabled:=false;
	label26.enabled:=false;
	label27.enabled:=false;
	label28.enabled:=false;
	label29.enabled:=false;
	label30.enabled:=false;
	label31.enabled:=false;
	label32.enabled:=false;
	label33.enabled:=false;
	label34.enabled:=false;
	label35.enabled:=false;
	label36.enabled:=false;
	BitBtn11.enabled:=false;
	BitBtn12.enabled:=false;
	BitBtn13.enabled:=false;
	BitBtn14.enabled:=false;
	BitBtn15.enabled:=false;
	BitBtn16.enabled:=false;
	BitBtn17.enabled:=false;
	BitBtn18.enabled:=false;
	BitBtn19.enabled:=false;
	BitBtn20.enabled:=false;
	edit14.enabled:=false;
	edit15.enabled:=false;
	edit16.enabled:=false;
	edit17.enabled:=false;
	edit18.enabled:=false;
	edit19.enabled:=false;
	edit20.enabled:=false;
	edit21.enabled:=false;
	edit22.enabled:=false;
	edit23.enabled:=false;

	end;

	if combobox2.text='1' then
	begin
	edit14.text:=' ';
	edit15.text:='-';
	edit16.text:='-';
	edit17.text:='-';
	edit18.text:='-';
	edit19.text:='-';
	edit20.text:='-';
	edit21.text:='-';
	edit22.text:='-';
	edit23.text:='-';

	label21.visible:=true;
	label22.visible:=true;
	label23.visible:=false;
	label24.visible:=false;
	label25.visible:=false;
	label26.visible:=false;
	label27.visible:=true;
	label28.visible:=true;
	label29.visible:=false;
	label30.visible:=false;
	label31.visible:=false;
	label32.visible:=false;
	label33.visible:=false;
	label34.visible:=false;
	label35.visible:=false;
	label36.visible:=false;
	BitBtn11.visible:=true;
	BitBtn12.visible:=false;
	BitBtn13.visible:=false;
	BitBtn14.visible:=false;
	BitBtn15.visible:=false;
	BitBtn16.visible:=false;
	BitBtn17.visible:=false;
	BitBtn18.visible:=false;
	BitBtn19.visible:=false;
	BitBtn20.visible:=false;
	edit14.visible:=true;
	edit15.visible:=false;
	edit16.visible:=false;
	edit17.visible:=false;
	edit18.visible:=false;
	edit19.visible:=false;
	edit20.visible:=false;
	edit21.visible:=false;
	edit22.visible:=false;
	edit23.visible:=false;

	label21.enabled:=true;
	label22.enabled:=true;
	label23.enabled:=false;
	label24.enabled:=false;
	label25.enabled:=false;
	label26.enabled:=false;
	label27.enabled:=true;
	label28.enabled:=true;
	label29.enabled:=false;
	label30.enabled:=false;
	label31.enabled:=false;
	label32.enabled:=false;
	label33.enabled:=false;
	label34.enabled:=false;
	label35.enabled:=false;
	label36.enabled:=false;
	BitBtn11.enabled:=true;
	BitBtn12.enabled:=false;
	BitBtn13.enabled:=false;
	BitBtn14.enabled:=false;
	BitBtn15.enabled:=false;
	BitBtn16.enabled:=false;
	BitBtn17.enabled:=false;
	BitBtn18.enabled:=false;
	BitBtn19.enabled:=false;
	BitBtn20.enabled:=false;
	edit14.enabled:=true;
	edit15.enabled:=false;
	edit16.enabled:=false;
	edit17.enabled:=false;
	edit18.enabled:=false;
	edit19.enabled:=false;
	edit20.enabled:=false;
	edit21.enabled:=false;
	edit22.enabled:=false;
	edit23.enabled:=false;
 	end;

    if combobox2.text='2' then
	begin
	edit14.text:=' ';
	edit15.text:=' ';
	edit16.text:='-';
	edit17.text:='-';
	edit18.text:='-';
	edit19.text:='-';
	edit20.text:='-';
	edit21.text:='-';
	edit22.text:='-';
	edit23.text:='-';

	label21.visible:=true;
	label22.visible:=true;
	label23.visible:=true;
	label24.visible:=false;
	label25.visible:=false;
	label26.visible:=false;
	label27.visible:=true;
	label28.visible:=true;
	label29.visible:=false;
	label30.visible:=false;
	label31.visible:=false;
	label32.visible:=false;
	label33.visible:=false;
	label34.visible:=false;
	label35.visible:=false;
	label36.visible:=false;
	BitBtn11.visible:=true;
	BitBtn12.visible:=true;
	BitBtn13.visible:=false;
	BitBtn14.visible:=false;
	BitBtn15.visible:=false;
	BitBtn16.visible:=false;
	BitBtn17.visible:=false;
	BitBtn18.visible:=false;
	BitBtn19.visible:=false;
	BitBtn20.visible:=false;
	edit14.visible:=true;
	edit15.visible:=true;
	edit16.visible:=false;
	edit17.visible:=false;
	edit18.visible:=false;
	edit19.visible:=false;
	edit20.visible:=false;
	edit21.visible:=false;
	edit22.visible:=false;
	edit23.visible:=false;

	label21.enabled:=true;
	label22.enabled:=true;
	label23.enabled:=true;
	label24.enabled:=false;
	label25.enabled:=false;
	label26.enabled:=false;
	label27.enabled:=true;
	label28.enabled:=true;
	label29.enabled:=false;
	label30.enabled:=false;
	label31.enabled:=false;
	label32.enabled:=false;
	label33.enabled:=false;
	label34.enabled:=false;
	label35.enabled:=false;
	label36.enabled:=false;
	BitBtn11.enabled:=true;
	BitBtn12.enabled:=true;
	BitBtn13.enabled:=false;
	BitBtn14.enabled:=false;
	BitBtn15.enabled:=false;
	BitBtn16.enabled:=false;
	BitBtn17.enabled:=false;
	BitBtn18.enabled:=false;
	BitBtn19.enabled:=false;
	BitBtn20.enabled:=false;
	edit14.enabled:=true;
	edit15.enabled:=true;
	edit16.enabled:=false;
	edit17.enabled:=false;
	edit18.enabled:=false;
	edit19.enabled:=false;
	edit20.enabled:=false;
	edit21.enabled:=false;
	edit22.enabled:=false;
	edit23.enabled:=false;
 	end;

 	if combobox2.text='3' then
	begin
	edit14.text:=' ';
	edit15.text:=' ';
	edit16.text:=' ';
	edit17.text:='-';
	edit18.text:='-';
	edit19.text:='-';
	edit20.text:='-';
	edit21.text:='-';
	edit22.text:='-';
	edit23.text:='-';

	label21.visible:=true;
	label22.visible:=true;
	label23.visible:=true;
	label24.visible:=true;
	label25.visible:=false;
	label26.visible:=false;
	label27.visible:=true;
	label28.visible:=true;
	label29.visible:=false;
	label30.visible:=false;
	label31.visible:=false;
	label32.visible:=false;
	label33.visible:=false;
	label34.visible:=false;
	label35.visible:=false;
	label36.visible:=false;
	BitBtn11.visible:=true;
	BitBtn12.visible:=true;
	BitBtn13.visible:=true;
	BitBtn14.visible:=false;
	BitBtn15.visible:=false;
	BitBtn16.visible:=false;
	BitBtn17.visible:=false;
	BitBtn18.visible:=false;
	BitBtn19.visible:=false;
	BitBtn20.visible:=false;
	edit14.visible:=true;
	edit15.visible:=true;
	edit16.visible:=true;
	edit17.visible:=false;
	edit18.visible:=false;
	edit19.visible:=false;
	edit20.visible:=false;
	edit21.visible:=false;
	edit22.visible:=false;
	edit23.visible:=false;

	label21.enabled:=true;
	label22.enabled:=true;
	label23.enabled:=true;
	label24.enabled:=true;
	label25.enabled:=false;
	label26.enabled:=false;
	label27.enabled:=true;
	label28.enabled:=true;
	label29.enabled:=false;
	label30.enabled:=false;
	label31.enabled:=false;
	label32.enabled:=false;
	label33.enabled:=false;
	label34.enabled:=false;
	label35.enabled:=false;
	label36.enabled:=false;
	BitBtn11.enabled:=true;
	BitBtn12.enabled:=true;
	BitBtn13.enabled:=true;
	BitBtn14.enabled:=false;
	BitBtn15.enabled:=false;
	BitBtn16.enabled:=false;
	BitBtn17.enabled:=false;
	BitBtn18.enabled:=false;
	BitBtn19.enabled:=false;
	BitBtn20.enabled:=false;
	edit14.enabled:=true;
	edit15.enabled:=true;
	edit16.enabled:=true;
	edit17.enabled:=false;
	edit18.enabled:=false;
	edit19.enabled:=false;
	edit20.enabled:=false;
	edit21.enabled:=false;
	edit22.enabled:=false;
	edit23.enabled:=false;
 	end;

 	if combobox2.text='4' then
	begin
	edit14.text:=' ';
	edit15.text:=' ';
	edit16.text:=' ';
	edit17.text:=' ';
	edit18.text:='-';
	edit19.text:='-';
	edit20.text:='-';
	edit21.text:='-';
	edit22.text:='-';
	edit23.text:='-';

	label21.visible:=true;
	label22.visible:=true;
	label23.visible:=true;
	label24.visible:=true;
	label25.visible:=true;
	label26.visible:=false;
	label27.visible:=true;
	label28.visible:=true;
	label29.visible:=false;
	label30.visible:=false;
	label31.visible:=false;
	label32.visible:=false;
	label33.visible:=false;
	label34.visible:=false;
	label35.visible:=false;
	label36.visible:=false;
	BitBtn11.visible:=true;
	BitBtn12.visible:=true;
	BitBtn13.visible:=true;
	BitBtn14.visible:=true;
	BitBtn15.visible:=false;
	BitBtn16.visible:=false;
	BitBtn17.visible:=false;
	BitBtn18.visible:=false;
	BitBtn19.visible:=false;
	BitBtn20.visible:=false;
	edit14.visible:=true;
	edit15.visible:=true;
	edit16.visible:=true;
	edit17.visible:=true;
	edit18.visible:=false;
	edit19.visible:=false;
	edit20.visible:=false;
	edit21.visible:=false;
	edit22.visible:=false;
	edit23.visible:=false;

	label21.enabled:=true;
	label22.enabled:=true;
	label23.enabled:=true;
	label24.enabled:=true;
	label25.enabled:=true;
	label26.enabled:=false;
	label27.enabled:=true;
	label28.enabled:=true;
	label29.enabled:=false;
	label30.enabled:=false;
	label31.enabled:=false;
	label32.enabled:=false;
	label33.enabled:=false;
	label34.enabled:=false;
	label35.enabled:=false;
	label36.enabled:=false;
	BitBtn11.enabled:=true;
	BitBtn12.enabled:=true;
	BitBtn13.enabled:=true;
	BitBtn14.enabled:=true;
	BitBtn15.enabled:=false;
	BitBtn16.enabled:=false;
	BitBtn17.enabled:=false;
	BitBtn18.enabled:=false;
	BitBtn19.enabled:=false;
	BitBtn20.enabled:=false;
	edit14.enabled:=true;
	edit15.enabled:=true;
	edit16.enabled:=true;
	edit17.enabled:=true;
	edit18.enabled:=false;
	edit19.enabled:=false;
	edit20.enabled:=false;
	edit21.enabled:=false;
	edit22.enabled:=false;
	edit23.enabled:=false;
 	end;

 	if combobox2.text='5' then
	begin
	edit14.text:=' ';
	edit15.text:=' ';
	edit16.text:=' ';
	edit17.text:=' ';
	edit18.text:=' ';
	edit19.text:='-';
	edit20.text:='-';
	edit21.text:='-';
	edit22.text:='-';
	edit23.text:='-';

	label21.visible:=true;
	label22.visible:=true;
	label23.visible:=true;
	label24.visible:=true;
	label25.visible:=true;
	label26.visible:=true;
	label27.visible:=true;
	label28.visible:=true;
	label29.visible:=false;
	label30.visible:=false;
	label31.visible:=false;
	label32.visible:=false;
	label33.visible:=false;
	label34.visible:=false;
	label35.visible:=false;
	label36.visible:=false;
	BitBtn11.visible:=true;
	BitBtn12.visible:=true;
	BitBtn13.visible:=true;
	BitBtn14.visible:=true;
	BitBtn15.visible:=true;
	BitBtn16.visible:=false;
	BitBtn17.visible:=false;
	BitBtn18.visible:=false;
	BitBtn19.visible:=false;
	BitBtn20.visible:=false;
	edit14.visible:=true;
	edit15.visible:=true;
	edit16.visible:=true;
	edit17.visible:=true;
	edit18.visible:=true;
	edit19.visible:=false;
	edit20.visible:=false;
	edit21.visible:=false;
	edit22.visible:=false;
	edit23.visible:=false;

	label21.enabled:=true;
	label22.enabled:=true;
	label23.enabled:=true;
	label24.enabled:=true;
	label25.enabled:=true;
	label26.enabled:=true;
	label27.enabled:=true;
	label28.enabled:=true;
	label29.enabled:=false;
	label30.enabled:=false;
	label31.enabled:=false;
	label32.enabled:=false;
	label33.enabled:=false;
	label34.enabled:=false;
	label35.enabled:=false;
	label36.enabled:=false;
	BitBtn11.enabled:=true;
	BitBtn12.enabled:=true;
	BitBtn13.enabled:=true;
	BitBtn14.enabled:=true;
	BitBtn15.enabled:=true;
	BitBtn16.enabled:=false;
	BitBtn17.enabled:=false;
	BitBtn18.enabled:=false;
	BitBtn19.enabled:=false;
	BitBtn20.enabled:=false;
	edit14.enabled:=true;
	edit15.enabled:=true;
	edit16.enabled:=true;
	edit17.enabled:=true;
	edit18.enabled:=true;
	edit19.enabled:=false;
	edit20.enabled:=false;
	edit21.enabled:=false;
	edit22.enabled:=false;
	edit23.enabled:=false;
 	end;

 	if combobox2.text='6' then
	begin
	edit14.text:=' ';
	edit15.text:=' ';
	edit16.text:=' ';
	edit17.text:=' ';
	edit18.text:=' ';
	edit19.text:=' ';
	edit20.text:='-';
	edit21.text:='-';
	edit22.text:='-';
	edit23.text:='-';

	label21.visible:=true;
	label22.visible:=true;
	label23.visible:=true;
	label24.visible:=true;
	label25.visible:=true;
	label26.visible:=true;
	label27.visible:=true;
	label28.visible:=true;
	label29.visible:=true;
	label30.visible:=true;
	label31.visible:=true;
	label32.visible:=true;
	label33.visible:=false;
	label34.visible:=false;
	label35.visible:=false;
	label36.visible:=false;
	BitBtn11.visible:=true;
	BitBtn12.visible:=true;
	BitBtn13.visible:=true;
	BitBtn14.visible:=true;
	BitBtn15.visible:=true;
	BitBtn16.visible:=true;
	BitBtn17.visible:=false;
	BitBtn18.visible:=false;
	BitBtn19.visible:=false;
	BitBtn20.visible:=false;
	edit14.visible:=true;
	edit15.visible:=true;
	edit16.visible:=true;
	edit17.visible:=true;
	edit18.visible:=true;
	edit19.visible:=true;
	edit20.visible:=false;
	edit21.visible:=false;
	edit22.visible:=false;
	edit23.visible:=false;

	label21.enabled:=true;
	label22.enabled:=true;
	label23.enabled:=true;
	label24.enabled:=true;
	label25.enabled:=true;
	label26.enabled:=true;
	label27.enabled:=true;
	label28.enabled:=true;
	label29.enabled:=true;
	label30.enabled:=true;
	label31.enabled:=true;
	label32.enabled:=true;
	label33.enabled:=false;
	label34.enabled:=false;
	label35.enabled:=false;
	label36.enabled:=false;
	BitBtn11.enabled:=true;
	BitBtn12.enabled:=true;
	BitBtn13.enabled:=true;
	BitBtn14.enabled:=true;
	BitBtn15.enabled:=true;
	BitBtn16.enabled:=true;
	BitBtn17.enabled:=false;
	BitBtn18.enabled:=false;
	BitBtn19.enabled:=false;
	BitBtn20.enabled:=false;
	edit14.enabled:=true;
	edit15.enabled:=true;
	edit16.enabled:=true;
	edit17.enabled:=true;
	edit18.enabled:=true;
	edit19.enabled:=true;
	edit20.enabled:=false;
	edit21.enabled:=false;
	edit22.enabled:=false;
	edit23.enabled:=false;
 	end;

 	if combobox2.text='7' then
	begin
	edit14.text:=' ';
	edit15.text:=' ';
	edit16.text:=' ';
	edit17.text:=' ';
	edit18.text:=' ';
	edit19.text:=' ';
	edit20.text:=' ';
	edit21.text:='-';
	edit22.text:='-';
	edit23.text:='-';

	label21.visible:=true;
	label22.visible:=true;
	label23.visible:=true;
	label24.visible:=true;
	label25.visible:=true;
	label26.visible:=true;
	label27.visible:=true;
	label28.visible:=true;
	label29.visible:=true;
	label30.visible:=true;
	label31.visible:=true;
	label32.visible:=true;
	label33.visible:=true;
	label34.visible:=false;
	label35.visible:=false;
	label36.visible:=false;
	BitBtn11.visible:=true;
	BitBtn12.visible:=true;
	BitBtn13.visible:=true;
	BitBtn14.visible:=true;
	BitBtn15.visible:=true;
	BitBtn16.visible:=true;
	BitBtn17.visible:=true;
	BitBtn18.visible:=false;
	BitBtn19.visible:=false;
	BitBtn20.visible:=false;
	edit14.visible:=true;
	edit15.visible:=true;
	edit16.visible:=true;
	edit17.visible:=true;
	edit18.visible:=true;
	edit19.visible:=true;
	edit20.visible:=true;
	edit21.visible:=false;
	edit22.visible:=false;
	edit23.visible:=false;

	label21.enabled:=true;
	label22.enabled:=true;
	label23.enabled:=true;
	label24.enabled:=true;
	label25.enabled:=true;
	label26.enabled:=true;
	label27.enabled:=true;
	label28.enabled:=true;
	label29.enabled:=true;
	label30.enabled:=true;
	label31.enabled:=true;
	label32.enabled:=true;
	label33.enabled:=true;
	label34.enabled:=false;
	label35.enabled:=false;
	label36.enabled:=false;
	BitBtn11.enabled:=true;
	BitBtn12.enabled:=true;
	BitBtn13.enabled:=true;
	BitBtn14.enabled:=true;
	BitBtn15.enabled:=true;
	BitBtn16.enabled:=true;
	BitBtn17.enabled:=true;
	BitBtn18.enabled:=false;
	BitBtn19.enabled:=false;
	BitBtn20.enabled:=false;
	edit14.enabled:=true;
	edit15.enabled:=true;
	edit16.enabled:=true;
	edit17.enabled:=true;
	edit18.enabled:=true;
	edit19.enabled:=true;
	edit20.enabled:=true;
	edit21.enabled:=false;
	edit22.enabled:=false;
	edit23.enabled:=false;
 	end;

 	if combobox2.text='8' then
	begin
	edit14.text:=' ';
	edit15.text:=' ';
	edit16.text:=' ';
	edit17.text:=' ';
	edit18.text:=' ';
	edit19.text:=' ';
	edit20.text:=' ';
	edit21.text:=' ';
	edit22.text:='-';
	edit23.text:='-';

	label21.visible:=true;
	label22.visible:=true;
	label23.visible:=true;
	label24.visible:=true;
	label25.visible:=true;
	label26.visible:=true;
	label27.visible:=true;
	label28.visible:=true;
	label29.visible:=true;
	label30.visible:=true;
	label31.visible:=true;
	label32.visible:=true;
	label33.visible:=true;
	label34.visible:=true;
	label35.visible:=false;
	label36.visible:=false;
	BitBtn11.visible:=true;
	BitBtn12.visible:=true;
	BitBtn13.visible:=true;
	BitBtn14.visible:=true;
	BitBtn15.visible:=true;
	BitBtn16.visible:=true;
	BitBtn17.visible:=true;
	BitBtn18.visible:=true;
	BitBtn19.visible:=false;
	BitBtn20.visible:=false;
	edit14.visible:=true;
	edit15.visible:=true;
	edit16.visible:=true;
	edit17.visible:=true;
	edit18.visible:=true;
	edit19.visible:=true;
	edit20.visible:=true;
	edit21.visible:=true;
	edit22.visible:=false;
	edit23.visible:=false;

	label21.enabled:=true;
	label22.enabled:=true;
	label23.enabled:=true;
	label24.enabled:=true;
	label25.enabled:=true;
	label26.enabled:=true;
	label27.enabled:=true;
	label28.enabled:=true;
	label29.enabled:=true;
	label30.enabled:=true;
	label31.enabled:=true;
	label32.enabled:=true;
	label33.enabled:=true;
	label34.enabled:=true;
	label35.enabled:=false;
	label36.enabled:=false;
	BitBtn11.enabled:=true;
	BitBtn12.enabled:=true;
	BitBtn13.enabled:=true;
	BitBtn14.enabled:=true;
	BitBtn15.enabled:=true;
	BitBtn16.enabled:=true;
	BitBtn17.enabled:=true;
	BitBtn18.enabled:=true;
	BitBtn19.enabled:=false;
	BitBtn20.enabled:=false;
	edit14.enabled:=true;
	edit15.enabled:=true;
	edit16.enabled:=true;
	edit17.enabled:=true;
	edit18.enabled:=true;
	edit19.enabled:=true;
	edit20.enabled:=true;
	edit21.enabled:=true;
	edit22.enabled:=false;
	edit23.enabled:=false;
 	end;

 	if combobox2.text='9' then
	begin
	edit14.text:=' ';
	edit15.text:=' ';
	edit16.text:=' ';
	edit17.text:=' ';
	edit18.text:=' ';
	edit19.text:=' ';
	edit20.text:=' ';
	edit21.text:=' ';
	edit22.text:=' ';
	edit23.text:='-';

	label21.visible:=true;
	label22.visible:=true;
	label23.visible:=true;
	label24.visible:=true;
	label25.visible:=true;
	label26.visible:=true;
	label27.visible:=true;
	label28.visible:=true;
	label29.visible:=true;
	label30.visible:=true;
	label31.visible:=true;
	label32.visible:=true;
	label33.visible:=true;
	label34.visible:=true;
	label35.visible:=true;
	label36.visible:=false;
	BitBtn11.visible:=true;
	BitBtn12.visible:=true;
	BitBtn13.visible:=true;
	BitBtn14.visible:=true;
	BitBtn15.visible:=true;
	BitBtn16.visible:=true;
	BitBtn17.visible:=true;
	BitBtn18.visible:=true;
	BitBtn19.visible:=true;
	BitBtn20.visible:=false;
	edit14.visible:=true;
	edit15.visible:=true;
	edit16.visible:=true;
	edit17.visible:=true;
	edit18.visible:=true;
	edit19.visible:=true;
	edit20.visible:=true;
	edit21.visible:=true;
	edit22.visible:=true;
	edit23.visible:=false;

	label21.enabled:=true;
	label22.enabled:=true;
	label23.enabled:=true;
	label24.enabled:=true;
	label25.enabled:=true;
	label26.enabled:=true;
	label27.enabled:=true;
	label28.enabled:=true;
	label29.enabled:=true;
	label30.enabled:=true;
	label31.enabled:=true;
	label32.enabled:=true;
	label33.enabled:=true;
	label34.enabled:=true;
	label35.enabled:=true;
	label36.enabled:=false;
	BitBtn11.enabled:=true;
	BitBtn12.enabled:=true;
	BitBtn13.enabled:=true;
	BitBtn14.enabled:=true;
	BitBtn15.enabled:=true;
	BitBtn16.enabled:=true;
	BitBtn17.enabled:=true;
	BitBtn18.enabled:=true;
	BitBtn19.enabled:=true;
	BitBtn20.enabled:=false;
	edit14.enabled:=true;
	edit15.enabled:=true;
	edit16.enabled:=true;
	edit17.enabled:=true;
	edit18.enabled:=true;
	edit19.enabled:=true;
	edit20.enabled:=true;
	edit21.enabled:=true;
	edit22.enabled:=true;
	edit23.enabled:=false;
 	end;

 	if combobox2.text='10' then
	begin
	edit14.text:=' ';
	edit15.text:=' ';
	edit16.text:=' ';
	edit17.text:=' ';
	edit18.text:=' ';
	edit19.text:=' ';
	edit20.text:=' ';
	edit21.text:=' ';
	edit22.text:=' ';
	edit23.text:=' ';

	label21.visible:=true;
	label22.visible:=true;
	label23.visible:=true;
	label24.visible:=true;
	label25.visible:=true;
	label26.visible:=true;
	label27.visible:=true;
	label28.visible:=true;
	label29.visible:=true;
	label30.visible:=true;
	label31.visible:=true;
	label32.visible:=true;
	label33.visible:=true;
	label34.visible:=true;
	label35.visible:=true;
	label36.visible:=true;
	BitBtn11.visible:=true;
	BitBtn12.visible:=true;
	BitBtn13.visible:=true;
	BitBtn14.visible:=true;
	BitBtn15.visible:=true;
	BitBtn16.visible:=true;
	BitBtn17.visible:=true;
	BitBtn18.visible:=true;
	BitBtn19.visible:=true;
	BitBtn20.visible:=true;
	edit14.visible:=true;
	edit15.visible:=true;
	edit16.visible:=true;
	edit17.visible:=true;
	edit18.visible:=true;
	edit19.visible:=true;
	edit20.visible:=true;
	edit21.visible:=true;
	edit22.visible:=true;
	edit23.visible:=true;

	label21.enabled:=true;
	label22.enabled:=true;
	label23.enabled:=true;
	label24.enabled:=true;
	label25.enabled:=true;
	label26.enabled:=true;
	label27.enabled:=true;
	label28.enabled:=true;
	label29.enabled:=true;
	label30.enabled:=true;
	label31.enabled:=true;
	label32.enabled:=true;
	label33.enabled:=true;
	label34.enabled:=true;
	label35.enabled:=true;
	label36.enabled:=true;
	BitBtn11.enabled:=true;
	BitBtn12.enabled:=true;
	BitBtn13.enabled:=true;
	BitBtn14.enabled:=true;
	BitBtn15.enabled:=true;
	BitBtn16.enabled:=true;
	BitBtn17.enabled:=true;
	BitBtn18.enabled:=true;
	BitBtn19.enabled:=true;
	BitBtn20.enabled:=true;
	edit14.enabled:=true;
	edit15.enabled:=true;
	edit16.enabled:=true;
	edit17.enabled:=true;
	edit18.enabled:=true;
	edit19.enabled:=true;
	edit20.enabled:=true;
	edit21.enabled:=true;
	edit22.enabled:=true;
	edit23.enabled:=true;
 	end;

	end;


procedure TForm11.FormCreate(Sender: TObject);
begin
DoubleBuffered:=true;
end;

procedure TForm11.N2Click(Sender: TObject);
begin
 N2.checked:=true;
 N3.Checked:=false;
  if Form11.ComboBox1.text = 'Количество заданий' then // gotovo
  begin
    Form11.Edit8.text := ' ';
    Form11.Edit9.text := ' ';
    Form11.Edit10.text := ' ';
    Form11.Edit11.text := ' ';
    Form11.Edit12.text := ' ';
    Form11.Edit3.text := ' ';
    Form11.Edit4.text := ' ';
    Form11.Edit5.text := ' ';
    Form11.Edit6.text := ' ';
    Form11.Edit7.text := ' ';

    Form11.Label13.enabled := false;
    Form11.Label14.enabled := false;
    Form11.Label15.enabled := false;
    Form11.Label16.enabled := false;
    Form11.Label17.enabled := false;
    Form11.Label8.enabled := false;
    Form11.Label9.enabled := false;
    Form11.Label10.enabled := false;
    Form11.Label11.enabled := false;
    Form11.Label12.enabled := false;
    Form11.Label2.enabled := false;
    Form11.Label3.enabled := false;
    Form11.Label4.enabled := false;
    Form11.Label5.enabled := false;
    Form11.Label6.enabled := false;
    Form11.Label7.enabled := false;
    Form11.BitBtn1.enabled := false;
    Form11.BitBtn2.enabled := false;
    Form11.BitBtn3.enabled := false;
    Form11.BitBtn4.enabled := false;
    Form11.BitBtn5.enabled := false;
    Form11.BitBtn6.enabled := false;
    Form11.BitBtn7.enabled := false;
    Form11.BitBtn8.enabled := false;
    Form11.BitBtn9.enabled := false;
    Form11.BitBtn10.enabled := false;
    Form11.Edit8.enabled := false;
    Form11.Edit9.enabled := false;
    Form11.Edit10.enabled := false;
    Form11.Edit11.enabled := false;
    Form11.Edit12.enabled := false;
    Form11.Edit3.enabled := false;
    Form11.Edit4.enabled := false;
    Form11.Edit5.enabled := false;
    Form11.Edit6.enabled := false;
    Form11.Edit7.enabled := false;

    Form11.Label13.visible := true;
    Form11.Label14.visible := true;
    Form11.Label15.visible := true;
    Form11.Label16.visible := true;
    Form11.Label17.visible := true;
    Form11.Label8.visible := true;
    Form11.Label9.visible := true;
    Form11.Label10.visible := true;
    Form11.Label11.visible := true;
    Form11.Label12.visible := true;
    Form11.Label2.visible := true;
    Form11.Label3.visible := true;
    Form11.Label4.visible := true;
    Form11.Label5.visible := true;
    Form11.Label6.visible := true;
    Form11.Label7.visible := true;
    Form11.BitBtn1.visible := true;
    Form11.BitBtn2.visible := true;
    Form11.BitBtn3.visible := true;
    Form11.BitBtn4.visible := true;
    Form11.BitBtn5.visible := true;
    Form11.BitBtn6.visible := true;
    Form11.BitBtn7.visible := true;
    Form11.BitBtn8.visible := true;
    Form11.BitBtn9.visible := true;
    Form11.BitBtn10.visible := true;
    Form11.Edit8.visible := true;
    Form11.Edit9.visible := true;
    Form11.Edit10.visible := true;
    Form11.Edit11.visible := true;
    Form11.Edit12.visible := true;
    Form11.Edit3.visible := true;
    Form11.Edit4.visible := true;
    Form11.Edit5.visible := true;
    Form11.Edit6.visible := true;
    Form11.Edit7.visible := true;

  end;
  Label1.Caption := '1';
  test.visible := true;
  book.visible := false;
  Form11.BitBtn1.Kind := bkAbort;
  Form11.BitBtn1.Caption := 'Не загружено';

  Form11.BitBtn2.Kind := bkAbort;
  Form11.BitBtn2.Caption := 'Не загружено';

  Form11.BitBtn3.Kind := bkAbort;
  Form11.BitBtn3.Caption := 'Не загружено';

  Form11.BitBtn4.Kind := bkAbort;
  Form11.BitBtn4.Caption := 'Не загружено';

  Form11.BitBtn5.Kind := bkAbort;
  Form11.BitBtn5.Caption := 'Не загружено';

  Form11.BitBtn6.Kind := bkAbort;
  Form11.BitBtn6.Caption := 'Не загружено';

  Form11.BitBtn7.Kind := bkAbort;
  Form11.BitBtn7.Caption := 'Не загружено';

  Form11.BitBtn8.Kind := bkAbort;
  Form11.BitBtn8.Caption := 'Не загружено';

  Form11.BitBtn9.Kind := bkAbort;
  Form11.BitBtn9.Caption := 'Не загружено';

  Form11.BitBtn10.Kind := bkAbort;
  Form11.BitBtn10.Caption := 'Не загружено';

end;

procedure TForm11.N3Click(Sender: TObject);
begin
N3.Checked:=true;
N2.Checked:=false;
  Label1.Caption := '0';
  test.visible := false;
  book.visible := true;
end;

procedure TForm11.N5Click(Sender: TObject);
var
  nume: string;
  ball,kol:integer;
  gl_point:real;
begin
   if (edit1.Text <> '') and (edit2.Text <> '') and (edit3.Text <> '') and
   (edit4.Text <> '') and (edit5.Text <> '') and (edit6.Text <> '') and
   (edit7.Text <> '') and (edit8.Text <> '') and (edit9.Text <> '') and
   (edit10.Text <> '') and (edit11.Text <> '') and (edit12.Text <> '') then
        begin
  if Label1.Caption = '1' then    //тест
  begin

    Form11.BitBtn1.Kind := bkAbort;
    Form11.BitBtn1.Caption := 'Не загружено';

    Form11.BitBtn2.Kind := bkAbort;
    Form11.BitBtn2.Caption := 'Не загружено';

    Form11.BitBtn3.Kind := bkAbort;
    Form11.BitBtn3.Caption := 'Не загружено';

    Form11.BitBtn4.Kind := bkAbort;
    Form11.BitBtn4.Caption := 'Не загружено';

    Form11.BitBtn5.Kind := bkAbort;
    Form11.BitBtn5.Caption := 'Не загружено';

    Form11.BitBtn6.Kind := bkAbort;
    Form11.BitBtn6.Caption := 'Не загружено';

    Form11.BitBtn7.Kind := bkAbort;
    Form11.BitBtn7.Caption := 'Не загружено';

    Form11.BitBtn8.Kind := bkAbort;
    Form11.BitBtn8.Caption := 'Не загружено';

    Form11.BitBtn9.Kind := bkAbort;
    Form11.BitBtn9.Caption := 'Не загружено';

    Form11.BitBtn10.Kind := bkAbort;
    Form11.BitBtn10.Caption := 'Не загружено';

    ADOTable2.insert;
   // ShowMessage('Начало'); // times
    ADOTable2.FieldByName('time').value := strtoint(Edit1.text);
    ADOTable2.FieldByName('name').value := Edit2.text;
    ADOTable2.FieldByName('kol').value := strtoint(ComboBox1.text);

    ADOTable2.Post;
    ADOTable2.Last;
    nume := ADOTable2.FieldByName('Код').AsString;

   // ShowMessage('номер');
  //  ShowMessage(nume);

    ADOTable3.insert;
    ADOTable3.FieldByName('num').value := strtoint(nume);
  //  ShowMessage(ADOTable3.FieldByName('num').AsString);
    ADOTable3.FieldByName('z1').value := Edit8.text;
  //  ShowMessage('пронесло');
    ADOTable3.FieldByName('z2').value := Edit9.text;
    ADOTable3.FieldByName('z3').value := Edit10.text;
  //  ShowMessage('пронесло');
    ADOTable3.FieldByName('z4').value := Edit11.text;
    ADOTable3.FieldByName('z5').value := Edit12.text;
    ADOTable3.FieldByName('z6').value := Edit3.text;
  //  ShowMessage('пронесло');
    ADOTable3.FieldByName('z7').value := Edit4.text;
    ADOTable3.FieldByName('z8').value := Edit5.text;
    ADOTable3.FieldByName('z9').value := Edit6.text;
  //  ShowMessage('пронесло');
    ADOTable3.FieldByName('z10').value := Edit7.text;
    ADOTable3.Post;

    ADOTable1.insert;

    if ComboBox1.text = '1' then
    begin
      DBImage6.Picture.LoadFromFile(f);
      DBImage6.Update();
    end;

    if ComboBox1.text = '2' then
    begin
      DBImage6.Picture.LoadFromFile(f);
      DBImage6.Update();

      DBImage7.Picture.LoadFromFile(f1);
      DBImage7.Update();
    end;

    if ComboBox1.text = '3' then
    begin
      DBImage6.Picture.LoadFromFile(f);
      DBImage6.Update();

      DBImage7.Picture.LoadFromFile(f1);
      DBImage7.Update();

      DBImage8.Picture.LoadFromFile(f2);
      DBImage8.Update();

    end;

    if ComboBox1.text = '4' then
    begin
      DBImage6.Picture.LoadFromFile(f);
      DBImage6.Update();

      DBImage7.Picture.LoadFromFile(f1);
      DBImage7.Update();

      DBImage8.Picture.LoadFromFile(f2);
      DBImage8.Update();

      DBImage9.Picture.LoadFromFile(f3);
      DBImage9.Update();

    end;

    if ComboBox1.text = '5' then
    begin
      DBImage6.Picture.LoadFromFile(f);
      DBImage6.Update();

      DBImage7.Picture.LoadFromFile(f1);
      DBImage7.Update();

      DBImage8.Picture.LoadFromFile(f2);
      DBImage8.Update();

      DBImage9.Picture.LoadFromFile(f3);
      DBImage9.Update();

      DBImage10.Picture.LoadFromFile(f4);
      DBImage10.Update();

    end;

    if ComboBox1.text = '6' then
    begin
      DBImage6.Picture.LoadFromFile(f);
      DBImage6.Update();

      DBImage7.Picture.LoadFromFile(f1);
      DBImage7.Update();

      DBImage8.Picture.LoadFromFile(f2);
      DBImage8.Update();

      DBImage1.Picture.LoadFromFile(f2);
      DBImage1.Update();

      DBImage9.Picture.LoadFromFile(f3);
      DBImage9.Update();

      DBImage10.Picture.LoadFromFile(f4);
      DBImage10.Update();

    end;

    if ComboBox1.text = '7' then
    begin
      DBImage6.Picture.LoadFromFile(f);
      DBImage6.Update();

      DBImage7.Picture.LoadFromFile(f1);
      DBImage7.Update();

      DBImage8.Picture.LoadFromFile(f2);
      DBImage8.Update();

      DBImage9.Picture.LoadFromFile(f3);
      DBImage9.Update();

      DBImage10.Picture.LoadFromFile(f4);
      DBImage10.Update();

      DBImage1.Picture.LoadFromFile(f5);
      DBImage1.Update();

      DBImage2.Picture.LoadFromFile(f6);
      DBImage2.Update();

    end;

    if ComboBox1.text = '8' then
    begin
      DBImage6.Picture.LoadFromFile(f);
      DBImage6.Update();

      DBImage7.Picture.LoadFromFile(f1);
      DBImage7.Update();

      DBImage8.Picture.LoadFromFile(f2);
      DBImage8.Update();

      DBImage9.Picture.LoadFromFile(f3);
      DBImage9.Update();

      DBImage10.Picture.LoadFromFile(f4);
      DBImage10.Update();

      DBImage1.Picture.LoadFromFile(f5);
      DBImage1.Update();

      DBImage2.Picture.LoadFromFile(f6);
      DBImage2.Update();

      DBImage3.Picture.LoadFromFile(f7);
      DBImage3.Update();

    end;

    if ComboBox1.text = '9' then
    begin
      DBImage6.Picture.LoadFromFile(f);
      DBImage6.Update();

      DBImage7.Picture.LoadFromFile(f1);
      DBImage7.Update();

      DBImage8.Picture.LoadFromFile(f2);
      DBImage8.Update();


      DBImage9.Picture.LoadFromFile(f3);
      DBImage9.Update();

      DBImage10.Picture.LoadFromFile(f4);
      DBImage10.Update();

      DBImage1.Picture.LoadFromFile(f5);
      DBImage1.Update();

      DBImage2.Picture.LoadFromFile(f6);
      DBImage2.Update();

      DBImage3.Picture.LoadFromFile(f7);
      DBImage3.Update();

      DBImage4.Picture.LoadFromFile(f8);
      DBImage4.Update();

    end;

    if ComboBox1.text = '10' then
    begin
      DBImage6.Picture.LoadFromFile(f);
      DBImage6.Update();

      DBImage7.Picture.LoadFromFile(f1);
      DBImage7.Update();

      DBImage8.Picture.LoadFromFile(f2);
      DBImage8.Update();


      DBImage9.Picture.LoadFromFile(f3);
      DBImage9.Update();

      DBImage10.Picture.LoadFromFile(f4);
      DBImage10.Update();

      DBImage1.Picture.LoadFromFile(f5);
      DBImage1.Update();

      DBImage2.Picture.LoadFromFile(f6);
      DBImage2.Update();

      DBImage3.Picture.LoadFromFile(f7);
      DBImage3.Update();

      DBImage4.Picture.LoadFromFile(f8);
      DBImage4.Update();

      DBImage5.Picture.LoadFromFile(f9);
      DBImage5.Update();

    end;

    // ADOTable1.edit;
    // adOTable1.Last;
    //ShowMessage('номер');
    ADOTable1.FieldByName('num').value := strtoint(nume);
    //ShowMessage(ADOTable1.FieldByName('num').AsString);
    //ShowMessage(f);
    ADOTable1.Post;
    //ShowMessage(ADOTable1.FieldByName('zadanie1').AsString);


    ball:=ADOTable6.FieldByName('point').AsInteger;
    kol:=ADOTable2.RecordCount;
    gl_point:=(ball*10)/kol;


    MessageBox(0, 'Тест добавлен', 'Внимание', MB_OK);
  end;
  end;


    if (edit13.Text <> '') and (edit14.Text <> '') and (edit15.Text <> '') and
   (edit16.Text <> '') and (edit17.Text <> '') and (edit18.Text <> '') and
   (edit19.Text <> '') and (edit20.Text <> '') and (edit21.Text <> '') and
   (edit22.Text <> '') and (edit23.Text <> '') then
   begin
  if Label1.Caption = '0' then // раздел
    Form11.BitBtn11.Kind := bkAbort;
    Form11.BitBtn11.Caption := 'Не загружено';

    Form11.BitBtn12.Kind := bkAbort;
    Form11.BitBtn12.Caption := 'Не загружено';

    Form11.BitBtn13.Kind := bkAbort;
    Form11.BitBtn13.Caption := 'Не загружено';

    Form11.BitBtn14.Kind := bkAbort;
    Form11.BitBtn14.Caption := 'Не загружено';

    Form11.BitBtn15.Kind := bkAbort;
    Form11.BitBtn15.Caption := 'Не загружено';

    Form11.BitBtn16.Kind := bkAbort;
    Form11.BitBtn16.Caption := 'Не загружено';

    Form11.BitBtn17.Kind := bkAbort;
    Form11.BitBtn17.Caption := 'Не загружено';

    Form11.BitBtn18.Kind := bkAbort;
    Form11.BitBtn18.Caption := 'Не загружено';

    Form11.BitBtn19.Kind := bkAbort;
    Form11.BitBtn19.Caption := 'Не загружено';

    Form11.BitBtn20.Kind := bkAbort;
    Form11.BitBtn20.Caption := 'Не загружено';

    ADOTable5.insert;
   // ShowMessage('Начало'); // times
    ADOTable5.FieldByName('raz1').value := edit14.Text;
    ADOTable5.FieldByName('raz2').value := edit15.Text;
    ADOTable5.FieldByName('raz3').value := edit16.Text;
    ADOTable5.FieldByName('raz4').value := edit17.Text;
    ADOTable5.FieldByName('raz5').value := edit18.Text;
    ADOTable5.FieldByName('raz6').value := edit19.Text;
    ADOTable5.FieldByName('raz7').value := edit20.Text;
    ADOTable5.FieldByName('raz8').value := edit21.Text;
    ADOTable5.FieldByName('raz9').value := Edit22.text;
    ADOTable5.FieldByName('raz10').value := edit23.Text;
    ADOTable5.FieldByName('kol').value := ComboBox2.Text;
    ADOTable5.FieldByName('name').value := edit13.Text;

    ADOTable5.Post;
    ADOTable5.Last;
    nume := ADOTable5.FieldByName('Код').AsString;

    //ShowMessage('номер');
    //ShowMessage(nume);

    ADOTable4.insert;

    //ShowMessage('+');
    if ComboBox2.text = '1' then
    begin
      DBImage11.Picture.LoadFromFile(f);
      DBImage11.Update();
    end;

    if ComboBox2.text = '2' then
    begin
      DBImage11.Picture.LoadFromFile(f);
      DBImage11.Update();
      //ShowMessage(adotable4.FieldByName('pic1').AsString);
      DBImage12.Picture.LoadFromFile(f1);
      DBImage12.Update();
    end;

    if ComboBox2.text = '3' then
    begin
      DBImage11.Picture.LoadFromFile(f);
      DBImage11.Update();

      DBImage12.Picture.LoadFromFile(f1);
      DBImage12.Update();

      DBImage13.Picture.LoadFromFile(f2);
      DBImage13.Update();

    end;

    if ComboBox2.text = '4' then
    begin
      DBImage11.Picture.LoadFromFile(f);
      DBImage11.Update();

      DBImage12.Picture.LoadFromFile(f1);
      DBImage12.Update();

      DBImage13.Picture.LoadFromFile(f2);
      DBImage13.Update();

      DBImage14.Picture.LoadFromFile(f3);
      DBImage14.Update();

    end;

    if ComboBox2.text = '5' then
    begin
      DBImage11.Picture.LoadFromFile(f);
      DBImage11.Update();

      DBImage12.Picture.LoadFromFile(f1);
      DBImage12.Update();

      DBImage13.Picture.LoadFromFile(f2);
      DBImage13.Update();

      DBImage14.Picture.LoadFromFile(f3);
      DBImage14.Update();

      DBImage15.Picture.LoadFromFile(f4);
      DBImage15.Update();


    end;

    if ComboBox2.text = '6' then
    begin
      DBImage11.Picture.LoadFromFile(f);
      DBImage11.Update();

      DBImage12.Picture.LoadFromFile(f1);
      DBImage12.Update();

      DBImage13.Picture.LoadFromFile(f2);
      DBImage13.Update();

      DBImage14.Picture.LoadFromFile(f3);
      DBImage14.Update();

      DBImage15.Picture.LoadFromFile(f4);
      DBImage15.Update();

      DBImage16.Picture.LoadFromFile(f5);
      DBImage16.Update();

    end;

    if ComboBox2.text = '7' then
    begin
      DBImage11.Picture.LoadFromFile(f);
      DBImage11.Update();

      DBImage12.Picture.LoadFromFile(f1);
      DBImage12.Update();

      DBImage13.Picture.LoadFromFile(f2);
      DBImage13.Update();

      DBImage14.Picture.LoadFromFile(f3);
      DBImage14.Update();

      DBImage15.Picture.LoadFromFile(f4);
      DBImage15.Update();

      DBImage16.Picture.LoadFromFile(f5);
      DBImage16.Update();

      DBImage17.Picture.LoadFromFile(f6);
      DBImage17.Update();


    end;

    if ComboBox2.text = '8' then
    begin
      DBImage11.Picture.LoadFromFile(f);
      DBImage11.Update();

      DBImage12.Picture.LoadFromFile(f1);
      DBImage12.Update();

      DBImage13.Picture.LoadFromFile(f2);
      DBImage13.Update();

      DBImage14.Picture.LoadFromFile(f3);
      DBImage14.Update();

      DBImage15.Picture.LoadFromFile(f4);
      DBImage15.Update();

      DBImage16.Picture.LoadFromFile(f5);
      DBImage16.Update();

      DBImage17.Picture.LoadFromFile(f6);
      DBImage17.Update();

      DBImage18.Picture.LoadFromFile(f7);
      DBImage18.Update();



    end;

    if ComboBox2.text = '9' then
    begin
      DBImage11.Picture.LoadFromFile(f);
      DBImage11.Update();

      DBImage12.Picture.LoadFromFile(f1);
      DBImage12.Update();

      DBImage13.Picture.LoadFromFile(f2);
      DBImage13.Update();

      DBImage14.Picture.LoadFromFile(f3);
      DBImage14.Update();

      DBImage15.Picture.LoadFromFile(f4);
      DBImage15.Update();

      DBImage16.Picture.LoadFromFile(f5);
      DBImage16.Update();

      DBImage17.Picture.LoadFromFile(f6);
      DBImage17.Update();

      DBImage18.Picture.LoadFromFile(f7);
      DBImage18.Update();

      DBImage19.Picture.LoadFromFile(f8);
      DBImage19.Update();

    end;

    if ComboBox2.text = '10' then
    begin

      DBImage11.Picture.LoadFromFile(f);
      DBImage11.Update();

      DBImage12.Picture.LoadFromFile(f1);
      DBImage12.Update();

      DBImage13.Picture.LoadFromFile(f2);
      DBImage13.Update();

      DBImage14.Picture.LoadFromFile(f3);
      DBImage14.Update();

      DBImage15.Picture.LoadFromFile(f4);
      DBImage15.Update();

      DBImage16.Picture.LoadFromFile(f5);
      DBImage16.Update();

      DBImage17.Picture.LoadFromFile(f6);
      DBImage17.Update();

      DBImage18.Picture.LoadFromFile(f7);
      DBImage18.Update();

      DBImage19.Picture.LoadFromFile(f8);
      DBImage19.Update();

      DBImage20.Picture.LoadFromFile(f9);
      DBImage20.Update();

    end;


   // ShowMessage('+');
    ADOTable4.FieldByName('num').value :=nume;
    adotable4.Post;
  //   ShowMessage('+');
   end;
  edit1.Text:='';
  edit2.Text:='';
  edit3.Text:='';
  edit4.Text:='';
  edit5.Text:='';
  edit6.Text:='';
  edit7.Text:='';
  edit8.Text:='';
  edit9.Text:='';
  edit10.Text:='';
  edit11.Text:='';
  edit12.Text:='';
  edit13.Text:='';
  edit14.Text:='';
  edit15.Text:='';
  edit16.Text:='';
  edit17.Text:='';
  edit18.Text:='';
  edit19.Text:='';
  edit20.Text:='';
  edit21.Text:='';
  edit22.Text:='';
  edit23.Text:='';

  f:='';
  f1:='';
  f2:='';
  f3:='';
  f4:='';
  f5:='';
  f6:='';
  f7:='';
  f8:='';
  f9:='';
end;

procedure TForm11.N7Click(Sender: TObject);
begin
  form10.Show;
end;

procedure TForm11.N8Click(Sender: TObject);
begin
  Form11.Close;
end;




end.

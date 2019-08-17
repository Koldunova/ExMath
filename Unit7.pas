 unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, jpeg, ExtCtrls, Data.DB, Data.Win.ADODB,
  Vcl.DBCtrls, Vcl.Imaging.pngimage;

type

  TForm7 = class(TForm)
    Image: TImage;
    Image5: TImage;
    Label1: TLabel;
    Image9: TImage;
    DBImage2: TDBImage;
    DBImage3: TDBImage;
    DBImage4: TDBImage;
    DBImage5: TDBImage;
    DBImage6: TDBImage;
    DBImage7: TDBImage;
    DBImage8: TDBImage;
    DBImage9: TDBImage;
    DBImage10: TDBImage;
    DBImage1: TDBImage;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    Edit1: TEdit;
    Label3: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    ADOTable2: TADOTable;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Timer1: TTimer;
    Image1: TImage;
    Label11: TLabel;
    procedure Image9Click(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;
implementation
uses
unit13,unit1,unit6;

{$R *.dfm}

procedure TForm7.Edit1Click(Sender: TObject);
begin
Edit1.Clear;
end;

procedure TForm7.FormCreate(Sender: TObject);
begin
DoubleBuffered:=true;
end;

procedure TForm7.Image1Click(Sender: TObject);
var
flag,tr,t:integer;
A:REAL;
hour,z1,z2,z3,z4,z5,z6,z7,z8,z9,z10:string;
begin
if label4.caption='1'then
				begin
					if label6.caption='1' then
						begin
							z1:='Ответ не дан';
              form13.ListBox1.items.add(z1);
						end;
					if label6.caption='2' then
						begin
							z1:='Ответ не дан';
							z2:='Ответ не дан';
              form13.ListBox1.items.add(z1);
              form13.ListBox1.items.add(z2);
						end;
					if label6.caption='3' then
						begin
							z1:='Ответ не дан';
							z2:='Ответ не дан';
							z3:='Ответ не дан';
              form13.ListBox1.items.add(z1);
              form13.ListBox1.items.add(z2);
               form13.ListBox1.items.add(z3);
						end;
					if label6.caption='4' then
						begin
							z1:='Ответ не дан';
							z2:='Ответ не дан';
							z3:='Ответ не дан';
							z4:='Ответ не дан';
              form13.ListBox1.items.add(z1);
              form13.ListBox1.items.add(z2);
               form13.ListBox1.items.add(z3);
              form13.ListBox1.items.add(z4);
						end;
					if label6.caption='5' then
						begin
							z1:='Ответ не дан';
							z2:='Ответ не дан';
							z3:='Ответ не дан';
							z4:='Ответ не дан';
							z5:='Ответ не дан';
              form13.ListBox1.items.add(z1);
              form13.ListBox1.items.add(z2);
               form13.ListBox1.items.add(z3);
              form13.ListBox1.items.add(z4);
            form13.ListBox1.items.add(z5);
						end;
					if label6.caption='6' then
						begin
							z1:='Ответ не дан';
							z2:='Ответ не дан';
							z3:='Ответ не дан';
							z4:='Ответ не дан';
							z5:='Ответ не дан';
							z6:='Ответ не дан';
              form13.ListBox1.items.add(z1);
              form13.ListBox1.items.add(z2);
               form13.ListBox1.items.add(z3);
              form13.ListBox1.items.add(z4);
            form13.ListBox1.items.add(z5);
             form13.ListBox1.items.add(z6);
						end;
					if label6.caption='7' then
						begin
							z1:='Ответ не дан';
							z2:='Ответ не дан';
							z3:='Ответ не дан';
							z4:='Ответ не дан';
							z5:='Ответ не дан';
							z6:='Ответ не дан';
							z7:='Ответ не дан';
              form13.ListBox1.items.add(z1);
              form13.ListBox1.items.add(z2);
               form13.ListBox1.items.add(z3);
              form13.ListBox1.items.add(z4);
            form13.ListBox1.items.add(z5);
             form13.ListBox1.items.add(z6);
             form13.ListBox1.items.add(z7);
						end;
					if label6.caption='8' then
						begin
							z1:='Ответ не дан';
							z2:='Ответ не дан';
							z3:='Ответ не дан';
							z4:='Ответ не дан';
							z5:='Ответ не дан';
							z6:='Ответ не дан';
							z7:='Ответ не дан';
							z8:='Ответ не дан';
              form13.ListBox1.items.add(z1);
              form13.ListBox1.items.add(z2);
               form13.ListBox1.items.add(z3);
              form13.ListBox1.items.add(z4);
            form13.ListBox1.items.add(z5);
             form13.ListBox1.items.add(z6);
             form13.ListBox1.items.add(z7);
             form13.ListBox1.items.add(z8);
						end;
					if label6.caption='9' then
						begin
							z1:='Ответ не дан';
							z2:='Ответ не дан';
							z3:='Ответ не дан';
							z4:='Ответ не дан';
							z5:='Ответ не дан';
							z6:='Ответ не дан';
							z7:='Ответ не дан';
							z8:='Ответ не дан';
							z9:='Ответ не дан';
              form13.ListBox1.items.add(z1);
              form13.ListBox1.items.add(z2);
               form13.ListBox1.items.add(z3);
              form13.ListBox1.items.add(z4);
            form13.ListBox1.items.add(z5);
             form13.ListBox1.items.add(z6);
             form13.ListBox1.items.add(z7);
             form13.ListBox1.items.add(z8);
             form13.ListBox1.items.add(z9);
						end;
					if label6.caption='10' then
						begin
							z1:='Ответ не дан';
							z2:='Ответ не дан';
							z3:='Ответ не дан';
							z4:='Ответ не дан';
							z5:='Ответ не дан';
							z6:='Ответ не дан';
							z7:='Ответ не дан';
							z8:='Ответ не дан';
							z9:='Ответ не дан';
							z10:='Ответ не дан';
               form13.ListBox1.items.add(z1);
              form13.ListBox1.items.add(z2);
               form13.ListBox1.items.add(z3);
              form13.ListBox1.items.add(z4);
            form13.ListBox1.items.add(z5);
             form13.ListBox1.items.add(z6);
             form13.ListBox1.items.add(z7);
             form13.ListBox1.items.add(z8);
             form13.ListBox1.items.add(z9);
             form13.ListBox1.items.add(z10);

						end;
				end;

			if label4.caption='2'then
				begin
				if label6.caption='2' then
						begin
							z2:='Ответ не дан';
						end;
					if label6.caption='3' then
						begin
							z2:='Ответ не дан';
							z3:='Ответ не дан';
						end;
					if label6.caption='4' then
						begin
							z2:='Ответ не дан';
							z3:='Ответ не дан';
							z4:='Ответ не дан';
						end;
					if label6.caption='5' then
						begin
							z2:='Ответ не дан';
							z3:='Ответ не дан';
							z4:='Ответ не дан';
							z5:='Ответ не дан';
						end;
					if label6.caption='6' then
						begin
							z2:='Ответ не дан';
							z3:='Ответ не дан';
							z4:='Ответ не дан';
							z5:='Ответ не дан';
							z6:='Ответ не дан';
						end;
					if label6.caption='7' then
						begin
							z2:='Ответ не дан';
							z3:='Ответ не дан';
							z4:='Ответ не дан';
							z5:='Ответ не дан';
							z6:='Ответ не дан';
							z7:='Ответ не дан';
						end;
					if label6.caption='8' then
						begin
							z2:='Ответ не дан';
							z3:='Ответ не дан';
							z4:='Ответ не дан';
							z5:='Ответ не дан';
							z6:='Ответ не дан';
							z7:='Ответ не дан';
							z8:='Ответ не дан';
						end;
					if label6.caption='9' then
						begin
							z2:='Ответ не дан';
							z3:='Ответ не дан';
							z4:='Ответ не дан';
							z5:='Ответ не дан';
							z6:='Ответ не дан';
							z7:='Ответ не дан';
							z8:='Ответ не дан';
							z9:='Ответ не дан';
						end;
					if label6.caption='10' then
						begin
							z2:='Ответ не дан';
							z3:='Ответ не дан';
							z4:='Ответ не дан';
							z5:='Ответ не дан';
							z6:='Ответ не дан';
							z7:='Ответ не дан';
							z8:='Ответ не дан';
							z9:='Ответ не дан';
							z10:='Ответ не дан';
						end;
				end;

			if label4.caption='3'then
				begin
					if label6.caption='3' then
						begin
							z3:='Ответ не дан';
              form13.ListBox1.items.add(z3);
						end;
					if label6.caption='4' then
						begin
							z3:='Ответ не дан';
							z4:='Ответ не дан';
              form13.ListBox1.items.add(z3);
              form13.ListBox1.items.add(z4);
						end;
					if label6.caption='5' then
						begin
							z3:='Ответ не дан';
							z4:='Ответ не дан';
							z5:='Ответ не дан';
              form13.ListBox1.items.add(z3);
              form13.ListBox1.items.add(z4);
            form13.ListBox1.items.add(z5);
						end;
					if label6.caption='6' then
						begin
							z3:='Ответ не дан';
							z4:='Ответ не дан';
							z5:='Ответ не дан';
							z6:='Ответ не дан';
              form13.ListBox1.items.add(z3);
              form13.ListBox1.items.add(z4);
            form13.ListBox1.items.add(z5);
             form13.ListBox1.items.add(z6);
						end;
					if label6.caption='7' then
						begin
							z3:='Ответ не дан';
							z4:='Ответ не дан';
							z5:='Ответ не дан';
							z6:='Ответ не дан';
							z7:='Ответ не дан';
              form13.ListBox1.items.add(z3);
              form13.ListBox1.items.add(z4);
            form13.ListBox1.items.add(z5);
             form13.ListBox1.items.add(z6);
             form13.ListBox1.items.add(z7);
						end;
					if label6.caption='8' then
						begin
							z3:='Ответ не дан';
							z4:='Ответ не дан';
							z5:='Ответ не дан';
							z6:='Ответ не дан';
							z7:='Ответ не дан';
							z8:='Ответ не дан';
               form13.ListBox1.items.add(z3);
              form13.ListBox1.items.add(z4);
            form13.ListBox1.items.add(z5);
             form13.ListBox1.items.add(z6);
             form13.ListBox1.items.add(z7);
             form13.ListBox1.items.add(z8);
						end;
					if label6.caption='9' then
						begin
							z3:='Ответ не дан';
							z4:='Ответ не дан';
							z5:='Ответ не дан';
							z6:='Ответ не дан';
							z7:='Ответ не дан';
							z8:='Ответ не дан';
							z9:='Ответ не дан';
              form13.ListBox1.items.add(z4);
            form13.ListBox1.items.add(z5);
             form13.ListBox1.items.add(z6);
             form13.ListBox1.items.add(z7);
             form13.ListBox1.items.add(z8);
             form13.ListBox1.items.add(z9);
						end;
					if label6.caption='10' then
						begin
							z3:='Ответ не дан';
							z4:='Ответ не дан';
							z5:='Ответ не дан';
							z6:='Ответ не дан';
							z7:='Ответ не дан';
							z8:='Ответ не дан';
							z9:='Ответ не дан';
							z10:='Ответ не дан';
               form13.ListBox1.items.add(z3);
              form13.ListBox1.items.add(z4);
            form13.ListBox1.items.add(z5);
             form13.ListBox1.items.add(z6);
             form13.ListBox1.items.add(z7);
             form13.ListBox1.items.add(z8);
             form13.ListBox1.items.add(z9);
             form13.ListBox1.items.add(z10);
						end;
				end;

			if label4.caption='4'then
				begin
					if label6.caption='4' then
						begin
							z4:='Ответ не дан';
              form13.ListBox1.items.add(z4);
						end;
					if label6.caption='5' then
						begin
							z4:='Ответ не дан';
							z5:='Ответ не дан';
              form13.ListBox1.items.add(z4);
            form13.ListBox1.items.add(z5);
						end;
					if label6.caption='6' then
						begin
							z4:='Ответ не дан';
							z5:='Ответ не дан';
							z6:='Ответ не дан';
              form13.ListBox1.items.add(z4);
            form13.ListBox1.items.add(z5);
             form13.ListBox1.items.add(z6);
						end;
					if label6.caption='7' then
						begin
							z4:='Ответ не дан';
							z5:='Ответ не дан';
							z6:='Ответ не дан';
							z7:='Ответ не дан';
              form13.ListBox1.items.add(z4);
            form13.ListBox1.items.add(z5);
             form13.ListBox1.items.add(z6);
             form13.ListBox1.items.add(z7);
						end;
					if label6.caption='8' then
						begin
							z4:='Ответ не дан';
							z5:='Ответ не дан';
							z6:='Ответ не дан';
							z7:='Ответ не дан';
							z8:='Ответ не дан';
              form13.ListBox1.items.add(z4);
            form13.ListBox1.items.add(z5);
             form13.ListBox1.items.add(z6);
             form13.ListBox1.items.add(z7);
             form13.ListBox1.items.add(z8);
						end;
					if label6.caption='9' then
						begin
							z4:='Ответ не дан';
							z5:='Ответ не дан';
							z6:='Ответ не дан';
							z7:='Ответ не дан';
							z8:='Ответ не дан';
							z9:='Ответ не дан';
              form13.ListBox1.items.add(z4);
            form13.ListBox1.items.add(z5);
             form13.ListBox1.items.add(z6);
             form13.ListBox1.items.add(z7);
             form13.ListBox1.items.add(z8);
             form13.ListBox1.items.add(z9);
						end;
					if label6.caption='10' then
						begin
							z4:='Ответ не дан';
							z5:='Ответ не дан';
							z6:='Ответ не дан';
							z7:='Ответ не дан';
							z8:='Ответ не дан';
							z9:='Ответ не дан';
							z10:='Ответ не дан';

              form13.ListBox1.items.add(z4);
            form13.ListBox1.items.add(z5);
             form13.ListBox1.items.add(z6);
             form13.ListBox1.items.add(z7);
             form13.ListBox1.items.add(z8);
             form13.ListBox1.items.add(z9);
             form13.ListBox1.items.add(z10);
						end;
				end;

			if label4.caption='5'then
				begin
					if label6.caption='5' then
						begin
							z5:='Ответ не дан';
              form13.ListBox1.items.add(z5);
						end;
					if label6.caption='6' then
						begin
							z5:='Ответ не дан';
							z6:='Ответ не дан';
              form13.ListBox1.items.add(z5);
             form13.ListBox1.items.add(z6);
						end;
					if label6.caption='7' then
						begin
							z5:='Ответ не дан';
							z6:='Ответ не дан';
							z7:='Ответ не дан';
              form13.ListBox1.items.add(z5);
             form13.ListBox1.items.add(z6);
             form13.ListBox1.items.add(z7);
						end;
					if label6.caption='8' then
						begin
							z5:='Ответ не дан';
							z6:='Ответ не дан';
							z7:='Ответ не дан';
							z8:='Ответ не дан';
              form13.ListBox1.items.add(z5);
             form13.ListBox1.items.add(z6);
             form13.ListBox1.items.add(z7);
             form13.ListBox1.items.add(z8);
						end;
					if label6.caption='9' then
						begin
							z5:='Ответ не дан';
							z6:='Ответ не дан';
							z7:='Ответ не дан';
							z8:='Ответ не дан';
							z9:='Ответ не дан';

           form13.ListBox1.items.add(z5);
             form13.ListBox1.items.add(z6);
             form13.ListBox1.items.add(z7);
             form13.ListBox1.items.add(z8);
             form13.ListBox1.items.add(z9);
						end;
					if label6.caption='10' then
						begin
							z5:='Ответ не дан';
							z6:='Ответ не дан';
							z7:='Ответ не дан';
							z8:='Ответ не дан';
							z9:='Ответ не дан';
							z10:='Ответ не дан';

            form13.ListBox1.items.add(z5);
             form13.ListBox1.items.add(z6);
             form13.ListBox1.items.add(z7);
             form13.ListBox1.items.add(z8);
             form13.ListBox1.items.add(z9);
             form13.ListBox1.items.add(z10);
						end;
				end;

			if label4.caption='6'then
				begin
					if label6.caption='6' then
						begin
							z6:='Ответ не дан';

             form13.ListBox1.items.add(z6);
						end;
					if label6.caption='7' then
						begin
							z6:='Ответ не дан';
							z7:='Ответ не дан';

             form13.ListBox1.items.add(z6);
             form13.ListBox1.items.add(z7);
						end;
					if label6.caption='8' then
						begin
							z6:='Ответ не дан';
							z7:='Ответ не дан';
							z8:='Ответ не дан';

             form13.ListBox1.items.add(z6);
             form13.ListBox1.items.add(z7);
             form13.ListBox1.items.add(z8);
						end;
					if label6.caption='9' then
						begin
							z6:='Ответ не дан';
							z7:='Ответ не дан';
							z8:='Ответ не дан';
							z9:='Ответ не дан';

             form13.ListBox1.items.add(z6);
             form13.ListBox1.items.add(z7);
             form13.ListBox1.items.add(z8);
             form13.ListBox1.items.add(z9);
						end;
					if label6.caption='10' then
						begin
							z6:='Ответ не дан';
							z7:='Ответ не дан';
							z8:='Ответ не дан';
							z9:='Ответ не дан';
							z10:='Ответ не дан';
             form13.ListBox1.items.add(z6);
             form13.ListBox1.items.add(z7);
             form13.ListBox1.items.add(z8);
             form13.ListBox1.items.add(z9);
             form13.ListBox1.items.add(z10);
						end;
				end;
if label4.caption='7'then
				begin
					if label6.caption='7' then
						begin
							z7:='Ответ не дан';


             form13.ListBox1.items.add(z7);
						end;
					if label6.caption='8' then
						begin
							z7:='Ответ не дан';
							z8:='Ответ не дан';


             form13.ListBox1.items.add(z7);
             form13.ListBox1.items.add(z8);
						end;
					if label6.caption='9' then
						begin
							z7:='Ответ не дан';
							z8:='Ответ не дан';
							z9:='Ответ не дан';


             form13.ListBox1.items.add(z7);
             form13.ListBox1.items.add(z8);
             form13.ListBox1.items.add(z9);
						end;
					if label6.caption='10' then
						begin
							z7:='Ответ не дан';
							z8:='Ответ не дан';
							z9:='Ответ не дан';
							z10:='Ответ не дан';

             form13.ListBox1.items.add(z7);
             form13.ListBox1.items.add(z8);
             form13.ListBox1.items.add(z9);
             form13.ListBox1.items.add(z10);
						end;
				end;

			if label4.caption='8'then
				begin
					if label6.caption='8' then
						begin
							z8:='Ответ не дан';

             form13.ListBox1.items.add(z8);
						end;
					if label6.caption='9' then
						begin
							z8:='Ответ не дан';
							z9:='Ответ не дан';

             form13.ListBox1.items.add(z8);
             form13.ListBox1.items.add(z9);
						end;
					if label6.caption='10' then
						begin
							z8:='Ответ не дан';
							z9:='Ответ не дан';
							z10:='Ответ не дан';

             form13.ListBox1.items.add(z8);
             form13.ListBox1.items.add(z9);
             form13.ListBox1.items.add(z10);
						end;
				end;

			if label4.caption='9'then
				begin
					if label6.caption='9' then
						begin
							z9:='Ответ не дан';

             form13.ListBox1.items.add(z9);
						end;
					if label6.caption='10' then
						begin
							z9:='Ответ не дан';
							z10:='Ответ не дан';

             form13.ListBox1.items.add(z9);
             form13.ListBox1.items.add(z10);
						end;
				end;


			if label4.caption='10'then
				begin
					if label6.caption='10' then
						begin
							z10:='Ответ не дан';
             form13.ListBox1.items.add(z10);
						end;
				end;

If label6.Caption ='1'then
	begin
	z1:=form13.listbox1.items[0];
	end;
If label6.Caption ='2'then
	begin
	z1:=form13.listbox1.items[0];
	z2:=form13.listbox1.items[1];
	end;
If label6.Caption ='3'then
	begin
	z1:=form13.listbox1.items[0];
	z2:=form13.listbox1.items[1];
	z3:=form13.listbox1.items[2];
	end;
If label6.Caption ='4'then
	begin
	z1:=form13.listbox1.items[0];
	z2:=form13.listbox1.items[1];
	z3:=form13.listbox1.items[2];
	z4:=form13.listbox1.items[3];
	end;
If label6.Caption ='5'then
	begin
	z1:=form13.listbox1.items[0];
	z2:=form13.listbox1.items[1];
	z3:=form13.listbox1.items[2];
	z4:=form13.listbox1.items[3];
	z5:=form13.listbox1.items[4];
	end;
If label6.Caption ='6'then
	begin
	z1:=form13.listbox1.items[0];
	z2:=form13.listbox1.items[1];
	z3:=form13.listbox1.items[2];
	z4:=form13.listbox1.items[3];
	z5:=form13.listbox1.items[4];
	z6:=form13.listbox1.items[5];
	end;
If label6.Caption ='7'then
	begin
	z1:=form13.listbox1.items[0];
	z2:=form13.listbox1.items[1];
	z3:=form13.listbox1.items[2];
	z4:=form13.listbox1.items[3];
	z5:=form13.listbox1.items[4];
	z6:=form13.listbox1.items[5];
	z7:=form13.listbox1.items[6];
	end;
If label6.Caption ='8'then
	begin
	z1:=form13.listbox1.items[0];
	z2:=form13.listbox1.items[1];
	z3:=form13.listbox1.items[2];
	z4:=form13.listbox1.items[3];
	z5:=form13.listbox1.items[4];
	z6:=form13.listbox1.items[5];
	z7:=form13.listbox1.items[6];
	z8:=form13.listbox1.items[7];
	end;
If label6.Caption ='9'then
	begin
	z1:=form13.listbox1.items[0];
	z2:=form13.listbox1.items[1];
	z3:=form13.listbox1.items[2];
	z4:=form13.listbox1.items[3];
	z5:=form13.listbox1.items[4];
	z6:=form13.listbox1.items[5];
	z7:=form13.listbox1.items[6];
	z8:=form13.listbox1.items[7];
	z9:=form13.listbox1.items[8];
	end;
If label6.Caption ='10'then
	begin
	z1:=form13.listbox1.items[0];
	z2:=form13.listbox1.items[1];
	z3:=form13.listbox1.items[2];
	z4:=form13.listbox1.items[3];
	z5:=form13.listbox1.items[4];
	z6:=form13.listbox1.items[5];
	z7:=form13.listbox1.items[6];
	z8:=form13.listbox1.items[7];
	z9:=form13.listbox1.items[8];
	z10:=form13.listbox1.items[9];
	end;
//до сюда все хорошо
      timer1.Enabled:=false;
      ADOTable2.First;
      //ShowMessage('сюда все хорошо');

while ADOTable2.FieldByName('num').AsString <> Label8.Caption do
 ADOTable2.Next;

//ShowMessage(ADOTable2.FieldByName('num').AsString);
if ADOTable2.FieldByName('num').AsString=Label8.Caption then
begin
//ShowMessage('сюда все хорошо');
tr:=0;
if label6.Caption = '1' then
begin
  if z1=ADOTable2.Fieldbyname('z1').Asstring then
  inc(tr);
end;
if label6.Caption = '2' then
begin
  if z1=ADOTable2.Fieldbyname('z1').Asstring then
  inc(tr);
  if z2=ADOTable2.Fieldbyname('z2').Asstring then
  inc(tr);
end;
//ShowMessage('сюда все хорошо');
if label6.Caption = '3' then
begin
  if z1=ADOTable2.Fieldbyname('z1').Asstring then
  inc(tr);
  if z2=ADOTable2.Fieldbyname('z2').Asstring then
  inc(tr);
  if z3=ADOTable2.Fieldbyname('z3').Asstring then
  inc(tr);
end;
if label6.Caption = '4' then
begin
  if z1=ADOTable2.Fieldbyname('z1').Asstring then
  inc(tr);
  if z2=ADOTable2.Fieldbyname('z2').Asstring then
  inc(tr);
  if z3=ADOTable2.Fieldbyname('z3').Asstring then
  inc(tr);
  if z4=ADOTable2.Fieldbyname('z4').Asstring then
  inc(tr);
end;
if label6.Caption = '5' then
begin
  if z1=ADOTable2.Fieldbyname('z1').Asstring then
  inc(tr);
  if z2=ADOTable2.Fieldbyname('z2').Asstring then
  inc(tr);
  if z3=ADOTable2.Fieldbyname('z3').Asstring then
  inc(tr);
  if z4=ADOTable2.Fieldbyname('z4').Asstring then
  inc(tr);
  if z5=ADOTable2.Fieldbyname('z5').Asstring then
  inc(tr);
end;
if label6.Caption = '6' then
begin

  if z1=ADOTable2.Fieldbyname('z1').Asstring then
  inc(tr);
  if z2=ADOTable2.Fieldbyname('z2').Asstring then
  inc(tr);
  if z3=ADOTable2.Fieldbyname('z3').Asstring then
  inc(tr);
  if z4=ADOTable2.Fieldbyname('z4').Asstring then
  inc(tr);
  if z5=ADOTable2.Fieldbyname('z5').Asstring then
  inc(tr);
  if z6=ADOTable2.Fieldbyname('z6').Asstring then
  inc(tr);
end;

if label6.Caption = '7' then
begin
  if z1=ADOTable2.Fieldbyname('z1').Asstring then
  inc(tr);
  if z2=ADOTable2.Fieldbyname('z2').Asstring then
  inc(tr);
  if z3=ADOTable2.Fieldbyname('z3').Asstring then
  inc(tr);
  if z4=ADOTable2.Fieldbyname('z4').Asstring then
  inc(tr);
  if z5=ADOTable2.Fieldbyname('z5').Asstring then
  inc(tr);
  if z6=ADOTable2.Fieldbyname('z6').Asstring then
  inc(tr);
  if z7=ADOTable2.Fieldbyname('z7').Asstring then
  inc(tr);
end;
if label6.Caption = '8' then
begin
  if z1=ADOTable2.Fieldbyname('z1').Asstring then
  inc(tr);
  if z2=ADOTable2.Fieldbyname('z2').Asstring then
  inc(tr);
  if z3=ADOTable2.Fieldbyname('z3').Asstring then
  inc(tr);
  if z4=ADOTable2.Fieldbyname('z4').Asstring then
  inc(tr);
  if z5=ADOTable2.Fieldbyname('z5').Asstring then
  inc(tr);
  if z6=ADOTable2.Fieldbyname('z6').Asstring then
  inc(tr);
  if z7=ADOTable2.Fieldbyname('z7').Asstring then
  inc(tr);
  if z8=ADOTable2.Fieldbyname('z8').Asstring then
  inc(tr);
end;
if label6.Caption = '9' then
begin
  if z1=ADOTable2.Fieldbyname('z1').Asstring then
  inc(tr);
  if z2=ADOTable2.Fieldbyname('z2').Asstring then
  inc(tr);
  if z3=ADOTable2.Fieldbyname('z3').Asstring then
  inc(tr);
  if z4=ADOTable2.Fieldbyname('z4').Asstring then
  inc(tr);
  if z5=ADOTable2.Fieldbyname('z5').Asstring then
  inc(tr);
  if z6=ADOTable2.Fieldbyname('z6').Asstring then
  inc(tr);
  if z7=ADOTable2.Fieldbyname('z7').Asstring then
  inc(tr);
  if z8=ADOTable2.Fieldbyname('z8').Asstring then
  inc(tr);
  if z9=ADOTable2.Fieldbyname('z9').Asstring then
  inc(tr);
end;
if label6.Caption = '10' then
begin
if z1=ADOTable2.Fieldbyname('z1').Asstring then
  inc(tr);
  if z2=ADOTable2.Fieldbyname('z2').Asstring then
  inc(tr);
  if z3=ADOTable2.Fieldbyname('z3').Asstring then
  inc(tr);
  if z4=ADOTable2.Fieldbyname('z4').Asstring then
  inc(tr);
  if z5=ADOTable2.Fieldbyname('z5').Asstring then
  inc(tr);
  if z6=ADOTable2.Fieldbyname('z6').Asstring then
  inc(tr);
  if z7=ADOTable2.Fieldbyname('z7').Asstring then
  inc(tr);
  if z8=ADOTable2.Fieldbyname('z8').Asstring then
  inc(tr);
  if z9=ADOTable2.Fieldbyname('z9').Asstring then
  inc(tr);
  if z10=ADOTable2.Fieldbyname('z10').Asstring then
  inc(tr);
end;
//ShowMessage('сюда все хорошо');
TIMER1.Enabled:=FALSE;
t:=strtoint(label6.Caption);
a:= tr/t*10;
form13.label4.caption:=inttostr(tr);
form13.label5.caption:=floattostr(a);

form13.Show;
form7.Close;

end;
end;

procedure TForm7.Image9Click(Sender: TObject);
var
a:real;
i,t,tr,xer:integer;
z1,z2,z3,z4,z5,z6,z7,z8,z9,z10:string;
begin
if strtoint(label4.Caption)<strtoint(label6.Caption) then
  begin
  label4.Caption:=inttostr(strtoint(label4.Caption)+1);
  if strtoint(Label4.Caption)=1 then
      begin
    DBImage1.Visible:=true;
    DBImage2.Visible:=false;
    z1:=Edit1.Text;
    form13.ListBox1.Items.Add(z1);
    end;

  if strtoint(Label4.Caption)=2 then
    begin
    DBImage1.Visible:=false;
    DBImage2.Visible:=true;
    z2:=Edit1.Text;
    form13.ListBox1.Items.Add(z2)  ;
    end;
    if strtoint(Label4.Caption)=3 then
      begin
    DBImage2.Visible:=false;
    DBImage3.Visible:=true;
    z3:=Edit1.Text;
    form13.ListBox1.Items.Add(z3) ;
    end;
    if strtoint(Label4.Caption)=4 then
      begin
    DBImage3.Visible:=false;
    DBImage4.Visible:=true;
    z4:=Edit1.Text;
    form13.ListBox1.Items.Add(z4);
    end;
    if strtoint(Label4.Caption)=5 then
      begin
    DBImage4.Visible:=false;
    DBImage5.Visible:=true;
    z5:=Edit1.Text;
    form13.ListBox1.Items.Add(z5) ;
    end;
    if strtoint(Label4.Caption)=6 then
      begin
    DBImage5.Visible:=false;
    DBImage6.Visible:=true;
    z6:=Edit1.Text;
    form13.ListBox1.Items.Add(z6)  ;
    end;
    if strtoint(Label4.Caption)=7 then
      begin
    DBImage6.Visible:=false;
    DBImage7.Visible:=true;
    z7:=Edit1.Text;
    form13.ListBox1.Items.Add(z7)  ;
    end;
    if strtoint(Label4.Caption)=8 then
      begin
    DBImage7.Visible:=false;
    DBImage8.Visible:=true;
    z8:=Edit1.Text;
    form13.ListBox1.Items.Add(z8)   ;
    end;
    if strtoint(Label4.Caption)=9 then
      begin
    DBImage8.Visible:=false;
    DBImage9.Visible:=true;
    z9:=Edit1.Text;
     form13.ListBox1.Items.Add(z9) ;
    end;
    if strtoint(Label4.Caption)=10 then
      begin
    DBImage9.Visible:=false;
    DBImage10.Visible:=true;
    z10:=Edit1.Text;
     form13.ListBox1.Items.Add(z10) ;
    end;
  //  MessageBox(0, 'Ответ принят', 'Внимание', MB_OK);
    Edit1.Text:='Ваш ответ';
  end
else
  begin
 z10:=Edit1.Text;
     form13.ListBox1.Items.Add(z10) ;

// проверка ответов в lаbel8 номер теста
If label6.Caption ='1'then
	begin
	z1:=form13.listbox1.items[0];
	end;
If label6.Caption ='2'then
	begin
	z1:=form13.listbox1.items[0];
	z2:=form13.listbox1.items[1];
	end;
If label6.Caption ='3'then
	begin
	z1:=form13.listbox1.items[0];
	z2:=form13.listbox1.items[1];
	z3:=form13.listbox1.items[2];
	end;
If label6.Caption ='4'then
	begin
	z1:=form13.listbox1.items[0];
	z2:=form13.listbox1.items[1];
	z3:=form13.listbox1.items[2];
	z4:=form13.listbox1.items[3];
	end;
If label6.Caption ='5'then
	begin
	z1:=form13.listbox1.items[0];
	z2:=form13.listbox1.items[1];
	z3:=form13.listbox1.items[2];
	z4:=form13.listbox1.items[3];
	z5:=form13.listbox1.items[4];
	end;
If label6.Caption ='6'then
	begin
	z1:=form13.listbox1.items[0];
	z2:=form13.listbox1.items[1];
	z3:=form13.listbox1.items[2];
	z4:=form13.listbox1.items[3];
	z5:=form13.listbox1.items[4];
	z6:=form13.listbox1.items[5];
	end;
If label6.Caption ='7'then
	begin
	z1:=form13.listbox1.items[0];
	z2:=form13.listbox1.items[1];
	z3:=form13.listbox1.items[2];
	z4:=form13.listbox1.items[3];
	z5:=form13.listbox1.items[4];
	z6:=form13.listbox1.items[5];
	z7:=form13.listbox1.items[6];
	end;
If label6.Caption ='8'then
	begin
	z1:=form13.listbox1.items[0];
	z2:=form13.listbox1.items[1];
	z3:=form13.listbox1.items[2];
	z4:=form13.listbox1.items[3];
	z5:=form13.listbox1.items[4];
	z6:=form13.listbox1.items[5];
	z7:=form13.listbox1.items[6];
	z8:=form13.listbox1.items[7];
	end;
If label6.Caption ='9'then
	begin
	z1:=form13.listbox1.items[0];
	z2:=form13.listbox1.items[1];
	z3:=form13.listbox1.items[2];
	z4:=form13.listbox1.items[3];
	z5:=form13.listbox1.items[4];
	z6:=form13.listbox1.items[5];
	z7:=form13.listbox1.items[6];
	z8:=form13.listbox1.items[7];
	z9:=form13.listbox1.items[8];
	end;
If label6.Caption ='10'then
	begin
	z1:=form13.listbox1.items[0];
	z2:=form13.listbox1.items[1];
	z3:=form13.listbox1.items[2];
	z4:=form13.listbox1.items[3];
	z5:=form13.listbox1.items[4];
	z6:=form13.listbox1.items[5];
	z7:=form13.listbox1.items[6];
	z8:=form13.listbox1.items[7];
	z9:=form13.listbox1.items[8];
	z10:=form13.listbox1.items[9];
	end;


ADOTable2.First;
if ADOTable2.FieldByName('num').AsString=Label8.Caption then

begin
tr:=0;
if label6.Caption = '1' then
begin
  if z1=ADOTable2.Fieldbyname('z1').Asstring then
  inc(tr);
end;
if label6.Caption = '2' then
begin
  if z1=ADOTable2.Fieldbyname('z1').Asstring then
  inc(tr);
  if z2=ADOTable2.Fieldbyname('z2').Asstring then
  inc(tr);
end;
if label6.Caption = '3' then
begin
  if z1=ADOTable2.Fieldbyname('z1').Asstring then
  inc(tr);
  if z2=ADOTable2.Fieldbyname('z2').Asstring then
  inc(tr);
  if z3=ADOTable2.Fieldbyname('z3').Asstring then
  inc(tr);
end;
if label6.Caption = '4' then
begin
  if z1=ADOTable2.Fieldbyname('z1').Asstring then
  inc(tr);
  if z2=ADOTable2.Fieldbyname('z2').Asstring then
  inc(tr);
  if z3=ADOTable2.Fieldbyname('z3').Asstring then
  inc(tr);
  if z4=ADOTable2.Fieldbyname('z4').Asstring then
  inc(tr);
end;
if label6.Caption = '5' then
begin
  if z1=ADOTable2.Fieldbyname('z1').Asstring then
  inc(tr);
  if z2=ADOTable2.Fieldbyname('z2').Asstring then
  inc(tr);
  if z3=ADOTable2.Fieldbyname('z3').Asstring then
  inc(tr);
  if z4=ADOTable2.Fieldbyname('z4').Asstring then
  inc(tr);
  if z5=ADOTable2.Fieldbyname('z5').Asstring then
  inc(tr);
end;
if label6.Caption = '6' then
begin
  if z1=ADOTable2.Fieldbyname('z1').Asstring then
  inc(tr);
  if z2=ADOTable2.Fieldbyname('z2').Asstring then
  inc(tr);
  if z3=ADOTable2.Fieldbyname('z3').Asstring then
  inc(tr);
  if z4=ADOTable2.Fieldbyname('z4').Asstring then
  inc(tr);
  if z5=ADOTable2.Fieldbyname('z5').Asstring then
  inc(tr);
  if z6=ADOTable2.Fieldbyname('z6').Asstring then
  inc(tr);
end;
if label6.Caption = '7' then
begin
  if z1=ADOTable2.Fieldbyname('z1').Asstring then
  inc(tr);
  if z2=ADOTable2.Fieldbyname('z2').Asstring then
  inc(tr);
  if z3=ADOTable2.Fieldbyname('z3').Asstring then
  inc(tr);
  if z4=ADOTable2.Fieldbyname('z4').Asstring then
  inc(tr);
  if z5=ADOTable2.Fieldbyname('z5').Asstring then
  inc(tr);
  if z6=ADOTable2.Fieldbyname('z6').Asstring then
  inc(tr);
  if z7=ADOTable2.Fieldbyname('z7').Asstring then
  inc(tr);
end;
if label6.Caption = '8' then
begin
  if z1=ADOTable2.Fieldbyname('z1').Asstring then
  inc(tr);
  if z2=ADOTable2.Fieldbyname('z2').Asstring then
  inc(tr);
  if z3=ADOTable2.Fieldbyname('z3').Asstring then
  inc(tr);
  if z4=ADOTable2.Fieldbyname('z4').Asstring then
  inc(tr);
  if z5=ADOTable2.Fieldbyname('z5').Asstring then
  inc(tr);
  if z6=ADOTable2.Fieldbyname('z6').Asstring then
  inc(tr);
  if z7=ADOTable2.Fieldbyname('z7').Asstring then
  inc(tr);
  if z8=ADOTable2.Fieldbyname('z8').Asstring then
  inc(tr);
end;
if label6.Caption = '9' then
begin
  if z1=ADOTable2.Fieldbyname('z1').Asstring then
  inc(tr);
  if z2=ADOTable2.Fieldbyname('z2').Asstring then
  inc(tr);
  if z3=ADOTable2.Fieldbyname('z3').Asstring then
  inc(tr);
  if z4=ADOTable2.Fieldbyname('z4').Asstring then
  inc(tr);
  if z5=ADOTable2.Fieldbyname('z5').Asstring then
  inc(tr);
  if z6=ADOTable2.Fieldbyname('z6').Asstring then
  inc(tr);
  if z7=ADOTable2.Fieldbyname('z7').Asstring then
  inc(tr);
  if z8=ADOTable2.Fieldbyname('z8').Asstring then
  inc(tr);
  if z9=ADOTable2.Fieldbyname('z9').Asstring then
  inc(tr);
end;
if label6.Caption = '10' then
begin
if z1=ADOTable2.Fieldbyname('z1').Asstring then
  inc(tr);
  if z2=ADOTable2.Fieldbyname('z2').Asstring then
  inc(tr);
  if z3=ADOTable2.Fieldbyname('z3').Asstring then
  inc(tr);
  if z4=ADOTable2.Fieldbyname('z4').Asstring then
  inc(tr);
  if z5=ADOTable2.Fieldbyname('z5').Asstring then
  inc(tr);
  if z6=ADOTable2.Fieldbyname('z6').Asstring then
  inc(tr);
  if z7=ADOTable2.Fieldbyname('z7').Asstring then
  inc(tr);
  if z8=ADOTable2.Fieldbyname('z8').Asstring then
  inc(tr);
  if z9=ADOTable2.Fieldbyname('z9').Asstring then
  inc(tr);
  if z10=ADOTable2.Fieldbyname('z10').Asstring then
  inc(tr);
end;
t:=strtoint(label6.Caption);
a:= tr/t*10;
form13.label4.caption:=inttostr(tr);
form13.label5.caption:=floattostr(a);
end
else
ADOTable2.Next;
form13.Show;
TIMER1.Enabled:=FALSE;
form7.Close;
end;
end;

procedure TForm7.Timer1Timer(Sender: TObject);
var
flag,tr,t:integer;
A:REAL;
hour,z1,z2,z3,z4,z5,z6,z7,z8,z9,z10:string;
begin
form6.Hide;
if strtoint(label10.caption)>0 then
	begin
      if (label10.caption[1]='0')and (length(label10.caption)=2) then
           begin
            label10.caption:='0' +inttostr(strtoint(label10.caption)-1);
            flag:=0;
           end
      else
            begin
                  label10.caption:=inttostr(strtoint(label10.caption)-1);
                  flag:=0;
            end;
	end

  else
    begin
        if (hour ='0')or (Label9.Caption='0')  then
            begin
              flag:=1;
            end
        else
          begin
              begin
                label9.caption:=inttostr(strtoint(label9.caption)-1);
                label10.caption:='59';
              end;
        end;
    end;
 if length(label10.Caption)=1 then
 begin
 label11.visible:=true;
 label10.Left:=883 ;

 end


 else
 begin
 label11.visible:=false;
   label10.Left:=855;
 end;
if flag=1 then
	begin
			if label4.caption='1'then
				begin
					if label6.caption='1' then
						begin
							z1:='Ответ не дан';
              form13.ListBox1.items.add(z1);
						end;
					if label6.caption='2' then
						begin
							z1:='Ответ не дан';
							z2:='Ответ не дан';
              form13.ListBox1.items.add(z1);
              form13.ListBox1.items.add(z2);
						end;
					if label6.caption='3' then
						begin
							z1:='Ответ не дан';
							z2:='Ответ не дан';
							z3:='Ответ не дан';
              form13.ListBox1.items.add(z1);
              form13.ListBox1.items.add(z2);
               form13.ListBox1.items.add(z3);
						end;
					if label6.caption='4' then
						begin
							z1:='Ответ не дан';
							z2:='Ответ не дан';
							z3:='Ответ не дан';
							z4:='Ответ не дан';
              form13.ListBox1.items.add(z1);
              form13.ListBox1.items.add(z2);
               form13.ListBox1.items.add(z3);
              form13.ListBox1.items.add(z4);
						end;
					if label6.caption='5' then
						begin
							z1:='Ответ не дан';
							z2:='Ответ не дан';
							z3:='Ответ не дан';
							z4:='Ответ не дан';
							z5:='Ответ не дан';
              form13.ListBox1.items.add(z1);
              form13.ListBox1.items.add(z2);
               form13.ListBox1.items.add(z3);
              form13.ListBox1.items.add(z4);
            form13.ListBox1.items.add(z5);
						end;
					if label6.caption='6' then
						begin
							z1:='Ответ не дан';
							z2:='Ответ не дан';
							z3:='Ответ не дан';
							z4:='Ответ не дан';
							z5:='Ответ не дан';
							z6:='Ответ не дан';
              form13.ListBox1.items.add(z1);
              form13.ListBox1.items.add(z2);
               form13.ListBox1.items.add(z3);
              form13.ListBox1.items.add(z4);
            form13.ListBox1.items.add(z5);
             form13.ListBox1.items.add(z6);
						end;
					if label6.caption='7' then
						begin
							z1:='Ответ не дан';
							z2:='Ответ не дан';
							z3:='Ответ не дан';
							z4:='Ответ не дан';
							z5:='Ответ не дан';
							z6:='Ответ не дан';
							z7:='Ответ не дан';
              form13.ListBox1.items.add(z1);
              form13.ListBox1.items.add(z2);
               form13.ListBox1.items.add(z3);
              form13.ListBox1.items.add(z4);
            form13.ListBox1.items.add(z5);
             form13.ListBox1.items.add(z6);
             form13.ListBox1.items.add(z7);
						end;
					if label6.caption='8' then
						begin
							z1:='Ответ не дан';
							z2:='Ответ не дан';
							z3:='Ответ не дан';
							z4:='Ответ не дан';
							z5:='Ответ не дан';
							z6:='Ответ не дан';
							z7:='Ответ не дан';
							z8:='Ответ не дан';
              form13.ListBox1.items.add(z1);
              form13.ListBox1.items.add(z2);
               form13.ListBox1.items.add(z3);
              form13.ListBox1.items.add(z4);
            form13.ListBox1.items.add(z5);
             form13.ListBox1.items.add(z6);
             form13.ListBox1.items.add(z7);
             form13.ListBox1.items.add(z8);
						end;
					if label6.caption='9' then
						begin
							z1:='Ответ не дан';
							z2:='Ответ не дан';
							z3:='Ответ не дан';
							z4:='Ответ не дан';
							z5:='Ответ не дан';
							z6:='Ответ не дан';
							z7:='Ответ не дан';
							z8:='Ответ не дан';
							z9:='Ответ не дан';
              form13.ListBox1.items.add(z1);
              form13.ListBox1.items.add(z2);
               form13.ListBox1.items.add(z3);
              form13.ListBox1.items.add(z4);
            form13.ListBox1.items.add(z5);
             form13.ListBox1.items.add(z6);
             form13.ListBox1.items.add(z7);
             form13.ListBox1.items.add(z8);
             form13.ListBox1.items.add(z9);
						end;
					if label6.caption='10' then
						begin
							z1:='Ответ не дан';
							z2:='Ответ не дан';
							z3:='Ответ не дан';
							z4:='Ответ не дан';
							z5:='Ответ не дан';
							z6:='Ответ не дан';
							z7:='Ответ не дан';
							z8:='Ответ не дан';
							z9:='Ответ не дан';
							z10:='Ответ не дан';
               form13.ListBox1.items.add(z1);
              form13.ListBox1.items.add(z2);
               form13.ListBox1.items.add(z3);
              form13.ListBox1.items.add(z4);
            form13.ListBox1.items.add(z5);
             form13.ListBox1.items.add(z6);
             form13.ListBox1.items.add(z7);
             form13.ListBox1.items.add(z8);
             form13.ListBox1.items.add(z9);
             form13.ListBox1.items.add(z10);

						end;
				end;
			if label4.caption='2'then
				begin
				if label6.caption='2' then
						begin
							z2:='Ответ не дан';
						end;
					if label6.caption='3' then
						begin
							z2:='Ответ не дан';
							z3:='Ответ не дан';
						end;
					if label6.caption='4' then
						begin
							z2:='Ответ не дан';
							z3:='Ответ не дан';
							z4:='Ответ не дан';
						end;
					if label6.caption='5' then
						begin
							z2:='Ответ не дан';
							z3:='Ответ не дан';
							z4:='Ответ не дан';
							z5:='Ответ не дан';
						end;
					if label6.caption='6' then
						begin
							z2:='Ответ не дан';
							z3:='Ответ не дан';
							z4:='Ответ не дан';
							z5:='Ответ не дан';
							z6:='Ответ не дан';
						end;
					if label6.caption='7' then
						begin
							z2:='Ответ не дан';
							z3:='Ответ не дан';
							z4:='Ответ не дан';
							z5:='Ответ не дан';
							z6:='Ответ не дан';
							z7:='Ответ не дан';
						end;
					if label6.caption='8' then
						begin
							z2:='Ответ не дан';
							z3:='Ответ не дан';
							z4:='Ответ не дан';
							z5:='Ответ не дан';
							z6:='Ответ не дан';
							z7:='Ответ не дан';
							z8:='Ответ не дан';
						end;
					if label6.caption='9' then
						begin
							z2:='Ответ не дан';
							z3:='Ответ не дан';
							z4:='Ответ не дан';
							z5:='Ответ не дан';
							z6:='Ответ не дан';
							z7:='Ответ не дан';
							z8:='Ответ не дан';
							z9:='Ответ не дан';
						end;
					if label6.caption='10' then
						begin
							z2:='Ответ не дан';
							z3:='Ответ не дан';
							z4:='Ответ не дан';
							z5:='Ответ не дан';
							z6:='Ответ не дан';
							z7:='Ответ не дан';
							z8:='Ответ не дан';
							z9:='Ответ не дан';
							z10:='Ответ не дан';
						end;
				end;
			if label4.caption='3'then
				begin
					if label6.caption='3' then
						begin
							z3:='Ответ не дан';
              form13.ListBox1.items.add(z3);
						end;
					if label6.caption='4' then
						begin
							z3:='Ответ не дан';
							z4:='Ответ не дан';
              form13.ListBox1.items.add(z3);
              form13.ListBox1.items.add(z4);
						end;
					if label6.caption='5' then
						begin
							z3:='Ответ не дан';
							z4:='Ответ не дан';
							z5:='Ответ не дан';
              form13.ListBox1.items.add(z3);
              form13.ListBox1.items.add(z4);
            form13.ListBox1.items.add(z5);
						end;
					if label6.caption='6' then
						begin
							z3:='Ответ не дан';
							z4:='Ответ не дан';
							z5:='Ответ не дан';
							z6:='Ответ не дан';
              form13.ListBox1.items.add(z3);
              form13.ListBox1.items.add(z4);
            form13.ListBox1.items.add(z5);
             form13.ListBox1.items.add(z6);
						end;
					if label6.caption='7' then
						begin
							z3:='Ответ не дан';
							z4:='Ответ не дан';
							z5:='Ответ не дан';
							z6:='Ответ не дан';
							z7:='Ответ не дан';
              form13.ListBox1.items.add(z3);
              form13.ListBox1.items.add(z4);
            form13.ListBox1.items.add(z5);
             form13.ListBox1.items.add(z6);
             form13.ListBox1.items.add(z7);
						end;
					if label6.caption='8' then
						begin
							z3:='Ответ не дан';
							z4:='Ответ не дан';
							z5:='Ответ не дан';
							z6:='Ответ не дан';
							z7:='Ответ не дан';
							z8:='Ответ не дан';
               form13.ListBox1.items.add(z3);
              form13.ListBox1.items.add(z4);
            form13.ListBox1.items.add(z5);
             form13.ListBox1.items.add(z6);
             form13.ListBox1.items.add(z7);
             form13.ListBox1.items.add(z8);
						end;
					if label6.caption='9' then
						begin
							z3:='Ответ не дан';
							z4:='Ответ не дан';
							z5:='Ответ не дан';
							z6:='Ответ не дан';
							z7:='Ответ не дан';
							z8:='Ответ не дан';
							z9:='Ответ не дан';
              form13.ListBox1.items.add(z4);
            form13.ListBox1.items.add(z5);
             form13.ListBox1.items.add(z6);
             form13.ListBox1.items.add(z7);
             form13.ListBox1.items.add(z8);
             form13.ListBox1.items.add(z9);
						end;
					if label6.caption='10' then
						begin
							z3:='Ответ не дан';
							z4:='Ответ не дан';
							z5:='Ответ не дан';
							z6:='Ответ не дан';
							z7:='Ответ не дан';
							z8:='Ответ не дан';
							z9:='Ответ не дан';
							z10:='Ответ не дан';
               form13.ListBox1.items.add(z3);
              form13.ListBox1.items.add(z4);
            form13.ListBox1.items.add(z5);
             form13.ListBox1.items.add(z6);
             form13.ListBox1.items.add(z7);
             form13.ListBox1.items.add(z8);
             form13.ListBox1.items.add(z9);
             form13.ListBox1.items.add(z10);
						end;
				end;
			if label4.caption='4'then
				begin
					if label6.caption='4' then
						begin
							z4:='Ответ не дан';
              form13.ListBox1.items.add(z4);
						end;
					if label6.caption='5' then
						begin
							z4:='Ответ не дан';
							z5:='Ответ не дан';
              form13.ListBox1.items.add(z4);
            form13.ListBox1.items.add(z5);
						end;
					if label6.caption='6' then
						begin
							z4:='Ответ не дан';
							z5:='Ответ не дан';
							z6:='Ответ не дан';
              form13.ListBox1.items.add(z4);
            form13.ListBox1.items.add(z5);
             form13.ListBox1.items.add(z6);
						end;
					if label6.caption='7' then
						begin
							z4:='Ответ не дан';
							z5:='Ответ не дан';
							z6:='Ответ не дан';
							z7:='Ответ не дан';
              form13.ListBox1.items.add(z4);
            form13.ListBox1.items.add(z5);
             form13.ListBox1.items.add(z6);
             form13.ListBox1.items.add(z7);
						end;
					if label6.caption='8' then
						begin
							z4:='Ответ не дан';
							z5:='Ответ не дан';
							z6:='Ответ не дан';
							z7:='Ответ не дан';
							z8:='Ответ не дан';
              form13.ListBox1.items.add(z4);
            form13.ListBox1.items.add(z5);
             form13.ListBox1.items.add(z6);
             form13.ListBox1.items.add(z7);
             form13.ListBox1.items.add(z8);
						end;
					if label6.caption='9' then
						begin
							z4:='Ответ не дан';
							z5:='Ответ не дан';
							z6:='Ответ не дан';
							z7:='Ответ не дан';
							z8:='Ответ не дан';
							z9:='Ответ не дан';
              form13.ListBox1.items.add(z4);
            form13.ListBox1.items.add(z5);
             form13.ListBox1.items.add(z6);
             form13.ListBox1.items.add(z7);
             form13.ListBox1.items.add(z8);
             form13.ListBox1.items.add(z9);
						end;
					if label6.caption='10' then
						begin
							z4:='Ответ не дан';
							z5:='Ответ не дан';
							z6:='Ответ не дан';
							z7:='Ответ не дан';
							z8:='Ответ не дан';
							z9:='Ответ не дан';
							z10:='Ответ не дан';

              form13.ListBox1.items.add(z4);
            form13.ListBox1.items.add(z5);
             form13.ListBox1.items.add(z6);
             form13.ListBox1.items.add(z7);
             form13.ListBox1.items.add(z8);
             form13.ListBox1.items.add(z9);
             form13.ListBox1.items.add(z10);
						end;
				end;
			if label4.caption='5'then
				begin
					if label6.caption='5' then
						begin
							z5:='Ответ не дан';
              form13.ListBox1.items.add(z5);
						end;
					if label6.caption='6' then
						begin
							z5:='Ответ не дан';
							z6:='Ответ не дан';
              form13.ListBox1.items.add(z5);
             form13.ListBox1.items.add(z6);
						end;
					if label6.caption='7' then
						begin
							z5:='Ответ не дан';
							z6:='Ответ не дан';
							z7:='Ответ не дан';
              form13.ListBox1.items.add(z5);
             form13.ListBox1.items.add(z6);
             form13.ListBox1.items.add(z7);
						end;
					if label6.caption='8' then
						begin
							z5:='Ответ не дан';
							z6:='Ответ не дан';
							z7:='Ответ не дан';
							z8:='Ответ не дан';
              form13.ListBox1.items.add(z5);
             form13.ListBox1.items.add(z6);
             form13.ListBox1.items.add(z7);
             form13.ListBox1.items.add(z8);
						end;
					if label6.caption='9' then
						begin
							z5:='Ответ не дан';
							z6:='Ответ не дан';
							z7:='Ответ не дан';
							z8:='Ответ не дан';
							z9:='Ответ не дан';

           form13.ListBox1.items.add(z5);
             form13.ListBox1.items.add(z6);
             form13.ListBox1.items.add(z7);
             form13.ListBox1.items.add(z8);
             form13.ListBox1.items.add(z9);
						end;
					if label6.caption='10' then
						begin
							z5:='Ответ не дан';
							z6:='Ответ не дан';
							z7:='Ответ не дан';
							z8:='Ответ не дан';
							z9:='Ответ не дан';
							z10:='Ответ не дан';

            form13.ListBox1.items.add(z5);
             form13.ListBox1.items.add(z6);
             form13.ListBox1.items.add(z7);
             form13.ListBox1.items.add(z8);
             form13.ListBox1.items.add(z9);
             form13.ListBox1.items.add(z10);
						end;
				end;
			if label4.caption='6'then
				begin
					if label6.caption='6' then
						begin
							z6:='Ответ не дан';

             form13.ListBox1.items.add(z6);
						end;
					if label6.caption='7' then
						begin
							z6:='Ответ не дан';
							z7:='Ответ не дан';

             form13.ListBox1.items.add(z6);
             form13.ListBox1.items.add(z7);
						end;
					if label6.caption='8' then
						begin
							z6:='Ответ не дан';
							z7:='Ответ не дан';
							z8:='Ответ не дан';

             form13.ListBox1.items.add(z6);
             form13.ListBox1.items.add(z7);
             form13.ListBox1.items.add(z8);
						end;
					if label6.caption='9' then
						begin
							z6:='Ответ не дан';
							z7:='Ответ не дан';
							z8:='Ответ не дан';
							z9:='Ответ не дан';

             form13.ListBox1.items.add(z6);
             form13.ListBox1.items.add(z7);
             form13.ListBox1.items.add(z8);
             form13.ListBox1.items.add(z9);
						end;
					if label6.caption='10' then
						begin
							z6:='Ответ не дан';
							z7:='Ответ не дан';
							z8:='Ответ не дан';
							z9:='Ответ не дан';
							z10:='Ответ не дан';
             form13.ListBox1.items.add(z6);
             form13.ListBox1.items.add(z7);
             form13.ListBox1.items.add(z8);
             form13.ListBox1.items.add(z9);
             form13.ListBox1.items.add(z10);
						end;
				end;
			if label4.caption='7'then
				begin
					if label6.caption='7' then
						begin
							z7:='Ответ не дан';


             form13.ListBox1.items.add(z7);
						end;
					if label6.caption='8' then
						begin
							z7:='Ответ не дан';
							z8:='Ответ не дан';


             form13.ListBox1.items.add(z7);
             form13.ListBox1.items.add(z8);
						end;
					if label6.caption='9' then
						begin
							z7:='Ответ не дан';
							z8:='Ответ не дан';
							z9:='Ответ не дан';


             form13.ListBox1.items.add(z7);
             form13.ListBox1.items.add(z8);
             form13.ListBox1.items.add(z9);
						end;
					if label6.caption='10' then
						begin
							z7:='Ответ не дан';
							z8:='Ответ не дан';
							z9:='Ответ не дан';
							z10:='Ответ не дан';

             form13.ListBox1.items.add(z7);
             form13.ListBox1.items.add(z8);
             form13.ListBox1.items.add(z9);
             form13.ListBox1.items.add(z10);
						end;
				end;
			if label4.caption='8'then
				begin
					if label6.caption='8' then
						begin
							z8:='Ответ не дан';

             form13.ListBox1.items.add(z8);
						end;
					if label6.caption='9' then
						begin
							z8:='Ответ не дан';
							z9:='Ответ не дан';

             form13.ListBox1.items.add(z8);
             form13.ListBox1.items.add(z9);
						end;
					if label6.caption='10' then
						begin
							z8:='Ответ не дан';
							z9:='Ответ не дан';
							z10:='Ответ не дан';

             form13.ListBox1.items.add(z8);
             form13.ListBox1.items.add(z9);
             form13.ListBox1.items.add(z10);
						end;
				end;
			if label4.caption='9'then
				begin
					if label6.caption='9' then
						begin
							z9:='Ответ не дан';

             form13.ListBox1.items.add(z9);
						end;
					if label6.caption='10' then
						begin
							z9:='Ответ не дан';
							z10:='Ответ не дан';

             form13.ListBox1.items.add(z9);
             form13.ListBox1.items.add(z10);
						end;
				end;

			if label4.caption='10'then
				begin
					if label6.caption='10' then
						begin
							z10:='Ответ не дан';
             form13.ListBox1.items.add(z10);
						end;
				end;
If label6.Caption ='1'then
	begin
	z1:=form13.listbox1.items[0];
	end;
If label6.Caption ='2'then
	begin
	z1:=form13.listbox1.items[0];
	z2:=form13.listbox1.items[1];
	end;
If label6.Caption ='3'then
	begin
	z1:=form13.listbox1.items[0];
	z2:=form13.listbox1.items[1];
	z3:=form13.listbox1.items[2];
	end;
If label6.Caption ='4'then
	begin
	z1:=form13.listbox1.items[0];
	z2:=form13.listbox1.items[1];
	z3:=form13.listbox1.items[2];
	z4:=form13.listbox1.items[3];
	end;
If label6.Caption ='5'then
	begin
	z1:=form13.listbox1.items[0];
	z2:=form13.listbox1.items[1];
	z3:=form13.listbox1.items[2];
	z4:=form13.listbox1.items[3];
	z5:=form13.listbox1.items[4];
	end;
If label6.Caption ='6'then
	begin
	z1:=form13.listbox1.items[0];
	z2:=form13.listbox1.items[1];
	z3:=form13.listbox1.items[2];
	z4:=form13.listbox1.items[3];
	z5:=form13.listbox1.items[4];
	z6:=form13.listbox1.items[5];
	end;
If label6.Caption ='7'then
	begin
	z1:=form13.listbox1.items[0];
	z2:=form13.listbox1.items[1];
	z3:=form13.listbox1.items[2];
	z4:=form13.listbox1.items[3];
	z5:=form13.listbox1.items[4];
	z6:=form13.listbox1.items[5];
	z7:=form13.listbox1.items[6];
	end;
If label6.Caption ='8'then
	begin
	z1:=form13.listbox1.items[0];
	z2:=form13.listbox1.items[1];
	z3:=form13.listbox1.items[2];
	z4:=form13.listbox1.items[3];
	z5:=form13.listbox1.items[4];
	z6:=form13.listbox1.items[5];
	z7:=form13.listbox1.items[6];
	z8:=form13.listbox1.items[7];
	end;
If label6.Caption ='9'then
	begin
	z1:=form13.listbox1.items[0];
	z2:=form13.listbox1.items[1];
	z3:=form13.listbox1.items[2];
	z4:=form13.listbox1.items[3];
	z5:=form13.listbox1.items[4];
	z6:=form13.listbox1.items[5];
	z7:=form13.listbox1.items[6];
	z8:=form13.listbox1.items[7];
	z9:=form13.listbox1.items[8];
	end;
If label6.Caption ='10'then
	begin
	z1:=form13.listbox1.items[0];
	z2:=form13.listbox1.items[1];
	z3:=form13.listbox1.items[2];
	z4:=form13.listbox1.items[3];
	z5:=form13.listbox1.items[4];
	z6:=form13.listbox1.items[5];
	z7:=form13.listbox1.items[6];
	z8:=form13.listbox1.items[7];
	z9:=form13.listbox1.items[8];
	z10:=form13.listbox1.items[9];
	end;
      timer1.Enabled:=false;
      ADOTable2.First;
if ADOTable2.FieldByName('num').AsString=Label8.Caption then
begin
tr:=0;
if label6.Caption = '1' then
begin
  if z1=ADOTable2.Fieldbyname('z1').Asstring then
  inc(tr);
end;
if label6.Caption = '2' then
begin
  if z1=ADOTable2.Fieldbyname('z1').Asstring then
  inc(tr);
  if z2=ADOTable2.Fieldbyname('z2').Asstring then
  inc(tr);
end;
if label6.Caption = '3' then
begin
  if z1=ADOTable2.Fieldbyname('z1').Asstring then
  inc(tr);
  if z2=ADOTable2.Fieldbyname('z2').Asstring then
  inc(tr);
  if z3=ADOTable2.Fieldbyname('z3').Asstring then
  inc(tr);
end;
if label6.Caption = '4' then
begin
  if z1=ADOTable2.Fieldbyname('z1').Asstring then
  inc(tr);
  if z2=ADOTable2.Fieldbyname('z2').Asstring then
  inc(tr);
  if z3=ADOTable2.Fieldbyname('z3').Asstring then
  inc(tr);
  if z4=ADOTable2.Fieldbyname('z4').Asstring then
  inc(tr);
end;
if label6.Caption = '5' then
begin
  if z1=ADOTable2.Fieldbyname('z1').Asstring then
  inc(tr);
  if z2=ADOTable2.Fieldbyname('z2').Asstring then
  inc(tr);
  if z3=ADOTable2.Fieldbyname('z3').Asstring then
  inc(tr);
  if z4=ADOTable2.Fieldbyname('z4').Asstring then
  inc(tr);
  if z5=ADOTable2.Fieldbyname('z5').Asstring then
  inc(tr);
end;
if label6.Caption = '6' then
begin
  if z1=ADOTable2.Fieldbyname('z1').Asstring then
  inc(tr);
  if z2=ADOTable2.Fieldbyname('z2').Asstring then
  inc(tr);
  if z3=ADOTable2.Fieldbyname('z3').Asstring then
  inc(tr);
  if z4=ADOTable2.Fieldbyname('z4').Asstring then
  inc(tr);
  if z5=ADOTable2.Fieldbyname('z5').Asstring then
  inc(tr);
  if z6=ADOTable2.Fieldbyname('z6').Asstring then
  inc(tr);
end;
if label6.Caption = '7' then
begin
  if z1=ADOTable2.Fieldbyname('z1').Asstring then
  inc(tr);
  if z2=ADOTable2.Fieldbyname('z2').Asstring then
  inc(tr);
  if z3=ADOTable2.Fieldbyname('z3').Asstring then
  inc(tr);
  if z4=ADOTable2.Fieldbyname('z4').Asstring then
  inc(tr);
  if z5=ADOTable2.Fieldbyname('z5').Asstring then
  inc(tr);
  if z6=ADOTable2.Fieldbyname('z6').Asstring then
  inc(tr);
  if z7=ADOTable2.Fieldbyname('z7').Asstring then
  inc(tr);
end;
if label6.Caption = '8' then
begin
  if z1=ADOTable2.Fieldbyname('z1').Asstring then
  inc(tr);
  if z2=ADOTable2.Fieldbyname('z2').Asstring then
  inc(tr);
  if z3=ADOTable2.Fieldbyname('z3').Asstring then
  inc(tr);
  if z4=ADOTable2.Fieldbyname('z4').Asstring then
  inc(tr);
  if z5=ADOTable2.Fieldbyname('z5').Asstring then
  inc(tr);
  if z6=ADOTable2.Fieldbyname('z6').Asstring then
  inc(tr);
  if z7=ADOTable2.Fieldbyname('z7').Asstring then
  inc(tr);
  if z8=ADOTable2.Fieldbyname('z8').Asstring then
  inc(tr);
end;
if label6.Caption = '9' then
begin
  if z1=ADOTable2.Fieldbyname('z1').Asstring then
  inc(tr);
  if z2=ADOTable2.Fieldbyname('z2').Asstring then
  inc(tr);
  if z3=ADOTable2.Fieldbyname('z3').Asstring then
  inc(tr);
  if z4=ADOTable2.Fieldbyname('z4').Asstring then
  inc(tr);
  if z5=ADOTable2.Fieldbyname('z5').Asstring then
  inc(tr);
  if z6=ADOTable2.Fieldbyname('z6').Asstring then
  inc(tr);
  if z7=ADOTable2.Fieldbyname('z7').Asstring then
  inc(tr);
  if z8=ADOTable2.Fieldbyname('z8').Asstring then
  inc(tr);
  if z9=ADOTable2.Fieldbyname('z9').Asstring then
  inc(tr);
end;
if label6.Caption = '10' then
begin
if z1=ADOTable2.Fieldbyname('z1').Asstring then
  inc(tr);
  if z2=ADOTable2.Fieldbyname('z2').Asstring then
  inc(tr);
  if z3=ADOTable2.Fieldbyname('z3').Asstring then
  inc(tr);
  if z4=ADOTable2.Fieldbyname('z4').Asstring then
  inc(tr);
  if z5=ADOTable2.Fieldbyname('z5').Asstring then
  inc(tr);
  if z6=ADOTable2.Fieldbyname('z6').Asstring then
  inc(tr);
  if z7=ADOTable2.Fieldbyname('z7').Asstring then
  inc(tr);
  if z8=ADOTable2.Fieldbyname('z8').Asstring then
  inc(tr);
  if z9=ADOTable2.Fieldbyname('z9').Asstring then
  inc(tr);
  if z10=ADOTable2.Fieldbyname('z10').Asstring then
  inc(tr);
end;

TIMER1.Enabled:=FALSE;
t:=strtoint(label6.Caption);
a:= tr/t*10;
form13.label4.caption:=inttostr(tr);
form13.label5.caption:=floattostr(a);



form13.Show;
form7.Close;

end;
		end;
	end;


end.

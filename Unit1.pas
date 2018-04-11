unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Math;

type
  TForm1 = class(TForm)
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    BitBtn1: TBitBtn;
    Button3: TButton;
    Button4: TButton;
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  FI: TextFile;
  i,j,w,k,g: integer;
  a: array[1..1000] of integer;
  p: real;
  M,Z,t,l,o,D,r,C: double;

implementation

uses Unit2, OKCANCL2;

{$R *.dfm}
  Procedure Soob;
begin
 ShowMessage ('岳伤 团 论列劳');
end;

//---------//
procedure TForm1.Button1Click(Sender: TObject);
Label NN; var k: integer;  B,f :string;
begin

if OpenDialog1.Execute then
   B:=OpenDialog1.FileName
                       else begin Soob;
                       Exit;
                       End;
  AssignFile(FI, B);
     reset (FI);
     i:=0;
     while (not EOF(FI)) do
     begin
         i:=i+1;
       Read(FI, a[i]);
          w:=i;
     end;
         p:=1/w;
      M:=0;
       for i:= 1 to w do
     begin
     t:= p*a[i];
     M:= M+t;
     end;


end;
//--//
procedure TForm1.Button3Click(Sender: TObject);
begin
If  OKRightDlg2.ShowModal = mrOK
    then
     k:= StrToInt(OKRightDlg2.MaskEdit1.Text);
     form2.Show;

      Z:=0;
       D:=0;

   form2.Edit1.Text := FloatToStr(M);

   for i:= 1 to w do
   begin
   o:= a[i]- M;
   r:= power(o,2)*p;
   l:= power(o,k)*p;
   D:=D + r;
   Z:=Z + l;
    end;
    C:= sqrt(D);

 form2.Edit2.Text := FloatToStr(D);
   form2.Edit3.Text := FloatToStr(C);
    form2.Edit4.Text := FloatToStr(Z);
end;

end.

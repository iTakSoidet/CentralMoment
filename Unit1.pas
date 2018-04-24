unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Math, ExtCtrls,Unit3;

type
  TForm1 = class(TForm)
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    BitBtn1: TBitBtn;
    Button3: TButton;
    Button4: TButton;
    Label1: TLabel;
    Timer1: TTimer;
    Label2: TLabel;
    btn1: TButton;
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;
     procedure MMX (var M:Double; var q,w:Integer);
     procedure DMX(var D,C,Z:double; var q,w:Integer);

var
  Form1: TForm1;
  FI: TextFile;
  i,j,w,k,g,w1,w2,w3,q: integer;
  a:array[1..10000] of real;
  p: real;
  M,Z,t,l,o,D,r,C,MM,DD,CC,ZZ: double;
  TimeStart : TDateTime = 0;
  N1: Tnew;
  N2: Tnew2;
  N3: Tnew3;

implementation

uses Unit2, OKCANCL2, Unit4;

{$R *.dfm}

  Procedure Soob;
begin
 ShowMessage ('file not found');
end;

procedure MMX (var M:Double; var q,w:Integer);
begin
 
     M:=0;
     t:=0;
      for i:= q to w do
       begin
        t:= p*a[i];
        M:= M+t;
       end;
end;

procedure DMX(var D,C,Z:double; var q,w:Integer);
begin
  Z:=0;
  D:=0;
    for i:= q to w do
   begin
   o:= a[i]- M;
   r:= power(o,2)*p;
   l:= power(o,k)*p;
   D:=D + r;
   Z:=Z + l;
    end;
    C:= sqrt(D);
end;

procedure TForm1.Button1Click(Sender: TObject);
var k: integer;  B,f,t1 :string;
begin

Timer1.Enabled := True;
  if OpenDialog1.Execute then
     B:=OpenDialog1.FileName
                         else begin Soob;
                          Exit;
                          End;
  AssignFile(FI, B);
     reset (FI);
     i:=0;
TimeStart := Now;
     while (not EOF(FI)) do
     begin
        inc(i);
       Read(FI, a[i]);
      w:=i;
     end;

p:=1/w;
q:=1;
MMX(M,q,w);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
If  OKRightDlg2.ShowModal = mrOK
    then
     k:= StrToInt(OKRightDlg2.MaskEdit1.Text);
     form2.Show;
   q:=1;
  DMX(D,C,Z,q,w);
 Form2.Label5.Caption:= 'Central moment '+ IntToStr(k)+ '-go poryadka = ';
 form2.Edit1.Text := FloatToStr(M);
 form2.Edit2.Text := FloatToStr(D);
 form2.Edit3.Text := FloatToStr(C);
 form2.Edit4.Text := FloatToStr(Z);
   Label1.Caption := 'Vremya vypolneniya programmy = '+FormatDateTime('hh:nn:ss:zzz', Now - TimeStart);
end;
 
procedure TForm1.Button4Click(Sender: TObject);
var mw,FileNum: integer;
begin
 TimeStart := Now;
 FileNum:=1;
 mw:=3;
 for i:=1 to w do
 begin
  if ((i mod (w div mw)=0) and (FileNum < mw))then inc(FileNum);
  if (FileNum = 1) then w1:= i;
  if (FileNum = 2) then w2:= i;
  if (FileNum = 3) then w3:= i;
 end;

    N1 := Tnew.Create(false);
    N1.FreeOnTerminate:=true;
    N1.Resume;
    N2 := Tnew2.Create(False);
    N2.FreeOnTerminate:=true;
    N2.Resume;
    N3 := Tnew3.Create(false);
    N3.FreeOnTerminate:=true;
    N3.Resume;
end;
      
procedure TForm1.btn1Click(Sender: TObject);
begin
  Form4.Show;
    MM:=M1+M2+M3;
   Form4.edit1.text := FloatToStr(MM);
   DD:= D1+D2+D3;
   CC:=sqrt(DD);
   ZZ:=Z1+Z2+Z3;
    form4.lbl4.Caption := 'Central moment '+ IntToStr(k)+ '-go poryadka =  ';
    Form4.edt2.text := FloatToStr(DD);
    Form4.edt3.text := FloatToStr(CC);
    Form4.edt4.text := FloatToStr(ZZ);
 Label2.Caption := 'Vremya vypolneniya programmy v potokah = '+FormatDateTime('hh:nn:ss:zzz', Now - TimeStart);
end;


end.

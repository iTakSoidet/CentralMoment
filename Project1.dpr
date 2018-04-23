program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form2},
  OKCANCL2 in 'OKCANCL2.pas' {OKRightDlg2},
  Unit3 in 'Unit3.pas',
  Unit4 in 'Unit4.pas' {Form4};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TOKRightDlg2, OKRightDlg2);
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.

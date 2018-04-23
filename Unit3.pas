unit Unit3;

interface

uses
  Classes,Math,SysUtils;

type
  Tnew = class(TThread)
  private
    { Private declarations }
  protected
   procedure DoWork;
    procedure Execute; override;
  end;

type
  Tnew2 = class(TThread)
  private
    { Private declarations }
  protected
   procedure DoWork;
    procedure Execute; override;
  end;

type
  Tnew3 = class(TThread)
  private
    { Private declarations }
  protected
   procedure DoWork;
    procedure Execute; override;
  end;

var t,p,p1: double;
M1,M2,M3,D1,D2,D3,Z1,Z2,Z3,C1,C2,C3:double;
//-----------//
implementation
uses unit1;

procedure Tnew.Execute;

begin
   while not Terminated do
     Synchronize(DoWork);

end;
//---//
procedure Tnew2.Execute;
begin
while not Terminated do
     Synchronize(DoWork);
end;
//----------//
procedure Tnew3.Execute;
begin
   while not Terminated do
     Synchronize(DoWork);
end;
//-------//


procedure Tnew.DoWork;
var i: integer;
begin
//p1:=1/w1;       // вероятность!
q:=1;
  MMX(M1,q,w1);
  DMX(D1,C1,Z1,q,w1);

  Terminate;
end;
//----//
 procedure Tnew2.DoWork;
 var i: integer;
 begin
  {p2:=1/(w2-(w1+1));  }     // вероятнось
  q:= w1+1;
   MMX(M2,q,w2);
   DMX(D2,C2,Z2,q,w2);
  terminate;
 end;
//------//
procedure Tnew3.DoWork;
var i: integer; t:double;
begin
 {p:=1/(w3-(w2+1));       // вероятность        }
 q:= w2+1;
  MMX(M3,q,w3);
  DMX(D3,C3,Z3,q,w3);


end;

end.

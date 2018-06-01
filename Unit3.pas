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

var t,p1,p2,p3: double;
M1,M2,M3,D1,D2,D3,Z1,Z2,Z3,C1,C2,C3:double;
kol1,kol2,kol3:integer;
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
var q1:Integer;
begin
q1:=1;
  p1:=1/w1;
  if q1=w1 then kol1:=w1 else kol1:=w1-q1;
  MMX(M1,p1,q1,w1);
  DMX(D1,C1,Z1,q1,w1);
  Terminate;
end;
//----//
 procedure Tnew2.DoWork;
 var i,q2: integer;
 begin
  //q:= w1;
    p2:=1/(w2-w1);
   q2:=w1+1;
   if q2=w2 then kol2:=w2 else kol2:=w2-w1;
   MMX(M2,p2,q2,w2);
   DMX(D2,C2,Z2,q2,w2);
  terminate;
 end;
//------//
procedure Tnew3.DoWork;
var i,q3: integer; 
begin
 //q:= w2;
  p3:=1/(w3-w2);
  q3:=w2+1;
  if q3=w3 then kol3:=w3 else kol3:=w3-w2;
  MMX(M3,p3,q3,w3);
  DMX(D3,C3,Z3,q3,w3);
  terminate;
end;
end.

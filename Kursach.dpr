program Kursach;

uses
  Vcl.Forms,
  KP in 'KP.pas' {Form1},
  KP2 in 'KP2.pas' {Form2},
  KP3 in 'KP3.pas' {Form3},
  KP4 in 'KP4.pas' {Form4},
  KP5 in 'KP5.pas' {Form5},
  KP6 in 'KP6.pas' {Form6},
  KP7 in 'KP7.pas' {Form7},
  KP9 in 'KP9.pas' {Form9};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm9, Form9);
  Application.Run;
end.

unit KP3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.DBCtrls;

type
  TForm3 = class(TForm)
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Label2: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
    f: text;
  s,filepath: string;
  Nvern, ball, count: integer;

implementation

{$R *.dfm}

uses KP;


procedure TForm3.Button1Click(Sender: TObject);
begin
panel1.Visible :=false;
radiogroup1.ItemIndex :=-1;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
RadioGroup1Click(Sender);
panel1.Visible :=false;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
SpeedButton2.Enabled:=false;
RadioGroup1.ParentFont := false;
end;

procedure TForm3.RadioGroup1Click(Sender: TObject);
begin
 RadioGroup1.Enabled:=false;
RadioGroup2.enabled:=true;
speedButton2.Enabled:=true;
case RadioGroup1.ItemIndex of
 0:AssignFile( f ,'медиа\сылки\вапросы\легкий.txt');
 1: AssignFile( f ,'медиа\сылки\вапросы\средний.txt');
 2: AssignFile( f ,'медиа\сылки\вапросы\сложный.txt');
end;
reset(f);
readln(f,s);
ball:=0;
count := 0;
repeat
if (s[1]='-') then begin
count := count + 1;
delete(s,1,1);
RadioGroup2.Caption:=s;
end
else if s[1]='*' then begin
delete(s,1,1);
Nvern:=StrToInt(s);
end
else RadioGroup2.Items.Add(s);
readln(f,s);
until (s[1]='-') or (Eof(f));
end;

procedure TForm3.SpeedButton1Click(Sender: TObject);
begin
FORM1.SHOW;
FORM3.Close;
radiogroup2.Items.Clear;
radiogroup2.CAption:='';
speedButton2.Enabled:=False;
radiogroup1.Enabled:=true;
radiogroup1.itemindex:=-1;
end;

procedure TForm3.SpeedButton2Click(Sender: TObject);
begin
if (RadioGroup2.ItemIndex>-1) and (not Eof(f)) then begin
if RadioGroup2.ItemIndex = Nvern-1 then ball:=ball+1;
radiogroup2.Items.Clear;
Repeat
if (s[1]='-') then begin
delete(s,1,1);
RadioGroup2.Caption:=s;
end
else if s[1]='*' then begin
delete(s,1,1);
Nvern:=StrToInt(s);
end
else
begin
RadioGroup2.Items.Add(s);
end;
readln(f,s);
until (s[1]='-') or (Eof(f));
end

Else if Eof(f) then begin
delete(s,1,1);
Nvern:=StrToInt(s);
if RadioGroup2.ItemIndex = Nvern-1 then ball:=ball+1;
Label2.Caption:= floattoStr((ball/count)*20) + '% правильных ответов';
CloseFile(f);
radiogroup2.Items.Clear;
radiogroup2.CAption:='';
speedButton2.Enabled:=False;
radiogroup1.Enabled:=true;
radiogroup2.Enabled:=true;
panel1.Caption :=label2.Caption ;
panel1.Visible := true;
end;
end;

end.

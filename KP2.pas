unit KP2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Buttons;

type
  TForm2 = class(TForm)
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton5: TSpeedButton;
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses KP, KP4, KP5, KP6, KP9;


procedure TForm2.SpeedButton1Click(Sender: TObject);
begin
 form6.show;
 form2.Hide	;
form6.WebBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'�����\�����\�����.htm')
end;

procedure TForm2.SpeedButton2Click(Sender: TObject);
begin
Form4.Show;
form2.Hide;
Form4.memo1.lines.clear;
Form4.memo1.lines.loadFromfile('�����\�����\�������.txt');
end;

procedure TForm2.SpeedButton3Click(Sender: TObject);
begin
Form4.Show;
form2.Hide;
Form4.memo1.lines.clear;
Form4.memo1.lines.loadFromfile('�����\�����\�����.txt');
end;

procedure TForm2.SpeedButton4Click(Sender: TObject);
begin
Form4.Show;
form2.Hide;
Form4.memo1.lines.clear;
Form4.memo1.lines.loadFromfile('�����\�����\�����.txt');
end;

procedure TForm2.SpeedButton5Click(Sender: TObject);
begin
Form5.Show;
form2.Hide;
form5.image3.picture.loadfromfile('�����\����������\����KP2\1.jpg');

end;

procedure TForm2.SpeedButton6Click(Sender: TObject);
begin
form9.show;
form2.hide;
end;

procedure TForm2.SpeedButton7Click(Sender: TObject);
begin

Form4.Show;
form2.Hide;
Form4.memo1.lines.clear;
Form4.memo1.lines.loadFromfile('�����\�����\���������.txt');
end;

procedure TForm2.SpeedButton8Click(Sender: TObject);
begin
Form4.Show;
form2.Hide;
Form4.memo1.lines.clear;
Form4.memo1.lines.loadFromfile('�����\�����\��������.txt');
end;

procedure TForm2.SpeedButton9Click(Sender: TObject);
begin
form1.show;
form2.close;
end;

end.

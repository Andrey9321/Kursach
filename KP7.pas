unit KP7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Imaging.pngimage;

type
  TForm7 = class(TForm)
    Image1: TImage;
    xxxx: TProgressBar;
    Timer1: TTimer;
    Image2: TImage;
    Label1: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;
  filepath:string;

implementation

{$R *.dfm}

uses KP6, KP;

procedure TForm7.Image1Click(Sender: TObject);
begin
 form1.Show;
form7.Hide;
form1.mediaplayer1.Play;
end;

procedure TForm7.Timer1Timer(Sender: TObject);
begin
if image2.Left<>550 then
begin
    xxxx.Position := xxxx.Position + 1 ;
    image2.Left:=image2.Left +3;
end
else
label1.Visible:=true;
end;
end.

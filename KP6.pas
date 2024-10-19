unit KP6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.OleCtrls, SHDocVw;

type
  TForm6 = class(TForm)
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    WebBrowser1: TWebBrowser;

    procedure SpeedButton1Click(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses KP2, KP7;



procedure TForm6.SpeedButton1Click(Sender: TObject);
begin
form2.Show;
form6.Close;
end;


end.

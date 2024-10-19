unit KP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Buttons, Vcl.Imaging.pngimage, Vcl.MPlayer, Vcl.ComCtrls, Vcl.Menus, shellAPI;

type
  TForm1 = class(TForm)
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    MediaPlayer1: TMediaPlayer;
    SpeedButton5: TSpeedButton;
    Image2: TImage;
    Image3: TImage;
    SpeedButton4: TSpeedButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
implementation

{$R *.dfm}

uses KP2, KP3, KP4, KP6, KP7, KP5;




procedure TForm1.N2Click(Sender: TObject);
begin
 ShellExecute(0, PChar ('Open'), PChar ('�����\�������\�������KP1.chm'), nil, nil, SW_SHOW);
end;

procedure TForm1.N3Click(Sender: TObject);
begin
application.terminate;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
 form1.hide;
 form2.Show;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
 form1.hide;
 form3.Show;
  form3.label2.visible:=false;
 end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
begin
if Image2.Visible=true then
begin
  Image2.Visible:=false;
  Image3.Visible:=True;

end
else
begin
  Image2.Visible:=true;

  Image3.Visible:=false;

end;
  if MediaPlayer1.FileName <> '' then
  begin
    if MediaPlayer1.Mode = mpPlaying then
      MediaPlayer1.Stop
    else
      MediaPlayer1.Play;
  end;
end;

procedure TForm1.SpeedButton5Click(Sender: TObject);
begin
application.terminate;
end;

end.

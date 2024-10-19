unit KP5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.jpeg,
  Vcl.Buttons, Vcl.Imaging.pngimage, Vcl.StdCtrls, Vcl.MPlayer;

type
  TForm5 = class(TForm)
    Image1: TImage;
    Image3: TImage;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  count:integer;
  filepath:string;
implementation
{$R *.dfm}

uses KP2, KP;

procedure TForm5.FormCreate(Sender: TObject);
begin
  count := 1;
end;



procedure TForm5.SpeedButton1Click(Sender: TObject);
begin
form5.Close;
form2.Show;
end;

procedure TForm5.SpeedButton2Click(Sender: TObject);
begin
  begin
 count := count - 1;
         if count=0 then
           count := 15;
          var path := 'медиа\кпкартинки\фотоKP2\' + inttostr(count) + '.jpg' ;
         form5.Image3.Picture.LoadFromFile(path);
  end;
end;

procedure tForm5.SpeedButton3Click(Sender: TObject);
begin
  begin
    count := count + 1;
     if count = 16  then
        count := 1;

     var path := 'медиа\кпкартинки\фотоKP2\' + inttostr(count) + '.jpg' ;
     form5.Image3.Picture.LoadFromFile(path);
  end;
end;

end.

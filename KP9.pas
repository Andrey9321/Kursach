unit KP9;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  TForm9 = class(TForm)
    Image1: TImage;
    Memo1: TMemo;
    SpeedButton3: TSpeedButton;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure SpeedButton3Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    procedure SortMemoByAnimalType;
  public
    { Public declarations }
  end;

var
  Form9: TForm9;
  Lines: TStringList;

implementation

{$R *.dfm}

uses KP2;

function SortByWord(const Lines: TStrings; const SortWord: string): TStringList;
var
  i: Integer;
  NewLines: TStringList;
begin
  NewLines := TStringList.Create;
  try
    for i := 0 to Lines.Count - 1 do
    begin
      if Pos(SortWord, Lines[i]) > 0 then
        NewLines.Add(Lines[i]);
    end;

    Result := NewLines;
    except
    NewLines.Free;
    raise;
    end;
  end;

procedure Tform9.SortMemoByAnimalType;
var
Lines: TStringList;
  AnimalTypes: TStringList;
  i, j: Integer;
begin
  Lines := TStringList.Create;
  AnimalTypes := TStringList.Create;
  Lines.Text := Memo1.Text;
  for i := 0 to Lines.Count - 1 do
  begin
    if AnimalTypes.IndexOf(Copy(Lines[i], Pos('|', Lines[i]) + 1, Length(Lines[i]))) = -1 then
    AnimalTypes.Add(Copy(Lines[i], Pos('|', Lines[i]) + 1, Length(Lines[i])));
  end;
  Memo1.Clear;
    for j := 0 to AnimalTypes.Count - 1 do
    begin
      for i := 0 to Lines.Count - 1 do
      begin
        if Pos(AnimalTypes[j], Lines[i]) > 0 then
          Memo1.Lines.Add(Lines[i]);
      end;
    end;
end;


procedure TForm9.Button1Click(Sender: TObject);
var
  SortedLines: TStringList;
begin
 if Trim(Edit1.Text) <> '' then
 begin
   SortedLines := SortByWord(Memo1.Lines, Edit1.Text);
   Memo1.Lines.Text := SortedLines.Text;
   if Memo1.Lines.Text='' then
   begin
       showmessage('��, ������ ���� ���(');
       form9.memo1.lines.loadfromfile('�����\�����\��������.txt');
   end;
 end
 else
 form9.memo1.lines.loadfromfile('�����\�����\��������.txt');

end;

procedure TForm9.Button2Click(Sender: TObject);
begin
form9.memo1.lines.loadfromfile('�����\�����\��������.txt');
ComboBox1.Items.Clear;
combobox1.text:=('�������� ��� ����������');
combobox1.Items.add('���������� �� ��������');
combobox1.Items.add('���������� �� �����');
end;

procedure TForm9.ComboBox1Change(Sender: TObject);
begin
  if ComboBox1.Text = '���������� �� ��������'  then
  begin
    if memo1.visible=true then
      begin
        Lines := TStringList.Create;
        Lines.Text := Memo1.Text;
        Lines.Sort;
        Memo1.Lines.Text := Lines.Text;
        Lines.Free;
      end
  end;
  if ComboBox1.Text = '���������� �� �����'  then
  SortMemoByAnimalType;
end;

procedure TForm9.FormCreate(Sender: TObject);
begin
form9.memo1.lines.loadfromfile('�����\�����\��������.txt');
ComboBox1.Items.Clear;
combobox1.text:=('�������� ��� ����������');
combobox1.Items.add('���������� �� ��������');
combobox1.Items.add('���������� �� �����');

end;


procedure TForm9.SpeedButton3Click(Sender: TObject);
begin
form9.close;
form2.show;
end;



end.

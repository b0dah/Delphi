unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Types;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Button2: TButton;
    Button20: TButton;
    Button21: TButton;
    Button22: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Edit1: TEdit;
    //procedure Edit1Change(Sender: TObject);
//----------

    procedure Button12Click(Sender: TObject);
    procedure ButtonEqualClick(Sender: TObject);
    procedure ButtonBackSpaceClick(Sender: TObject);
    procedure ButtonAllCleanClick(Sender: TObject);
    procedure Click2Button(Sender: TObject);

    procedure Click2Sign(Sender: TObject);

    procedure Click2Radical(Sender: TObject);
    procedure Click2Square(Sender: TObject);
    procedure Click2Inverse(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  a, b, c : Real;
  sign : String;
implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Click2Button(Sender: TObject);
begin
    Edit1.Text:=Edit1.Text + (Sender as TButton).Caption;
end;

procedure TForm1.ButtonBackSpaceClick(Sender: TObject);
var string_value : string;
begin
  string_value := Edit1.Text;
  if string_value <> ''
     then Delete(string_value, Length(string_value), 1);
  Edit1.Text:=string_value;
end;



procedure TForm1.ButtonAllCleanClick(Sender: TObject);
begin
  Edit1.Clear;
end;

procedure TForm1.Click2Sign(Sender: TObject);
begin
   a := StrToFloat(Edit1.Text);
   Edit1.Clear;

   sign := (Sender as TButton).Caption;
end;



procedure TForm1.Button12Click(Sender: TObject);
begin

  Edit1.Clear;

  a := 0;
  b := 0;
  c:=0;

end;


procedure TForm1.Click2Radical(Sender: TObject);
begin
  a:=StrToFloat(Edit1.Text);
  a:=sqrt(a);
  Edit1.text := FloatToStr(a);

  a:=0;
end;

procedure TForm1.Click2Square(Sender: TObject);
begin
  a:=StrToFloat(Edit1.Text);
  a:=sqr(a);
  Edit1.text := FloatToStr(a);

  a:=0;
end;

procedure TForm1.Click2Inverse(Sender: TObject);
begin
  a:=StrToFloat(Edit1.Text);
  a:=1/a;
  Edit1.text := FloatToStr(a);

  a:=0;
end;

procedure TForm1.Edit1Change(Sender: TObject);
var string_value: String;
begin
   string_value := Edit1.Text;
  if ( string_value <> '' ) and (not (string_value[Length(String_value)] in ['0'..'9']))
     then Delete(string_value, Length(string_value), 1);
  Edit1.Text:=string_value;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 // button1.Color:=RGB(255,0,255);
end;

procedure TForm1.ButtonEqualClick(Sender: TObject);
begin
  b := StrToFloat(Edit1.Text);
  Edit1.Clear;

  case sign of
  '+': c:= a+b;
  '-': c:= a-b;
  'x': c:= a*b;
  '/': c:= a/b;
  end;

  Edit1.text := FloatToStr(c);

end;
end.


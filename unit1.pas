unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    ListBox1: TListBox;
    ListBox2: TListBox;
    procedure FormDropFiles(Sender: TObject; const FileNames: array of String);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormDropFiles(Sender: TObject; const FileNames: array of String
  );
var
  i: Integer;
begin
  for i := 0 to High(FileNames) do
  begin
    Memo1.Lines.Add(FileNames[i]);
  end
end;

end.


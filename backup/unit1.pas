unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Spin;

type

  { TForm1 }

  TForm1 = class(TForm)
    Convert: TButton;
    EUR: TFloatSpinEdit;
    CNY: TFloatSpinEdit;
    EURTOCNY: TRadioButton;
    CNYTOEUR: TRadioButton;
    Reset: TButton;
    Quitter: TButton;
    Euro: TLabel;
    Chinois: TLabel;
    procedure CNYTOEURChange(Sender: TObject);
    procedure ConvertClick(Sender: TObject);
    procedure EURTOCNYChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QuitterClick(Sender: TObject);
    procedure ResetClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }


procedure TForm1.FormCreate(Sender: TObject);
begin
  Convert.Enabled:=false;
  Reset.Enabled:=false;
end;

procedure TForm1.QuitterClick(Sender: TObject);
begin
    if MessageDlg('Question', 'Voulez-vous vraiment quitter?', mtConfirmation,
   [mbYes, mbNo],0) = mrYes  then
           Form1.Close


end;

procedure TForm1.ResetClick(Sender: TObject);
begin
  Convert.Enabled:=false;
  Reset.Enabled:=false;
  EUR.Value:=0;
  CNY.Value:=0;
end;

procedure TForm1.EURTOCNYChange(Sender: TObject);
begin
  Convert.Enabled:=true;
  Reset.Enabled:=true;
  EUR.Value:=0;
  CNY.Value:=0;
end;

procedure TForm1.CNYTOEURChange(Sender: TObject);
begin
  Convert.Enabled:=true;
  Reset.Enabled:=true;
  EUR.Value:=0;
  CNY.Value:=0;
end;

procedure TForm1.ConvertClick(Sender: TObject);
begin
  if (EURTOCNY.Checked) then
  begin
       CNY.Value:=EUR.Value*7.65;
  end;
  if (CNYTOEUR.Checked) then
  begin
       EUR.Value:=CNY.Value*0.13;
  end;
end;

end.


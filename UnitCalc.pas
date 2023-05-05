unit UnitCalc;
// Lorene Garcia
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls;

type
  TFrmCalc = class(TForm)
    TEdtInserir: TEdit;
    TBtUm: TButton;
    TBtQuatro: TButton;
    TBtSete: TButton;
    TBtDois: TButton;
    TBtZero: TButton;
    TBtCinco: TButton;
    TBtOito: TButton;
    TBtTres: TButton;
    TBtSeis: TButton;
    TBtNove: TButton;
    TBtC: TButton;
    TBtIgual: TButton;
    TBtMais: TButton;
    TBtMenos: TButton;
    TBtMultiplicar: TButton;
    TBtDividir: TButton;
    procedure Sair1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure TBtMaisClick(Sender: TObject);
    procedure TBtMenosClick(Sender: TObject);
    procedure TBtMultiplicarClick(Sender: TObject);
    procedure TBtDividirClick(Sender: TObject);
    procedure TBtNumeroClick(Sender: TObject);
    procedure TBtIgualClick(Sender: TObject);
    procedure TBtCClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
     FOperacao: char;
     FTotal: Double;
     FUltimoN : Double;
     procedure Calcular;
     procedure Limpar;


  public
    { Public declarations }
  end;

var
  FrmCalc: TFrmCalc;



implementation

{$R *.dfm}



procedure TFrmCalc.Calcular;
begin
  case  FOperacao of

  '+' :  FTotal := FTotal + StrToFloat(TEdtInserir.Text);
  '-' :  FTotal := FTotal - StrToFloat(TEdtInserir.Text);
  '*' :  FTotal := FTotal * StrToFloat(TEdtInserir.Text);
  '/' :  FTotal := FTotal / StrToFloat(TEdtInserir.Text);

  end;
    TEdtInserir.Text  := FloatToStr(FTotal);
    FUltimoN := 0;
end;

procedure TFrmCalc.FormCreate(Sender: TObject);
begin
  Limpar;
end;

procedure TFrmCalc.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin



  case Key of

  13 : begin
        //Calcular;
       end;

  46:   Limpar;


  8:    Limpar;
  end;

end;

procedure TFrmCalc.Limpar;
begin
 FTotal := 0;
 FUltimoN := 0;
 TEdtInserir.Text := '0';
 FOperacao := '+';
end;

procedure TFrmCalc.Sair1Click(Sender: TObject);
begin
 Close;
end;

procedure TFrmCalc.TBtCClick(Sender: TObject);
begin
 Limpar;
end;

procedure TFrmCalc.TBtDividirClick(Sender: TObject);
begin
 FUltimoN := StrToFloat(TEdtInserir.Text);
 Calcular;
 FOperacao := '/';

end;

procedure TFrmCalc.TBtIgualClick(Sender: TObject);
begin
   Calcular;
end;

procedure TFrmCalc.TBtMaisClick(Sender: TObject);
begin
  FUltimoN := StrToFloat(TEdtInserir.Text);
  Calcular;
  FOperacao := '+';
end;

procedure TFrmCalc.TBtMenosClick(Sender: TObject);
begin
 FUltimoN := StrToFloat(TEdtInserir.Text);
 Calcular;
 FOperacao := '-';
end;

procedure TFrmCalc.TBtMultiplicarClick(Sender: TObject);
begin
 FUltimoN := StrToFloat(TEdtInserir.Text);
 Calcular;
 FOperacao := '*';
end;

procedure TFrmCalc.TBtNumeroClick(Sender: TObject);
begin

  if FUltimoN = 0 then
  TEdtInserir.Text :=  TButton(Sender).Caption
  else
   TEdtInserir.Text := TEdtInserir.Text + TButton(Sender).Caption;


   FUltimoN := StrToFloat(TEdtInserir.Text);


end;




end.

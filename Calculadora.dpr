program Calculadora;

uses
  Vcl.Forms,
  UnitCalc in 'UnitCalc.pas' {FrmCalc},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Metropolis UI Dark');
  Application.CreateForm(TFrmCalc, FrmCalc);
  Application.Run;
end.

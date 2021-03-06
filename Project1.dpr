program Project1;

uses
  Vcl.Forms,
  PrincipalUnit in 'PrincipalUnit.pas' {Form1},
  JanelinhaUnit in 'JanelinhaUnit.pas' {Form2},
  AlienUnit in 'AlienUnit.pas',
  ConstantesUnit in 'ConstantesUnit.pas',
  FaseUnit in 'FaseUnit.pas',
  RegPontuacaoUnit in 'RegPontuacaoUnit.pas' {Form3},
  HistoricoUnit in 'HistoricoUnit.pas',
  XMLManipUnit in 'XMLManipUnit.pas',
  ArquivosUnit in 'ArquivosUnit.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.

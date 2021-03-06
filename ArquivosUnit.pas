unit ArquivosUnit;

interface

uses
  SysUtils;

function ler_do_arquivo(nome_arquivo: String): String;
procedure escrever_no_arquivo(nome_arquivo, conteudo: String; adicionar: Boolean);

implementation

// Utilidade que l? todo um arquivo para uma string
function ler_do_arquivo(nome_arquivo: String): String;
var
  arq: TextFile;
  leitura: String;
begin
  // Parta do pressuposto de que o arquivo n?o existe
  Result := '';
  // Se o arquivo existir
  if(FileExists(nome_arquivo) = True) then
  begin
    // Associe o arquivo
    AssignFile(arq, nome_arquivo);
    // Leia-o desde o in?cio
    Reset(arq);
    // Enquanto n?o chegar ao fim
    while(Eof(arq) = False) do
    begin
      // Leia tudo, linha por linha
      Readln(arq, leitura);
      Result := Result + leitura;
    end;
    // Feche o arquivo ao fim
    CloseFile(arq);
  end;
end;

// Escreve conte?do em um arquivo, tratanto de sua exist?ncia (ou n?o) e da adi??o de conte?do
procedure escrever_no_arquivo(nome_arquivo, conteudo: String; adicionar: Boolean);
var
  arq: TextFile;
begin
  // Se o arquivo existir
  if(FileExists(nome_arquivo) = True) then
  begin
    // Associe o arquivo
    AssignFile(arq, nome_arquivo);
    // Abra de acordo com o modo de adi??o pedido
    if(adicionar = True) then
      Append(arq)
    else
      Rewrite(arq);
    // Escreva o conte?do repassado no arquivo
    Writeln(arq, conteudo);
    // Feche o arquivo
    CloseFile(arq);
  end
  else
  begin
    // Se o arquivo n?o existir, crie-o, escreva o conte?do e feche-o
    AssignFile(arq, nome_arquivo);
    Rewrite(arq);
    Writeln(arq, conteudo);
    CloseFile(arq);
  end;
end;

end.

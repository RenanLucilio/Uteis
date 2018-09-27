unit Model.Conexao.interfaces;

interface

uses
   System.Classes, Data.DB, System.SysUtils;

type
   iModelConexao = interface
      ['{BCF11EBC-8927-4132-9F3C-65AE7C60D5BC}']
      function criarBanco(script: TStrings): iModelConexao;
   end;

   iModelCriarBanco = interface
      ['{714B0940-056C-4AB1-AD93-7D346D3AF7D5}']
   end;

   iModelQuery = interface
      ['{5D00397F-E1E6-47B0-BC4F-337EA2E01602}']
      function getQuery: TStringBuilder;
      procedure setQuery(const Value: TStringBuilder);
      function execQueryComRetorno(var dados: TDataSet): iModelQuery;
      function execQuery: iModelQuery;
      property Query: TStringBuilder read getQuery write setQuery;
   end;

implementation

end.
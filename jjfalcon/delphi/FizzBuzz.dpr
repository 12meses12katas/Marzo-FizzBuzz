{-------------------------------------------------------------------------------
KATA FIZZBUZ

DESCRIPCION
https://github.com/12meses12katas/Marzo-FizzBuzz

USO
Para usar el sistema basta lanzar el ejecutable de los siguientes modos:
* Modo UI por defecto. Incluir -autorun para ejecutar automaticamente
* Modo Consola. Ejecutar con parametro -h

DESARROLLO

Plataforma  : Windows XP SP2 y Delphi 7 Enterprise

Historial   :
  - version 1.0 (02/03/2011)

TODO        : <tareas pendientes de realizar>
-------------------------------------------------------------------------------}

{$APPTYPE CONSOLE}

program FizzBuzz;

uses
  FastMM4,
  Forms,
  sysutils,
  TextTestRunner,
  GUITestRunner,
  TestFramework,
  uFizzBuzzTest in 'uFizzBuzzTest.pas',
  uFizzBuzz in 'uFizzBuzz.pas';

{$R *.res}

begin
  if FindCmdLineSwitch('h', ['-', '/'], true) then
    TextTestRunner.RunRegisteredTests(rxbHaltOnFailures)
  else
  begin
    Application.Initialize;
    GUITestRunner.RunRegisteredTests;
  end;
end.


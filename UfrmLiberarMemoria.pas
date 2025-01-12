unit UfrmLiberarMemoria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TfrmLiberarMemoria = class(TForm)
    Timer1: TTimer;
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    ListView1: TListView;
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLiberarMemoria: TfrmLiberarMemoria;

implementation

{$R *.dfm}
procedure LiberarMemoria;
begin
  if Win32Platform = VER_PLATFORM_WIN32_NT then
    SetProcessWorkingSetSize(GetCurrentProcess, $FFFFFFFF, $FFFFFFFF);
end;

procedure Optimizar_memoria;
var
  MainHandle : THandle;
begin
  try
    MainHandle := OpenProcess(PROCESS_ALL_ACCESS, false, GetCurrentProcessID);
    SetProcessWorkingSetSize(MainHandle,DWORD(-1),DWORD(-1));
  finally
    CloseHandle(MainHandle);
  end;
end;

procedure TfrmLiberarMemoria.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmLiberarMemoria.Button2Click(Sender: TObject);
var
  diasSemana: array[1..7] of string;
  ni,mi: Integer;
begin
  diasSemana[1] := 'Lunes';
  diasSemana[2] := 'Martes';
  diasSemana[3] := 'Mi�rcoles';
  diasSemana[4] := 'Jueves';
  diasSemana[5] := 'Viernes';
  diasSemana[6] := 'S�bado';
  diasSemana[7] := 'Domingo';


  for ni := 1 to 20 do
  begin
    // Agregar columnas al ListView
    ListView1.Columns.Add.Caption := 'D�a';

    // Llenar el ListView con los nombres de los d�as
    for mi := 1 to 7 do
      ListView1.Items.Add.Caption := diasSemana[mi];
  end;



end;

procedure TfrmLiberarMemoria.Timer1Timer(Sender: TObject);
begin
  ShowMessage('Se va a liberar la memoria...');
  Screen.Cursor:= crHourGlass;
  LiberarMemoria;
  Optimizar_memoria;
  Screen.Cursor:= crDefault;
  ShowMessage('�Memoria optimizada!');

end;

end.


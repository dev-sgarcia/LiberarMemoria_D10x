object frmLiberarMemoria: TfrmLiberarMemoria
  Left = 0
  Top = 0
  Caption = 'Liberar Memoria'
  ClientHeight = 475
  ClientWidth = 611
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 56
    Top = 16
    Width = 505
    Height = 97
    Lines.Strings = (
      
        'Al iniciar el programa se comienza a generar un array de strings' +
        ' para incrementar la memoria y al plazo '
      
        'de 30 segundos se inicia la recuperaci'#243'n de memoria lo que podr'#237 +
        'a visualizarse desde el task Manager o '
      'Administrador de tareas'
      ''
      
        'Se van a agregar en cada click al bot'#243'n (Incrementar Memoria), 1' +
        '0 veces los 7 d'#237'as.'
      'Notar'#225's una peque'#241'a alza en el consumo de memoria.'
      '')
    TabOrder = 0
  end
  object Button1: TButton
    Left = 486
    Top = 129
    Width = 75
    Height = 25
    Caption = 'Salir'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 56
    Top = 129
    Width = 121
    Height = 25
    Caption = 'Incrementar Memoria'
    TabOrder = 2
    OnClick = Button2Click
  end
  object ListView1: TListView
    Left = 56
    Top = 168
    Width = 505
    Height = 289
    Columns = <>
    TabOrder = 3
  end
  object Timer1: TTimer
    Interval = 30000
    OnTimer = Timer1Timer
    Left = 72
    Top = 177
  end
end

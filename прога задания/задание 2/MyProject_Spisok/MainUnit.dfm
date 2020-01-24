object Form1: TForm1
  Left = 259
  Top = 147
  Width = 1088
  Height = 563
  Caption = 'Work with Spisok'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 208
    Top = 160
    object file1: TMenuItem
      Caption = 'file'
      object savetotipfile1: TMenuItem
        Caption = 'save to tipfile'
      end
      object savetotextfile1: TMenuItem
        Caption = 'save to textfile'
        OnClick = savetotextfile1Click
      end
    end
    object work1: TMenuItem
      Caption = 'work'
      object buildspisok1: TMenuItem
        Caption = 'build spisok'
        OnClick = buildspisok1Click
      end
      object delspisok1: TMenuItem
        Caption = 'del spisok'
        OnClick = delspisok1Click
      end
    end
    object inputinfo1: TMenuItem
      Caption = 'input_info'
    end
  end
end

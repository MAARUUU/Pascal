object Project3a: TProject3a
  Left = 186
  Top = 159
  Width = 928
  Height = 480
  Caption = 'Project3a'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 192
    Top = 56
    object N1: TMenuItem
      Caption = #1086#1087#1077#1088#1072#1094#1080#1080
      object Build1: TMenuItem
        Caption = #1089#1086#1079#1076#1072#1085#1080#1077' '#1089#1087#1080#1089#1082#1072
        OnClick = Build1Click
      end
      object Sptotext: TMenuItem
        Caption = #1089#1086#1093#1088#1072#1085#1077#1085#1080#1077' '#1074' '#1090#1077#1082#1089#1090'.'#1092#1072#1081#1083
        OnClick = SptotextClick
      end
      object Delspisok: TMenuItem
        Caption = #1091#1076#1072#1083#1077#1085#1080#1077' '#1089#1087#1080#1089#1082#1072
        OnClick = DelspisokClick
      end
    end
    object N2: TMenuItem
      Caption = #1074#1099#1093#1086#1076
      OnClick = N2Click
    end
  end
  object dlgOpen1: TOpenDialog
    Left = 288
    Top = 96
  end
end

object Form2: TForm2
  Left = 226
  Top = 142
  Width = 1053
  Height = 681
  Caption = #1057#1077#1088#1074#1110#1089#1090#1085#1080#1081' '#1094#1077#1085#1090#1088' '#1076#1083#1103' '#1055#1050' '
  Color = clGradientInactiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 856
    Top = 96
    Width = 66
    Height = 13
    Caption = #1055#1088#1072#1094#1110#1074#1085#1080#1082':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 16
    Width = 109
    Height = 13
    Caption = #1047#1085#1072#1081#1090#1080' '#1079#1072' '#1085#1072#1079#1074#1086#1102
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 272
    Top = 16
    Width = 102
    Height = 13
    Caption = #1047#1085#1072#1081#1090#1080' '#1079#1072' '#1082#1086#1076#1086#1084
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 856
    Top = 176
    Width = 35
    Height = 13
    Caption = #1044#1072#1090#1072':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label17: TLabel
    Left = 856
    Top = 136
    Width = 60
    Height = 13
    Caption = #1047#1072#1084#1086#1074#1085#1080#1082
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 48
    Width = 833
    Height = 369
    DataSource = DataModule2.DataSPoslugi
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object Button1: TButton
    Left = 856
    Top = 16
    Width = 169
    Height = 65
    Caption = #1055#1086#1095#1072#1090#1080' '#1088#1086#1073#1086#1090#1091
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 856
    Top = 112
    Width = 161
    Height = 21
    KeyField = 'Id '#1087#1088#1072#1094#1110#1074#1085#1080#1082#1072
    ListField = #1055#1030#1041
    ListSource = DataModule2.DataSPraciv
    TabOrder = 2
  end
  object Edit1: TEdit
    Left = 128
    Top = 16
    Width = 129
    Height = 21
    TabOrder = 3
    OnChange = Edit1Change
  end
  object Edit2: TEdit
    Left = 376
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object DateTimePicker1: TDateTimePicker
    Left = 856
    Top = 192
    Width = 161
    Height = 21
    Date = 44507.829634050930000000
    Time = 44507.829634050930000000
    TabOrder = 5
  end
  object Button2: TButton
    Left = 856
    Top = 288
    Width = 169
    Height = 37
    Caption = #1057#1090#1074#1086#1088#1080#1090#1080' '#1095#1077#1082
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 856
    Top = 336
    Width = 169
    Height = 37
    Caption = #1044#1086#1076#1072#1090#1080' '#1076#1086' '#1095#1077#1082#1091
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = Button3Click
  end
  object Panel1: TPanel
    Left = 16
    Top = 432
    Width = 833
    Height = 177
    Caption = 'Panel1 '
    TabOrder = 8
    object Label5: TLabel
      Left = 640
      Top = 72
      Width = 121
      Height = 13
      Caption = 'Label5 '#1044#1086#1073#1086#1074#1083#1077#1085' '#1090#1086#1074#1072#1088' '
      WordWrap = True
    end
    object Label7: TLabel
      Left = 640
      Top = 112
      Width = 97
      Height = 13
      Caption = 'Label7 '#1054#1073#1097#1072#1103' '#1094#1077#1085#1072
    end
    object Label18: TLabel
      Left = 640
      Top = 56
      Width = 134
      Height = 13
      Caption = #1054#1089#1090#1072#1085#1085#1103'  '#1086#1073#1088#1072#1085#1072'  '#1087#1086#1089#1083#1091#1075#1072':'
    end
    object Label19: TLabel
      Left = 640
      Top = 28
      Width = 73
      Height = 13
      Caption = #1063#1077#1082' '#1085#1086#1084#1077#1088': '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 710
      Top = 28
      Width = 13
      Height = 13
      Caption = #8470
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label21: TLabel
      Left = 8
      Top = 8
      Width = 71
      Height = 13
      Caption = #1055#1086#1090#1086#1095#1085#1080#1081' '#1095#1077#1082':'
    end
    object DBGrid2: TDBGrid
      Left = 8
      Top = 24
      Width = 617
      Height = 145
      DataSource = DataModule2.DataSSec
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
    object Button4: TButton
      Left = 640
      Top = 144
      Width = 137
      Height = 25
      Caption = #1042#1080#1076#1072#1083#1080#1090#1080' '#1087#1086#1089#1083#1091#1075#1091
      TabOrder = 1
      OnClick = Button4Click
    end
    object Panel4: TPanel
      Left = 336
      Top = 8
      Width = 297
      Height = 161
      TabOrder = 2
      object Label13: TLabel
        Left = 8
        Top = 128
        Width = 281
        Height = 16
        Caption = #1050#1085#1086#1087#1082#1072' '#1074#1080#1076#1072#1083#1077#1085#1085#1103' '#1074#1080#1073#1088#1072#1085#1086#1111' '#1087#1086#1089#1083#1091#1075#1080'>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 40
        Top = 40
        Width = 252
        Height = 16
        Caption = #1058#1086#1074#1072#1088' '#1103#1082#1080#1081' '#1073#1091#1074' '#1076#1086#1076#1072#1085#1080#1081' '#1076#1086' '#1095#1077#1082#1091'>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 128
        Top = 80
        Width = 161
        Height = 16
        Caption = #1055#1086#1074#1085#1072' '#1089#1091#1084#1084#1072' '#1087#1086#1089#1083#1091#1075'>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label20: TLabel
        Left = 93
        Top = 8
        Width = 195
        Height = 16
        Caption = #1053#1086#1084#1077#1088' '#1089#1090#1074#1086#1088#1077#1085#1085#1086#1075#1086' '#1095#1077#1082#1091'>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object Button5: TButton
    Left = 856
    Top = 536
    Width = 161
    Height = 33
    Caption = #1044#1086#1087#1086#1084#1086#1075#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 856
    Top = 384
    Width = 169
    Height = 37
    Caption = #1056#1086#1079#1076#1088#1086#1082#1091#1074#1072#1090#1080' '#1095#1077#1082
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 856
    Top = 576
    Width = 169
    Height = 33
    Caption = #1047#1072#1082#1110#1085#1095#1080#1090#1080' '#1088#1086#1073#1086#1090#1091
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 512
    Top = 16
    Width = 75
    Height = 25
    Caption = #1047#1085#1072#1081#1090#1080
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 600
    Top = 16
    Width = 75
    Height = 25
    Caption = #1042#1110#1076#1084#1110#1085#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
    OnClick = Button9Click
  end
  object Panel2: TPanel
    Left = 576
    Top = 272
    Width = 273
    Height = 153
    TabOrder = 14
    object Label9: TLabel
      Left = 16
      Top = 72
      Width = 255
      Height = 16
      Caption = #1044#1086#1076#1072#1090#1080' '#1074#1080#1073#1088#1072#1085#1091' '#1087#1086#1089#1083#1091#1075#1091' '#1076#1086' '#1095#1077#1082#1091'>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 40
      Top = 120
      Width = 229
      Height = 16
      Caption = #1056#1086#1079#1076#1088#1091#1082#1091#1074#1072#1090#1080' '#1089#1090#1074#1086#1088#1077#1085#1080#1081' '#1095#1077#1082'>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 48
      Top = 24
      Width = 220
      Height = 16
      Caption = #1057#1090#1074#1086#1088#1077#1085#1085#1103' '#1087#1086#1088#1086#1078#1085#1100#1086#1075#1086' '#1095#1077#1082#1091'>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel3: TPanel
    Left = 576
    Top = 88
    Width = 273
    Height = 153
    TabOrder = 15
    object Label11: TLabel
      Left = 120
      Top = 24
      Width = 138
      Height = 16
      Caption = #1042#1080#1073#1110#1088' '#1087#1088#1072#1094#1110#1074#1085#1080#1082#1072'>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 120
      Top = 64
      Width = 135
      Height = 16
      Caption = #1042#1080#1073#1110#1088' '#1079#1072#1084#1086#1074#1085#1080#1082#1072'>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 48
      Top = 104
      Width = 210
      Height = 16
      Caption = #1042#1080#1073#1110#1088' '#1076#1072#1090#1080' '#1089#1090#1074#1086#1088#1077#1085#1085#1103' '#1095#1077#1082#1091'>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Button10: TButton
    Left = 856
    Top = 536
    Width = 169
    Height = 33
    Caption = #1047#1072#1082#1088#1080#1090#1080' '#1076#1086#1087#1086#1084#1086#1075#1091
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 16
    OnClick = Button10Click
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 856
    Top = 152
    Width = 161
    Height = 21
    KeyField = 'Id '#1079#1072#1084#1086#1074#1085#1080#1082#1072
    ListField = #1055#1030#1041
    ListSource = DataModule2.DataSZamov
    TabOrder = 17
  end
  object Panel5: TPanel
    Left = 856
    Top = 336
    Width = 169
    Height = 89
    Caption = #1054#1073#1077#1088#1110#1090#1100' '#1087#1086#1089#1083#1091#1075#1091' '#1079' '#1090#1072#1073#1083#1080#1094#1110
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 18
  end
  object MainMenu1: TMainMenu
    Left = 24
    Top = 120
    object N1: TMenuItem
      Caption = #1044#1086#1074#1110#1076#1085#1080#1082
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1055#1088#1086' '#1087#1088#1086#1075#1088#1072#1084#1091
      OnClick = N2Click
    end
  end
end

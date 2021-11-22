object Form1: TForm1
  Left = 490
  Top = 274
  Width = 954
  Height = 497
  Caption = #1044#1086#1074#1110#1076#1085#1080#1082
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 938
    Height = 458
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1055#1086#1089#1083#1091#1075#1080
      object Label1: TLabel
        Left = 24
        Top = 336
        Width = 150
        Height = 15
        Caption = #1047#1085#1072#1081#1090#1080' '#1087#1086#1089#1083#1091#1075#1091' '#1079#1072' '#1085#1072#1079#1074#1086#1102
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 15
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 24
        Top = 376
        Width = 143
        Height = 15
        Caption = #1047#1085#1072#1081#1090#1080' '#1087#1086#1089#1083#1091#1075#1091' '#1079#1072' '#1082#1086#1076#1086#1084
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 15
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 921
        Height = 273
        Align = alCustom
        DataSource = DataModule2.DataSPoslugi
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object Button1: TButton
        Left = 16
        Top = 280
        Width = 105
        Height = 33
        Caption = #1044#1086#1076#1072#1090#1080
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 128
        Top = 280
        Width = 105
        Height = 33
        Caption = #1047#1084#1110#1085#1080#1090#1080
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 240
        Top = 280
        Width = 105
        Height = 33
        Caption = #1042#1080#1076#1072#1083#1080#1090#1080
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = Button3Click
      end
      object Button4: TButton
        Left = 824
        Top = 280
        Width = 97
        Height = 33
        Caption = #1047#1074#1110#1090
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = Button4Click
      end
      object Edit1: TEdit
        Left = 192
        Top = 336
        Width = 153
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnChange = Edit1Change
      end
      object Edit2: TEdit
        Left = 192
        Top = 376
        Width = 73
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object Button5: TButton
        Left = 272
        Top = 368
        Width = 73
        Height = 24
        Caption = #1047#1085#1072#1081#1090#1080
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnClick = Button5Click
      end
      object Panel1: TPanel
        Left = 360
        Top = 280
        Width = 457
        Height = 121
        TabOrder = 8
        object Label3: TLabel
          Left = 16
          Top = 16
          Width = 75
          Height = 13
          Caption = #1053#1072#1079#1074#1072' '#1087#1086#1089#1083#1091#1075#1080
        end
        object Label4: TLabel
          Left = 272
          Top = 16
          Width = 39
          Height = 13
          Caption = #1047#1085#1080#1078#1082#1072
        end
        object Label5: TLabel
          Left = 64
          Top = 48
          Width = 22
          Height = 13
          Caption = #1062#1110#1085#1072
        end
        object Label7: TLabel
          Left = 208
          Top = 48
          Width = 101
          Height = 13
          Caption = #1042#1072#1088#1090#1110#1089#1090#1100' '#1079' '#1079#1085#1080#1078#1082#1086#1102
        end
        object Button19: TButton
          Left = 264
          Top = 80
          Width = 81
          Height = 25
          Caption = #1057#1090#1074#1086#1088#1080#1090#1080
          TabOrder = 5
          OnClick = Button19Click
        end
        object Edit3: TEdit
          Left = 96
          Top = 16
          Width = 105
          Height = 21
          TabOrder = 0
        end
        object Edit4: TEdit
          Left = 96
          Top = 48
          Width = 105
          Height = 21
          TabOrder = 1
        end
        object Edit5: TEdit
          Left = 320
          Top = 16
          Width = 113
          Height = 21
          TabOrder = 2
        end
        object Edit6: TEdit
          Left = 320
          Top = 48
          Width = 113
          Height = 21
          TabOrder = 3
        end
        object Button18: TButton
          Left = 264
          Top = 80
          Width = 81
          Height = 25
          Caption = #1047#1084#1110#1085#1080#1090#1080
          TabOrder = 4
          OnClick = Button18Click
        end
        object Button20: TButton
          Left = 352
          Top = 80
          Width = 81
          Height = 25
          Caption = #1054#1090#1084#1077#1085#1072
          TabOrder = 6
          OnClick = Button20Click
        end
      end
      object Button6: TButton
        Left = 272
        Top = 392
        Width = 73
        Height = 25
        Caption = #1042#1110#1076#1084#1110#1085#1072
        TabOrder = 9
        OnClick = Button6Click
      end
      object Button22: TButton
        Left = 824
        Top = 320
        Width = 99
        Height = 33
        Caption = #1047#1072#1082#1088#1080#1090#1080' '#1076#1086#1074#1110#1076#1085#1080#1082
        TabOrder = 10
        OnClick = Button22Click
      end
      object Button24: TButton
        Left = 112
        Top = 280
        Width = 137
        Height = 33
        Caption = #1047#1084#1110#1085#1080#1090#1080' '#1073#1072#1079#1091' '#1076#1072#1085#1080#1093
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'ans Seriferif'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        OnClick = Button24Click
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1047#1072#1084#1086#1074#1085#1080#1082#1080
      ImageIndex = 2
      object Button9: TButton
        Left = 264
        Top = 192
        Width = 105
        Height = 33
        Caption = #1042#1080#1076#1072#1083#1080#1090#1080
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = Button9Click
      end
      object Button10: TButton
        Left = 24
        Top = 192
        Width = 105
        Height = 33
        Caption = #1044#1086#1076#1072#1090#1080
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = Button10Click
      end
      object Button11: TButton
        Left = 144
        Top = 192
        Width = 105
        Height = 33
        Caption = #1047#1084#1110#1085#1080#1090#1080
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = Button11Click
      end
      object DBGrid3: TDBGrid
        Left = 8
        Top = 0
        Width = 913
        Height = 177
        DataSource = DataModule2.DataSZamov
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object Button25: TButton
        Left = 120
        Top = 192
        Width = 153
        Height = 33
        Caption = #1047#1084#1110#1085#1080#1090#1080' '#1073#1072#1079#1091' '#1076#1072#1085#1080#1093
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = Button25Click
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1055#1088#1072#1094#1110#1074#1085#1080#1082#1080
      ImageIndex = 3
      object DBGrid4: TDBGrid
        Left = 8
        Top = 8
        Width = 913
        Height = 169
        DataSource = DataModule2.DataSPraciv
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object Button12: TButton
        Left = 24
        Top = 192
        Width = 105
        Height = 33
        Caption = #1044#1086#1076#1072#1090#1080
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = Button12Click
      end
      object Button13: TButton
        Left = 144
        Top = 192
        Width = 105
        Height = 33
        Caption = #1047#1084#1110#1085#1080#1090#1080
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = Button13Click
      end
      object Button14: TButton
        Left = 264
        Top = 192
        Width = 105
        Height = 33
        Caption = #1042#1080#1076#1072#1083#1080#1090#1080
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = Button14Click
      end
      object Button26: TButton
        Left = 120
        Top = 192
        Width = 153
        Height = 33
        Caption = #1047#1084#1110#1085#1080#1090#1080' '#1073#1072#1079#1091' '#1076#1072#1085#1080#1093
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = Button26Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1053#1072#1076#1072#1085#1110' '#1087#1086#1089#1083#1091#1075#1080
      ImageIndex = 1
      object Label8: TLabel
        Left = 320
        Top = 392
        Width = 143
        Height = 15
        Caption = #1047#1085#1072#1081#1090#1080' '#1087#1086#1089#1083#1091#1075#1091' '#1079#1072' '#1082#1086#1076#1086#1084
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 15
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 24
        Top = 336
        Width = 150
        Height = 15
        Caption = #1047#1085#1072#1081#1090#1080' '#1087#1086#1089#1083#1091#1075#1091' '#1079#1072' '#1085#1072#1079#1074#1086#1102
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 15
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 32
        Top = 344
        Width = 150
        Height = 15
        Caption = #1047#1085#1072#1081#1090#1080' '#1087#1086#1089#1083#1091#1075#1091' '#1079#1072' '#1085#1072#1079#1074#1086#1102
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 15
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 40
        Top = 352
        Width = 150
        Height = 15
        Caption = #1047#1085#1072#1081#1090#1080' '#1087#1086#1089#1083#1091#1075#1091' '#1079#1072' '#1085#1072#1079#1074#1086#1102
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 15
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 32
        Top = 392
        Width = 134
        Height = 13
        Caption = #1047#1085#1072#1081#1090#1080' '#1087#1086#1089#1083#1091#1075#1091' '#1079#1072' '#1085#1072#1079#1074#1086#1102
      end
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 921
        Height = 385
        DataSource = DataModule2.DataSNadani
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object Edit7: TEdit
        Left = 472
        Top = 392
        Width = 89
        Height = 21
        TabOrder = 1
      end
      object Button15: TButton
        Left = 576
        Top = 392
        Width = 75
        Height = 25
        Caption = #1047#1085#1072#1081#1090#1080
        TabOrder = 2
        OnClick = Button15Click
      end
      object Button16: TButton
        Left = 664
        Top = 392
        Width = 75
        Height = 25
        Caption = #1042#1110#1076#1084#1110#1085#1072
        TabOrder = 3
        OnClick = Button16Click
      end
      object Edit8: TEdit
        Left = 176
        Top = 392
        Width = 121
        Height = 21
        TabOrder = 4
        OnChange = Edit8Change
      end
      object Button23: TButton
        Left = 848
        Top = 392
        Width = 75
        Height = 25
        Caption = #1047#1074#1110#1090
        TabOrder = 5
        OnClick = Button23Click
      end
    end
    object TabSheet5: TTabSheet
      Caption = #1063#1077#1082#1080
      ImageIndex = 4
      object Label6: TLabel
        Left = 8
        Top = 204
        Width = 79
        Height = 13
        Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1076#1072#1090#1077': '
      end
      object Label13: TLabel
        Left = 8
        Top = 280
        Width = 97
        Height = 13
        Caption = #1047#1085#1072#1081#1090#1080' '#1095#1077#1082' '#1087#1086' '#1082#1086#1076#1091
      end
      object DBGrid5: TDBGrid
        Left = 8
        Top = 8
        Width = 921
        Height = 169
        DataSource = DataModule2.DataSChek
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object DateTimePicker1: TDateTimePicker
        Left = 112
        Top = 200
        Width = 201
        Height = 21
        Date = 42659.493448703710000000
        Time = 42659.493448703710000000
        TabOrder = 1
      end
      object Button7: TButton
        Left = 112
        Top = 232
        Width = 107
        Height = 25
        Caption = #1047#1085#1072#1081#1090#1080' '#1079#1072' '#1076#1072#1090#1086#1102
        TabOrder = 2
        OnClick = Button7Click
      end
      object Button8: TButton
        Left = 232
        Top = 232
        Width = 75
        Height = 25
        Caption = #1042#1110#1076#1084#1110#1085#1072
        TabOrder = 3
        OnClick = Button8Click
      end
      object Edit9: TEdit
        Left = 112
        Top = 280
        Width = 105
        Height = 21
        TabOrder = 4
      end
      object Button17: TButton
        Left = 112
        Top = 312
        Width = 105
        Height = 25
        Caption = #1047#1085#1072#1081#1090#1080' '#1087#1086' '#1082#1086#1076#1091
        TabOrder = 5
        OnClick = Button17Click
      end
      object Button21: TButton
        Left = 224
        Top = 312
        Width = 75
        Height = 25
        Caption = #1042#1110#1076#1084#1110#1085#1072
        TabOrder = 6
        OnClick = Button21Click
      end
    end
  end
end

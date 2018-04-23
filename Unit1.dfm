object Form1: TForm1
  Left = 222
  Top = 177
  Width = 1071
  Height = 564
  Caption = #1055#1088#1080#1083#1086#1078#1077#1085#1080#1077' '#1087#1086#1076#1089#1095#1077#1090#1072' '#1095#1080#1089#1083#1086#1074#1099#1093' '#1093#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 179
    Top = 144
    Width = 5
    Height = 24
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 184
    Top = 208
    Width = 5
    Height = 24
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 24
    Top = 8
    Width = 217
    Height = 81
    Caption = #1042#1042#1054#1044' '#1044#1040#1053#1053#1067#1061
    TabOrder = 0
    OnClick = Button1Click
  end
  object BitBtn1: TBitBtn
    Left = 416
    Top = 429
    Width = 217
    Height = 84
    Caption = #1042#1067#1061#1054#1044
    TabOrder = 1
    Kind = bkClose
  end
  object Button3: TButton
    Left = 280
    Top = 8
    Width = 217
    Height = 81
    Caption = #1055#1054#1044#1057#1063#1045#1058' '#1062#1045#1053#1058#1056#1040#1051#1068#1053#1054#1043#1054' '#1052#1054#1052#1045#1053#1058#1040
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 536
    Top = 8
    Width = 217
    Height = 81
    Caption = #1056#1040#1057#1055#1040#1056#1040#1051#1051#1045#1051#1048#1058#1068
    TabOrder = 3
    OnClick = Button4Click
  end
  object btn1: TButton
    Left = 792
    Top = 8
    Width = 217
    Height = 81
    Caption = #1055#1054#1044#1057#1063#1045#1058' '#1062#1045#1053#1058#1056#1040#1051#1068#1053#1054#1043#1054' '#1052#1054#1052#1045#1053#1058#1040' '#1042' '#1055#1054#1058#1054#1050#1040#1061
    TabOrder = 4
    WordWrap = True
    OnClick = btn1Click
  end
  object OpenDialog1: TOpenDialog
    FileName = 
      'C:\Users\'#1052#1072#1088#1080#1103'\Desktop\'#1087#1072#1088#1072#1083#1083#1077#1083#1100#1085#1086#1077' '#1080' '#1088#1072#1089#1087#1088#1077#1076#1077#1083#1077#1085#1085#1086#1077' '#1087#1088#1086#1075#1088#1072#1084#1084#1080#1088#1086 +
      #1074#1072#1085#1080#1077'\mxxGrafic\f (2).txt'
    Filter = '.txt'
    Left = 1016
    Top = 8
  end
  object Timer1: TTimer
    Left = 1016
    Top = 40
  end
end

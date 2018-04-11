object Form1: TForm1
  Left = 229
  Top = 219
  Width = 778
  Height = 507
  Caption = #1055#1088#1086#1077#1082#1090' '#1087#1086' '#1087#1086#1076#1089#1095#1077#1090#1091' '#1095#1080#1089#1083#1086#1074#1099#1093' '#1093#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 40
    Top = 216
    Width = 31
    Height = 13
    Caption = 'Label2'
    Visible = False
  end
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 217
    Height = 81
    Caption = #1042#1042#1054#1044' '#1044#1040#1053#1053#1067#1061
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 256
    Top = 8
    Width = 217
    Height = 81
    Caption = #1042#1067#1042#1054#1044' '#1063#1048#1057#1051#1054#1042#1067#1061' '#1061#1040#1056#1040#1050#1058#1045#1056#1048#1057#1058#1048#1050
    TabOrder = 1
    Visible = False
    OnClick = Button2Click
  end
  object BitBtn1: TBitBtn
    Left = 496
    Top = 405
    Width = 217
    Height = 73
    Caption = #1042#1067#1061#1054#1044
    TabOrder = 2
    Kind = bkClose
  end
  object Button3: TButton
    Left = 496
    Top = 8
    Width = 217
    Height = 81
    Caption = #1055#1054#1044#1057#1063#1045#1058' '#1062#1045#1053#1058#1056#1040#1051#1068#1053#1054#1043#1054' '#1052#1054#1052#1045#1053#1058#1040
    TabOrder = 3
    Visible = False
    OnClick = Button3Click
  end
  object Edit1: TEdit
    Left = 40
    Top = 304
    Width = 193
    Height = 21
    TabOrder = 4
    Text = 'Edit1'
    Visible = False
  end
  object Button4: TButton
    Left = 496
    Top = 104
    Width = 217
    Height = 81
    Caption = #1056#1040#1057#1055#1040#1056#1040#1051#1051#1045#1051#1048#1058#1068
    TabOrder = 5
    OnClick = Button2Click
  end
  object OpenDialog1: TOpenDialog
    FileName = 
      'C:\Users\'#1052#1072#1088#1080#1103'\Documents\Borland Studio Projects\mxxGrafic\Q1.tx' +
      't'
    Filter = '.txt'
    Left = 728
    Top = 8
  end
end

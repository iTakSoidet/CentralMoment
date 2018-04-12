object OKRightDlg2: TOKRightDlg2
  Left = 227
  Top = 108
  BorderStyle = bsDialog
  Caption = #1042#1042#1054#1044' '#1055#1054#1056#1071#1044#1050#1040' '#1062#1045#1053#1058#1056#1040#1051#1068#1053#1054#1043#1054' '#1052#1054#1052#1045#1053#1058#1040
  ClientHeight = 179
  ClientWidth = 384
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 8
    Top = 8
    Width = 281
    Height = 161
    Shape = bsFrame
  end
  object Label1: TLabel
    Left = 40
    Top = 40
    Width = 237
    Height = 13
    Caption = #1042#1042#1045#1044#1048#1058#1045' '#1055#1054#1056#1071#1044#1054#1050' '#1062#1045#1053#1058#1056#1040#1051#1068#1053#1054#1043#1054' '#1052#1054#1052#1045#1053#1058#1040
  end
  object OKBtn: TButton
    Left = 300
    Top = 8
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object CancelBtn: TButton
    Left = 300
    Top = 38
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object MaskEdit1: TMaskEdit
    Left = 104
    Top = 104
    Width = 137
    Height = 21
    TabOrder = 2
  end
end

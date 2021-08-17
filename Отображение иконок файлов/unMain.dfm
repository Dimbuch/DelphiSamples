object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1054#1090#1086#1073#1088#1072#1078#1077#1085#1080#1077' '#1089#1080#1089#1090#1077#1084#1085#1099#1093' '#1080#1082#1086#1085#1086#1082' '#1092#1072#1081#1083#1086#1074
  ClientHeight = 400
  ClientWidth = 714
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ListView1: TListView
    Left = 8
    Top = 24
    Width = 601
    Height = 313
    Columns = <
      item
        AutoSize = True
        Caption = #1048#1084#1103
      end>
    GridLines = True
    RowSelect = True
    TabOrder = 0
    ViewStyle = vsReport
  end
  object btnFileAdd: TButton
    Left = 8
    Top = 352
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 1
    OnClick = btnFileAddClick
  end
  object btnViewChange: TButton
    Left = 120
    Top = 352
    Width = 75
    Height = 25
    Caption = #1042#1080#1076
    TabOrder = 2
    OnClick = btnViewChangeClick
  end
  object OpenDialog1: TOpenDialog
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    Left = 640
    Top = 112
  end
end

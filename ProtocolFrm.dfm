object FrmProtocol: TFrmProtocol
  Left = 0
  Top = 0
  Caption = 'FrmProtocol'
  ClientHeight = 580
  ClientWidth = 1320
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 75
    Top = 47
    Width = 30
    Height = 13
    Caption = #3648#3621#3586#3607#3637#3656' '
    FocusControl = cxDBTextEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 202
    Top = 47
    Width = 47
    Height = 13
    Caption = 'Protocol'
    FocusControl = cxDBTextEdit2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 765
    Top = 45
    Width = 28
    Height = 13
    Caption = 'wd_id'
    FocusControl = cxDBTextEdit3
  end
  object Label4: TLabel
    Left = 765
    Top = 85
    Width = 46
    Height = 13
    Caption = 'wd_name'
    FocusControl = cxDBTextEdit4
  end
  object cxDBTextEdit1: TcxDBTextEdit
    Left = 75
    Top = 65
    DataBinding.DataField = 'reg_id'
    DataBinding.DataSource = SrcRegH
    TabOrder = 0
    Width = 121
  end
  object cxDBTextEdit2: TcxDBTextEdit
    Left = 202
    Top = 65
    DataBinding.DataField = 'reg_name'
    DataBinding.DataSource = SrcRegH
    TabOrder = 1
    Width = 294
  end
  object cxGrid1: TcxGrid
    Left = 75
    Top = 100
    Width = 421
    Height = 391
    TabOrder = 2
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Visible = True
      DataController.DataSource = SrcRegD
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = #3619#3627#3633#3626
        DataBinding.FieldName = 'reg_nutcode'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.DropDownAutoSize = True
        Properties.DropDownWidth = 200
        Properties.View = cxGrid1DBTableView2
        Properties.KeyFieldNames = 'nu_id'
        Properties.ListFieldItem = cxGrid1DBTableView2Column1
        Width = 76
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        Caption = #3626#3634#3619#3629#3634#3627#3634#3619
        DataBinding.FieldName = 'reg_nutrient'
        Width = 181
      end
      object cxGrid1DBTableView1Column3: TcxGridDBColumn
        Caption = #3621#3635#3604#3633#3610
        DataBinding.FieldName = 'reg_orderno'
        Width = 56
      end
      object cxGrid1DBTableView1Column4: TcxGridDBColumn
        Caption = 'Phase'
        DataBinding.FieldName = 'reg_phase'
        Width = 42
      end
    end
    object cxGrid1DBTableView2: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = SrcNutrient
      DataController.KeyFieldNames = 'nu_id'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView2Column1: TcxGridDBColumn
        DataBinding.FieldName = 'nu_id'
      end
      object cxGrid1DBTableView2Column2: TcxGridDBColumn
        DataBinding.FieldName = 'nu_nutrient'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxDBNavigator1: TcxDBNavigator
    Left = 75
    Top = 19
    Width = 270
    Height = 25
    Buttons.CustomButtons = <>
    DataSource = SrcRegH
    TabOrder = 3
  end
  object cxDBTextEdit3: TcxDBTextEdit
    Left = 765
    Top = 60
    DataBinding.DataField = 'wd_id'
    DataBinding.DataSource = DataSource2
    TabOrder = 4
    Width = 121
  end
  object cxDBTextEdit4: TcxDBTextEdit
    Left = 765
    Top = 100
    DataBinding.DataField = 'wd_name'
    DataBinding.DataSource = DataSource2
    TabOrder = 5
    Width = 121
  end
  object DBGrid1: TDBGrid
    Left = 892
    Top = 47
    Width = 315
    Height = 179
    DataSource = DataSource2
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'wd_id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'wd_name'
        Width = 244
        Visible = True
      end>
  end
  object cxDBNavigator2: TcxDBNavigator
    Left = 892
    Top = 240
    Width = 315
    Height = 25
    Buttons.CustomButtons = <>
    DataSource = DataSource2
    TabOrder = 7
  end
  object SrcRegH: TDataSource
    DataSet = DmMain.DsRegH
    Left = 510
    Top = 55
  end
  object SrcRegD: TDataSource
    DataSet = DmMain.DsRegD
    Left = 310
    Top = 245
  end
  object SrcNutrient: TDataSource
    DataSet = DmMain.DsNutrients
    Left = 395
    Top = 150
  end
  object DataSource2: TDataSource
    DataSet = DmMain.DsWards
    Left = 765
    Top = 130
  end
end

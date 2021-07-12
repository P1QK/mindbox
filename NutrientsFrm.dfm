object FrmNutrients: TFrmNutrients
  Left = 0
  Top = 0
  Anchors = [akLeft, akTop, akRight, akBottom]
  Caption = 'FrmNutrients'
  ClientHeight = 601
  ClientWidth = 427
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 15
    Top = 15
    Width = 386
    Height = 566
  end
  object Label1: TLabel
    Left = 30
    Top = 25
    Width = 19
    Height = 13
    Caption = #3619#3627#3633#3626
    FocusControl = cxDBTextEdit1
  end
  object Label2: TLabel
    Left = 122
    Top = 25
    Width = 46
    Height = 13
    Caption = #3626#3634#3619#3629#3634#3627#3634#3619
    FocusControl = cxDBTextEdit2
  end
  object Label3: TLabel
    Left = 312
    Top = 25
    Width = 34
    Height = 13
    Caption = #3621#3635#3604#3633#3610#3607#3637#3656
    FocusControl = cxDBSpinEdit1
  end
  object cxDBTextEdit1: TcxDBTextEdit
    Left = 30
    Top = 40
    DataBinding.DataField = 'nu_id'
    DataBinding.DataSource = SrcNutrients
    TabOrder = 0
    Width = 86
  end
  object cxDBTextEdit2: TcxDBTextEdit
    Left = 122
    Top = 40
    DataBinding.DataField = 'nu_nutrient'
    DataBinding.DataSource = SrcNutrients
    TabOrder = 1
    Width = 184
  end
  object cxDBSpinEdit1: TcxDBSpinEdit
    Left = 312
    Top = 40
    DataBinding.DataField = 'nu_order'
    DataBinding.DataSource = SrcNutrients
    TabOrder = 2
    Width = 71
  end
  object cxDBNavigator1: TcxDBNavigator
    Left = 30
    Top = 67
    Width = 345
    Height = 25
    Buttons.CustomButtons = <>
    DataSource = SrcNutrients
    TabOrder = 3
  end
  object cxGrid1: TcxGrid
    Left = 30
    Top = 105
    Width = 353
    Height = 461
    TabOrder = 4
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = SrcNutrients
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Styles.ContentEven = cxStyle1
      Styles.ContentOdd = cxStyle2
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        DataBinding.FieldName = 'nu_id'
        Width = 39
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        DataBinding.FieldName = 'nu_nutrient'
        Width = 211
      end
      object cxGrid1DBTableView1Column3: TcxGridDBColumn
        DataBinding.FieldName = 'nu_order'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object SrcNutrients: TDataSource
    DataSet = DmMain.DsNutrients
    Left = 250
    Top = 200
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 185
    Top = 225
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = 16776132
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = clSilver
    end
  end
end

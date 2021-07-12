object FrmJobList: TFrmJobList
  Left = 0
  Top = 0
  Caption = 'FrmJobList'
  ClientHeight = 641
  ClientWidth = 1511
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    1511
    641)
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel4: TBevel
    Left = 450
    Top = 235
    Width = 521
    Height = 395
  end
  object Bevel3: TBevel
    Left = 450
    Top = 10
    Width = 521
    Height = 186
  end
  object Bevel2: TBevel
    Left = 1005
    Top = 10
    Width = 501
    Height = 620
    Anchors = [akLeft, akTop, akRight, akBottom]
    ExplicitHeight = 661
  end
  object Bevel1: TBevel
    Left = 10
    Top = 10
    Width = 416
    Height = 620
    Anchors = [akLeft, akTop, akBottom]
    ExplicitHeight = 661
  end
  object Label1: TLabel
    Left = 460
    Top = 18
    Width = 59
    Height = 13
    Caption = #3648#3621#3586#3607#3637#3656#3651#3610#3591#3634#3609
    FocusControl = cxDBTextEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 587
    Top = 18
    Width = 21
    Height = 13
    Caption = #3623#3633#3609#3607#3637#3656
    FocusControl = cxDBDateEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 460
    Top = 60
    Width = 15
    Height = 13
    Caption = 'HN'
    FocusControl = cxDBTextEdit2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 587
    Top = 60
    Width = 61
    Height = 13
    Caption = #3594#3639#3656#3629'-'#3609#3634#3617#3626#3585#3640#3621
    FocusControl = cxDBTextEdit3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 460
    Top = 105
    Width = 35
    Height = 13
    Caption = #3609#3657#3635#3627#3609#3633#3585
    FocusControl = cxDBCalcEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 552
    Top = 105
    Width = 39
    Height = 13
    Caption = #3623#3636#3608#3637#3651#3627#3657#3618#3634
    FocusControl = cxDBTextEdit4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 460
    Top = 150
    Width = 65
    Height = 13
    Caption = 'Water Rate'
    FocusControl = cxDBCalcEdit2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 587
    Top = 150
    Width = 55
    Height = 13
    Caption = 'Water Vol'
    FocusControl = cxDBCalcEdit3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 714
    Top = 150
    Width = 56
    Height = 13
    Caption = 'Lipid Rate'
    FocusControl = cxDBCalcEdit4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 841
    Top = 150
    Width = 46
    Height = 13
    Caption = 'Lipid Vol'
    FocusControl = cxDBCalcEdit5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel
    Left = 637
    Top = 105
    Width = 60
    Height = 13
    Caption = #3611#3619#3636#3617#3634#3605#3619#3619#3623#3617
    FocusControl = cxDBCalcEdit6
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 790
    Top = 105
    Width = 44
    Height = 13
    Caption = #3627#3629#3612#3641#3657#3611#3656#3623#3618
    FocusControl = DBLookupComboBox1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SpeedButton1: TSpeedButton
    Left = 449
    Top = 200
    Width = 132
    Height = 29
    Caption = #3610#3633#3609#3607#3638#3585#3651#3610#3591#3634#3609
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object cxGrid1: TcxGrid
    Left = 20
    Top = 45
    Width = 396
    Height = 575
    Anchors = [akLeft, akTop, akBottom]
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = SrcOrHEdit
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentEven = cxStyle1
      Styles.ContentOdd = cxStyle2
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = #3648#3621#3586#3651#3610#3591#3634#3609
        DataBinding.FieldName = 'or_id'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Width = 118
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        Caption = 'HN'
        DataBinding.FieldName = 'or_hn'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Width = 87
      end
      object cxGrid1DBTableView1Column3: TcxGridDBColumn
        Caption = #3594#3639#3656#3629'-'#3609#3634#3617#3626#3585#3640#3621
        DataBinding.FieldName = 'or_patname'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Width = 156
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxDateEdit1: TcxDateEdit
    Left = 20
    Top = 18
    Properties.DateButtons = [btnClear, btnToday]
    Properties.DisplayFormat = 'dd MMMM yyyy'
    Properties.EditFormat = 'dd MMMM yyyy'
    Properties.OnChange = cxDateEdit1PropertiesChange
    TabOrder = 1
    Width = 186
  end
  object ImageEnDBView1: TImageEnDBView
    Left = 1015
    Top = 18
    Width = 481
    Height = 602
    Background = clBtnFace
    Ctl3D = False
    ParentCtl3D = False
    LegacyBitmap = False
    MouseInteract = [miZoom, miScroll]
    Anchors = [akLeft, akTop, akRight, akBottom]
    MouseWheelParams.Action = iemwZoom
    TabOrder = 2
    DataField = 'or_image'
    DataSource = SrcOrHEdit
    PreviewFont.Charset = DEFAULT_CHARSET
    PreviewFont.Color = clWindowText
    PreviewFont.Height = -11
    PreviewFont.Name = 'Tahoma'
    PreviewFont.Style = []
  end
  object cxDBTextEdit1: TcxDBTextEdit
    Left = 460
    Top = 33
    DataBinding.DataField = 'or_id'
    DataBinding.DataSource = SrcOrHEdit
    ParentFont = False
    Style.Color = 15138815
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clMaroon
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 3
    Width = 121
  end
  object cxDBDateEdit1: TcxDBDateEdit
    Left = 587
    Top = 33
    DataBinding.DataField = 'or_date'
    DataBinding.DataSource = SrcOrHEdit
    ParentFont = False
    Style.Color = 15138815
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clMaroon
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 4
    Width = 121
  end
  object cxDBTextEdit2: TcxDBTextEdit
    Left = 460
    Top = 75
    DataBinding.DataField = 'or_hn'
    DataBinding.DataSource = SrcOrHEdit
    ParentFont = False
    Style.Color = 15138815
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clMaroon
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 5
    Width = 121
  end
  object cxDBTextEdit3: TcxDBTextEdit
    Left = 587
    Top = 75
    DataBinding.DataField = 'or_patname'
    DataBinding.DataSource = SrcOrHEdit
    ParentFont = False
    Style.Color = 15138815
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clMaroon
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 6
    Width = 249
  end
  object cxDBCalcEdit1: TcxDBCalcEdit
    Left = 460
    Top = 120
    DataBinding.DataField = 'or_wt'
    DataBinding.DataSource = SrcOrHEdit
    ParentFont = False
    Style.Color = 15138815
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clMaroon
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 7
    Width = 86
  end
  object cxDBTextEdit4: TcxDBTextEdit
    Left = 552
    Top = 120
    DataBinding.DataField = 'or_route'
    DataBinding.DataSource = SrcOrHEdit
    ParentFont = False
    Style.Color = 15138815
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clMaroon
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 8
    Width = 79
  end
  object cxDBCalcEdit2: TcxDBCalcEdit
    Left = 460
    Top = 165
    DataBinding.DataField = 'or_waterrate'
    DataBinding.DataSource = SrcOrHEdit
    ParentFont = False
    Style.Color = 15138815
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clMaroon
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 9
    Width = 121
  end
  object cxDBCalcEdit3: TcxDBCalcEdit
    Left = 587
    Top = 165
    DataBinding.DataField = 'or_watervol'
    DataBinding.DataSource = SrcOrHEdit
    ParentFont = False
    Style.Color = 15138815
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clMaroon
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 10
    Width = 121
  end
  object cxDBCalcEdit4: TcxDBCalcEdit
    Left = 714
    Top = 165
    DataBinding.DataField = 'or_lipidrate'
    DataBinding.DataSource = SrcOrHEdit
    ParentFont = False
    Style.Color = 15138815
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clMaroon
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 11
    Width = 121
  end
  object cxDBCalcEdit5: TcxDBCalcEdit
    Left = 841
    Top = 165
    DataBinding.DataField = 'or_lipidvol'
    DataBinding.DataSource = SrcOrHEdit
    ParentFont = False
    Style.Color = 15138815
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clMaroon
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 12
    Width = 121
  end
  object cxDBCalcEdit6: TcxDBCalcEdit
    Left = 637
    Top = 120
    DataBinding.DataField = 'or_total'
    DataBinding.DataSource = SrcOrHEdit
    ParentFont = False
    Style.Color = 15138815
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clMaroon
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 13
    Width = 121
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 790
    Top = 120
    Width = 172
    Height = 21
    Color = 15138815
    DataField = 'or-wardname'
    DataSource = SrcOrHEdit
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
  end
  object cxGrid2: TcxGrid
    Left = 460
    Top = 250
    Width = 502
    Height = 370
    TabOrder = 15
    object cxGrid2DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = SrcOrDEdit
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 15
      Styles.ContentEven = cxStyle1
      Styles.ContentOdd = cxStyle2
      Styles.Header = cxStyle3
      object cxGrid2DBTableView1Column1: TcxGridDBColumn
        Caption = #3626#3634#3619#3629#3634#3627#3634#3619
        DataBinding.FieldName = 'or_nutname'
        Styles.Header = cxStyle3
        Width = 206
      end
      object cxGrid2DBTableView1Column2: TcxGridDBColumn
        Caption = #3586#3609#3634#3604#3618#3634
        DataBinding.FieldName = 'or_dose'
        Styles.Header = cxStyle3
        Width = 78
      end
      object cxGrid2DBTableView1Column3: TcxGridDBColumn
        Caption = #3611#3619#3636#3617#3634#3605#3619
        DataBinding.FieldName = 'or_nutvol'
        Styles.Header = cxStyle3
        Width = 78
      end
      object cxGrid2DBTableView1Column4: TcxGridDBColumn
        Caption = 'Working Formula'
        DataBinding.FieldName = 'or_wfvol'
        Styles.Header = cxStyle3
        Width = 97
      end
    end
    object cxGrid2Level1: TcxGridLevel
      GridView = cxGrid2DBTableView1
    end
  end
  object SrcOrHEdit: TDataSource
    DataSet = DmMain.DsOrHEdit
    Left = 155
    Top = 180
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 125
    Top = 55
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = 16764670
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = 14610630
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
  end
  object SrcOrDEdit: TDataSource
    DataSet = DmMain.DsOrDEdit
    Left = 750
    Top = 325
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = UniQuery1
    BCDToCurrency = False
    Left = 535
    Top = 320
  end
  object UniQuery1: TUniQuery
    Connection = DmMain.cnMain
    SQL.Strings = (
      'SELECT * FROM orderh oh'
      'LEFT JOIN orderd od ON od.or_id=oh.or_id'
      'LEFT JOIN wards wd ON wd.wd_id=oh.or_ward'
      'LEFT JOIN nutrients nu ON nu.nu_id=od.or_nutrient'
      'WHERE'
      'oh.or_id='#39'20210701-152229'#39
      'ORDER BY'
      'nu.nu_order ASC')
    Active = True
    Left = 605
    Top = 265
  end
  object frDoc: TfrxReport
    Version = '6.6.17'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44381.655513055600000000
    ReportOptions.LastChange = 44382.490895671300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 535
    Top = 265
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 90.000000000000000000
      PaperHeight = 70.000000000000000000
      PaperSize = 256
      LeftMargin = 3.000000000000000000
      RightMargin = 3.000000000000000000
      TopMargin = 1.000000000000000000
      BottomMargin = 1.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Top = 18.897650000000000000
        Width = 317.480520000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 39.795300000000000000
        Top = 41.574830000000000000
        Width = 317.480520000000000000
        Condition = 'frxDBDataset1."or_phase"'
        KeepTogether = True
        StartNewPage = True
        object frxDBDataset1or_hn: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 11.338590000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."or_hn"] - [frxDBDataset1."or_patname"]')
          ParentFont = False
        end
        object frxDBDataset1wd_name: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 204.094620000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #3627#3629#3612#3641#3657#3611#3656#3623#3618' [frxDBDataset1."wd_name"]')
          ParentFont = False
        end
        object frxDBDataset1or_date: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 18.897650000000000000
          Width = 139.842610000000000000
          Height = 15.118120000000000000
          DataField = 'or_date'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = 'dd mmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."or_date"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 36.015770000000000000
          Width = 298.582870000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 204.094620000000000000
          Top = 18.897650000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[IIF(<frxDBDataset1."or_phase">='#39'W'#39','#39'Water phase'#39','#39'Lipid phase'#39')' +
              ']')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 15.784786670000000000
        Top = 105.826840000000000000
        Width = 317.480520000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1nu_nutrient: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 7.559060000000000000
          Width = 188.976500000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[Line#]. [frxDBDataset1."nu_nutrient"] [IIF(<frxDBDataset1."nu_i' +
              'd">='#39'10'#39', - <frxDBDataset1."or_dose">,'#39#39')]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object frxDBDataset1or_nutvol: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 204.094620000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."or_nutvol"] ml')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 143.622140000000000000
        Width = 317.480520000000000000
        object frxDBDataset1or_watervol: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 68.031540000000000000
          Top = 3.779530000000000000
          Width = 241.889920000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              #3611#3619#3636#3617#3634#3605#3619' : [IIF(<frxDBDataset1."or_phase">='#39'W'#39',<frxDBDataset1."or' +
              '_watervol">,<frxDBDataset1."or_lipidvol">)] ml  '#3629#3633#3605#3619#3634#3648#3619#3655#3623' : [IIF' +
              '(<frxDBDataset1."or_phase">='#39'W'#39',<frxDBDataset1."or_waterrate">,<' +
              'frxDBDataset1."or_lipidrate">)] ml/hr')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 2.000000000000000000
          Width = 298.582870000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
end

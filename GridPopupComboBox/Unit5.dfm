object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Form5'
  ClientHeight = 458
  ClientWidth = 883
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = -8
    Top = 8
    Width = 529
    Height = 458
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGridViewRepository1DBTableView1
    end
  end
  object Button1: TButton
    Left = 584
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 584
    Top = 39
    Width = 75
    Height = 25
    Caption = 'Remover'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 584
    Top = 70
    Width = 75
    Height = 25
    Caption = 'Contar'
    TabOrder = 3
    OnClick = Button3Click
  end
  object cxGrid2: TcxGrid
    Left = 584
    Top = 168
    Width = 291
    Height = 282
    TabOrder = 4
    object cxGrid2DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
    end
    object cxGrid2Level1: TcxGridLevel
      GridView = cxGrid2DBTableView1
    end
  end
  object edtCusId: TEdit
    Left = 754
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 5
    Text = 'edtCusId'
  end
  object edtCusRed: TEdit
    Left = 754
    Top = 35
    Width = 121
    Height = 21
    TabOrder = 6
    Text = 'edtCusRed'
  end
  object edtCusDesc: TEdit
    Left = 754
    Top = 89
    Width = 121
    Height = 21
    TabOrder = 7
    Text = 'edtCusDesc'
  end
  object edtCusPaiId: TEdit
    Left = 754
    Top = 62
    Width = 121
    Height = 21
    TabOrder = 8
    Text = 'edtCusPaiId'
  end
  object edtCusTipo: TEdit
    Left = 754
    Top = 116
    Width = 121
    Height = 21
    TabOrder = 9
    Text = 'edtCusTipo'
  end
  object cxGridViewRepository1: TcxGridViewRepository
    Left = 344
    Top = 232
    object cxGridViewRepository1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGridViewRepository1DBTableView1centrocus_id: TcxGridDBColumn
        DataBinding.FieldName = 'centrocus_id'
      end
      object cxGridViewRepository1DBTableView1centrocus_red: TcxGridDBColumn
        DataBinding.FieldName = 'centrocus_red'
        Width = 82
      end
      object cxGridViewRepository1DBTableView1centrocus_pai_id: TcxGridDBColumn
        DataBinding.FieldName = 'centrocus_pai_id'
      end
      object popupedit: TcxGridDBColumn
        DataBinding.FieldName = 'centrocus_descricao'
        PropertiesClassName = 'TcxPopupEditProperties'
        Properties.PopupControl = cxGrid2
        Properties.OnInitPopup = lookupcombPropertiesInitPopup
        Width = 245
      end
      object lookupcomb: TcxGridDBColumn
        DataBinding.FieldName = 'centrocus_tipo'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.DropDownAutoSize = True
        Properties.ImmediateDropDownWhenActivated = True
        Properties.View = cxGridViewRepository1DBTableView2
        Properties.KeyFieldNames = 'demonst_id'
        Properties.ListFieldItem = cxGridViewRepository1DBTableView2demonst_valor
        Properties.OnInitPopup = lookupcombPropertiesInitPopup
      end
    end
    object cxGridViewRepository1DBTableView2: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DataSource2
      DataController.DetailKeyFieldNames = 'demonst_id'
      DataController.Filter.Active = True
      DataController.KeyFieldNames = 'demonst_id'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGridViewRepository1DBTableView2demonst_id: TcxGridDBColumn
        DataBinding.FieldName = 'demonst_id'
      end
      object cxGridViewRepository1DBTableView2centrocus_id: TcxGridDBColumn
        DataBinding.FieldName = 'centrocus_id'
      end
      object cxGridViewRepository1DBTableView2demonst_valor: TcxGridDBColumn
        DataBinding.FieldName = 'demonst_valor'
      end
      object cxGridViewRepository1DBTableView2demonst_ano: TcxGridDBColumn
        DataBinding.FieldName = 'demonst_ano'
      end
      object cxGridViewRepository1DBTableView2demonst_obs: TcxGridDBColumn
        DataBinding.FieldName = 'demonst_obs'
      end
      object cxGridViewRepository1DBTableView2demonst_tipo: TcxGridDBColumn
        DataBinding.FieldName = 'demonst_tipo'
      end
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security I' +
      'nfo=False;User ID="";Initial Catalog="";Data Source=DESKTOP-RVT1' +
      'T0O;Initial File Name="";Server SPN=DESKTOP-RVT1T0O'
    Provider = 'SQLNCLI11.1'
    Left = 192
    Top = 88
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from centrocusto')
    Left = 344
    Top = 72
    object ADOQuery1centrocus_id: TAutoIncField
      FieldName = 'centrocus_id'
      ReadOnly = True
    end
    object ADOQuery1centrocus_red: TStringField
      FieldName = 'centrocus_red'
      Size = 50
    end
    object ADOQuery1centrocus_pai_id: TIntegerField
      FieldName = 'centrocus_pai_id'
    end
    object ADOQuery1centrocus_descricao: TWideStringField
      FieldName = 'centrocus_descricao'
      FixedChar = True
      Size = 100
    end
    object ADOQuery1centrocus_tipo: TWideStringField
      FieldName = 'centrocus_tipo'
      FixedChar = True
      Size = 1
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 96
    Top = 200
  end
  object ADOQuery2: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from demonstrativocontaplanejorc')
    Left = 264
    Top = 176
    object ADOQuery2demonst_id: TAutoIncField
      FieldName = 'demonst_id'
      ReadOnly = True
    end
    object ADOQuery2centrocus_id: TIntegerField
      FieldName = 'centrocus_id'
    end
    object ADOQuery2demonst_valor: TBCDField
      FieldName = 'demonst_valor'
      Precision = 13
    end
    object ADOQuery2demonst_ano: TIntegerField
      FieldName = 'demonst_ano'
    end
    object ADOQuery2demonst_obs: TStringField
      FieldName = 'demonst_obs'
      Size = 50
    end
    object ADOQuery2demonst_tipo: TStringField
      FieldName = 'demonst_tipo'
      FixedChar = True
      Size = 1
    end
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 312
    Top = 160
  end
end

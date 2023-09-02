object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Converter SQL para String no Delphi'
  ClientHeight = 649
  ClientWidth = 1068
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  Visible = True
  TextHeight = 15
  object GridPanelTexto: TGridPanel
    Left = 0
    Top = 0
    Width = 1068
    Height = 649
    Align = alClient
    BevelOuter = bvNone
    ColumnCollection = <
      item
        Value = 50.000000000000000000
      end
      item
        Value = 49.999999999999990000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = pnlTopoSQL
        Row = 0
      end
      item
        Column = 1
        Control = pnlTopoString
        Row = 0
      end
      item
        Column = 1
        Control = pnlBaixoString
        Row = 2
      end
      item
        Column = 0
        Control = SynEditSQL
        Row = 1
      end
      item
        Column = 1
        Control = SynEditString
        Row = 1
      end>
    RowCollection = <
      item
        Value = 13.108420628174510000
      end
      item
        Value = 73.857008613387410000
      end
      item
        Value = 13.034570758438080000
      end>
    TabOrder = 0
    ExplicitWidth = 1064
    ExplicitHeight = 648
    object pnlTopoSQL: TPanel
      Left = 0
      Top = 0
      Width = 534
      Height = 85
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        534
        85)
      object lblVarInicio: TLabel
        Left = 10
        Top = 6
        Width = 59
        Height = 17
        Caption = 'Var. Inicio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object lblVarFim: TLabel
        Left = 106
        Top = 6
        Width = 49
        Height = 17
        Caption = 'Var. Fim:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object lblSQL: TLabel
        Left = 10
        Top = 62
        Width = 28
        Height = 17
        Anchors = [akLeft, akBottom]
        Caption = 'SQL:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitTop = 187
      end
      object edtVarInicio: TEdit
        Left = 10
        Top = 25
        Width = 91
        Height = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object edtVarFim: TEdit
        Left = 106
        Top = 25
        Width = 91
        Height = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object btnStringToSQL: TButton
        Left = 220
        Top = 25
        Width = 91
        Height = 25
        Action = actStringToSQL
        Caption = 'SQL [F2]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object btnSQLToString: TButton
        Left = 317
        Top = 25
        Width = 91
        Height = 25
        Action = actSQLToString
        Caption = 'String [F3]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
    end
    object pnlTopoString: TPanel
      Left = 534
      Top = 0
      Width = 534
      Height = 85
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        534
        85)
      object lblString: TLabel
        Left = 5
        Top = 62
        Width = 37
        Height = 17
        Anchors = [akLeft, akBottom]
        Caption = 'String'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitTop = 187
      end
    end
    object pnlBaixoString: TFlowPanel
      Left = 534
      Top = 564
      Width = 534
      Height = 85
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 2
      object chkVarInicioPrimeiraLinha: TCheckBox
        AlignWithMargins = True
        Left = 5
        Top = 5
        Width = 203
        Height = 18
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = '"Var. Inicio" na primeira linha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        WordWrap = True
      end
      object chkVarFimUltimaLinha: TCheckBox
        AlignWithMargins = True
        Left = 218
        Top = 5
        Width = 181
        Height = 18
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = '"Var. Fim" na '#250'ltima linha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        WordWrap = True
      end
      object chkMaiorLinha: TCheckBox
        AlignWithMargins = True
        Left = 5
        Top = 33
        Width = 165
        Height = 18
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Considerar maior linha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        WordWrap = True
      end
    end
    object SynEditSQL: TSynEdit
      AlignWithMargins = True
      Left = 10
      Top = 85
      Width = 519
      Height = 479
      Margins.Left = 10
      Margins.Top = 0
      Margins.Right = 5
      Margins.Bottom = 0
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Consolas'
      Font.Style = []
      Font.Quality = fqClearTypeNatural
      PopupMenu = PopupMenu1
      TabOrder = 3
      UseCodeFolding = False
      Gutter.DigitCount = 3
      Gutter.Font.Charset = DEFAULT_CHARSET
      Gutter.Font.Color = clWindowText
      Gutter.Font.Height = -11
      Gutter.Font.Name = 'Consolas'
      Gutter.Font.Style = []
      Gutter.ShowLineNumbers = True
      Gutter.Bands = <
        item
          Kind = gbkMarks
          Width = 13
        end
        item
          Kind = gbkLineNumbers
        end
        item
          Kind = gbkFold
        end
        item
          Kind = gbkTrackChanges
        end
        item
          Kind = gbkMargin
          Width = 3
        end>
      Highlighter = SynSQLSyn1
      SelectedColor.Alpha = 0.400000005960464500
      ExplicitWidth = 517
    end
    object SynEditString: TSynEdit
      AlignWithMargins = True
      Left = 539
      Top = 85
      Width = 519
      Height = 479
      Margins.Left = 5
      Margins.Top = 0
      Margins.Right = 10
      Margins.Bottom = 0
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Consolas'
      Font.Style = []
      Font.Quality = fqClearTypeNatural
      PopupMenu = PopupMenu1
      TabOrder = 4
      UseCodeFolding = False
      Gutter.DigitCount = 3
      Gutter.Font.Charset = DEFAULT_CHARSET
      Gutter.Font.Color = clWindowText
      Gutter.Font.Height = -11
      Gutter.Font.Name = 'Consolas'
      Gutter.Font.Style = []
      Gutter.ShowLineNumbers = True
      Gutter.Bands = <
        item
          Kind = gbkMarks
          Width = 13
        end
        item
          Kind = gbkLineNumbers
        end
        item
          Kind = gbkFold
        end
        item
          Kind = gbkTrackChanges
        end
        item
          Kind = gbkMargin
          Width = 3
        end>
      Highlighter = SynDWSSyn1
      SelectedColor.Alpha = 0.400000005960464500
      ExplicitLeft = 537
      ExplicitWidth = 517
    end
  end
  object SynSQLSyn1: TSynSQLSyn
    CommentAttri.Foreground = clGreen
    KeyAttri.Foreground = clBlue
    StringAttri.Foreground = clRed
    Left = 888
    Top = 440
  end
  object SynDWSSyn1: TSynDWSSyn
    DefaultFilter = 'DWScript Files (*.dws;*.pas;*.inc)|*.dws;*.pas;*.inc'
    Left = 969
    Top = 441
  end
  object ActionList1: TActionList
    Left = 896
    Top = 264
    object actStringToSQL: TAction
      Caption = 'SQL'
      ShortCut = 113
      OnExecute = actStringToSQLExecute
    end
    object actSQLToString: TAction
      Caption = 'String'
      ShortCut = 114
      OnExecute = actSQLToStringExecute
    end
    object actSQLClipBoard: TAction
      Caption = 'Copiar para '#225'rea de transfer'#234'ncia'
      ShortCut = 115
      OnExecute = actSQLClipBoardExecute
    end
    object actStringClipBoard: TAction
      Caption = 'Copiar para '#225'rea de transfer'#234'ncia'
      ShortCut = 116
      OnExecute = actStringClipBoardExecute
    end
  end
  object PopupMenu1: TPopupMenu
    OnPopup = PopupMenu1Popup
    Left = 896
    Top = 360
    object Copiarparareadetransferncia1: TMenuItem
      Caption = 'Copiar para '#225'rea de transfer'#234'ncia'
    end
  end
end

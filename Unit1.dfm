object form1: Tform1
  Left = 309
  Top = 109
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Random Binary Generator'
  ClientHeight = 539
  ClientWidth = 949
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 296
    Top = 40
    Width = 185
    Height = 241
    Caption = 'Statistics'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 53
      Width = 31
      Height = 13
      Caption = 'Ones:'
    end
    object Label2: TLabel
      Left = 8
      Top = 28
      Width = 35
      Height = 13
      Caption = 'Zeros:'
    end
    object Label5: TLabel
      Left = 8
      Top = 192
      Width = 80
      Height = 13
      Caption = 'Time Running:'
    end
    object Label6: TLabel
      Left = 8
      Top = 77
      Width = 32
      Height = 13
      Caption = 'Total:'
    end
    object Label7: TLabel
      Left = 8
      Top = 104
      Width = 98
      Height = 13
      Caption = 'Bytes Generated:'
    end
    object Edit1: TEdit
      Left = 56
      Top = 48
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      Text = '0'
    end
    object Edit2: TEdit
      Left = 56
      Top = 24
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      Text = '0'
    end
    object Edit3: TEdit
      Left = 8
      Top = 208
      Width = 169
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      Text = 'Day: 0 Hour: 0 Min: 0 Sec: 0'
    end
    object Edit4: TEdit
      Left = 56
      Top = 72
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      Text = '0'
    end
    object Edit5: TEdit
      Left = 8
      Top = 120
      Width = 169
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
      Text = 'MB: 0 KB: 0 B: 0 b: 0'
    end
  end
  object GroupBox2: TGroupBox
    Left = 488
    Top = 3
    Width = 457
    Height = 137
    Caption = 'Binary Numbers Generated'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object RichEdit1: TRichEdit
      Left = 8
      Top = 14
      Width = 441
      Height = 115
      DragMode = dmAutomatic
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      HideSelection = False
      HideScrollBars = False
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
      OnChange = RichEdit1Change
    end
  end
  object GroupBox3: TGroupBox
    Left = 488
    Top = 408
    Width = 457
    Height = 129
    Caption = 'Binary Byte Converted to ASCII'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object RichEdit2: TRichEdit
      Left = 8
      Top = 16
      Width = 441
      Height = 105
      DragMode = dmAutomatic
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      HideScrollBars = False
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
      WantReturns = False
      OnChange = RichEdit2Change
    end
  end
  object Button1: TButton
    Left = 296
    Top = 8
    Width = 185
    Height = 25
    Caption = 'START'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Button1Click
  end
  object GroupBox4: TGroupBox
    Left = 488
    Top = 140
    Width = 457
    Height = 141
    Caption = 'Binary Byte Converted to Decimal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    object RichEdit3: TRichEdit
      Left = 8
      Top = 16
      Width = 441
      Height = 117
      DragMode = dmAutomatic
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      HideScrollBars = False
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
      WantReturns = False
      OnChange = RichEdit3Change
    end
  end
  object GroupBox5: TGroupBox
    Left = 488
    Top = 280
    Width = 457
    Height = 129
    Caption = 'Binary Byte Converted to Hexadecimal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    object RichEdit4: TRichEdit
      Left = 8
      Top = 16
      Width = 441
      Height = 105
      DragMode = dmAutomatic
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      HideScrollBars = False
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
      WantReturns = False
      OnChange = RichEdit4Change
    end
  end
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 281
    Height = 272
    BevelInner = bvLowered
    TabOrder = 6
    object Label4: TLabel
      Left = 96
      Top = 144
      Width = 92
      Height = 48
      Alignment = taCenter
      Caption = '"Zeros" will make it move anti-clockwise'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object Shape1: TShape
      Left = 116
      Top = 8
      Width = 33
      Height = 33
      Shape = stCircle
    end
    object Shape19: TShape
      Left = 220
      Top = 64
      Width = 33
      Height = 33
      Shape = stCircle
    end
    object Shape10: TShape
      Left = 74
      Top = 221
      Width = 33
      Height = 33
      Shape = stCircle
    end
    object Shape9: TShape
      Left = 49
      Top = 201
      Width = 33
      Height = 33
      Shape = stCircle
    end
    object Shape11: TShape
      Left = 104
      Top = 232
      Width = 33
      Height = 33
      Shape = stCircle
    end
    object Shape12: TShape
      Left = 136
      Top = 232
      Width = 33
      Height = 33
      Shape = stCircle
    end
    object Shape13: TShape
      Left = 168
      Top = 224
      Width = 33
      Height = 33
      Shape = stCircle
    end
    object Shape17: TShape
      Left = 235
      Top = 124
      Width = 33
      Height = 33
      Shape = stCircle
    end
    object Shape18: TShape
      Left = 232
      Top = 93
      Width = 33
      Height = 33
      Shape = stCircle
    end
    object Shape16: TShape
      Left = 231
      Top = 155
      Width = 33
      Height = 33
      Shape = stCircle
    end
    object Shape14: TShape
      Left = 196
      Top = 208
      Width = 33
      Height = 33
      Shape = stCircle
    end
    object Shape15: TShape
      Left = 216
      Top = 184
      Width = 33
      Height = 33
      Shape = stCircle
    end
    object Shape8: TShape
      Left = 28
      Top = 176
      Width = 33
      Height = 33
      Shape = stCircle
    end
    object Shape6: TShape
      Left = 13
      Top = 116
      Width = 33
      Height = 33
      Shape = stCircle
    end
    object Shape2: TShape
      Left = 85
      Top = 16
      Width = 33
      Height = 33
      Shape = stCircle
    end
    object Shape3: TShape
      Left = 57
      Top = 32
      Width = 33
      Height = 33
      Shape = stCircle
    end
    object Shape4: TShape
      Left = 34
      Top = 56
      Width = 33
      Height = 33
      Shape = stCircle
    end
    object Shape5: TShape
      Left = 19
      Top = 85
      Width = 33
      Height = 33
      Shape = stCircle
    end
    object Shape7: TShape
      Left = 16
      Top = 147
      Width = 33
      Height = 33
      Shape = stCircle
    end
    object Shape20: TShape
      Left = 202
      Top = 39
      Width = 33
      Height = 33
      Shape = stCircle
    end
    object Shape21: TShape
      Left = 176
      Top = 21
      Width = 33
      Height = 33
      Shape = stCircle
    end
    object Shape22: TShape
      Left = 147
      Top = 8
      Width = 33
      Height = 33
      Shape = stCircle
    end
    object Label3: TLabel
      Left = 96
      Top = 80
      Width = 90
      Height = 48
      Alignment = taCenter
      Caption = '"Ones" will make it move clockwise'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
  end
  object chart1: TNiceChart
    Left = 8
    Top = 288
    Width = 473
    Height = 249
    ShowLegend = False
    ShowTitle = False
    ShowXGrid = True
    ShowYGrid = True
    Title = 'Binary Line chart'
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -19
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    AxisXTitle = 'Time (s)'
    AxisYTitle = 'Binary (Ones, Zeros)'
    AxisXOnePerValue = False
    AxisXScale = 1000.000000000000000000
    AxisYScale = 1000.000000000000000000
    Monochrome = False
    BorderStyle = bsSingle
    BevelOuter = bvLowered
  end
  object Button2: TButton
    Left = 392
    Top = 504
    Width = 83
    Height = 25
    Caption = 'Enlarge Grid'
    Enabled = False
    TabOrder = 8
    OnClick = Button2Click
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer1Timer
    Left = 256
  end
  object XPManifest1: TXPManifest
    Left = 224
  end
end

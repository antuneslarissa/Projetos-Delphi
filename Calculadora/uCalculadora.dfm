object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Calculadora'
  ClientHeight = 457
  ClientWidth = 355
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
  object bt1: TBitBtn
    Left = 32
    Top = 320
    Width = 50
    Height = 50
    Caption = '1'
    TabOrder = 0
    OnClick = bt1Click
  end
  object bt2: TBitBtn
    Left = 112
    Top = 320
    Width = 50
    Height = 50
    Caption = '2'
    TabOrder = 1
    OnClick = bt1Click
  end
  object bt3: TBitBtn
    Left = 192
    Top = 320
    Width = 50
    Height = 50
    Caption = '3'
    TabOrder = 2
    OnClick = bt1Click
  end
  object btSoma: TBitBtn
    Left = 272
    Top = 320
    Width = 50
    Height = 50
    Caption = '+'
    TabOrder = 3
    OnClick = btSomaClick
  end
  object btMaisMenos: TBitBtn
    Left = 32
    Top = 392
    Width = 50
    Height = 50
    Caption = '+/-'
    TabOrder = 4
    OnClick = btMaisMenosClick
  end
  object bt0: TBitBtn
    Left = 112
    Top = 392
    Width = 50
    Height = 50
    Caption = '0'
    TabOrder = 5
    OnClick = bt1Click
  end
  object btVirgula: TBitBtn
    Left = 192
    Top = 392
    Width = 50
    Height = 50
    Caption = ','
    TabOrder = 6
    OnClick = btVirgulaClick
  end
  object btIgual: TBitBtn
    Left = 272
    Top = 392
    Width = 50
    Height = 50
    Caption = '='
    TabOrder = 7
    OnClick = btIgualClick
  end
  object bt4: TBitBtn
    Left = 32
    Top = 256
    Width = 50
    Height = 50
    Caption = '4'
    TabOrder = 8
    OnClick = bt1Click
  end
  object bt5: TBitBtn
    Left = 112
    Top = 256
    Width = 50
    Height = 50
    Caption = '5'
    TabOrder = 9
    OnClick = bt1Click
  end
  object bt6: TBitBtn
    Left = 192
    Top = 256
    Width = 50
    Height = 50
    Caption = '6'
    TabOrder = 10
    OnClick = bt1Click
  end
  object btMultiplica: TBitBtn
    Left = 272
    Top = 184
    Width = 50
    Height = 50
    Caption = 'x'
    TabOrder = 11
    OnClick = btMultiplicaClick
  end
  object btMenos: TBitBtn
    Left = 272
    Top = 256
    Width = 50
    Height = 50
    Caption = '-'
    TabOrder = 12
    OnClick = btMenosClick
  end
  object bt9: TBitBtn
    Left = 192
    Top = 184
    Width = 50
    Height = 50
    Caption = '9'
    TabOrder = 13
    OnClick = bt1Click
  end
  object bt8: TBitBtn
    Left = 112
    Top = 184
    Width = 50
    Height = 50
    Caption = '8'
    TabOrder = 14
    OnClick = bt1Click
  end
  object bt7: TBitBtn
    Left = 32
    Top = 184
    Width = 50
    Height = 50
    Caption = '7'
    TabOrder = 15
    OnClick = bt1Click
  end
  object btDivisao: TBitBtn
    Left = 272
    Top = 112
    Width = 50
    Height = 50
    Caption = '/'
    TabOrder = 16
    OnClick = btDivisaoClick
  end
  object btC: TBitBtn
    Left = 192
    Top = 112
    Width = 50
    Height = 50
    Caption = 'C'
    TabOrder = 17
    OnClick = btCClick
  end
  object btCE: TBitBtn
    Left = 112
    Top = 112
    Width = 50
    Height = 50
    Caption = 'CE'
    TabOrder = 18
    OnClick = btCEClick
  end
  object btApagar: TBitBtn
    Left = 32
    Top = 112
    Width = 50
    Height = 50
    Caption = '<-'
    TabOrder = 19
    OnClick = btApagarClick
  end
  object pnFundoTela: TPanel
    Left = 0
    Top = 0
    Width = 355
    Height = 105
    Align = alTop
    Alignment = taRightJustify
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 20
    ExplicitLeft = 11
    ExplicitTop = 4
    ExplicitWidth = 313
    object lbCelula: TLabel
      Left = 335
      Top = 31
      Width = 9
      Height = 19
      Alignment = taRightJustify
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object pnTela: TPanel
      AlignWithMargins = True
      Left = 11
      Top = 48
      Width = 333
      Height = 53
      Margins.Left = 10
      Margins.Right = 10
      Align = alBottom
      Alignment = taRightJustify
      BevelOuter = bvNone
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      ExplicitLeft = 22
      ExplicitTop = 44
    end
  end
end

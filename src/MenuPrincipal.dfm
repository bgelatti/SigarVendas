object FrmMenuPrincipal: TFrmMenuPrincipal
  Left = 0
  Top = 0
  Caption = 'Menu Principal - Sigar Vendas'
  ClientHeight = 222
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object bmMenu: TdxBarManager
    AllowReset = False
    Scaled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Cadastro'
      'Sair')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    MenuAnimations = maFade
    PopupMenuLinks = <>
    ShowShortCutInHint = True
    Style = bmsFlat
    UseBarHintWindow = False
    UseF10ForMenu = False
    UseSystemFont = True
    Left = 232
    Top = 48
    DockControlHeights = (
      0
      0
      26
      0)
    object mmPrincipal: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'MenuBar'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 338
      FloatTop = 107
      FloatClientWidth = 282
      FloatClientHeight = 38
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnCadastro'
        end
        item
          Visible = True
          ItemName = 'btnSair'
        end>
      MultiLine = True
      NotDocking = [dsNone, dsLeft, dsRight, dsBottom]
      OneOnRow = True
      RotateWhenVertical = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object btnCadastro: TdxBarSubItem
      Caption = 'Cadastro'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnAuxiliares'
        end>
    end
    object btnCadastroPais: TdxBarButton
      Action = ActPais
      Category = 0
    end
    object btnAuxiliares: TdxBarSubItem
      Caption = 'Auxiliares'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnCadastroPais'
        end>
    end
    object btnSair: TdxBarButton
      Action = actSair
      Category = 1
    end
    object dxBarGroup1: TdxBarGroup
      Items = ()
    end
    object dxBarGroup2: TdxBarGroup
      Items = (
        'dxBarGroup1')
    end
  end
  object ActionList1: TActionList
    Left = 232
    Top = 104
    object ActPais: TAction
      Category = 'Cadastro'
      Caption = 'Pais'
      OnExecute = ActPaisExecute
    end
    object actSair: TAction
      Category = 'Sair'
      Caption = 'Sair'
      ShortCut = 123
      OnExecute = actSairExecute
    end
  end
end

inherited fFAT_NF_SERVICO: TfFAT_NF_SERVICO
  Left = 122
  Top = 48
  Width = 807
  Height = 665
  Caption = 'Nota Fiscal de Servi'#231'o - fFAT_NF_SERVICO'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pEsquerdo: TPanel
    Height = 588
    DesignSize = (
      145
      588)
    inherited lblrint: TLabel
      Top = 44
    end
  end
  inherited PageControl1: TPageControl
    Width = 646
    Height = 588
    ActivePage = TabDados
    inherited TabConsulta: TTabSheet
      inherited pConsulta: TPanel
        Width = 638
        Height = 560
        inherited cxGridPadrao: TcxGrid
          Width = 636
          Height = 514
          inherited rdbConsultaNew: TcxGridDBTableView
            object rdbConsultaNewNUMERO: TcxGridDBColumn
              DataBinding.FieldName = 'NUMERO'
            end
            object rdbConsultaNewCOD_FATNFSERVICO: TcxGridDBColumn
              DataBinding.FieldName = 'COD_FATNFSERVICO'
              Visible = False
            end
            object rdbConsultaNewSERIE: TcxGridDBColumn
              DataBinding.FieldName = 'SERIE'
            end
            object rdbConsultaNewCFIL: TcxGridDBColumn
              DataBinding.FieldName = 'CFIL'
              Width = 42
            end
            object rdbConsultaNewDATA_EMISSAO: TcxGridDBColumn
              DataBinding.FieldName = 'DATA_EMISSAO'
              Width = 87
            end
            object rdbConsultaNewDATA_VENCIMENTO: TcxGridDBColumn
              DataBinding.FieldName = 'DATA_VENCIMENTO'
              Width = 104
            end
            object rdbConsultaNewVALOR_TOTAL: TcxGridDBColumn
              DataBinding.FieldName = 'VALOR_TOTAL'
            end
            object rdbConsultaNewVALOR_LIQUIDO: TcxGridDBColumn
              DataBinding.FieldName = 'VALOR_LIQUIDO'
            end
            object rdbConsultaNewSITUACAO: TcxGridDBColumn
              DataBinding.FieldName = 'SITUACAO'
              Width = 47
            end
            object rdbConsultaNewCODIGO_CLIENTE: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGO_CLIENTE'
            end
            object rdbConsultaNewNOME_CLIENTE: TcxGridDBColumn
              DataBinding.FieldName = 'NOME_CLIENTE'
              Width = 255
            end
            object rdbConsultaNewCEMP: TcxGridDBColumn
              DataBinding.FieldName = 'CEMP'
              Visible = False
            end
            object rdbConsultaNewMES_COMPETENCIA: TcxGridDBColumn
              DataBinding.FieldName = 'MES_COMPETENCIA'
              Width = 107
            end
            object rdbConsultaNewANO_COMPETENCIA: TcxGridDBColumn
              DataBinding.FieldName = 'ANO_COMPETENCIA'
              Width = 89
            end
          end
        end
        inherited Panel5: TPanel
          Width = 636
        end
      end
    end
    inherited TabDados: TTabSheet
      inherited pDados: TPanel
        Width = 638
        Height = 560
        object Panel1: TPanel
          Left = 1
          Top = 1
          Width = 636
          Height = 204
          Align = alTop
          BevelInner = bvRaised
          TabOrder = 0
          object Label1: TLabel
            Left = 5
            Top = 4
            Width = 24
            Height = 13
            Caption = 'S'#233'rie'
            FocusControl = DBEdit1
          end
          object Label2: TLabel
            Left = 47
            Top = 4
            Width = 20
            Height = 13
            Caption = 'Filial'
            FocusControl = DBLookupComboBox1
          end
          object Label3: TLabel
            Left = 301
            Top = 4
            Width = 43
            Height = 13
            Caption = 'Nro Nota'
            FocusControl = DBEdit2
          end
          object Label4: TLabel
            Left = 396
            Top = 4
            Width = 65
            Height = 13
            Caption = 'Data Emiss'#227'o'
            FocusControl = DBEdit2
          end
          object Label5: TLabel
            Left = 512
            Top = 4
            Width = 82
            Height = 13
            Caption = 'Data Vencimento'
            FocusControl = DBEdit2
          end
          object Label6: TLabel
            Left = 5
            Top = 82
            Width = 85
            Height = 13
            Caption = 'Cond. Pagamento'
            FocusControl = DBLookupComboBox2
          end
          object Label7: TLabel
            Left = 221
            Top = 82
            Width = 90
            Height = 13
            Caption = 'Local de Cobran'#231'a'
            FocusControl = DBLookupComboBox3
          end
          object Label8: TLabel
            Left = 5
            Top = 122
            Width = 51
            Height = 13
            Caption = 'Valor Total'
            FocusControl = DBEdit3
          end
          object Label9: TLabel
            Left = 121
            Top = 122
            Width = 61
            Height = 13
            Caption = 'Valor Liquido'
            FocusControl = DBEdit4
          end
          object Label26: TLabel
            Left = 244
            Top = 122
            Width = 73
            Height = 13
            Caption = 'Valor Desconto'
            FocusControl = DBEdit20
          end
          object Label27: TLabel
            Left = 5
            Top = 44
            Width = 32
            Height = 13
            Caption = 'Cliente'
            FocusControl = edtCliente
          end
          object Label28: TLabel
            Left = 119
            Top = 44
            Width = 63
            Height = 13
            Caption = 'Nome Cliente'
            FocusControl = DBEdit22
          end
          object Label29: TLabel
            Left = 385
            Top = 44
            Width = 33
            Height = 13
            Caption = 'Cidade'
          end
          object Label30: TLabel
            Left = 589
            Top = 44
            Width = 14
            Height = 13
            Caption = 'UF'
            FocusControl = DBEdit24
          end
          object Label31: TLabel
            Left = 362
            Top = 122
            Width = 43
            Height = 13
            Caption = 'Natureza'
            FocusControl = DBLookupComboBox4
          end
          object DBText1: TDBText
            Left = 88
            Top = -1
            Width = 209
            Height = 23
            Alignment = taCenter
            BiDiMode = bdLeftToRight
            DataField = 'SITUACAO'
            DataSource = dsPadrao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = 'Arial Black'
            Font.Style = [fsBold]
            ParentBiDiMode = False
            ParentFont = False
          end
          object Label38: TLabel
            Left = 5
            Top = 162
            Width = 60
            Height = 13
            Caption = 'Tipo Servi'#231'o'
            FocusControl = DBLookupComboBox5
          end
          object Label40: TLabel
            Left = 437
            Top = 82
            Width = 85
            Height = 13
            Caption = 'M'#234's Compet'#234'ncia'
          end
          object Label41: TLabel
            Left = 533
            Top = 82
            Width = 84
            Height = 13
            Caption = 'Ano Compet'#234'ncia'
          end
          object DBEdit1: TDBEdit
            Left = 5
            Top = 20
            Width = 40
            Height = 21
            DataField = 'SERIE'
            DataSource = dsPadrao
            TabOrder = 0
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 47
            Top = 20
            Width = 252
            Height = 21
            DataField = 'Filial_Look'
            DataSource = dsPadrao
            TabOrder = 1
          end
          object DBEdit2: TDBEdit
            Left = 301
            Top = 20
            Width = 94
            Height = 21
            DataField = 'NUMERO'
            DataSource = dsPadrao
            TabOrder = 2
          end
          object JvDBDateEdit1: TJvDBDateEdit
            Left = 396
            Top = 20
            Width = 115
            Height = 21
            BeepOnError = False
            DataField = 'DATA_EMISSAO'
            DataSource = dsPadrao
            ShowNullDate = False
            TabOrder = 3
            ClipboardCommands = []
          end
          object JvDBDateEdit2: TJvDBDateEdit
            Left = 512
            Top = 20
            Width = 115
            Height = 21
            BeepOnError = False
            DataField = 'DATA_VENCIMENTO'
            DataSource = dsPadrao
            ShowNullDate = False
            TabOrder = 4
            ClipboardCommands = []
          end
          object DBLookupComboBox2: TDBLookupComboBox
            Left = 5
            Top = 98
            Width = 216
            Height = 21
            DataField = 'CPAG_LOOK'
            DataSource = dsPadrao
            TabOrder = 10
          end
          object DBLookupComboBox3: TDBLookupComboBox
            Left = 221
            Top = 98
            Width = 216
            Height = 21
            DataField = 'Banco_look'
            DataSource = dsPadrao
            TabOrder = 11
          end
          object DBEdit3: TDBEdit
            Left = 5
            Top = 138
            Width = 114
            Height = 21
            TabStop = False
            Color = clScrollBar
            DataField = 'VALOR_TOTAL'
            DataSource = dsPadrao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 14
          end
          object DBEdit4: TDBEdit
            Left = 121
            Top = 138
            Width = 121
            Height = 21
            TabStop = False
            Color = clScrollBar
            DataField = 'VALOR_LIQUIDO'
            DataSource = dsPadrao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 15
          end
          object DBEdit20: TDBEdit
            Left = 244
            Top = 138
            Width = 115
            Height = 21
            DataField = 'VALOR_DESCONTO'
            DataSource = dsPadrao
            TabOrder = 16
          end
          object edtCliente: TDBEdit
            Left = 5
            Top = 59
            Width = 84
            Height = 21
            DataField = 'CODIGO_CLIENTE'
            DataSource = dsPadrao
            TabOrder = 5
          end
          object BitBtn3: TBitBtn
            Tag = 2
            Left = 90
            Top = 58
            Width = 27
            Height = 22
            Hint = 'Consulta'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 6
            OnClick = BitBtn3Click
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000CE0E0000C40E00000000000000000000008080008080
              0080800080800080800080800080800080800080800080800080800080800080
              8000808000000000808000808000808000808000808000808000808000808000
              8080008080008080008080008080008080000000000000000000008080008080
              0080800080800080800080800080800080800080800080800080800080800000
              0000000000000000808000808000808000808000808000808000808000808000
              8080008080008080008080000000000000000000008080008080008080008080
              0080800080800080800080800080800080800080800080800000000000000000
              0000808000808000808000808000808000808080808000000000000000000080
              8080008080000000000000000000008080008080008080008080008080008080
              0000008080808080808080808080808080800000000000000000000080800080
              80008080008080008080008080000000808080C0C0C0FFFFFFC0C0C0FFFFFFC0
              C0C0808080000000008080008080008080008080008080008080808080808080
              C0C0C0FFFFFFC0C0C0FFFFFFC0C0C0FFFFFFC0C0C08080808080800080800080
              80008080008080008080000000808080FFFFFFC0C0C0FFFFFFC0C0C0FFFFFFC0
              C0C0FFFFFF808080000000008080008080008080008080008080000000808080
              C0C0C0FFFFFFC0C0C0FFFFFFC0C0C0FFFFFFC0C0C08080800000000080800080
              80008080008080008080000000808080FFFFFFC0C0C0FFFFFFC0C0C0FFFFFFC0
              C0C0FFFFFF808080000000008080008080008080008080008080808080808080
              C0C0C0FFFFFFC0C0C0FFFFFFC0C0C0FFFFFFC0C0C08080808080800080800080
              80008080008080008080008080000000808080C0C0C0FFFFFFC0C0C0FFFFFFC0
              C0C0808080000000008080008080008080008080008080008080008080008080
              0000008080808080808080808080808080800000000080800080800080800080
              8000808000808000808000808000808000808080808000000000000000000080
              8080008080008080008080008080008080008080008080008080}
          end
          object DBEdit22: TDBEdit
            Left = 119
            Top = 59
            Width = 265
            Height = 21
            TabStop = False
            Color = clScrollBar
            DataField = 'NOME_CLIENTE'
            DataSource = dsPadrao
            ReadOnly = True
            TabOrder = 7
          end
          object DBEdit24: TDBEdit
            Left = 589
            Top = 59
            Width = 38
            Height = 21
            TabStop = False
            Color = clScrollBar
            DataField = 'EST'
            DataSource = dsPadrao
            TabOrder = 9
          end
          object DBLookupComboBox4: TDBLookupComboBox
            Left = 362
            Top = 138
            Width = 264
            Height = 21
            DataField = 'Natureza'
            DataSource = dsPadrao
            TabOrder = 17
          end
          object DBLookupComboBox5: TDBLookupComboBox
            Left = 5
            Top = 178
            Width = 621
            Height = 21
            DataField = 'Servico_Look'
            DataSource = dsPadrao
            TabOrder = 18
          end
          object JvDBComboBox1: TJvDBComboBox
            Left = 437
            Top = 98
            Width = 95
            Height = 21
            DataField = 'MES_COMPETENCIA'
            DataSource = dsPadrao
            Items.Strings = (
              'Janeiro'
              'Fevereiro'
              'Mar'#231'o'
              'Abril'
              'Maio'
              'Junho'
              'Julho'
              'Agosto'
              'Setembro'
              'Outubro'
              'Novembro'
              'Dezembro')
            TabOrder = 12
            Values.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8'
              '9'
              '10'
              '11'
              '12')
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'MS Sans Serif'
            ListSettings.OutfilteredValueFont.Style = []
          end
          object JvDBComboBox2: TJvDBComboBox
            Left = 533
            Top = 98
            Width = 92
            Height = 21
            DataField = 'ANO_COMPETENCIA'
            DataSource = dsPadrao
            Items.Strings = (
              '2012'
              '2013'
              '2014'
              '2015'
              '2016'
              '2017'
              '2018'
              '2019'
              '2020'
              '2021'
              '2022'
              '2023'
              '2024'
              '2025')
            TabOrder = 13
            Values.Strings = (
              '2012'
              '2013'
              '2014'
              '2015'
              '2016'
              '2017'
              '2018'
              '2019'
              '2020'
              '2021'
              '2022'
              '2023'
              '2024'
              '2025')
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'MS Sans Serif'
            ListSettings.OutfilteredValueFont.Style = []
          end
          object cxDBLookupComboBox1: TcxDBLookupComboBox
            Left = 385
            Top = 59
            DataBinding.DataField = 'CID'
            DataBinding.DataSource = dsPadrao
            Properties.KeyFieldNames = 'NOME_CIDADE'
            Properties.ListColumns = <
              item
                FieldName = 'NOME_CIDADE'
              end>
            Properties.ListSource = dsEND_CIDADES
            Style.BorderStyle = ebs3D
            Style.Color = clScrollBar
            TabOrder = 8
            Width = 203
          end
        end
        object PageControl2: TPageControl
          Left = 1
          Top = 205
          Width = 636
          Height = 219
          ActivePage = TabSheet8
          Align = alTop
          TabOrder = 1
          object TabSheet8: TTabSheet
            Caption = 'Outras Observa'#231#227'o'
            object DBMemo3: TDBMemo
              Left = 0
              Top = 0
              Width = 628
              Height = 91
              Align = alClient
              DataField = 'DISCRIMINACAO'
              DataSource = dsPadrao
              ScrollBars = ssVertical
              TabOrder = 0
            end
            object DBMemo4: TDBMemo
              Left = 0
              Top = 91
              Width = 628
              Height = 100
              TabStop = False
              Align = alBottom
              Color = clScrollBar
              DataField = 'OBS_MONTADA'
              DataSource = dsPadrao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 1
            end
          end
          object TabSheet1: TTabSheet
            Caption = 'Impostos'
            object Label10: TLabel
              Left = 7
              Top = 3
              Width = 60
              Height = 13
              Caption = 'ISSQN Base'
              FocusControl = DBEdit5
            end
            object Label11: TLabel
              Left = 110
              Top = 3
              Width = 40
              Height = 13
              Caption = 'Al'#237'quota'
              FocusControl = DBEdit6
            end
            object Label12: TLabel
              Left = 212
              Top = 3
              Width = 24
              Height = 13
              Caption = 'Valor'
              FocusControl = DBEdit7
            end
            object Label13: TLabel
              Left = 7
              Top = 41
              Width = 52
              Height = 13
              Caption = 'IRRF Base'
              FocusControl = DBEdit8
            end
            object Label14: TLabel
              Left = 110
              Top = 41
              Width = 40
              Height = 13
              Caption = 'Al'#237'quota'
              FocusControl = DBEdit9
            end
            object Label15: TLabel
              Left = 212
              Top = 41
              Width = 24
              Height = 13
              Caption = 'Valor'
              FocusControl = DBEdit10
            end
            object Label16: TLabel
              Left = 7
              Top = 78
              Width = 53
              Height = 13
              Caption = 'CSLL Base'
              FocusControl = DBEdit11
            end
            object Label17: TLabel
              Left = 110
              Top = 78
              Width = 40
              Height = 13
              Caption = 'Al'#237'quota'
              FocusControl = DBEdit12
            end
            object Label19: TLabel
              Left = 212
              Top = 78
              Width = 24
              Height = 13
              Caption = 'Valor'
              FocusControl = DBEdit13
            end
            object Label20: TLabel
              Left = 7
              Top = 114
              Width = 56
              Height = 13
              Caption = 'Cofins Base'
              FocusControl = DBEdit14
            end
            object Label21: TLabel
              Left = 110
              Top = 114
              Width = 40
              Height = 13
              Caption = 'Al'#237'quota'
              FocusControl = DBEdit15
            end
            object Label22: TLabel
              Left = 212
              Top = 114
              Width = 24
              Height = 13
              Caption = 'Valor'
              FocusControl = DBEdit16
            end
            object Label23: TLabel
              Left = 314
              Top = 116
              Width = 44
              Height = 13
              Caption = 'PIS Base'
              FocusControl = DBEdit17
            end
            object Label24: TLabel
              Left = 417
              Top = 116
              Width = 40
              Height = 13
              Caption = 'Al'#237'quota'
              FocusControl = DBEdit18
            end
            object Label25: TLabel
              Left = 519
              Top = 116
              Width = 24
              Height = 13
              Caption = 'Valor'
              FocusControl = DBEdit19
            end
            object Label35: TLabel
              Left = 7
              Top = 152
              Width = 52
              Height = 13
              Caption = 'INSS Base'
              FocusControl = DBEdit27
            end
            object Label36: TLabel
              Left = 110
              Top = 152
              Width = 40
              Height = 13
              Caption = 'Al'#237'quota'
              FocusControl = DBEdit28
            end
            object Label37: TLabel
              Left = 212
              Top = 152
              Width = 24
              Height = 13
              Caption = 'Valor'
              FocusControl = DBEdit29
            end
            object DBEdit5: TDBEdit
              Left = 7
              Top = 18
              Width = 100
              Height = 21
              DataField = 'ISSQN_BASE'
              DataSource = dsPadrao
              TabOrder = 0
            end
            object DBEdit6: TDBEdit
              Left = 110
              Top = 18
              Width = 100
              Height = 21
              DataField = 'ISSQN_ALIQUOTA'
              DataSource = dsPadrao
              TabOrder = 1
            end
            object DBEdit7: TDBEdit
              Left = 212
              Top = 18
              Width = 100
              Height = 21
              TabStop = False
              Color = clScrollBar
              DataField = 'ISSQN_VALOR'
              DataSource = dsPadrao
              ReadOnly = True
              TabOrder = 2
            end
            object cbRetido: TDBCheckBox
              Left = 315
              Top = 18
              Width = 97
              Height = 17
              Caption = 'ISSQN Retido'
              DataField = 'ISS_RETIDO'
              DataSource = dsPadrao
              TabOrder = 3
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBEdit8: TDBEdit
              Left = 7
              Top = 55
              Width = 100
              Height = 21
              DataField = 'IRRF_BASE'
              DataSource = dsPadrao
              TabOrder = 4
            end
            object DBEdit9: TDBEdit
              Left = 110
              Top = 55
              Width = 100
              Height = 21
              DataField = 'IRRF_ALIQUOTA'
              DataSource = dsPadrao
              TabOrder = 5
            end
            object DBEdit10: TDBEdit
              Left = 212
              Top = 55
              Width = 100
              Height = 21
              TabStop = False
              Color = clScrollBar
              DataField = 'IRRF_VALOR'
              DataSource = dsPadrao
              ReadOnly = True
              TabOrder = 6
            end
            object DBEdit11: TDBEdit
              Left = 7
              Top = 92
              Width = 100
              Height = 21
              DataField = 'CSLL_BASE'
              DataSource = dsPadrao
              TabOrder = 7
            end
            object DBEdit12: TDBEdit
              Left = 110
              Top = 92
              Width = 100
              Height = 21
              DataField = 'CSLL_ALIQUOTA'
              DataSource = dsPadrao
              TabOrder = 8
            end
            object DBEdit13: TDBEdit
              Left = 212
              Top = 92
              Width = 100
              Height = 21
              TabStop = False
              Color = clScrollBar
              DataField = 'CSLL_VALOR'
              DataSource = dsPadrao
              ReadOnly = True
              TabOrder = 9
            end
            object DBEdit14: TDBEdit
              Left = 7
              Top = 129
              Width = 100
              Height = 21
              DataField = 'COFINS_BASE'
              DataSource = dsPadrao
              TabOrder = 10
            end
            object DBEdit15: TDBEdit
              Left = 110
              Top = 129
              Width = 100
              Height = 21
              DataField = 'COFINS_ALIQUOTA'
              DataSource = dsPadrao
              TabOrder = 11
            end
            object DBEdit16: TDBEdit
              Left = 212
              Top = 129
              Width = 100
              Height = 21
              TabStop = False
              Color = clScrollBar
              DataField = 'COFINS_VALOR'
              DataSource = dsPadrao
              ReadOnly = True
              TabOrder = 12
            end
            object DBEdit17: TDBEdit
              Left = 314
              Top = 130
              Width = 100
              Height = 21
              DataField = 'PIS_BASE'
              DataSource = dsPadrao
              TabOrder = 13
            end
            object DBEdit18: TDBEdit
              Left = 417
              Top = 130
              Width = 100
              Height = 21
              DataField = 'PIS_ALIQUOTA'
              DataSource = dsPadrao
              TabOrder = 14
            end
            object DBEdit19: TDBEdit
              Left = 519
              Top = 130
              Width = 100
              Height = 21
              TabStop = False
              Color = clScrollBar
              DataField = 'PIS_VALOR'
              DataSource = dsPadrao
              ReadOnly = True
              TabOrder = 15
            end
            object DBEdit27: TDBEdit
              Left = 7
              Top = 167
              Width = 100
              Height = 21
              DataField = 'INSS_BASE'
              DataSource = dsPadrao
              TabOrder = 16
            end
            object DBEdit28: TDBEdit
              Left = 110
              Top = 167
              Width = 100
              Height = 21
              DataField = 'INSS_ALIQUOTA'
              DataSource = dsPadrao
              TabOrder = 17
            end
            object DBEdit29: TDBEdit
              Left = 212
              Top = 167
              Width = 100
              Height = 21
              TabStop = False
              Color = clScrollBar
              DataField = 'INSS_VALOR'
              DataSource = dsPadrao
              ReadOnly = True
              TabOrder = 18
            end
            object DBCheckBox1: TDBCheckBox
              Left = 411
              Top = 18
              Width = 97
              Height = 17
              Caption = 'Rps Substituido'
              DataField = 'RPSSUBSTITUIDO'
              DataSource = dsPadrao
              TabOrder = 19
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
          end
          object TabSheet6: TTabSheet
            Caption = 'Observa'#231#245'es Gerais'
            ImageIndex = 5
            object DBMemo1: TDBMemo
              Left = 0
              Top = 0
              Width = 628
              Height = 191
              Align = alClient
              DataField = 'OBSERVACAO'
              DataSource = dsPadrao
              TabOrder = 0
            end
          end
        end
        object pcTransferencia: TPageControl
          Left = 1
          Top = 424
          Width = 636
          Height = 135
          ActivePage = TabSheet10
          Align = alClient
          TabOrder = 2
          TabPosition = tpBottom
          object TabSheet9: TTabSheet
            Caption = 'Grade'
            object cxGrid4: TcxGrid
              Left = 0
              Top = 0
              Width = 628
              Height = 109
              Align = alClient
              TabOrder = 0
              object cxGridDBTableView7: TcxGridDBTableView
                NavigatorButtons.ConfirmDelete = False
                NavigatorButtons.Images = ImageList
                NavigatorButtons.First.Visible = False
                NavigatorButtons.PriorPage.Visible = False
                NavigatorButtons.Prior.Visible = False
                NavigatorButtons.Next.Visible = False
                NavigatorButtons.NextPage.Visible = False
                NavigatorButtons.Last.Visible = False
                NavigatorButtons.Insert.Hint = 'Inserir'
                NavigatorButtons.Insert.ImageIndex = 8
                NavigatorButtons.Insert.Visible = True
                NavigatorButtons.Append.Hint = 'Inserir'
                NavigatorButtons.Append.Visible = False
                NavigatorButtons.Delete.Hint = 'Deletar'
                NavigatorButtons.Delete.ImageIndex = 4
                NavigatorButtons.Edit.Hint = 'Alterar'
                NavigatorButtons.Edit.ImageIndex = 1
                NavigatorButtons.Post.Hint = 'Confirmar'
                NavigatorButtons.Post.ImageIndex = 3
                NavigatorButtons.Cancel.Hint = 'Cancelar'
                NavigatorButtons.Cancel.ImageIndex = 2
                NavigatorButtons.Refresh.Visible = False
                NavigatorButtons.SaveBookmark.Visible = False
                NavigatorButtons.GotoBookmark.Visible = False
                NavigatorButtons.Filter.Visible = False
                DataController.DataModeController.GridMode = True
                DataController.DataSource = dsFAT_NF_SERVICO_ITEM
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                NewItemRow.InfoText = 'Clique aqui para adicionar uma nova s'#233'rie'
                NewItemRow.SeparatorColor = clBtnFace
                OptionsBehavior.FocusCellOnTab = True
                OptionsBehavior.NavigatorHints = True
                OptionsCustomize.ColumnFiltering = False
                OptionsCustomize.ColumnGrouping = False
                OptionsCustomize.ColumnHidingOnGrouping = False
                OptionsCustomize.ColumnSorting = False
                OptionsData.Appending = True
                OptionsSelection.UnselectFocusedRecordOnExit = False
                OptionsView.Navigator = True
                OptionsView.NavigatorOffset = 200
                OptionsView.ColumnAutoWidth = True
                OptionsView.GroupByBox = False
                OptionsView.GroupSummaryLayout = gslAlignWithColumns
                OptionsView.HeaderAutoHeight = True
                OptionsView.Indicator = True
                object cxGridDBTableView7MONTANTE: TcxGridDBColumn
                  DataBinding.FieldName = 'MONTANTE'
                  PropertiesClassName = 'TcxButtonEditProperties'
                  Properties.Buttons = <
                    item
                      Default = True
                      Kind = bkEllipsis
                    end>
                  Properties.OnButtonClick = cxGridDBTableView7MONTANTEPropertiesButtonClick
                end
                object cxGridDBTableView7DESCRICAO: TcxGridDBColumn
                  DataBinding.FieldName = 'DESCRICAO'
                  PropertiesClassName = 'TcxBlobEditProperties'
                  Properties.BlobEditKind = bekMemo
                  Properties.BlobPaintStyle = bpsText
                  Width = 415
                end
                object cxGridDBTableView7PRECO_UNITARIO: TcxGridDBColumn
                  DataBinding.FieldName = 'PRECO_UNITARIO'
                  Width = 99
                end
                object cxGridDBTableView7QUANTIDADE: TcxGridDBColumn
                  DataBinding.FieldName = 'QUANTIDADE'
                end
              end
              object cxGridDBTableView8: TcxGridDBTableView
                NavigatorButtons.ConfirmDelete = False
                NavigatorButtons.First.Visible = False
                NavigatorButtons.PriorPage.Visible = False
                NavigatorButtons.Prior.Hint = 'Anterior'
                NavigatorButtons.Prior.Visible = True
                NavigatorButtons.Next.Hint = 'Proximo'
                NavigatorButtons.Next.Visible = True
                NavigatorButtons.NextPage.Visible = False
                NavigatorButtons.Last.Visible = False
                NavigatorButtons.Insert.Hint = 'Inserir'
                NavigatorButtons.Append.Visible = False
                NavigatorButtons.Delete.Hint = 'Deletar'
                NavigatorButtons.Edit.Hint = 'Alterar'
                NavigatorButtons.Edit.ImageIndex = 0
                NavigatorButtons.Post.Hint = 'Confirmar'
                NavigatorButtons.Post.ImageIndex = 3
                NavigatorButtons.Post.Visible = True
                NavigatorButtons.Cancel.Hint = 'Cancelar'
                NavigatorButtons.Cancel.ImageIndex = 2
                NavigatorButtons.Refresh.Visible = False
                NavigatorButtons.SaveBookmark.Visible = False
                NavigatorButtons.GotoBookmark.Visible = False
                NavigatorButtons.Filter.Visible = False
                DataController.DataModeController.GridMode = True
                DataController.DetailKeyFieldNames = 'CODIGOSERIE'
                DataController.KeyFieldNames = 'CODIGOSERIE'
                DataController.MasterKeyFieldNames = 'CODIGOSERIE'
                DataController.Summary.DefaultGroupSummaryItems = <
                  item
                    Kind = skCount
                    Position = spFooter
                  end>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                NewItemRow.InfoText = 'Clique aqui para adicionar uma nova disciplina'
                NewItemRow.SeparatorColor = clBtnFace
                OptionsBehavior.NavigatorHints = True
                OptionsBehavior.FocusCellOnCycle = True
                OptionsSelection.CellMultiSelect = True
                OptionsView.Navigator = True
                OptionsView.ScrollBars = ssVertical
                OptionsView.Footer = True
                OptionsView.GroupByBox = False
                OptionsView.Indicator = True
                OptionsView.IndicatorWidth = 15
              end
              object cxGridLevel4: TcxGridLevel
                GridView = cxGridDBTableView7
              end
            end
          end
          object TabSheet10: TTabSheet
            Caption = 'Formul'#225'rio'
            ImageIndex = 1
            object Label32: TLabel
              Left = 1
              Top = -2
              Width = 45
              Height = 13
              Caption = 'Montante'
              FocusControl = DBEdit21
            end
            object Label33: TLabel
              Left = 1
              Top = 36
              Width = 120
              Height = 13
              Caption = 'Discrimina'#231#227'o do Servi'#231'o'
              FocusControl = DBMemo2
            end
            object Label34: TLabel
              Left = 164
              Top = -2
              Width = 67
              Height = 13
              Caption = 'Pre'#231'o Unit'#225'rio'
              FocusControl = DBEdit25
            end
            object Label39: TLabel
              Left = 296
              Top = 0
              Width = 55
              Height = 13
              Caption = 'Quantidade'
            end
            object DBNavigator4: TDBNavigator
              Left = 0
              Top = 89
              Width = 628
              Height = 20
              DataSource = dsFAT_NF_SERVICO_ITEM
              VisibleButtons = [nbPrior, nbNext, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
              Align = alBottom
              TabOrder = 4
            end
            object DBEdit21: TDBEdit
              Left = 1
              Top = 14
              Width = 134
              Height = 21
              DataField = 'MONTANTE'
              DataSource = dsFAT_NF_SERVICO_ITEM
              TabOrder = 1
            end
            object DBMemo2: TDBMemo
              Left = 0
              Top = 50
              Width = 628
              Height = 39
              Align = alBottom
              Anchors = [akLeft, akTop, akRight, akBottom]
              DataField = 'DESCRICAO'
              DataSource = dsFAT_NF_SERVICO_ITEM
              ScrollBars = ssVertical
              TabOrder = 3
            end
            object DBEdit25: TDBEdit
              Left = 164
              Top = 14
              Width = 134
              Height = 21
              DataField = 'PRECO_UNITARIO'
              DataSource = dsFAT_NF_SERVICO_ITEM
              TabOrder = 2
            end
            object BitBtn1: TBitBtn
              Tag = 2
              Left = 136
              Top = 13
              Width = 27
              Height = 22
              Hint = 'Consulta'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnClick = BitBtn1Click
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000CE0E0000C40E00000000000000000000008080008080
                0080800080800080800080800080800080800080800080800080800080800080
                8000808000000000808000808000808000808000808000808000808000808000
                8080008080008080008080008080008080000000000000000000008080008080
                0080800080800080800080800080800080800080800080800080800080800000
                0000000000000000808000808000808000808000808000808000808000808000
                8080008080008080008080000000000000000000008080008080008080008080
                0080800080800080800080800080800080800080800080800000000000000000
                0000808000808000808000808000808000808080808000000000000000000080
                8080008080000000000000000000008080008080008080008080008080008080
                0000008080808080808080808080808080800000000000000000000080800080
                80008080008080008080008080000000808080C0C0C0FFFFFFC0C0C0FFFFFFC0
                C0C0808080000000008080008080008080008080008080008080808080808080
                C0C0C0FFFFFFC0C0C0FFFFFFC0C0C0FFFFFFC0C0C08080808080800080800080
                80008080008080008080000000808080FFFFFFC0C0C0FFFFFFC0C0C0FFFFFFC0
                C0C0FFFFFF808080000000008080008080008080008080008080000000808080
                C0C0C0FFFFFFC0C0C0FFFFFFC0C0C0FFFFFFC0C0C08080800000000080800080
                80008080008080008080000000808080FFFFFFC0C0C0FFFFFFC0C0C0FFFFFFC0
                C0C0FFFFFF808080000000008080008080008080008080008080808080808080
                C0C0C0FFFFFFC0C0C0FFFFFFC0C0C0FFFFFFC0C0C08080808080800080800080
                80008080008080008080008080000000808080C0C0C0FFFFFFC0C0C0FFFFFFC0
                C0C0808080000000008080008080008080008080008080008080008080008080
                0000008080808080808080808080808080800000000080800080800080800080
                8000808000808000808000808000808000808080808000000000000000000080
                8080008080008080008080008080008080008080008080008080}
            end
            object DBEdit26: TDBEdit
              Left = 296
              Top = 14
              Width = 121
              Height = 21
              DataField = 'QUANTIDADE'
              DataSource = dsFAT_NF_SERVICO_ITEM
              TabOrder = 5
            end
          end
        end
      end
    end
    inherited tabLogDLL: TTabSheet
      inherited cxGridLog: TcxGrid
        Width = 638
        Height = 560
      end
    end
    object TabComunicacao: TTabSheet
      Caption = 'Log Comunica'#231#227'o'
      ImageIndex = 2
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 638
        Height = 560
        Align = alClient
        TabOrder = 0
        object cxGridDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsComunicacao
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.PostponedSynchronization = False
          OptionsBehavior.DragHighlighting = False
          OptionsBehavior.DragOpening = False
          OptionsBehavior.DragScrolling = False
          OptionsBehavior.IncSearch = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsView.NoDataToDisplayInfoText = '<  Nenhuma Informa'#231#227'o para Exibir  >'
          OptionsView.ColumnAutoWidth = True
          OptionsView.Indicator = True
          object cxGridDBTableView1DATA_HORA: TcxGridDBColumn
            DataBinding.FieldName = 'DATA_HORA'
            Options.Editing = False
            Width = 84
          end
          object cxGridDBTableView1TIPO: TcxGridDBColumn
            DataBinding.FieldName = 'TIPO'
            Options.Editing = False
            Width = 47
          end
          object cxGridDBTableView1PROTOCOLO: TcxGridDBColumn
            DataBinding.FieldName = 'PROTOCOLO'
            Options.Editing = False
            Width = 87
          end
          object cxGridDBTableView1OBS: TcxGridDBColumn
            DataBinding.FieldName = 'OBS'
            PropertiesClassName = 'TcxBlobEditProperties'
            Properties.BlobEditKind = bekMemo
            Properties.BlobPaintStyle = bpsText
            Properties.ReadOnly = True
            Width = 72
          end
          object cxGridDBTableView1XML: TcxGridDBColumn
            DataBinding.FieldName = 'XML'
            PropertiesClassName = 'TcxBlobEditProperties'
            Properties.BlobEditKind = bekMemo
            Properties.BlobPaintStyle = bpsText
            Properties.ReadOnly = True
            Width = 93
          end
          object cxGridDBTableView1Column1: TcxGridDBColumn
            Caption = 'Nfse_Numero'
            DataBinding.FieldName = 'NFSE_NUMERO'
            Width = 120
          end
          object cxGridDBTableView1Column2: TcxGridDBColumn
            Caption = 'C'#243'digo Verifica'#231#227'o'
            DataBinding.FieldName = 'CODIGOVERIFICACAO'
            Width = 121
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
  end
  inherited stat1: TStatusBar
    Top = 588
    Width = 791
  end
  inherited FormStorage1: TJvFormStorage
    Left = 680
    Top = 224
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Left = 712
    Top = 224
  end
  inherited ActionList: TActionList
    object ActEnviarNfsE: TAction
      Caption = 'Enviar NFs-e'
      OnExecute = ActEnviarNfsEExecute
    end
    object ActCancelarNfs: TAction
      Caption = 'Cancelar Nfs-e'
    end
    object ActGerarFaturamentoMes: TAction
      Caption = 'Gerar Faturamento M'#234's'
      OnExecute = ActGerarFaturamentoMesExecute
    end
  end
  inherited mm1: TMainMenu
    inherited OPeraes1: TMenuItem
      object CancelarNotaFiscal1: TMenuItem [4]
        Caption = 'Cancelar Nota Fiscal'
        OnClick = actCancelarNFExecute
      end
      object EnviarNFse1: TMenuItem [5]
        Action = ActEnviarNfsE
      end
      object GerarFaturamentoMs1: TMenuItem [7]
        Action = ActGerarFaturamentoMes
      end
    end
  end
  inherited PopupMenuPageControl: TPopupMenu
    Left = 741
    Top = 184
  end
  object dsFAT_NF_SERVICO_ITEM: TDataSource
    DataSet = dmFAT_NF_SERVICO.cdsFAT_NF_SERVICO_ITEM
    OnStateChange = dsPadraoStateChange
    OnDataChange = dsPadraoDataChange
    Left = 80
    Top = 136
  end
  object dsComunicacao: TDataSource
    DataSet = dmFAT_NF_SERVICO.cdsComunicacao
    OnStateChange = dsPadraoStateChange
    OnDataChange = dsPadraoDataChange
    Left = 80
    Top = 104
  end
  object dsEND_CIDADES: TDataSource
    DataSet = dmFAT_NF_SERVICO.cdsEND_CIDADES
    OnStateChange = dsPadraoStateChange
    OnDataChange = dsPadraoDataChange
    Left = 96
    Top = 208
  end
end

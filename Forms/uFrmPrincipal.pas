unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, System.StrUtils,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, SynEdit, Vcl.ExtCtrls, ClipBrd,
  SynEditHighlighter, SynHighlighterSQL, Vcl.StdCtrls, Vcl.Buttons,
  SynEditCodeFolding, SynHighlighterDWS, System.Actions, Vcl.ActnList, Vcl.Menus;

type
  TFrmPrincipal = class(TForm)
    SynSQLSyn1: TSynSQLSyn;
    SynDWSSyn1: TSynDWSSyn;
    GridPanelTexto: TGridPanel;
    ActionList1: TActionList;
    actSQLToString: TAction;
    actStringToSQL: TAction;
    pnlTopoSQL: TPanel;
    lblVarInicio: TLabel;
    lblVarFim: TLabel;
    lblSQL: TLabel;
    edtVarInicio: TEdit;
    edtVarFim: TEdit;
    btnStringToSQL: TButton;
    btnSQLToString: TButton;
    pnlTopoString: TPanel;
    lblString: TLabel;
    pnlBaixoString: TFlowPanel;
    chkVarInicioPrimeiraLinha: TCheckBox;
    chkVarFimUltimaLinha: TCheckBox;
    chkMaiorLinha: TCheckBox;
    SynEditSQL: TSynEdit;
    SynEditString: TSynEdit;
    actSQLClipBoard: TAction;
    actStringClipBoard: TAction;
    PopupMenu1: TPopupMenu;
    Copiarparareadetransferncia1: TMenuItem;
    procedure actSQLToStringExecute(Sender: TObject);
    procedure actStringToSQLExecute(Sender: TObject);
    procedure actSQLClipBoardExecute(Sender: TObject);
    procedure actStringClipBoardExecute(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
  private
    procedure SQLToString;
    procedure StringToSQL;
    procedure CopiarAreaTransferencia(aCopiarSQL: Boolean);
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.actStringClipBoardExecute(Sender: TObject);
begin
  if not SynEditString.Text.IsEmpty then begin
    Self.CopiarAreaTransferencia(False);
  end;
end;

procedure TFrmPrincipal.actStringToSQLExecute(Sender: TObject);
begin
  Self.StringToSQL;
end;

procedure TFrmPrincipal.CopiarAreaTransferencia(aCopiarSQL: Boolean);
var
  sMsg: string;
begin
  if aCopiarSQL then begin
    Clipboard.AsText := SynEditSQL.Text;
  end else begin
    Clipboard.AsText := SynEditString.Text;
  end;

  sMsg := Format('Texto do campo "%s" copiado para a área de transferência.', [IfThen(aCopiarSQL, 'SQL', 'String')]);
  Application.MessageBox(PWideChar(sMsg), 'Aviso', MB_ICONINFORMATION);
end;

procedure TFrmPrincipal.PopupMenu1Popup(Sender: TObject);
begin
  if PopupMenu1.PopupComponent.Name = SynEditSQL.Name then begin
    PopupMenu1.Items[0].ShortCut := actSQLClipBoard.ShortCut;
    PopupMenu1.Items[0].Action := actSQLClipBoard;
  end;

  if PopupMenu1.PopupComponent.Name = SynEditString.Name then begin
    PopupMenu1.Items[0].ShortCut := actStringClipBoard.ShortCut;
    PopupMenu1.Items[0].Action := actStringClipBoard;
  end;
end;

procedure TFrmPrincipal.actSQLClipBoardExecute(Sender: TObject);
begin
  if not SynEditSQL.Text.IsEmpty then begin
    Self.CopiarAreaTransferencia(True);
  end;
end;

procedure TFrmPrincipal.actSQLToStringExecute(Sender: TObject);
begin
  Self.SQLToString;
end;

procedure TFrmPrincipal.StringToSQL;
var
  i, posInicial, posFinal: Integer;
  linhaAux, linha: string;
begin
  if Trim(SynEditString.Lines.Text).IsEmpty then begin
    Application.MessageBox('É necessário informar um texto no campo "String".', 'Aviso', MB_ICONERROR);
    SynEditString.SetFocus;
  end else begin
    SynEditSQL.Lines.Clear;

    for i := 0 to SynEditString.Lines.Count - 1 do begin
      linhaAux := SynEditString.Lines[i];

      if not linhaAux.IsEmpty then begin
        linhaAux := StringReplace(linhaAux, '''''', '''', [rfReplaceAll]);

        posInicial := Pos('''', linhaAux);

        if posInicial > 0 then begin
          posFinal := posInicial;
          posInicial := posInicial + 1;

          while Pos('''', linhaAux, posFinal + 1) > posFinal do begin
            posFinal := Pos('''', linhaAux, posFinal + 1);
          end;

          linha := Copy(linhaAux, posInicial, (posFinal - posInicial));

          SynEditSQL.Lines.Add(TrimRight(linha));
        end;
      end;
    end;

    SynEditSQL.SetFocus;
  end;
end;

procedure TFrmPrincipal.SQLToString;
var
  i, j, tamMax: Integer;
  linhaAux, sInicio, sFim: string;
begin
  tamMax := 0;

  if Trim(SynEditSQL.Lines.Text).IsEmpty then begin
    Application.MessageBox('É necessário informar uma consulta no campo "SQL".', 'Aviso', MB_ICONERROR);
    SynEditSQL.SetFocus;
  end else begin
    SynEditString.Lines.Clear;

    if chkMaiorLinha.Checked then begin
      for i := 0 to SynEditSQL.Lines.Count - 1 do begin
        linhaAux := TrimRight(SynEditSQL.Lines[i]);

        if not linhaAux.IsEmpty then begin
          linhaAux := StringReplace(linhaAux, '''', '''''', [rfReplaceAll]);

          if Length(linhaAux) > tamMax then begin
            tamMax := Length(linhaAux);
          end;
        end;
      end;
    end;

    for i := 0 to SynEditSQL.Lines.Count - 1 do begin
      linhaAux := TrimRight(SynEditSQL.Lines[i]);

      if not linhaAux.IsEmpty then begin
        linhaAux := StringReplace(linhaAux, '''', '''''', [rfReplaceAll]);

        if tamMax > 0 then begin
          for j := 1 to (tamMax - Length(linhaAux)) do begin
            linhaAux := linhaAux + ' ';
          end;
        end;

        if ((SynEditString.Lines.Count = 0) and (not chkVarInicioPrimeiraLinha.Checked)) then begin
          sInicio := '''';
        end else begin
          sInicio := IfThen(Length(edtVarInicio.Text) > 0, edtVarInicio.Text + ' + ''', '''');
        end;

        if i < SynEditSQL.Lines.Count - 1  then begin
          sFim := IfThen(Length(edtVarFim.Text) > 0, ' '' + ' + edtVarFim.Text + ' +', ' '' +');
        end else begin
          if not chkVarFimUltimaLinha.Checked then begin
            sFim := ' '' ;';
          end else begin
            sFim := IfThen(Length(edtVarFim.Text) > 0, ' '' + ' + edtVarFim.Text + ' ;', ' '' ;');
          end;
        end;

        SynEditString.Lines.Add(sInicio + linhaAux + sFim);
      end;
    end;

    SynEditString.SetFocus;
  end;
end;

end.

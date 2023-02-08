unit uCalculadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmPrincipal = class(TForm)
    pnTela: TPanel;
    bt1: TBitBtn;
    bt2: TBitBtn;
    bt3: TBitBtn;
    btSoma: TBitBtn;
    btMaisMenos: TBitBtn;
    bt0: TBitBtn;
    btVirgula: TBitBtn;
    btIgual: TBitBtn;
    bt4: TBitBtn;
    bt5: TBitBtn;
    bt6: TBitBtn;
    btMultiplica: TBitBtn;
    btMenos: TBitBtn;
    bt9: TBitBtn;
    bt8: TBitBtn;
    bt7: TBitBtn;
    btDivisao: TBitBtn;
    btC: TBitBtn;
    btCE: TBitBtn;
    btApagar: TBitBtn;
    pnFundoTela: TPanel;
    lbCelula: TLabel;
    procedure FormShow(Sender: TObject);
    procedure bt1Click(Sender: TObject);
    procedure btApagarClick(Sender: TObject);
    procedure btVirgulaClick(Sender: TObject);
    procedure btCClick(Sender: TObject);
    procedure btSomaClick(Sender: TObject);
    procedure btMenosClick(Sender: TObject);
    procedure btMultiplicaClick(Sender: TObject);
    procedure btDivisaoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btIgualClick(Sender: TObject);
    procedure btMaisMenosClick(Sender: TObject);
    procedure btCEClick(Sender: TObject);

  private
    Fvalor1: Double;
    Foperacao: string;
    Fnovo_valor: Boolean;

    procedure TirarFoco;
    procedure NumerarTela(numero: Integer);

  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}



{ TfrmPrincipal }

procedure TfrmPrincipal.bt1Click(Sender: TObject);
begin
  TirarFoco;
  NumerarTela(StrToInt(TBitBtn(Sender).Caption));
end;

procedure TfrmPrincipal.btApagarClick(Sender: TObject);
begin
  TirarFoco;
  if Length(pnTela.Caption) = 1 then
    pnTela.Caption := '0'
  else
    pnTela.Caption := Copy(pnTela.Caption, 1, Length(pnTela.Caption) -1);
end;

procedure TfrmPrincipal.btCClick(Sender: TObject);
begin
  TirarFoco;
  pnTela.Caption := '0';
  lbCelula.Visible := False;
end;

procedure TfrmPrincipal.btCEClick(Sender: TObject);
begin
  TirarFoco;
  pnTela.Caption := '0';
  lbCelula.Visible := False;
end;

procedure TfrmPrincipal.btDivisaoClick(Sender: TObject);
begin
  TirarFoco;
  lbCelula.Caption := pnTela.Caption + ' /';
  lbCelula.Visible := True;
  Foperacao := '/';
  Fnovo_valor := True;
  Fvalor1 := StrToFloat(pnTela.Caption);
end;

procedure TfrmPrincipal.btIgualClick(Sender: TObject);
begin
  TirarFoco;

  lbCelula.Caption := lbCelula.Caption + ' ' + pnTela.Caption + ' =';

  if Foperacao = '+' then
    pnTela.Caption := FloatToStr(Fvalor1 + StrToFloat(pnTela.Caption));

  if Foperacao = '-' then
    pnTela.Caption := FloatToStr(Fvalor1 - StrToFloat(pnTela.Caption));

  if Foperacao = 'x' then
    pnTela.Caption := FloatToStr(Fvalor1 * StrToFloat(pnTela.Caption));

  if Foperacao = '/' then
    pnTela.Caption := FloatToStr(Fvalor1 / StrToFloat(pnTela.Caption));
end;

procedure TfrmPrincipal.btMaisMenosClick(Sender: TObject);
begin
  TirarFoco;

  if pnTela.Caption <> '0' then
    pnTela.Caption := FloatToStr(StrToFloat(pnTela.Caption) * -1);

end;

procedure TfrmPrincipal.btMenosClick(Sender: TObject);
begin
  TirarFoco;
  lbCelula.Caption := pnTela.Caption + ' -';
  lbCelula.Visible := True;
  Foperacao := '-';
  Fnovo_valor := True;
  Fvalor1 := StrToFloat(pnTela.Caption);
end;

procedure TfrmPrincipal.btMultiplicaClick(Sender: TObject);
begin
  TirarFoco;
  lbCelula.Caption := pnTela.Caption + ' x';
  lbCelula.Visible := True;
  Foperacao := 'x';
  Fnovo_valor := True;
  Fvalor1 := StrToFloat(pnTela.Caption);
end;

procedure TfrmPrincipal.btSomaClick(Sender: TObject);
begin
  TirarFoco;
  lbCelula.Caption := pnTela.Caption + ' +';
  lbCelula.Visible := True;
  Foperacao := '+';
  Fnovo_valor := True;
  Fvalor1 := StrToFloat(pnTela.Caption);
end;

procedure TfrmPrincipal.btVirgulaClick(Sender: TObject);
begin
  TirarFoco;
  if POS(',', pnTela.Caption) <= 0 then
    pnTela.Caption := pnTela.Caption + ',';
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  Foperacao := '';
  Fvalor1 := 0;
  Fnovo_valor := True;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  TirarFoco;
  pnTela.Caption := '0';
end;

procedure TfrmPrincipal.NumerarTela(numero: Integer);
begin
  if Fnovo_valor then begin
    Fnovo_valor := False;
    pnTela.Caption := '0';
  end;

  if pnTela.Caption = '0' then
    pnTela.Caption := numero.ToString
  else
    pnTela.Caption := pnTela.Caption + numero.ToString;
end;

procedure TfrmPrincipal.TirarFoco;
begin
  ActiveControl := nil;
  pnTela.SetFocus;
end;

end.

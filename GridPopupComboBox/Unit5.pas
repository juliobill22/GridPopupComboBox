unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, cxDataControllerConditionalFormattingRulesManagerDialog,
  Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxDropDownEdit, cxDataUtils, cxDBExtLookupComboBox, Data.Win.ADODB, System.Generics.Defaults,
  Vcl.StdCtrls;

type

  TCentroCusto = class
    private
      FCusId    : Integer;
      FCusRed   : String;
      FCusPaiId : Integer;
      FCusDesc  : String;
      FCusTipo  : String;
    public
      Constructor Create();
      Destructor Destroy();
      property CusId : Integer read FCusId write FCusId;
      property CusRed : String read FCusRed write FCusRed;
      property CusPaiId : Integer read FCusPaiId write FCusPaiId;
      property CusDesc : String read FCusDesc write FCusDesc;
      property CusTipo : String read FCusTipo write FCusTipo;
  end;

  TListCentroCusto = class
    private
      FListaCentroCusto : TList;
    public
      Constructor Create();
      procedure Adicionar(ACentroCusto : TCentroCusto);
      procedure Remover(Index : Integer);
      function Count : Integer;
  end;

  TForm5 = class(TForm)
    cxGridViewRepository1: TcxGridViewRepository;
    cxGridViewRepository1DBTableView1: TcxGridDBTableView;
    cxGridViewRepository1DBTableView2: TcxGridDBTableView;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    ADOQuery1centrocus_id: TAutoIncField;
    ADOQuery1centrocus_red: TStringField;
    ADOQuery1centrocus_pai_id: TIntegerField;
    ADOQuery1centrocus_descricao: TWideStringField;
    ADOQuery1centrocus_tipo: TWideStringField;
    DataSource1: TDataSource;
    cxGridViewRepository1DBTableView1centrocus_id: TcxGridDBColumn;
    cxGridViewRepository1DBTableView1centrocus_red: TcxGridDBColumn;
    cxGridViewRepository1DBTableView1centrocus_pai_id: TcxGridDBColumn;
    popupedit: TcxGridDBColumn;
    lookupcomb: TcxGridDBColumn;
    ADOQuery2: TADOQuery;
    ADOQuery2demonst_id: TAutoIncField;
    ADOQuery2centrocus_id: TIntegerField;
    ADOQuery2demonst_valor: TBCDField;
    ADOQuery2demonst_ano: TIntegerField;
    ADOQuery2demonst_obs: TStringField;
    ADOQuery2demonst_tipo: TStringField;
    DataSource2: TDataSource;
    cxGridViewRepository1DBTableView2demonst_id: TcxGridDBColumn;
    cxGridViewRepository1DBTableView2centrocus_id: TcxGridDBColumn;
    cxGridViewRepository1DBTableView2demonst_valor: TcxGridDBColumn;
    cxGridViewRepository1DBTableView2demonst_ano: TcxGridDBColumn;
    cxGridViewRepository1DBTableView2demonst_obs: TcxGridDBColumn;
    cxGridViewRepository1DBTableView2demonst_tipo: TcxGridDBColumn;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    edtCusId: TEdit;
    edtCusRed: TEdit;
    edtCusDesc: TEdit;
    edtCusPaiId: TEdit;
    edtCusTipo: TEdit;
    procedure FormShow(Sender: TObject);
    procedure lookupcombPropertiesInitPopup(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    FTempListaCentroCusto : TListCentroCusto;
  public

  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}


procedure TForm5.Button1Click(Sender: TObject);
var centrocusto : TCentroCusto;
begin

  centrocusto := TCentroCusto.Create;
  with centrocusto do
  begin
    CusId    := StrToInt(edtCusId.Text);
    CusRed   := edtCusRed.Text;
    CusPaiId := StrToInt(edtCusPaiId.Text);
    CusDesc  := edtCusDesc.Text;
    CusTipo  := edtCusTipo.Text;
  end;

  FTempListaCentroCusto.Adicionar(centrocusto);

  edtCusId.Clear;
  edtCusRed.Clear;
  edtCusPaiId.Clear;
  edtCusDesc.Clear;
  edtCusTipo.Clear;
  edtCusId.SetFocus;

end;

procedure TForm5.Button2Click(Sender: TObject);
var ID : String;
begin
  if InputQuery('Remover Centro de Custo', 'Digite o item a ser removido', ID) then
    FTempListaCentroCusto.Remover(StrToInt(ID));
end;

procedure TForm5.Button3Click(Sender: TObject);
begin
  ShowMessage('A lista de centro de custo possui a quantidade de ' + IntToStr(FTempListaCentroCusto.Count));
end;

procedure TForm5.FormCreate(Sender: TObject);
begin
  FTempListaCentroCusto := TListCentroCusto.Create;
end;

procedure TForm5.FormShow(Sender: TObject);
begin
  ADOQuery1.Open;
  ADOQuery2.Open;
end;

procedure TForm5.lookupcombPropertiesInitPopup(Sender: TObject);
var sfilter : String;
begin

  with cxGridViewRepository1DBTableView1.DataController do
  begin

    try
      ADOQuery2.DisableControls;

      sfilter :=
        'centrocus_id = ' +
          VarToStr(cxGridViewRepository1DBTableView1centrocus_id.EditValue);

      ADOQuery2.Filtered:= False;
      ADOQuery2.Filter  := sfilter;
      ADOQuery2.Filtered:= True;

    finally
      ADOQuery2.EnableControls;
    end;

  end;
end;

{ TListCentroCusto }

procedure TListCentroCusto.Adicionar(ACentroCusto: TCentroCusto);
begin
  FListaCentroCusto.Add(ACentroCusto);
end;

function TListCentroCusto.Count: Integer;
begin
  result := FListaCentroCusto.Count;
end;

constructor TListCentroCusto.Create;
begin
  inherited Create;
  FListaCentroCusto := TList.Create;
end;

procedure TListCentroCusto.Remover(Index: Integer);
begin
  if Index < FListaCentroCusto.Count then
    FListaCentroCusto.Delete(Index)
  else
    ShowMessage('Item não encontrado!');
end;

{ TCentroCusto }

constructor TCentroCusto.Create;
begin

end;

destructor TCentroCusto.Destroy;
begin

end;

end.

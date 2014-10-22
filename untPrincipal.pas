unit untPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.ComCtrls;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label7: TLabel;
    SpeedButton2: TSpeedButton;
    EdtArquivoOriginal: TEdit;
    OpenDialog1: TOpenDialog;
    btnProcesso: TBitBtn;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    ListBoxAlfabetica: TListBox;
    ListBoxRenda: TListBox;
    ListBoxIdade: TListBox;
    Label2: TLabel;
    Button1: TButton;
    ProgressBar1: TProgressBar;
    procedure SpeedButton2Click(Sender: TObject);
    procedure btnProcessoClick(Sender: TObject);
    procedure Split(Str: string; Delimiter: Char; ListOfStrings: TStrings) ;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}



procedure TfrmPrincipal.btnProcessoClick(Sender: TObject);
 var
   slItens, slDados: TStringList;
   QtdLinhasTotal, y :Integer;
   sLinha, data, regiao, renda, id, nome, Arquivo, dataDia :string;
   dia, mes, ano :Word;

begin
   slItens := TStringList.Create;
   slDados := TStringList.Create;

      //limpa os listBox
   ListBoxAlfabetica.Clear;
   ListBoxRenda.Clear;
   ListBoxIdade.Clear;

   slItens.LoadFromFile(EdtArquivoOriginal.Text);
   QtdLinhasTotal := slItens.Count - 1;

    for y := 1 to Pred( QtdLinhasTotal ) do
    begin
      sLinha := slItens[y];
     // ShowMessage(sLinha );
      Split( sLinha, ';', slDados );

      id      :=  slDados[0];
      nome    :=  slDados[1];
      renda   :=  slDados[2];
      regiao  :=  slDados[3];
      data    :=  slDados[4];


      if (data > '01/12/1983') then
       begin
         ListBoxAlfabetica.Items.Add(slDados[1]);
         ListBoxAlfabetica.Sorted := True;
      end;

      if (renda > '30.000,00')then
       begin
         ListBoxRenda.Items.Add(slDados[1]);
      end;

      if (regiao = 'OESTE') and (data >= '01/12/1948') and (data <= '01/12/1963')  then
       begin
         ListBoxIdade.Items.Add(slDados[1]);
      end;

    end;

     ListBoxAlfabetica.Items.SaveToFile('C:\\ListaAlfabetica' + FormatDateTime('yyyymm', date) + '.txt');
     ListBoxRenda.Items.SaveToFile('C:\\ListaRenda' + FormatDateTime('yyyymm', date) + '.txt');
     ListBoxIdade.Items.SaveToFile('C:\\ListaIdade' + FormatDateTime('yyyymm', date) + '.txt');

     slItens.Free;
     slDados.Free;

end;

procedure TfrmPrincipal.Button1Click(Sender: TObject);
 var
   slItens, slDados: TStringList;
   QtdLinhasTotal, y :Integer;
begin
    slItens := TStringList.Create;
    slDados := TStringList.Create;

    slItens.LoadFromFile('C:\Caminho do arquivo.txt');
    //recebe a quantidade de linhas
    QtdLinhasTotal := slItens.Count;
    //recebe a quantidade total de linhas lidas
    ProgressBar1.Max := QtdLinhasTotal;

    for y := 0 to Pred( QtdLinhasTotal ) do
    begin
      ProgressBar1.Position := y;
    end;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin

 if ParamStr(1) <> '' then
    begin
       ShowMessage(ParamStr(1));
       Label2.Caption := 'Número : ' + ParamStr(1);
    end;

end;

procedure TfrmPrincipal.SpeedButton2Click(Sender: TObject);
begin
 if OpenDialog1.Execute then
   EdtArquivoOriginal.Text := OpenDialog1.FileName;

end;

procedure TfrmPrincipal.Split(Str: string; Delimiter: Char; ListOfStrings: TStrings);
begin
    ListOfStrings.StrictDelimiter := True;
    ListOfStrings.Clear;
    ListOfStrings.Delimiter       := Delimiter;
    ListOfStrings.DelimitedText   := Str;
end;

end.

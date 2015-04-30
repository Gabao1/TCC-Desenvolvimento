unit U_campanha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.DBCtrls, Data.DB, Vcl.Mask, Vcl.Buttons, Vcl.DBActns,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan;

type
  TF_campanha = class(TForm)
    DBEdit1: TDBEdit;
    DS_cadastroCampanha: TDataSource;
    Label2: TLabel;
    DBMemo1: TDBMemo;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    Image1: TImage;
    ACM_campanha: TActionManager;
    DatasetInsert1: TDataSetInsert;
    DatasetDelete1: TDataSetDelete;
    DatasetEdit1: TDataSetEdit;
    DatasetPost1: TDataSetPost;
    DatasetCancel1: TDataSetCancel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_campanha: TF_campanha;

implementation

{$R *.dfm}

end.

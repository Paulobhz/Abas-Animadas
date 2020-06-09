unit uFrmMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.TabControl, FMX.Ani;

type
  TfrmMain = class(TForm)
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    TabItem3: TTabItem;
    TabItem4: TTabItem;
    rect_tabs: TRectangle;
    Layout_aba1: TLayout;
    Layout_aba3: TLayout;
    Layout_aba4: TLayout;
    img_aba1_sel: TImage;
    img_aba2: TImage;
    Image1: TImage;
    Image2: TImage;
    img_aba2_sel: TImage;
    Image3: TImage;
    img_aba4_sel: TImage;
    img_aba4: TImage;
    Image4: TImage;
    img_Ball: TImage;
    img_Pulso: TImage;
    img_aba1: TImage;
    Layout_aba2: TLayout;
    img_aba3: TImage;
    img_aba3_sel: TImage;
    AnimationBall: TFloatAnimation;
    procedure Layout_aba1Click(Sender: TObject);
    procedure AnimationBallFinish(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure SelecionaAba(lyt: Tlayout);
    procedure PaintIcone(aba: integer);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.fmx}

procedure TfrmMain.PaintIcone(aba : integer);
begin
   TImage(FrmMain.FindComponent('img_aba'+aba.ToString)).Visible        := false;
   TImage(FrmMain.FindComponent('img_aba'+aba.ToString+'_sel')).Visible := true;
end;


procedure TfrmMain.SelecionaAba(lyt: Tlayout);
var
  i : integer;
begin
    //Exibir apenas imagens cinzas
    for I := 1 to 4 do begin
      TImage(FrmMain.FindComponent('img_aba'+i.ToString)).Visible        := true;
      TImage(FrmMain.FindComponent('img_aba'+i.ToString+'_sel')).Visible := false;
    end;

    //Move a bolinha

    img_Ball.Visible        := True;
    AnimationBall.Tag       := lyt.Tag;    // guarda a aba selecionada
    AnimationBall.StopValue := lyt.Position.X+(lyt.Width/2) - (img_ball/2);
    AnimationBall.Start;

end;


procedure TfrmMain.AnimationBallFinish(Sender: TObject);
begin
     PaintIcone(AnimationBall.Tag);
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
    SelecionaAba(Layout_aba1);
end;

procedure TfrmMain.Layout_aba1Click(Sender: TObject);
begin
    SelecionaAba(Tlayout(Sender));
end;

end.

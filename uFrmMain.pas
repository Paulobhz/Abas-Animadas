unit uFrmMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.TabControl;

type
  TfrmMain = class(TForm)
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    TabItem3: TTabItem;
    TabItem4: TTabItem;
    rect_tabs: TRectangle;
    Layout1: TLayout;
    Layout2: TLayout;
    Layout3: TLayout;
    Layout4: TLayout;
    img_aba1: TImage;
    img_aba1_sel: TImage;
    img_aba2: TImage;
    Image1: TImage;
    Image2: TImage;
    img_aba2_sel: TImage;
    img_aba3: TImage;
    img_aba3_sel: TImage;
    Image3: TImage;
    img_aba4_sel: TImage;
    img_aba4: TImage;
    Image4: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.fmx}

end.

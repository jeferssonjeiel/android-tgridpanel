unit unt_main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  Tfrm_app = class(TForm)
    GridPanelLayout1: TGridPanelLayout;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_app: Tfrm_app;

implementation

{$R *.fmx}

procedure Tfrm_app.FormCreate(Sender: TObject);
var botoes: TButton;
  I: Integer;
  begin

    GridPanelLayout1.ControlCollection.Controls[1,1];

    GridPanelLayout1.RowCollection.Add.Value := 10;
    //GridPanelLayout1.ColumnCollection.Add.Value := 5;

    for I := 1 to 10 do
      begin
        botoes := TButton.Create(nil);

        with botoes do
          begin
            Parent := GridPanelLayout1;
            Align := TAlignLayout.Client;
          end;

      end;

  end;

procedure Tfrm_app.Timer1Timer(Sender: TObject);
  begin
    //GridPanelLayout1.RowCollection.Add.Value := GridPanelLayout1.RowCollection.Add.Value+1;
    //GridPanelLayout1.ColumnCollection.Add.Value := GridPanelLayout1.ColumnCollection.Add.Value+1;
  end;

end.

unit unMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Winapi.ShellApi, Vcl.StdCtrls,
  Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    ListView1: TListView;
    btnFileAdd: TButton;
    OpenDialog1: TOpenDialog;
    btnViewChange: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnFileAddClick(Sender: TObject);
    procedure btnViewChangeClick(Sender: TObject);
  private
    FViewStyle: Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnFileAddClick(Sender: TObject);
var
  LI: TListItem;
  FI: TSHFileInfo;
  i: SmallInt;
begin
  inherited;
  ListView1.Items.BeginUpdate;
  if OpenDialog1.Execute then
  begin
    with OpenDialog1.Files do
      for i := 0 to Count - 1 do
      begin
        LI := ListView1.Items.AddItem(nil);
        LI.ImageIndex := 62;
        LI.Caption := Strings[i];
        ShGetFileInfo(PChar('*' + ExtractFileExt(li.Caption)), 0, fi, SizeOf(fi),
          SHGFI_SMALLICON or SHGFI_SYSICONINDEX or SHGFI_TYPENAME or SHGFI_USEFILEATTRIBUTES);
          LI.ImageIndex := FI.iIcon;
        // LI.Data := Pointer(mtFiles.RecNo);
      end;
  end;
  ListView1.Items.EndUpdate;

end;

procedure TForm1.btnViewChangeClick(Sender: TObject);
begin
  if FViewStyle = 3 then
    FViewStyle := 0
  else
    Inc(FViewStyle);

  ListView1.ViewStyle := TViewStyle(FViewStyle);

end;

procedure TForm1.FormCreate(Sender: TObject);
var
  FI: TSHFileInfo;
begin
  FViewStyle := 0;
  with ListView1 do
  begin
    Align := alClient;
    SmallImages := TImageList.CreateSize(16, 16);
    SmallImages.Handle := ShGetFileInfo('', 0, FI, SizeOf(FI), SHGFI_SMALLICON or SHGFI_ICON or SHGFI_SYSICONINDEX);
    LargeImages := TImageList.Create(nil);
    LargeImages.Handle := ShGetFileInfo('', 0, FI, SizeOf(FI), SHGFI_LARGEICON or SHGFI_ICON or SHGFI_SYSICONINDEX);
  end;
  ListView1.ViewStyle := TViewStyle(FViewStyle);

end;

end.

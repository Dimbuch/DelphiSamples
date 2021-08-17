program FilesIcons;

uses
  Vcl.Forms,
  unMain in 'unMain.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Отображение системных иконок файлов';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

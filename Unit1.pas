unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, DB,
  DBCtrls, ExtCtrls, StdCtrls, Grids, DBGrids, ComCtrls,
  Dialogs;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button5: TButton;
    DBGrid2: TDBGrid;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    DBGrid5: TDBGrid;
    Panel1: TPanel;
    Edit3: TEdit;
    Edit4: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Edit5: TEdit;
    Label5: TLabel;
    Label7: TLabel;
    Edit6: TEdit;
    Button18: TButton;
    Button19: TButton;
    Button20: TButton;
    Button6: TButton;
    DateTimePicker1: TDateTimePicker;
    Label6: TLabel;
    Button7: TButton;
    Button8: TButton;
    Label8: TLabel;
    Edit7: TEdit;
    Button15: TButton;
    Button16: TButton;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Edit8: TEdit;
    Label13: TLabel;
    Edit9: TEdit;
    Button17: TButton;
    Button21: TButton;
    Button22: TButton;
    Button23: TButton;
    Button24: TButton;
    Button25: TButton;
    Button26: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Edit8Change(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure Button26Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  GG:integer;
  s:string;

implementation

uses Unit2, Unit6, Unit7;

{$R *.dfm}


procedure TForm1.Button1Click(Sender: TObject);
begin
Edit3.Text:='';
Edit4.Text:='0';
Edit5.Text:='0';
Edit6.Text:='0';
Button19.Visible:=true;
Button18.Visible:=false;
Panel1.Visible:=true;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Edit3.Text:=DBGrid1.Fields[1].AsString;
Edit4.Text:=DBGrid1.Fields[2].AsString;
Edit5.Text:=DBGrid1.Fields[3].AsString;
Edit6.Text:=DBGrid1.Fields[4].AsString;
Button19.Visible:=false;
Button18.Visible:=true;
Panel1.Visible:=true;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
button1.Enabled := false;
button1.Visible := false;
button2.Enabled := false;
button2.Visible := false;
button3.Enabled := false;
button3.Visible := false;
Panel1.Visible:=false;
button9.Enabled := false;
button9.Visible := false;
button10.Enabled := false;
button10.Visible := false;
button11.Enabled := false;
button11.Visible := false;
button12.Enabled := false;
button12.Visible := false;
button13.Enabled := false;
button13.Visible := false;
button14.Enabled := false;
button14.Visible := false;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
if DBGrid1.Fields[0].AsString = '' then
begin
ShowMessage('Введіть послугу (лише ті що не записані до чеку)');
end
else
begin
DataModule2.ADOQDel.Close;
DataModule2.ADOQDel.SQL.Text:= 'DELETE * FROM [Послуги] Where ([Послуги].[Id послуги] = '+DBGrid1.Fields[0].AsString+')';
DataModule2.ADOQDel.ExecSQL;
FormShow(Sender);
end;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
DataModule2.ADOQPoslugi.Close;
DateTimePicker1.Date:=now;
DataModule2.ADOQPoslugi.SQL.Text:= 'SELECT Послуги.[Id послуги], Послуги.[Назва послуги], Послуги.Ціна, Послуги.[Відсоток знижки], Послуги.[Вартість послуги з врахуванням знижки]'
+' FROM Послуги;';
DataModule2.ADOQPoslugi.Open;
end;

procedure TForm1.Button20Click(Sender: TObject);
begin
Panel1.Visible:=false;
end;

procedure TForm1.Button19Click(Sender: TObject);
begin
DataModule2.ADOQPoslugi.Close;
DataModule2.ADOQPoslugi.SQL.Text:='INSERT INTO Послуги ( [Назва послуги], [Ціна], [Відсоток знижки], [Вартість послуги з врахуванням знижки] ) values ("'+Edit3.Text+'", "'+Edit4.Text+'", "'+Edit5.Text+'", '+Edit6.Text+')';
DataModule2.ADOQPoslugi.ExecSQL;

DataModule2.ADOQPoslugi.Close;
DataModule2.ADOQPoslugi.SQL.Text:= 'SELECT [Id послуги], [Назва послуги], [Ціна], [Відсоток знижки], [Вартість послуги з врахуванням знижки]'
+' FROM Послуги ORDER BY [Послуги].[Id послуги]';
DataModule2.ADOQPoslugi.Open;

panel1.Visible:=False;
end;

procedure TForm1.Button18Click(Sender: TObject);
begin
DataModule2.ADOQDel.Close;
DataModule2.ADOQDel.SQL.Text:='UPDATE Послуги SET [Послуги].[Назва послуги] = "'+Edit3.Text+'", [Послуги].[Ціна] = "'+Edit4.Text+'", [Послуги].[Відсоток знижки] = "'+Edit5.Text+'", [Послуги].[Вартість послуги з врахуванням знижки] = '+Edit6.Text+' '
+' WHERE ((([Послуги].[Id послуги])='+DBGrid1.Fields[0].AsString+'))';
DataModule2.ADOQDel.ExecSQL;
FormShow(Sender);
panel1.Visible:=False;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
DataModule2.ADOQPoslugi.Close;
DataModule2.ADOQPoslugi.SQL.Text:= 'SELECT [Id послуги], [Назва послуги], [Ціна], [Відсоток знижки], [Вартість послуги з врахуванням знижки]'
+' FROM Послуги ORDER BY [Послуги].[Id послуги]';
DataModule2.ADOQPoslugi.Open;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
if (Edit2.Text='') or not(trystrtoint(Edit2.Text, GG)) then
begin
   ShowMessage('Введіть id послуги (лише числа)')
end
else begin
DataModule2.ADOQPoslugi.Close;
DataModule2.ADOQPoslugi.SQL.Text:= 'SELECT [Id послуги], [Назва послуги], [Ціна], [Відсоток знижки], [Вартість послуги з врахуванням знижки]'
+' FROM Послуги where [Послуги].[Id послуги]= '+Edit2.Text+' ORDER BY [Послуги].[Id послуги]';
DataModule2.ADOQPoslugi.Open;
end;
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
DataModule2.ADOQPoslugi.Close;
DataModule2.ADOQPoslugi.SQL.Text:= 'SELECT [Id послуги], [Назва послуги], [Ціна], [Відсоток знижки], [Вартість послуги з врахуванням знижки]'
+' FROM Послуги where [Послуги].[Назва послуги] like "%'+Edit1.Text+'%" ORDER BY [Послуги].[Id послуги]';
DataModule2.ADOQPoslugi.Open;
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
DataModule2.ADOTZamov.insert;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
if DataModule2.ADOTZamov.modified then
DataModule2.ADOTZamov.Post;
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
DataModule2.ADOTZamov.delete;
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
DataModule2.ADOTPraciv.insert;
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
if DataModule2.ADOTPraciv.modified then
DataModule2.ADOTPraciv.Post;
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
DataModule2.ADOTPraciv.delete;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
DataModule2.ADOQCheke.Close;
DataModule2.ADOQCheke.SQL.Text:='SELECT Чек.[Код чека], Чек.[Загальна ціна замовлення], Чек.[Id замовника] FROM [Чек] WHERE Чек.[Дата замовлення]= :dt';
DataModule2.ADOQCheke.Parameters.ParamByName('dt').Value:=FormatDateTime('dd.mm.yyyy',DateTimePicker1.Date);
{ShowMessage(DataModule2.ADOQCheke.SQL.Text);}
DataModule2.ADOQCheke.Open;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
DataModule2.ADOQCheke.Close;
DataModule2.ADOQCheke.SQL.Text:='SELECT Чек.[Код чека], Чек.[Загальна ціна замовлення], Чек.[Id замовника], Чек.[Дата замовлення] FROM [Чек]';
DataModule2.ADOQCheke.Open;
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
if (Edit7.Text='') or not(trystrtoint(Edit7.Text, GG)) then
begin
   ShowMessage('Введіть код замовлення (лише числа)')
end
else begin
DataModule2.ADOQNadani.Close;
DataModule2.ADOQNadani.SQL.Text:= 'SELECT [Надані послуги].[Код замовлення], Послуги.[Назва послуги], [Надані послуги].[Вартість послуги з врахуванням знижки],'
+' [Надані послуги].[Термін виконання], [Працівники]![ПІБ] AS [Призначений працівник], [Замовник]![ПІБ] AS Замовник, [Надані послуги].[Код чека]'
+' FROM (Замовник INNER JOIN Чек ON Замовник.[Id замовника] = Чек.[Id замовника]) INNER JOIN (Працівники INNER JOIN (Послуги INNER JOIN [Надані послуги] ON Послуги.[Id послуги] = [Надані послуги].[Id послуги])'
+' ON Працівники.[Id працівника] = [Надані послуги].[Id працівника]) ON Чек.[Код чека] = [Надані послуги].[Код чека]'
+' where [Надані послуги].[Код замовлення]= '+Edit7.Text+' ORDER BY [Надані послуги].[Код замовлення]';
DataModule2.ADOQNadani.Open;
end;
end;

procedure TForm1.Button16Click(Sender: TObject);
begin
DataModule2.ADOQNadani.Close;
DataModule2.ADOQNadani.SQL.Text:= 'SELECT [Надані послуги].[Код замовлення], Послуги.[Назва послуги], [Надані послуги].[Вартість послуги з врахуванням знижки], [Надані послуги].[Термін виконання],'
+' [Працівники]![ПІБ] AS [Призначений працівник], [Замовник]![ПІБ] AS Замовник, [Надані послуги].[Код чека]'
+' FROM (Замовник INNER JOIN Чек ON Замовник.[Id замовника] = Чек.[Id замовника]) INNER JOIN (Працівники INNER JOIN (Послуги INNER JOIN [Надані послуги]'
+' ON Послуги.[Id послуги] = [Надані послуги].[Id послуги]) ON Працівники.[Id працівника] = [Надані послуги].[Id працівника]) ON Чек.[Код чека] = [Надані послуги].[Код чека]';
DataModule2.ADOQNadani.Open;
end;

procedure TForm1.Edit8Change(Sender: TObject);
begin
DataModule2.ADOQNadani.Close;
DataModule2.ADOQNadani.SQL.Text:= 'SELECT [Надані послуги].[Код замовлення], Послуги.[Назва послуги], [Надані послуги].[Вартість послуги з врахуванням знижки],'
+' [Надані послуги].[Термін виконання], [Працівники]![ПІБ] AS [Призначений працівник], [Замовник]![ПІБ] AS Замовник, [Надані послуги].[Код чека]'
+' FROM (Замовник INNER JOIN Чек ON Замовник.[Id замовника] = Чек.[Id замовника]) INNER JOIN (Працівники INNER JOIN (Послуги INNER JOIN [Надані послуги] ON Послуги.[Id послуги] = [Надані послуги].[Id послуги])'
+' ON Працівники.[Id працівника] = [Надані послуги].[Id працівника]) ON Чек.[Код чека] = [Надані послуги].[Код чека]'
+' where Послуги.[Назва послуги] like "%'+Edit8.Text+'%" ORDER BY [Надані послуги].[Код замовлення]';
DataModule2.ADOQNadani.Open;
end;

procedure TForm1.Button17Click(Sender: TObject);
begin

if (Edit9.Text='') or not(trystrtoint(Edit9.Text, GG)) then
begin
   ShowMessage('Введіть код чеку (лише числа)')
end
else begin
DataModule2.ADOQCheke.Close;
DataModule2.ADOQCheke.SQL.Text:= 'SELECT Чек.[Код чека], Чек.[Загальна ціна замовлення], Чек.[Id замовника], Чек.[Дата замовлення]'
+' FROM Чек where Чек.[Код чека] = '+Edit9.Text+' ORDER BY Чек.[Код чека]';
DataModule2.ADOQCheke.Open;
end;
end;

procedure TForm1.Button21Click(Sender: TObject);
begin
DataModule2.ADOQCheke.Close;
DataModule2.ADOQCheke.SQL.Text:= 'SELECT Чек.[Код чека], Чек.[Загальна ціна замовлення], Чек.[Id замовника], Чек.[Дата замовлення]'
+' FROM Чек ORDER BY Чек.[Код чека]';
DataModule2.ADOQCheke.Open;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
DataModule2.ADOQPoslugi.Close;
DataModule2.ADOQPoslugi.SQL.Text:='SELECT Послуги.[Id послуги], Послуги.[Назва послуги], Послуги.Ціна, Послуги.[Відсоток знижки], Послуги.[Вартість послуги з врахуванням знижки]'
+' FROM Послуги;';
DataModule2.ADOQPoslugi.open;

Form6.QRLabel2.Caption:='Id послуги';
Form6.QRLabel3.Caption:='Назва послуги';
Form6.QRLabel4.Caption:='Ціна';
Form6.QRLabel5.Caption:='Відсоток знижки';
Form6.QRLabel6.Caption:='Вартість послуги з врахуванням знижки';
Form6.QuickRep1.PreviewModal;
end;

procedure TForm1.Button22Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.Button23Click(Sender: TObject);
begin
DataModule2.ADOQPoslugi.Close;
DataModule2.ADOQPoslugi.SQL.Text:='SELECT [Надані послуги].[Код замовлення], Послуги.[Назва послуги], [Надані послуги].[Вартість послуги з врахуванням знижки],'
+' [Надані послуги].[Термін виконання], [Працівники]![ПІБ] AS [Призначений працівник], [Замовник]![ПІБ] AS Замовник, [Надані послуги].[Код чека]'
+' FROM (Чек INNER JOIN (Працівники INNER JOIN (Послуги INNER JOIN [Надані послуги] ON Послуги.[Id послуги] = [Надані послуги].[Id послуги])'
+' ON Працівники.[Id працівника] = [Надані послуги].[Id працівника]) ON Чек.[Код чека] = [Надані послуги].[Код чека]) INNER JOIN Замовник ON [Надані послуги].[Id замовника] = Замовник.[Id замовника]'
+' ORDER BY [Надані послуги].[Код замовлення]';
DataModule2.ADOQPoslugi.open;
Form7.QuickRep1.PreviewModal;
end;

procedure TForm1.Button24Click(Sender: TObject);
begin
inputquery('Доступ до змінення бази данних','Введіть пароль адміністратора',s);
if (s = '') then
begin
ShowMessage('Введення паролю адміністратора було відміненно');
end
else
if (Length(s) > 9 ) or not(trystrtoint(s, GG)) then
begin
ShowMessage('Пароль має бути меньшим за 10 чисел та містити в собі лише числа');
end
else
if (strtoint(s) = 1234) then
begin
button1.Enabled := true;
button1.Visible := true;
button2.Enabled := true;
button2.Visible := true;
button3.Enabled := true;
button3.Visible := true;
button24.Enabled := false;
button24.Visible := false;
end
else
ShowMessage('Введен невірний пароль, доступ до змінення бази не отриман')
end;

procedure TForm1.Button25Click(Sender: TObject);
begin
begin
inputquery('Доступ до змінення бази данних','Введіть пароль адміністратора',s);
if (s = '') then
begin
ShowMessage('Введення паролю адміністратора було відміненно');
end
else
if (Length(s) > 9) or not(trystrtoint(s, GG)) then
begin
ShowMessage('Пароль має бути меньшим за 10 чисел та містити в собі лише числа');
end
else
if (strtoint(s) = 1234) then
begin
button9.Enabled := true;
button9.Visible := true;
button10.Enabled := true;
button10.Visible := true;
button11.Enabled := true;
button11.Visible := true;
button25.Enabled := false;
button25.Visible := false;
end
else
ShowMessage('Введен невірний пароль, доступ до змінення бази не отриман')
end;
end;

procedure TForm1.Button26Click(Sender: TObject);
begin
begin
inputquery('Доступ до змінення бази данних','Введіть пароль адміністратора',s);
if (s = '') then
begin
ShowMessage('Введення паролю адміністратора було відміненно');
end
else
if (Length(s) > 9) or not(trystrtoint(s, GG)) then
begin
ShowMessage('Пароль має бути меньшим за 10 чисел та містити в собі лише числа');
end
else
if (strtoint(s) = 1234) then
begin
button12.Enabled := true;
button12.Visible := true;
button13.Enabled := true;
button13.Visible := true;
button14.Enabled := true;
button14.Visible := true;
button26.Enabled := false;
button26.Visible := false;
end
else
ShowMessage('Введен невірний пароль, доступ до змінення бази не отриман')
end;
end;

end.

unit Unit3;

interface

uses
  DB, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls, DBCtrls, ComCtrls, Menus;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    DBGrid1: TDBGrid;
    Button1: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    DateTimePicker1: TDateTimePicker;
    Button2: TButton;
    Button3: TButton;
    Panel1: TPanel;
    Label5: TLabel;
    Label7: TLabel;
    DBGrid2: TDBGrid;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    Button8: TButton;
    Button9: TButton;
    Panel2: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Panel3: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Panel4: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Button10: TButton;
    Label16: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label17: TLabel;
    Label19: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    Panel5: TPanel;
    Label21: TLabel;
    procedure Edit1Change(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  ChekNom, ChekSum,  CenaTov, CheknameS, ChekMinus: String;

implementation

uses Unit2, Unit1, Unit4, Unit5;

{$R *.dfm}

procedure TForm2.Edit1Change(Sender: TObject);
begin
DataModule2.ADOQPoslugi.Close;
DataModule2.ADOQPoslugi.SQL.Text:= 'SELECT [Id послуги], [Назва послуги], [Ціна], [Відсоток знижки], [Вартість послуги з врахуванням знижки]'
+' FROM Послуги where [Послуги].[Назва послуги] like "%'+Edit1.Text+'%" ORDER BY [Послуги].[Id послуги]';
DataModule2.ADOQPoslugi.Open;
end;

procedure TForm2.Button8Click(Sender: TObject);
begin
if (Edit2.Text='') or not(trystrtoint(Edit2.Text, GG)) then
begin
   ShowMessage('Введіть Id послуги (лише числа)')
end
else
if (strtoint(Edit2.Text)>21) then
begin
   ShowMessage('Id послуги '+Edit2.Text+' не знайдено')
end
else begin
DataModule2.ADOQPoslugi.Close;
DataModule2.ADOQPoslugi.SQL.Text:= 'SELECT [Id послуги], [Назва послуги], [Ціна], [Відсоток знижки], [Вартість послуги з врахуванням знижки]'
+' FROM Послуги where [Послуги].[Id послуги]= '+Edit2.Text+' ORDER BY [Послуги].[Id послуги]';
DataModule2.ADOQPoslugi.Open;
end;
end;

procedure TForm2.Button9Click(Sender: TObject);
begin
DataModule2.ADOQPoslugi.Close;
DataModule2.ADOQPoslugi.SQL.Text:= 'SELECT [Id послуги], [Назва послуги], [Ціна], [Відсоток знижки], [Вартість послуги з врахуванням знижки]'
+' FROM Послуги ORDER BY [Послуги].[Id послуги]';
DataModule2.ADOQPoslugi.Open;
end;


procedure TForm2.Button1Click(Sender: TObject);
begin
  panel5.Visible:=true;
Edit1.Enabled := true;
Edit2.Enabled := true;
Button2.Enabled := true;
Button3.Enabled := true;
Button6.Enabled := true;
Button8.Enabled := true;
Button9.Enabled := true;
DBLookupComboBox1.Enabled := true;
DBLookupComboBox2.Enabled := true;
DateTimePicker1.Enabled := false;
panel5.Visible:=true;

Panel1.Visible:=false;
DataModule2.ADOQDel.Close;
DataModule2.ADOQDel.SQL.Text:= ' Select [Id послуги] FROM Послуги where (Послуги.[Id послуги] = -1) ';
DataModule2.ADOQDel.ExecSQL;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
Edit1.Enabled := false;
Edit2.Enabled := false;
label19.Visible:=false;
label18.Visible:=false;
label6.Visible:=false;
Button2.Enabled := false;
Button3.Enabled := false;
Button6.Enabled := false;
Button8.Enabled := false;
Button9.Enabled := false;
DBLookupComboBox1.Enabled := false;
DBLookupComboBox2.Enabled := false;
DateTimePicker1.Enabled := false;
Panel1.Visible:=false;
DateTimePicker1.Date:=now;
Panel2.Visible:=false;
Panel3.Visible:=false;
Panel4.Visible:=false;
Button10.Enabled := false;
Button10.Visible := false;
panel5.Visible:=true;
end;

procedure TForm2.Button7Click(Sender: TObject);
begin
Close;
end;

procedure TForm2.N1Click(Sender: TObject);
begin
Form1.Show();
end;

procedure TForm2.N2Click(Sender: TObject);
begin
Form3.Show();
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
panel5.Visible:=true;
if (DBLookupComboBox1.Text='') or (DBLookupComboBox2.Text = '') then
begin
   ShowMessage('Введіть ПІБ працівника та замовника')
end
else begin
label5.Visible:=false;
label7.Visible:=false;
label6.Visible:=true;
label19.Visible:=true;
DBLookupComboBox1.Enabled := false;
DBLookupComboBox2.Enabled := false;
DateTimePicker1.Enabled := false;

Panel1.Visible:=true;
DataModule2.ADOQDel.Close;
DataModule2.ADOQDel.SQL.Text:= 'INSERT INTO Чек (  [Дата замовлення], [Загальна ціна замовлення], [Id замовника])  Values (:dt, 0, 1) ';
DataModule2.ADOQDel.Parameters.ParamByName('dt').Value:=FormatDateTime('dd.mm.yyyy', DateTimePicker1.Date);
DataModule2.ADOQDel.ExecSQL;


DataModule2.ADOQDel.close;
DataModule2.ADOQDel.SQL.text:=' select * from Чек order by [Код чека]';
DataModule2.ADOQDel.Open;

DataModule2.ADOQDel.Last;
Label6.Caption:= DataModule2.DataSDel.DataSet.Fields[0].AsString;
Panel1.Visible:=true;

end;
end;

procedure TForm2.Button5Click(Sender: TObject);
begin
Panel2.Visible:=true;
Panel3.Visible:=true;
Panel4.Visible:=true;
Button10.Enabled := true;
Button10.Visible := true;
end;

procedure TForm2.Button10Click(Sender: TObject);
begin
Panel2.Visible:=false;
Panel3.Visible:=false;
Panel4.Visible:=false;
Button10.Enabled := false;
Button10.Visible := false;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
if (label6.caption='№') then
begin
   ShowMessage('Чек не створенний')
end
else begin
label7.Visible:= true;

DataModule2.ADOQDel.Close;
DataModule2.ADOQDel.SQL.Text:= ' INSERT INTO [Надані послуги] ( [Id послуги], [Вартість послуги з врахуванням знижки], [Id працівника], [Id замовника], [Код чека]) '
+' Values ('+DataModule2.DataSPoslugi.DataSet.Fields[0].AsString+', '+DataModule2.DataSPoslugi.DataSet.Fields[4].AsString+', '+inttostr(DBLookupComboBox1.KeyValue)+', '+inttostr(DBLookupComboBox2.KeyValue)+', '+Label6.caption+')';
DataModule2.ADOQDel.ExecSQL;

DataModule2.ADOQSec.Close;
DataModule2.ADOQSec.SQL.Text:=' SELECT [Надані послуги].[Код замовлення], Послуги.[Назва послуги], [Надані послуги].[Вартість послуги з врахуванням знижки],'
+' [Надані послуги].[Термін виконання], [Працівники]![ПІБ] AS [Призначений працівник], [Замовник]![ПІБ] AS Замовник, [Надані послуги].[Код чека]'
+' FROM (Замовник INNER JOIN Чек ON Замовник.[Id замовника] = Чек.[Id замовника]) INNER JOIN (Працівники INNER JOIN (Послуги INNER JOIN [Надані послуги] ON Послуги.[Id послуги] = [Надані послуги].[Id послуги])'
+' ON Працівники.[Id працівника] = [Надані послуги].[Id працівника]) ON Чек.[Код чека] = [Надані послуги].[Код чека]'
+' WHERE ((([Надані послуги].[Код чека]) = '+Label6.caption+')) ';
DataModule2.ADOQSec.open;

DataModule2.ADOQDel.Close;
DataModule2.ADOQDel.SQL.Text:=' Select Sum([Надані послуги].[Вартість послуги з врахуванням знижки]) AS [Sum-Сума] FROM [Надані послуги] GROUP BY [Надані послуги].[Код чека] HAVING ((([Надані послуги].[Код чека])= '+Label6.caption+'))';
DataModule2.ADOQDel.Open;
ChekSum:= DataModule2.DataSDel.DataSet.Fields[0].AsString;
label7.caption:= 'Сумма за чеком (грн): ' + ChekSum;

DataModule2.ADOQDel.Close;
DataModule2.ADOQDel.SQL.Text:=' UPDATE Чек SET Чек.[Загальна ціна замовлення] = '+ChekSum+' WHERE (((Чек.[Код чека])='+Label6.caption+'))';
DataModule2.ADOQDel.ExecSQL;

end;
end;

procedure TForm2.Button6Click(Sender: TObject);
begin
if (label6.caption='№') then
begin
   ShowMessage('Чек не створенний')
end
else begin
DataModule2.ADOQVCh.Close;
DataModule2.ADOQVCh.SQL.Text:='SELECT [Надані послуги].[Код замовлення], Послуги.[Назва послуги], [Надані послуги].[Вартість послуги з врахуванням знижки],'
+' [Надані послуги].[Термін виконання], [Працівники]![ПІБ] AS [Призначений працівник], [Замовник]![ПІБ] AS Замовник, [Надані послуги].[Код чека]'
+' FROM (Замовник INNER JOIN Чек ON Замовник.[Id замовника] = Чек.[Id замовника]) INNER JOIN (Працівники INNER JOIN (Послуги INNER JOIN [Надані послуги] ON Послуги.[Id послуги] = [Надані послуги].[Id послуги])'
+' ON Працівники.[Id працівника] = [Надані послуги].[Id працівника]) ON Чек.[Код чека] = [Надані послуги].[Код чека]'
+ ' WHERE ((([Надані послуги].[Код чека])= '+Label6.caption+'))';
DataModule2.ADOQVCh.open;


Form5.QRLabel1.Caption:='Чек №'+Label6.Caption;
Form5.QRLabel2.Caption:='Дата: ' + datetostr(datetimepicker1.date);
Form5.QRLabel3.Caption:='Працівник: ' + DBLookupComboBox1.Text;
Form5.QRLabel4.Caption:='Замовник: ' + DBLookupComboBox2.Text;
Form5.QRLabel5.Caption:= label7.caption;
Form5.QuickRep1.PreviewModal;
end;
end;

procedure TForm2.DBGrid1CellClick(Column: TColumn);
begin
  label18.Visible:= true;
label5.Visible:= true;
Label5.Caption:=DataModule2.DataSPoslugi.DataSet.Fields[1].AsString;
panel5.Visible:= false;

end;

procedure TForm2.Button4Click(Sender: TObject);
begin
if (strtoint(ChekSum) = 0) then
begin
   ShowMessage('У чеку відсутні послуги');
end
else begin
DataModule2.ADOQDel.Close;
DataModule2.ADOQDel.SQL.Text:=' Select [Надані послуги].[Вартість послуги з врахуванням знижки] FROM [Надані послуги] Where ([Надані послуги].[Код замовлення] = '+DBGrid2.Fields[0].AsString+')';
DataModule2.ADOQDel.Open;
ChekMinus:= DataModule2.DataSDel.DataSet.Fields[0].AsString;
ChekSum:=inttostr(strtoint(ChekSum)-strtoint(ChekMinus));
label7.caption:= 'Сумма за чеком (грн): ' + ChekSum;

DataModule2.ADOQDel.Close;
DataModule2.ADOQDel.SQL.Text:= 'DELETE * FROM [Надані послуги] Where ([Надані послуги].[Код замовлення] = '+DBGrid2.Fields[0].AsString+')';
DataModule2.ADOQDel.ExecSQL;
DataModule2.ADOQSec.Close;

DataModule2.ADOQSec.SQL.Text:=' SELECT [Надані послуги].[Код замовлення], Послуги.[Назва послуги], [Надані послуги].[Вартість послуги з врахуванням знижки],'
+' [Надані послуги].[Термін виконання], [Працівники]![ПІБ] AS [Призначений працівник], [Замовник]![ПІБ] AS Замовник, [Надані послуги].[Код чека]'
+' FROM (Замовник INNER JOIN Чек ON Замовник.[Id замовника] = Чек.[Id замовника]) INNER JOIN (Працівники INNER JOIN (Послуги INNER JOIN [Надані послуги] ON Послуги.[Id послуги] = [Надані послуги].[Id послуги])'
+' ON Працівники.[Id працівника] = [Надані послуги].[Id працівника]) ON Чек.[Код чека] = [Надані послуги].[Код чека]'
+' WHERE ((([Надані послуги].[Код чека]) = '+Label6.caption+')) ';
DataModule2.ADOQSec.open;
end;
end;

end.

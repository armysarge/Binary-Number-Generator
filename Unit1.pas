unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, XPMan, SimpleGraph, Buttons,
  NiceChart;

type
  Tform1 = class(TForm)
    Shape1: TShape;
    Shape19: TShape;
    Shape10: TShape;
    Shape9: TShape;
    Shape11: TShape;
    Shape12: TShape;
    Shape13: TShape;
    Shape17: TShape;
    Shape18: TShape;
    Shape16: TShape;
    Shape14: TShape;
    Shape15: TShape;
    Shape8: TShape;
    Shape6: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape7: TShape;
    Shape20: TShape;
    Shape21: TShape;
    Shape22: TShape;
    Timer1: TTimer;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    RichEdit1: TRichEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    XPManifest1: TXPManifest;
    RichEdit2: TRichEdit;
    GroupBox3: TGroupBox;
    Button1: TButton;
    Label5: TLabel;
    Edit3: TEdit;
    Label6: TLabel;
    Edit4: TEdit;
    Label7: TLabel;
    Edit5: TEdit;
    GroupBox4: TGroupBox;
    RichEdit3: TRichEdit;
    GroupBox5: TGroupBox;
    RichEdit4: TRichEdit;
    Panel1: TPanel;
    chart1: TNiceChart;
    Button2: TButton;
    procedure Timer1Timer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure RichEdit1Change(Sender: TObject);
    procedure RichEdit2Change(Sender: TObject);
    procedure RichEdit4Change(Sender: TObject);
    procedure RichEdit3Change(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form1: Tform1;
  start, startprogram : integer;
  dice : integer;
  randomn : integer;
  ones, zeros, countbin : longint;
  bina : string;
  second, minute, hour, day, running : integer;
  byte, kbyte, mbyte : longint;
  timesss : double;
  graphcount : longint;

implementation

{$R *.dfm}

procedure Tform1.FormActivate(Sender: TObject);
begin
  randomize();
  start := 0;
  dice := 0;
  ones := 0;
  zeros := 0;
  startprogram := 0;
  running := 0;
  second := 0;
  minute := 0;
  hour := 0;
  day := 0;
  timesss := 0;
  richedit1.SetFocus;
  graphcount := 0;
  chart1.AddSeries(sksmooth);
end;

procedure Tform1.Button1Click(Sender: TObject);
begin
  if startprogram = 0
  then
    begin
      button1.Caption := 'PAUSE';
      timer1.Enabled := true;
      inc(startprogram);
    end else
  if startprogram = 1
  then
    begin
      button1.Caption := 'START';
      timer1.Enabled := false;
      dec(startprogram);
    end;
  button2.enabled := true;  
end;

function BinToInt(Value: string): Integer; 
var 
  i, iValueSize: Integer; 
begin 
  Result := 0; 
  iValueSize := Length(Value); 
  for i := iValueSize downto 1 do 
    if Value[i] = '1' then Result := Result + (1 shl (iValueSize - i));
end;

procedure Tform1.Timer1Timer(Sender: TObject);
var
done : boolean;
begin
randomize();
randomn := random(2);
dice := randomn;
done := false;
if start = 0
then
  begin
    inc(start);
    shape1.Brush.Color := clred;
  end
else begin
//shape1
if (shape1.Brush.Color = clred) and (done = false)
then
  begin
    if dice = 0
    then
      begin
        inc(zeros);
        shape1.Brush.Color := clwhite; shape2.Brush.Color := clred;
        shape3.Brush.Color := clwhite; shape4.Brush.Color := clwhite;
        shape5.Brush.Color := clwhite; shape6.Brush.Color := clwhite;
        shape7.Brush.Color := clwhite; shape8.Brush.Color := clwhite;
        shape9.Brush.Color := clwhite; shape10.Brush.Color := clwhite;
        shape11.Brush.Color := clwhite; shape12.Brush.Color := clwhite;
        shape13.Brush.Color := clwhite; shape14.Brush.Color := clwhite;
        shape15.Brush.Color := clwhite; shape16.Brush.Color := clwhite;
        shape17.Brush.Color := clwhite; shape18.Brush.Color := clwhite;
        shape19.Brush.Color := clwhite; shape20.Brush.Color := clwhite;
        shape21.Brush.Color := clwhite; shape22.Brush.Color := clwhite; done := true;
      end
    else if dice = 1 then
      begin
        inc(ones);
        shape1.Brush.Color := clwhite; shape2.Brush.Color := clwhite;
        shape3.Brush.Color := clwhite; shape4.Brush.Color := clwhite;
        shape5.Brush.Color := clwhite; shape6.Brush.Color := clwhite;
        shape7.Brush.Color := clwhite; shape8.Brush.Color := clwhite;
        shape9.Brush.Color := clwhite; shape10.Brush.Color := clwhite;
        shape11.Brush.Color := clwhite; shape12.Brush.Color := clwhite;
        shape13.Brush.Color := clwhite; shape14.Brush.Color := clwhite;
        shape15.Brush.Color := clwhite; shape16.Brush.Color := clwhite;
        shape17.Brush.Color := clwhite; shape18.Brush.Color := clwhite;
        shape19.Brush.Color := clwhite; shape20.Brush.Color := clwhite;
        shape21.Brush.Color := clwhite; shape22.Brush.Color := clred; done := true;
        done := true;
      end;
  end;
//shape2
if (shape2.Brush.Color = clred) and (done = false)
then
  begin
    if dice = 0
    then
      begin
      inc(zeros);
        shape1.Brush.Color := clwhite; shape2.Brush.Color := clwhite;
        shape3.Brush.Color := clred; shape4.Brush.Color := clwhite;
        shape5.Brush.Color := clwhite; shape6.Brush.Color := clwhite;
        shape7.Brush.Color := clwhite; shape8.Brush.Color := clwhite;
        shape9.Brush.Color := clwhite; shape10.Brush.Color := clwhite;
        shape11.Brush.Color := clwhite; shape12.Brush.Color := clwhite;
        shape13.Brush.Color := clwhite; shape14.Brush.Color := clwhite;
        shape15.Brush.Color := clwhite; shape16.Brush.Color := clwhite;
        shape17.Brush.Color := clwhite; shape18.Brush.Color := clwhite;
        shape19.Brush.Color := clwhite; shape20.Brush.Color := clwhite;
        shape21.Brush.Color := clwhite; shape22.Brush.Color := clwhite; done := true;
      end
    else if dice = 1 then
      begin
      inc(ones);
        shape1.Brush.Color := clred; shape2.Brush.Color := clwhite;
        shape3.Brush.Color := clwhite; shape4.Brush.Color := clwhite;
        shape5.Brush.Color := clwhite; shape6.Brush.Color := clwhite;
        shape7.Brush.Color := clwhite; shape8.Brush.Color := clwhite;
        shape9.Brush.Color := clwhite; shape10.Brush.Color := clwhite;
        shape11.Brush.Color := clwhite; shape12.Brush.Color := clwhite;
        shape13.Brush.Color := clwhite; shape14.Brush.Color := clwhite;
        shape15.Brush.Color := clwhite; shape16.Brush.Color := clwhite;
        shape17.Brush.Color := clwhite; shape18.Brush.Color := clwhite;
        shape19.Brush.Color := clwhite; shape20.Brush.Color := clwhite;
        shape21.Brush.Color := clwhite; shape22.Brush.Color := clwhite; done := true;
      end;
  end;
//shape3
if (shape3.Brush.Color = clred) and (done = false)
then
  begin
    if dice = 0
    then
      begin
      inc(zeros);
        shape1.Brush.Color := clwhite; shape2.Brush.Color := clwhite;
        shape3.Brush.Color := clwhite; shape4.Brush.Color := clred;
        shape5.Brush.Color := clwhite; shape6.Brush.Color := clwhite;
        shape7.Brush.Color := clwhite; shape8.Brush.Color := clwhite;
        shape9.Brush.Color := clwhite; shape10.Brush.Color := clwhite;
        shape11.Brush.Color := clwhite; shape12.Brush.Color := clwhite;
        shape13.Brush.Color := clwhite; shape14.Brush.Color := clwhite;
        shape15.Brush.Color := clwhite; shape16.Brush.Color := clwhite;
        shape17.Brush.Color := clwhite; shape18.Brush.Color := clwhite;
        shape19.Brush.Color := clwhite; shape20.Brush.Color := clwhite;
        shape21.Brush.Color := clwhite; shape22.Brush.Color := clwhite; done := true;
      end
    else if dice = 1 then
      begin
      inc(zeros);
        shape1.Brush.Color := clwhite; shape2.Brush.Color := clred;
        shape3.Brush.Color := clwhite; shape4.Brush.Color := clwhite;
        shape5.Brush.Color := clwhite; shape6.Brush.Color := clwhite;
        shape7.Brush.Color := clwhite; shape8.Brush.Color := clwhite;
        shape9.Brush.Color := clwhite; shape10.Brush.Color := clwhite;
        shape11.Brush.Color := clwhite; shape12.Brush.Color := clwhite;
        shape13.Brush.Color := clwhite; shape14.Brush.Color := clwhite;
        shape15.Brush.Color := clwhite; shape16.Brush.Color := clwhite;
        shape17.Brush.Color := clwhite; shape18.Brush.Color := clwhite;
        shape19.Brush.Color := clwhite; shape20.Brush.Color := clwhite;
        shape21.Brush.Color := clwhite; shape22.Brush.Color := clwhite; done := true;
      end;
  end;
//shape4
if (shape4.Brush.Color = clred) and (done = false)
then
  begin
    if dice = 0
    then
      begin
      inc(zeros);
        shape1.Brush.Color := clwhite; shape2.Brush.Color := clwhite;
        shape3.Brush.Color := clwhite; shape4.Brush.Color := clwhite;
        shape5.Brush.Color := clred; shape6.Brush.Color := clwhite;
        shape7.Brush.Color := clwhite; shape8.Brush.Color := clwhite;
        shape9.Brush.Color := clwhite; shape10.Brush.Color := clwhite;
        shape11.Brush.Color := clwhite; shape12.Brush.Color := clwhite;
        shape13.Brush.Color := clwhite; shape14.Brush.Color := clwhite;
        shape15.Brush.Color := clwhite; shape16.Brush.Color := clwhite;
        shape17.Brush.Color := clwhite; shape18.Brush.Color := clwhite;
        shape19.Brush.Color := clwhite; shape20.Brush.Color := clwhite;
        shape21.Brush.Color := clwhite; shape22.Brush.Color := clwhite; done := true;
      end
    else if dice = 1 then
      begin
      inc(ones);
        shape1.Brush.Color := clwhite; shape2.Brush.Color := clwhite;
        shape3.Brush.Color := clred; shape4.Brush.Color := clwhite;
        shape5.Brush.Color := clwhite; shape6.Brush.Color := clwhite;
        shape7.Brush.Color := clwhite; shape8.Brush.Color := clwhite;
        shape9.Brush.Color := clwhite; shape10.Brush.Color := clwhite;
        shape11.Brush.Color := clwhite; shape12.Brush.Color := clwhite;
        shape13.Brush.Color := clwhite; shape14.Brush.Color := clwhite;
        shape15.Brush.Color := clwhite; shape16.Brush.Color := clwhite;
        shape17.Brush.Color := clwhite; shape18.Brush.Color := clwhite;
        shape19.Brush.Color := clwhite; shape20.Brush.Color := clwhite;
        shape21.Brush.Color := clwhite; shape22.Brush.Color := clwhite; done := true;
      end;
  end;
//shape5
if (shape5.Brush.Color = clred) and (done = false)
then
  begin
    if dice = 0
    then
      begin
      inc(zeros);
        shape1.Brush.Color := clwhite; shape2.Brush.Color := clwhite;
        shape3.Brush.Color := clwhite; shape4.Brush.Color := clwhite;
        shape5.Brush.Color := clwhite; shape6.Brush.Color := clred;
        shape7.Brush.Color := clwhite; shape8.Brush.Color := clwhite;
        shape9.Brush.Color := clwhite; shape10.Brush.Color := clwhite;
        shape11.Brush.Color := clwhite; shape12.Brush.Color := clwhite;
        shape13.Brush.Color := clwhite; shape14.Brush.Color := clwhite;
        shape15.Brush.Color := clwhite; shape16.Brush.Color := clwhite;
        shape17.Brush.Color := clwhite; shape18.Brush.Color := clwhite;
        shape19.Brush.Color := clwhite; shape20.Brush.Color := clwhite;
        shape21.Brush.Color := clwhite; shape22.Brush.Color := clwhite; done := true;
      end
    else if dice = 1 then
      begin
      inc(ones);
        shape1.Brush.Color := clwhite; shape2.Brush.Color := clwhite;
        shape3.Brush.Color := clwhite; shape4.Brush.Color := clred;
        shape5.Brush.Color := clwhite; shape6.Brush.Color := clwhite;
        shape7.Brush.Color := clwhite; shape8.Brush.Color := clwhite;
        shape9.Brush.Color := clwhite; shape10.Brush.Color := clwhite;
        shape11.Brush.Color := clwhite; shape12.Brush.Color := clwhite;
        shape13.Brush.Color := clwhite; shape14.Brush.Color := clwhite;
        shape15.Brush.Color := clwhite; shape16.Brush.Color := clwhite;
        shape17.Brush.Color := clwhite; shape18.Brush.Color := clwhite;
        shape19.Brush.Color := clwhite; shape20.Brush.Color := clwhite;
        shape21.Brush.Color := clwhite; shape22.Brush.Color := clwhite; done := true;
      end;
  end;
//shape6
if (shape6.Brush.Color = clred) and (done = false)
then
  begin
    if dice = 0
    then
      begin
      inc(zeros);
        shape1.Brush.Color := clwhite; shape2.Brush.Color := clwhite;
        shape3.Brush.Color := clwhite; shape4.Brush.Color := clwhite;
        shape5.Brush.Color := clwhite; shape6.Brush.Color := clwhite;
        shape7.Brush.Color := clred; shape8.Brush.Color := clwhite;
        shape9.Brush.Color := clwhite; shape10.Brush.Color := clwhite;
        shape11.Brush.Color := clwhite; shape12.Brush.Color := clwhite;
        shape13.Brush.Color := clwhite; shape14.Brush.Color := clwhite;
        shape15.Brush.Color := clwhite; shape16.Brush.Color := clwhite;
        shape17.Brush.Color := clwhite; shape18.Brush.Color := clwhite;
        shape19.Brush.Color := clwhite; shape20.Brush.Color := clwhite;
        shape21.Brush.Color := clwhite; shape22.Brush.Color := clwhite; done := true;
      end
    else if dice = 1 then
      begin
      inc(ones);
        shape1.Brush.Color := clwhite; shape2.Brush.Color := clwhite;
        shape3.Brush.Color := clwhite; shape4.Brush.Color := clwhite;
        shape5.Brush.Color := clred; shape6.Brush.Color := clwhite;
        shape7.Brush.Color := clwhite; shape8.Brush.Color := clwhite;
        shape9.Brush.Color := clwhite; shape10.Brush.Color := clwhite;
        shape11.Brush.Color := clwhite; shape12.Brush.Color := clwhite;
        shape13.Brush.Color := clwhite; shape14.Brush.Color := clwhite;
        shape15.Brush.Color := clwhite; shape16.Brush.Color := clwhite;
        shape17.Brush.Color := clwhite; shape18.Brush.Color := clwhite;
        shape19.Brush.Color := clwhite; shape20.Brush.Color := clwhite;
        shape21.Brush.Color := clwhite; shape22.Brush.Color := clwhite; done := true;
      end;
  end;
//shape7
if (shape7.Brush.Color = clred) and (done = false)
then
  begin
    if dice = 0
    then
      begin
      inc(zeros);
        shape1.Brush.Color := clwhite; shape2.Brush.Color := clwhite;
        shape3.Brush.Color := clwhite; shape4.Brush.Color := clwhite;
        shape5.Brush.Color := clwhite; shape6.Brush.Color := clwhite;
        shape7.Brush.Color := clwhite; shape8.Brush.Color := clred;
        shape9.Brush.Color := clwhite; shape10.Brush.Color := clwhite;
        shape11.Brush.Color := clwhite; shape12.Brush.Color := clwhite;
        shape13.Brush.Color := clwhite; shape14.Brush.Color := clwhite;
        shape15.Brush.Color := clwhite; shape16.Brush.Color := clwhite;
        shape17.Brush.Color := clwhite; shape18.Brush.Color := clwhite;
        shape19.Brush.Color := clwhite; shape20.Brush.Color := clwhite;
        shape21.Brush.Color := clwhite; shape22.Brush.Color := clwhite; done := true;
      end
    else if dice = 1 then
      begin
      inc(ones);
        shape1.Brush.Color := clwhite; shape2.Brush.Color := clwhite;
        shape3.Brush.Color := clwhite; shape4.Brush.Color := clwhite;
        shape5.Brush.Color := clwhite; shape6.Brush.Color := clred;
        shape7.Brush.Color := clwhite; shape8.Brush.Color := clwhite;
        shape9.Brush.Color := clwhite; shape10.Brush.Color := clwhite;
        shape11.Brush.Color := clwhite; shape12.Brush.Color := clwhite;
        shape13.Brush.Color := clwhite; shape14.Brush.Color := clwhite;
        shape15.Brush.Color := clwhite; shape16.Brush.Color := clwhite;
        shape17.Brush.Color := clwhite; shape18.Brush.Color := clwhite;
        shape19.Brush.Color := clwhite; shape20.Brush.Color := clwhite;
        shape21.Brush.Color := clwhite; shape22.Brush.Color := clwhite; done := true;
      end;
  end;
//shape8
if (shape8.Brush.Color = clred) and (done = false)
then
  begin
    if dice = 0
    then
      begin
      inc(zeros);
        shape1.Brush.Color := clwhite; shape2.Brush.Color := clwhite;
        shape3.Brush.Color := clwhite; shape4.Brush.Color := clwhite;
        shape5.Brush.Color := clwhite; shape6.Brush.Color := clwhite;
        shape7.Brush.Color := clwhite; shape8.Brush.Color := clwhite;
        shape9.Brush.Color := clred; shape10.Brush.Color := clwhite;
        shape11.Brush.Color := clwhite; shape12.Brush.Color := clwhite;
        shape13.Brush.Color := clwhite; shape14.Brush.Color := clwhite;
        shape15.Brush.Color := clwhite; shape16.Brush.Color := clwhite;
        shape17.Brush.Color := clwhite; shape18.Brush.Color := clwhite;
        shape19.Brush.Color := clwhite; shape20.Brush.Color := clwhite;
        shape21.Brush.Color := clwhite; shape22.Brush.Color := clwhite; done := true;
      end
    else if dice = 1 then
      begin
      inc(ones);
        shape1.Brush.Color := clwhite; shape2.Brush.Color := clwhite;
        shape3.Brush.Color := clwhite; shape4.Brush.Color := clwhite;
        shape5.Brush.Color := clwhite; shape6.Brush.Color := clwhite;
        shape7.Brush.Color := clred; shape8.Brush.Color := clwhite;
        shape9.Brush.Color := clwhite; shape10.Brush.Color := clwhite;
        shape11.Brush.Color := clwhite; shape12.Brush.Color := clwhite;
        shape13.Brush.Color := clwhite; shape14.Brush.Color := clwhite;
        shape15.Brush.Color := clwhite; shape16.Brush.Color := clwhite;
        shape17.Brush.Color := clwhite; shape18.Brush.Color := clwhite;
        shape19.Brush.Color := clwhite; shape20.Brush.Color := clwhite;
        shape21.Brush.Color := clwhite; shape22.Brush.Color := clwhite; done := true;
      end;
  end;
//shape9
if (shape9.Brush.Color = clred) and (done = false)
then
  begin
    if dice = 0
    then
      begin
      inc(zeros);
        shape1.Brush.Color := clwhite; shape2.Brush.Color := clwhite;
        shape3.Brush.Color := clwhite; shape4.Brush.Color := clwhite;
        shape5.Brush.Color := clwhite; shape6.Brush.Color := clwhite;
        shape7.Brush.Color := clwhite; shape8.Brush.Color := clwhite;
        shape9.Brush.Color := clwhite; shape10.Brush.Color := clred;
        shape11.Brush.Color := clwhite; shape12.Brush.Color := clwhite;
        shape13.Brush.Color := clwhite; shape14.Brush.Color := clwhite;
        shape15.Brush.Color := clwhite; shape16.Brush.Color := clwhite;
        shape17.Brush.Color := clwhite; shape18.Brush.Color := clwhite;
        shape19.Brush.Color := clwhite; shape20.Brush.Color := clwhite;
        shape21.Brush.Color := clwhite; shape22.Brush.Color := clwhite; done := true;
      end
    else if dice = 1 then
      begin
      inc(ones);
        shape1.Brush.Color := clwhite; shape2.Brush.Color := clwhite;
        shape3.Brush.Color := clwhite; shape4.Brush.Color := clwhite;
        shape5.Brush.Color := clwhite; shape6.Brush.Color := clwhite;
        shape7.Brush.Color := clwhite; shape8.Brush.Color := clred;
        shape9.Brush.Color := clwhite; shape10.Brush.Color := clwhite;
        shape11.Brush.Color := clwhite; shape12.Brush.Color := clwhite;
        shape13.Brush.Color := clwhite; shape14.Brush.Color := clwhite;
        shape15.Brush.Color := clwhite; shape16.Brush.Color := clwhite;
        shape17.Brush.Color := clwhite; shape18.Brush.Color := clwhite;
        shape19.Brush.Color := clwhite; shape20.Brush.Color := clwhite;
        shape21.Brush.Color := clwhite; shape22.Brush.Color := clwhite; done := true;
      end;
  end;
//shape10
if (shape10.Brush.Color = clred) and (done = false)
then
  begin
    if dice = 0
    then
      begin
      inc(zeros);
        shape1.Brush.Color := clwhite; shape2.Brush.Color := clwhite;
        shape3.Brush.Color := clwhite; shape4.Brush.Color := clwhite;
        shape5.Brush.Color := clwhite; shape6.Brush.Color := clwhite;
        shape7.Brush.Color := clwhite; shape8.Brush.Color := clwhite;
        shape9.Brush.Color := clwhite; shape10.Brush.Color := clwhite;
        shape11.Brush.Color := clred; shape12.Brush.Color := clwhite;
        shape13.Brush.Color := clwhite; shape14.Brush.Color := clwhite;
        shape15.Brush.Color := clwhite; shape16.Brush.Color := clwhite;
        shape17.Brush.Color := clwhite; shape18.Brush.Color := clwhite;
        shape19.Brush.Color := clwhite; shape20.Brush.Color := clwhite;
        shape21.Brush.Color := clwhite; shape22.Brush.Color := clwhite; done := true;
      end
    else if dice = 1 then
      begin
      inc(ones);
        shape1.Brush.Color := clwhite; shape2.Brush.Color := clwhite;
        shape3.Brush.Color := clwhite; shape4.Brush.Color := clwhite;
        shape5.Brush.Color := clwhite; shape6.Brush.Color := clwhite;
        shape7.Brush.Color := clwhite; shape8.Brush.Color := clwhite;
        shape9.Brush.Color := clred; shape10.Brush.Color := clwhite;
        shape11.Brush.Color := clwhite; shape12.Brush.Color := clwhite;
        shape13.Brush.Color := clwhite; shape14.Brush.Color := clwhite;
        shape15.Brush.Color := clwhite; shape16.Brush.Color := clwhite;
        shape17.Brush.Color := clwhite; shape18.Brush.Color := clwhite;
        shape19.Brush.Color := clwhite; shape20.Brush.Color := clwhite;
        shape21.Brush.Color := clwhite; shape22.Brush.Color := clwhite; done := true;
      end;
  end;
//shape11
if (shape11.Brush.Color = clred) and (done = false)
then
  begin
    if dice = 0
    then
      begin
      inc(zeros);
        shape1.Brush.Color := clwhite; shape2.Brush.Color := clwhite;
        shape3.Brush.Color := clwhite; shape4.Brush.Color := clwhite;
        shape5.Brush.Color := clwhite; shape6.Brush.Color := clwhite;
        shape7.Brush.Color := clwhite; shape8.Brush.Color := clwhite;
        shape9.Brush.Color := clwhite; shape10.Brush.Color := clwhite;
        shape11.Brush.Color := clwhite; shape12.Brush.Color := clred;
        shape13.Brush.Color := clwhite; shape14.Brush.Color := clwhite;
        shape15.Brush.Color := clwhite; shape16.Brush.Color := clwhite;
        shape17.Brush.Color := clwhite; shape18.Brush.Color := clwhite;
        shape19.Brush.Color := clwhite; shape20.Brush.Color := clwhite;
        shape21.Brush.Color := clwhite; shape22.Brush.Color := clwhite; done := true;
      end
    else if dice = 1 then
      begin
      inc(ones);
        shape1.Brush.Color := clwhite; shape2.Brush.Color := clwhite;
        shape3.Brush.Color := clwhite; shape4.Brush.Color := clwhite;
        shape5.Brush.Color := clwhite; shape6.Brush.Color := clwhite;
        shape7.Brush.Color := clwhite; shape8.Brush.Color := clwhite;
        shape9.Brush.Color := clwhite; shape10.Brush.Color := clred;
        shape11.Brush.Color := clwhite; shape12.Brush.Color := clwhite;
        shape13.Brush.Color := clwhite; shape14.Brush.Color := clwhite;
        shape15.Brush.Color := clwhite; shape16.Brush.Color := clwhite;
        shape17.Brush.Color := clwhite; shape18.Brush.Color := clwhite;
        shape19.Brush.Color := clwhite; shape20.Brush.Color := clwhite;
        shape21.Brush.Color := clwhite; shape22.Brush.Color := clwhite; done := true;
      end;
  end;
//shape12
if (shape12.Brush.Color = clred) and (done = false)
then
  begin
    if dice = 0
    then
      begin
      inc(zeros);
        shape1.Brush.Color := clwhite; shape2.Brush.Color := clwhite;
        shape3.Brush.Color := clwhite; shape4.Brush.Color := clwhite;
        shape5.Brush.Color := clwhite; shape6.Brush.Color := clwhite;
        shape7.Brush.Color := clwhite; shape8.Brush.Color := clwhite;
        shape9.Brush.Color := clwhite; shape10.Brush.Color := clwhite;
        shape11.Brush.Color := clwhite; shape12.Brush.Color := clwhite;
        shape13.Brush.Color := clred; shape14.Brush.Color := clwhite;
        shape15.Brush.Color := clwhite; shape16.Brush.Color := clwhite;
        shape17.Brush.Color := clwhite; shape18.Brush.Color := clwhite;
        shape19.Brush.Color := clwhite; shape20.Brush.Color := clwhite;
        shape21.Brush.Color := clwhite; shape22.Brush.Color := clwhite; done := true;
      end
    else if dice = 1 then
      begin
      inc(ones);
        shape1.Brush.Color := clwhite; shape2.Brush.Color := clwhite;
        shape3.Brush.Color := clwhite; shape4.Brush.Color := clwhite;
        shape5.Brush.Color := clwhite; shape6.Brush.Color := clwhite;
        shape7.Brush.Color := clwhite; shape8.Brush.Color := clwhite;
        shape9.Brush.Color := clwhite; shape10.Brush.Color := clwhite;
        shape11.Brush.Color := clred; shape12.Brush.Color := clwhite;
        shape13.Brush.Color := clwhite; shape14.Brush.Color := clwhite;
        shape15.Brush.Color := clwhite; shape16.Brush.Color := clwhite;
        shape17.Brush.Color := clwhite; shape18.Brush.Color := clwhite;
        shape19.Brush.Color := clwhite; shape20.Brush.Color := clwhite;
        shape21.Brush.Color := clwhite; shape22.Brush.Color := clwhite; done := true;
      end;
  end;
//shape13
if (shape13.Brush.Color = clred) and (done = false)
then
  begin
    if dice = 0
    then
      begin
      inc(zeros);
        shape1.Brush.Color := clwhite; shape2.Brush.Color := clwhite;
        shape3.Brush.Color := clwhite; shape4.Brush.Color := clwhite;
        shape5.Brush.Color := clwhite; shape6.Brush.Color := clwhite;
        shape7.Brush.Color := clwhite; shape8.Brush.Color := clwhite;
        shape9.Brush.Color := clwhite; shape10.Brush.Color := clwhite;
        shape11.Brush.Color := clwhite; shape12.Brush.Color := clwhite;
        shape13.Brush.Color := clwhite; shape14.Brush.Color := clred;
        shape15.Brush.Color := clwhite; shape16.Brush.Color := clwhite;
        shape17.Brush.Color := clwhite; shape18.Brush.Color := clwhite;
        shape19.Brush.Color := clwhite; shape20.Brush.Color := clwhite;
        shape21.Brush.Color := clwhite; shape22.Brush.Color := clwhite; done := true;
      end
    else if dice = 1 then
      begin
      inc(ones);
        shape1.Brush.Color := clwhite; shape2.Brush.Color := clwhite;
        shape3.Brush.Color := clwhite; shape4.Brush.Color := clwhite;
        shape5.Brush.Color := clwhite; shape6.Brush.Color := clwhite;
        shape7.Brush.Color := clwhite; shape8.Brush.Color := clwhite;
        shape9.Brush.Color := clwhite; shape10.Brush.Color := clwhite;
        shape11.Brush.Color := clwhite; shape12.Brush.Color := clred;
        shape13.Brush.Color := clwhite; shape14.Brush.Color := clwhite;
        shape15.Brush.Color := clwhite; shape16.Brush.Color := clwhite;
        shape17.Brush.Color := clwhite; shape18.Brush.Color := clwhite;
        shape19.Brush.Color := clwhite; shape20.Brush.Color := clwhite;
        shape21.Brush.Color := clwhite; shape22.Brush.Color := clwhite; done := true;
      end;
  end;
//shape14
if (shape14.Brush.Color = clred) and (done = false)
then
  begin
    if dice = 0
    then
      begin
      inc(zeros);
        shape1.Brush.Color := clwhite; shape2.Brush.Color := clwhite;
        shape3.Brush.Color := clwhite; shape4.Brush.Color := clwhite;
        shape5.Brush.Color := clwhite; shape6.Brush.Color := clwhite;
        shape7.Brush.Color := clwhite; shape8.Brush.Color := clwhite;
        shape9.Brush.Color := clwhite; shape10.Brush.Color := clwhite;
        shape11.Brush.Color := clwhite; shape12.Brush.Color := clwhite;
        shape13.Brush.Color := clwhite; shape14.Brush.Color := clwhite;
        shape15.Brush.Color := clred; shape16.Brush.Color := clwhite;
        shape17.Brush.Color := clwhite; shape18.Brush.Color := clwhite;
        shape19.Brush.Color := clwhite; shape20.Brush.Color := clwhite;
        shape21.Brush.Color := clwhite; shape22.Brush.Color := clwhite; done := true;
      end
    else if dice = 1 then
      begin
      inc(ones);
        shape1.Brush.Color := clwhite; shape2.Brush.Color := clwhite;
        shape3.Brush.Color := clwhite; shape4.Brush.Color := clwhite;
        shape5.Brush.Color := clwhite; shape6.Brush.Color := clwhite;
        shape7.Brush.Color := clwhite; shape8.Brush.Color := clwhite;
        shape9.Brush.Color := clwhite; shape10.Brush.Color := clwhite;
        shape11.Brush.Color := clwhite; shape12.Brush.Color := clwhite;
        shape13.Brush.Color := clred; shape14.Brush.Color := clwhite;
        shape15.Brush.Color := clwhite; shape16.Brush.Color := clwhite;
        shape17.Brush.Color := clwhite; shape18.Brush.Color := clwhite;
        shape19.Brush.Color := clwhite; shape20.Brush.Color := clwhite;
        shape21.Brush.Color := clwhite; shape22.Brush.Color := clwhite; done := true;
      end;
  end;
//shape15
if (shape15.Brush.Color = clred) and (done = false)
then
  begin
    if dice = 0
    then
      begin
      inc(zeros);
        shape1.Brush.Color := clwhite; shape2.Brush.Color := clwhite;
        shape3.Brush.Color := clwhite; shape4.Brush.Color := clwhite;
        shape5.Brush.Color := clwhite; shape6.Brush.Color := clwhite;
        shape7.Brush.Color := clwhite; shape8.Brush.Color := clwhite;
        shape9.Brush.Color := clwhite; shape10.Brush.Color := clwhite;
        shape11.Brush.Color := clwhite; shape12.Brush.Color := clwhite;
        shape13.Brush.Color := clwhite; shape14.Brush.Color := clwhite;
        shape15.Brush.Color := clwhite; shape16.Brush.Color := clred;
        shape17.Brush.Color := clwhite; shape18.Brush.Color := clwhite;
        shape19.Brush.Color := clwhite; shape20.Brush.Color := clwhite;
        shape21.Brush.Color := clwhite; shape22.Brush.Color := clwhite; done := true;
      end
    else if dice = 1 then
      begin
      inc(ones);
        shape1.Brush.Color := clwhite; shape2.Brush.Color := clwhite;
        shape3.Brush.Color := clwhite; shape4.Brush.Color := clwhite;
        shape5.Brush.Color := clwhite; shape6.Brush.Color := clwhite;
        shape7.Brush.Color := clwhite; shape8.Brush.Color := clwhite;
        shape9.Brush.Color := clwhite; shape10.Brush.Color := clwhite;
        shape11.Brush.Color := clwhite; shape12.Brush.Color := clwhite;
        shape13.Brush.Color := clwhite; shape14.Brush.Color := clred;
        shape15.Brush.Color := clwhite; shape16.Brush.Color := clwhite;
        shape17.Brush.Color := clwhite; shape18.Brush.Color := clwhite;
        shape19.Brush.Color := clwhite; shape20.Brush.Color := clwhite;
        shape21.Brush.Color := clwhite; shape22.Brush.Color := clwhite; done := true;
      end;
  end;
//shape16
if (shape16.Brush.Color = clred) and (done = false)
then
  begin
    if dice = 0
    then
      begin
      inc(zeros);
        shape1.Brush.Color := clwhite; shape2.Brush.Color := clwhite;
        shape3.Brush.Color := clwhite; shape4.Brush.Color := clwhite;
        shape5.Brush.Color := clwhite; shape6.Brush.Color := clwhite;
        shape7.Brush.Color := clwhite; shape8.Brush.Color := clwhite;
        shape9.Brush.Color := clwhite; shape10.Brush.Color := clwhite;
        shape11.Brush.Color := clwhite; shape12.Brush.Color := clwhite;
        shape13.Brush.Color := clwhite; shape14.Brush.Color := clwhite;
        shape15.Brush.Color := clwhite; shape16.Brush.Color := clwhite;
        shape17.Brush.Color := clred; shape18.Brush.Color := clwhite;
        shape19.Brush.Color := clwhite; shape20.Brush.Color := clwhite;
        shape21.Brush.Color := clwhite; shape22.Brush.Color := clwhite; done := true;
      end
    else if dice = 1 then
      begin
      inc(ones);
        shape1.Brush.Color := clwhite; shape2.Brush.Color := clwhite;
        shape3.Brush.Color := clwhite; shape4.Brush.Color := clwhite;
        shape5.Brush.Color := clwhite; shape6.Brush.Color := clwhite;
        shape7.Brush.Color := clwhite; shape8.Brush.Color := clwhite;
        shape9.Brush.Color := clwhite; shape10.Brush.Color := clwhite;
        shape11.Brush.Color := clwhite; shape12.Brush.Color := clwhite;
        shape13.Brush.Color := clwhite; shape14.Brush.Color := clwhite;
        shape15.Brush.Color := clred; shape16.Brush.Color := clwhite;
        shape17.Brush.Color := clwhite; shape18.Brush.Color := clwhite;
        shape19.Brush.Color := clwhite; shape20.Brush.Color := clwhite;
        shape21.Brush.Color := clwhite; shape22.Brush.Color := clwhite; done := true;
      end;
  end;
//shape17
if (shape17.Brush.Color = clred) and (done = false)
then
  begin
    if dice = 0
    then
      begin
      inc(zeros);
        shape1.Brush.Color := clwhite; shape2.Brush.Color := clwhite;
        shape3.Brush.Color := clwhite; shape4.Brush.Color := clwhite;
        shape5.Brush.Color := clwhite; shape6.Brush.Color := clwhite;
        shape7.Brush.Color := clwhite; shape8.Brush.Color := clwhite;
        shape9.Brush.Color := clwhite; shape10.Brush.Color := clwhite;
        shape11.Brush.Color := clwhite; shape12.Brush.Color := clwhite;
        shape13.Brush.Color := clwhite; shape14.Brush.Color := clwhite;
        shape15.Brush.Color := clwhite; shape16.Brush.Color := clwhite;
        shape17.Brush.Color := clwhite; shape18.Brush.Color := clred;
        shape19.Brush.Color := clwhite; shape20.Brush.Color := clwhite;
        shape21.Brush.Color := clwhite; shape22.Brush.Color := clwhite; done := true;
      end
    else if dice = 1 then
      begin
      inc(ones);
        shape1.Brush.Color := clwhite; shape2.Brush.Color := clwhite;
        shape3.Brush.Color := clwhite; shape4.Brush.Color := clwhite;
        shape5.Brush.Color := clwhite; shape6.Brush.Color := clwhite;
        shape7.Brush.Color := clwhite; shape8.Brush.Color := clwhite;
        shape9.Brush.Color := clwhite; shape10.Brush.Color := clwhite;
        shape11.Brush.Color := clwhite; shape12.Brush.Color := clwhite;
        shape13.Brush.Color := clwhite; shape14.Brush.Color := clwhite;
        shape15.Brush.Color := clwhite; shape16.Brush.Color := clred;
        shape17.Brush.Color := clwhite; shape18.Brush.Color := clwhite;
        shape19.Brush.Color := clwhite; shape20.Brush.Color := clwhite;
        shape21.Brush.Color := clwhite; shape22.Brush.Color := clwhite; done := true;
      end;
  end;
//shape18
if (shape18.Brush.Color = clred) and (done = false)
then
  begin
    if dice = 0
    then
      begin
      inc(zeros);
        shape1.Brush.Color := clwhite; shape2.Brush.Color := clwhite;
        shape3.Brush.Color := clwhite; shape4.Brush.Color := clwhite;
        shape5.Brush.Color := clwhite; shape6.Brush.Color := clwhite;
        shape7.Brush.Color := clwhite; shape8.Brush.Color := clwhite;
        shape9.Brush.Color := clwhite; shape10.Brush.Color := clwhite;
        shape11.Brush.Color := clwhite; shape12.Brush.Color := clwhite;
        shape13.Brush.Color := clwhite; shape14.Brush.Color := clwhite;
        shape15.Brush.Color := clwhite; shape16.Brush.Color := clwhite;
        shape17.Brush.Color := clwhite; shape18.Brush.Color := clwhite;
        shape19.Brush.Color := clred; shape20.Brush.Color := clwhite;
        shape21.Brush.Color := clwhite; shape22.Brush.Color := clwhite; done := true;
      end
    else if dice = 1 then
      begin
      inc(ones);
        shape1.Brush.Color := clwhite; shape2.Brush.Color := clwhite;
        shape3.Brush.Color := clwhite; shape4.Brush.Color := clwhite;
        shape5.Brush.Color := clwhite; shape6.Brush.Color := clwhite;
        shape7.Brush.Color := clwhite; shape8.Brush.Color := clwhite;
        shape9.Brush.Color := clwhite; shape10.Brush.Color := clwhite;
        shape11.Brush.Color := clwhite; shape12.Brush.Color := clwhite;
        shape13.Brush.Color := clwhite; shape14.Brush.Color := clwhite;
        shape15.Brush.Color := clwhite; shape16.Brush.Color := clwhite;
        shape17.Brush.Color := clred; shape18.Brush.Color := clwhite;
        shape19.Brush.Color := clwhite; shape20.Brush.Color := clwhite;
        shape21.Brush.Color := clwhite; shape22.Brush.Color := clwhite; done := true;
      end;
  end;
//shape19
if (shape19.Brush.Color = clred) and (done = false)
then
  begin
    if dice = 0
    then
      begin
      inc(zeros);
        shape1.Brush.Color := clwhite; shape2.Brush.Color := clwhite;
        shape3.Brush.Color := clwhite; shape4.Brush.Color := clwhite;
        shape5.Brush.Color := clwhite; shape6.Brush.Color := clwhite;
        shape7.Brush.Color := clwhite; shape8.Brush.Color := clwhite;
        shape9.Brush.Color := clwhite; shape10.Brush.Color := clwhite;
        shape11.Brush.Color := clwhite; shape12.Brush.Color := clwhite;
        shape13.Brush.Color := clwhite; shape14.Brush.Color := clwhite;
        shape15.Brush.Color := clwhite; shape16.Brush.Color := clwhite;
        shape17.Brush.Color := clwhite; shape18.Brush.Color := clwhite;
        shape19.Brush.Color := clwhite; shape20.Brush.Color := clred;
        shape21.Brush.Color := clwhite; shape22.Brush.Color := clwhite; done := true;
      end
    else  if dice = 1 then
      begin
      inc(ones);
        shape1.Brush.Color := clwhite; shape2.Brush.Color := clwhite;
        shape3.Brush.Color := clwhite; shape4.Brush.Color := clwhite;
        shape5.Brush.Color := clwhite; shape6.Brush.Color := clwhite;
        shape7.Brush.Color := clwhite; shape8.Brush.Color := clwhite;
        shape9.Brush.Color := clwhite; shape10.Brush.Color := clwhite;
        shape11.Brush.Color := clwhite; shape12.Brush.Color := clwhite;
        shape13.Brush.Color := clwhite; shape14.Brush.Color := clwhite;
        shape15.Brush.Color := clwhite; shape16.Brush.Color := clwhite;
        shape17.Brush.Color := clwhite; shape18.Brush.Color := clred;
        shape19.Brush.Color := clwhite; shape20.Brush.Color := clwhite;
        shape21.Brush.Color := clwhite; shape22.Brush.Color := clwhite; done := true;
      end;
  end;
//shape20
if (shape20.Brush.Color = clred) and (done = false)
then
  begin
    if dice = 0
    then
      begin
      inc(zeros);
        shape1.Brush.Color := clwhite; shape2.Brush.Color := clwhite;
        shape3.Brush.Color := clwhite; shape4.Brush.Color := clwhite;
        shape5.Brush.Color := clwhite; shape6.Brush.Color := clwhite;
        shape7.Brush.Color := clwhite; shape8.Brush.Color := clwhite;
        shape9.Brush.Color := clwhite; shape10.Brush.Color := clwhite;
        shape11.Brush.Color := clwhite; shape12.Brush.Color := clwhite;
        shape13.Brush.Color := clwhite; shape14.Brush.Color := clwhite;
        shape15.Brush.Color := clwhite; shape16.Brush.Color := clwhite;
        shape17.Brush.Color := clwhite; shape18.Brush.Color := clwhite;
        shape19.Brush.Color := clwhite; shape20.Brush.Color := clwhite;
        shape21.Brush.Color := clred; shape22.Brush.Color := clwhite; done := true;
      end
    else if dice = 1 then
      begin
      inc(ones);
        shape1.Brush.Color := clwhite; shape2.Brush.Color := clwhite;
        shape3.Brush.Color := clwhite; shape4.Brush.Color := clwhite;
        shape5.Brush.Color := clwhite; shape6.Brush.Color := clwhite;
        shape7.Brush.Color := clwhite; shape8.Brush.Color := clwhite;
        shape9.Brush.Color := clwhite; shape10.Brush.Color := clwhite;
        shape11.Brush.Color := clwhite; shape12.Brush.Color := clwhite;
        shape13.Brush.Color := clwhite; shape14.Brush.Color := clwhite;
        shape15.Brush.Color := clwhite; shape16.Brush.Color := clwhite;
        shape17.Brush.Color := clwhite; shape18.Brush.Color := clwhite;
        shape19.Brush.Color := clred; shape20.Brush.Color := clwhite;
        shape21.Brush.Color := clwhite; shape22.Brush.Color := clwhite; done := true;
      end;
  end;
//shape21
if (shape21.Brush.Color = clred)  and (done = false)
then
  begin
    if dice = 0
    then
      begin
      inc(zeros);
        shape1.Brush.Color := clwhite; shape2.Brush.Color := clwhite;
        shape3.Brush.Color := clwhite; shape4.Brush.Color := clwhite;
        shape5.Brush.Color := clwhite; shape6.Brush.Color := clwhite;
        shape7.Brush.Color := clwhite; shape8.Brush.Color := clwhite;
        shape9.Brush.Color := clwhite; shape10.Brush.Color := clwhite;
        shape11.Brush.Color := clwhite; shape12.Brush.Color := clwhite;
        shape13.Brush.Color := clwhite; shape14.Brush.Color := clwhite;
        shape15.Brush.Color := clwhite; shape16.Brush.Color := clwhite;
        shape17.Brush.Color := clwhite; shape18.Brush.Color := clwhite;
        shape19.Brush.Color := clwhite; shape20.Brush.Color := clwhite;
        shape21.Brush.Color := clwhite; shape22.Brush.Color := clred; done := true;
      end
    else if dice = 1 then
      begin
      inc(ones);
        shape1.Brush.Color := clwhite; shape2.Brush.Color := clwhite;
        shape3.Brush.Color := clwhite; shape4.Brush.Color := clwhite;
        shape5.Brush.Color := clwhite; shape6.Brush.Color := clwhite;
        shape7.Brush.Color := clwhite; shape8.Brush.Color := clwhite;
        shape9.Brush.Color := clwhite; shape10.Brush.Color := clwhite;
        shape11.Brush.Color := clwhite; shape12.Brush.Color := clwhite;
        shape13.Brush.Color := clwhite; shape14.Brush.Color := clwhite;
        shape15.Brush.Color := clwhite; shape16.Brush.Color := clwhite;
        shape17.Brush.Color := clwhite; shape18.Brush.Color := clwhite;
        shape19.Brush.Color := clwhite; shape20.Brush.Color := clred;
        shape21.Brush.Color := clwhite; shape22.Brush.Color := clwhite; done := true;
      end;
  end;
//shape22
if (shape22.Brush.Color = clred) and (done = false)
then
  begin
    if dice = 0
    then
      begin
      inc(zeros);
        shape1.Brush.Color := clred; shape2.Brush.Color := clwhite;
        shape3.Brush.Color := clwhite; shape4.Brush.Color := clwhite;
        shape5.Brush.Color := clwhite; shape6.Brush.Color := clwhite;
        shape7.Brush.Color := clwhite; shape8.Brush.Color := clwhite;
        shape9.Brush.Color := clwhite; shape10.Brush.Color := clwhite;
        shape11.Brush.Color := clwhite; shape12.Brush.Color := clwhite;
        shape13.Brush.Color := clwhite; shape14.Brush.Color := clwhite;
        shape15.Brush.Color := clwhite; shape16.Brush.Color := clwhite;
        shape17.Brush.Color := clwhite; shape18.Brush.Color := clwhite;
        shape19.Brush.Color := clwhite; shape20.Brush.Color := clwhite;
        shape21.Brush.Color := clwhite; shape22.Brush.Color := clwhite; done := true;
      end
    else if dice = 1 then
      begin
      inc(ones);
        shape1.Brush.Color := clwhite; shape2.Brush.Color := clwhite;
        shape3.Brush.Color := clwhite; shape4.Brush.Color := clwhite;
        shape5.Brush.Color := clwhite; shape6.Brush.Color := clwhite;
        shape7.Brush.Color := clwhite; shape8.Brush.Color := clwhite;
        shape9.Brush.Color := clwhite; shape10.Brush.Color := clwhite;
        shape11.Brush.Color := clwhite; shape12.Brush.Color := clwhite;
        shape13.Brush.Color := clwhite; shape14.Brush.Color := clwhite;
        shape15.Brush.Color := clwhite; shape16.Brush.Color := clwhite;
        shape17.Brush.Color := clwhite; shape18.Brush.Color := clwhite;
        shape19.Brush.Color := clwhite; shape20.Brush.Color := clwhite;
        shape21.Brush.Color := clred; shape22.Brush.Color := clwhite; done := true;
      end;
  end;
end;
if countbin = 8
then richedit1.Text := richedit1.Text + '  ';
edit1.text := inttostr(ones);
edit2.Text := inttostr(zeros);
edit4.Text := inttostr(ones + zeros);
if dice = 1 then richedit1.Text := richedit1.Text + '1';
if dice = 0 then richedit1.Text := richedit1.Text + '0';

if not(countbin = 8)
then
  begin
    inc(countbin);
    if dice = 0
    then bina := bina + '0';
    if dice = 1
    then bina := bina + '1';
  end
else
  begin
    richedit2.Text := richedit2.Text + chr(bintoint(bina)) + '  ';
    richedit3.Text := richedit3.Text + inttostr(bintoint(bina)) + '  ';
    richedit4.Text := richedit4.Text + inttohex(bintoint(bina),4) + '  ';
    countbin := 1;
    bina := '';
    if dice = 0
    then bina := bina + '0';
    if dice = 1
    then bina := bina + '1';
  end;

if countbin = 8
then inc(byte);
if byte = 1000
then begin inc(kbyte); byte := 0; end;
if kbyte = 1000
then begin inc(mbyte); kbyte := 0; end;
edit5.Text := 'MB: ' + inttostr(mbyte)+ ' KB: ' + inttostr(kbyte) + ' B: ' + inttostr(byte) + ' b: ' + inttostr(countbin);


inc(running);
if running mod 2 = 0
then begin inc(second); running := 0; end;
if second = 60
then begin inc(minute); second := 0; end;
if minute = 60
then begin inc(hour); minute := 0; end;
if hour = 60
then begin inc(day); hour := 0; end;
edit3.Text := 'Day: ' + inttostr(day) + ' Hour: ' + inttostr(hour) + ' Min: ' + inttostr(minute) + ' Sec: ' + inttostr(second);


if timesss = 0
then chart1.Series[0].AddXY(0,0);
if (ones + zeros) > 250
then chart1.Series[0].Remove(0);
timesss := timesss + 5;
if dice = 1
then begin Chart1.BeginUpdate; graphcount := graphcount + 1; chart1.Series[0].AddXY(timesss*100,graphcount*1000); chart1.EndUpdate; end;
if dice = 0
then begin Chart1.BeginUpdate; graphcount := graphcount - 1; chart1.Series[0].AddXY(timesss*100,graphcount*1000); chart1.EndUpdate; end;

end;


procedure Tform1.RichEdit1Change(Sender: TObject);
begin
  richedit1.SelStart := length(richedit1.text);
end;

procedure Tform1.RichEdit4Change(Sender: TObject);
begin
  richedit4.SelStart := length(richedit1.text);
end;

procedure Tform1.RichEdit3Change(Sender: TObject);
begin
  richedit3.SelStart := length(richedit1.text);
end;

procedure Tform1.RichEdit2Change(Sender: TObject);
begin
  richedit2.SelStart := length(richedit1.text);
end;


procedure Tform1.FormDestroy(Sender: TObject);
begin
chart1.free;
end;

procedure Tform1.Button2Click(Sender: TObject);
begin
  if button2.Caption = 'Enlarge Grid'
  then
    begin
      chart1.Height := 529;
      chart1.Width := 937;
      chart1.Top := 5;
      button2.left := 856;
      button2.Top := 504;
      button2.Caption := 'Size Down';
    end
  else
    begin
      chart1.Height := 249;
      chart1.Width := 473;
      chart1.Top := 288;
      button2.left := 392;
      button2.Top := 504;
      button2.Caption := 'Enlarge Grid';
    end;

end;

end.

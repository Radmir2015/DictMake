Unit Unit1;

interface

uses System, System.Drawing, System.Windows.Forms, System.Threading;

type
  Form1 = class(Form)
    procedure button1_Click(sender: Object; e: EventArgs);
    procedure button2_Click(sender: Object; e: EventArgs);
    procedure label1_MouseClick(sender: Object; e: MouseEventArgs);
    procedure label4_MouseClick(sender: Object; e: MouseEventArgs);
    procedure button3_Click(sender: Object; e: EventArgs);
    procedure WriteAndDataProcessing(filename: string := '');
    procedure WriteInfo(); // вывод основной информации о файле
    procedure WriteData(); // вывод обработанных слов
    procedure Processing(); // запуск процесса вычленения слов
    function GetFile: string;
    procedure SaveFile;
    function CheckStates(states: array of string): boolean; // проверка на изменение положений переключателей для предотвращения повторной обработки текста
    function GetStates: array of string; // получение положений переключателей
    function DataProcessing(): (array of string, array of integer, integer); // обработка данных
  {$region FormDesigner}
  private
    {$resource Unit1.Form1.resources}
    button1: Button;
    label1: &Label;
    textBox1: TextBox;
    button2: Button;
    label4: &Label;
    button3: Button;
    progressBar1: ProgressBar;
    openFileDialog1: OpenFileDialog;
    saveFileDialog1: SaveFileDialog;
    label5: &Label;
    checkBox2: CheckBox;
    label6: &Label;
    checkBox1: CheckBox;
    label7: &Label;
    textBox2: TextBox;
    radioButton1: RadioButton;
    radioButton2: RadioButton;
    radioButton3: RadioButton;
    groupBox2: GroupBox;
    radioButton4: RadioButton;
    radioButton6: RadioButton;
    radioButton5: RadioButton;
    label2: &Label;
    checkBox4: CheckBox;
    groupBox3: GroupBox;
    radioButton7: RadioButton;
    radioButton8: RadioButton;
    radioButton9: RadioButton;
    groupBox4: GroupBox;
    radioButton10: RadioButton;
    radioButton11: RadioButton;
    radioButton12: RadioButton;
    groupBox1: GroupBox;
    {$include Unit1.Form1.inc}
  {$endregion FormDesigner}
  public
    constructor;
    begin
      InitializeComponent;
    end;
  end;

implementation

var openfilename := '';
var savefilename := '';

function Add<T>(self: array of T; x: T): array of T; extensionmethod;
begin
  var l := self.length;
  setLength(self, l + 1);
  self[l] := x;
  Result := self;
end;

var res: (Dictionary<string, integer>, integer, Dictionary<string, integer>);

function TakeWords(filename: string; var pBar: progressBar; withDigit: boolean := true): System.Delegate;
begin
  var s := ReadAllText(filename);
  var re := new System.Text.RegularExpressions.Regex('[^a-zA-Zа-яА-ЯёЁ' + (withDigit ? '0-9' : '') + ']');
  var v := re.Replace(s, ' ').ToWords(); //.GroupBy(s -> ignoreCase ? s.ToLower() : s).OrderByDescending(gr -> gr.Count);
  var words := new Dictionary<string, integer>;
  var wordsLower := new Dictionary<string, integer>;
  //v := v.Transform(w -> ignoreCase ? w.ToLower() : w);
//  setLength(words, v.Distinct.ToArray.length);
//  setLength(am, words.length);
//  setLength(wordsLower, words.Select(x -> x.ToLower()).Distinct.ToArray.length);
//  setLength(amLower, wordsLower.length);
  var cx := 0;
  Milliseconds;
//  words := v.Distinct.ToArray;
  foreach var x in v do
  begin
  if not(words.ContainsKey(x)) then
  words.Add(x, 1)
  else
  words[x] += 1;
//  am[words.IndexOf(x)] += 1; {writeln(words.IndexOf(x) + ' ' + am[words.IndexOf(x)] + ' ' + x);}
  pBar.Value := Round(cx * (50) / (v.length - 1));
  cx += 1;
  end;
  var lowerV := v.Select(x -> x.ToLower()).ToArray;
//  wordsLower := lowerV.Distinct.ToArray;
//  setLength(amLower, wordsLower.length);
  cx := 0;
  foreach var x in lowerV do
  begin
  if not(wordsLower.ContainsKey(x)) then
  wordsLower.Add(x, 1)
  else
  wordsLower[x] += 1;
//  amLower[wordsLower.IndexOf(x)] += 1;
  pBar.Value := Round(cx * (50) / (lowerV.length - 1)) + 50;
  cx += 1;
  end;
  //pBar.Value := Round(cx * (freq ? 50 : 100) / (v.length - 1));
  //writeln(am[words.length - 1] + ' ' + words[words.length - 1] + words.length);
  //words[am.IndexOf(am.Max)].Print;
  //write(words[am.IndexOf(0)]);
  //cx := 0;
  //var sum := Range(1, am.length - 1).Sum;
  //write(sorted);
  //pBar.Value := Round(cx * 50 / ((am.length - 1) * am.length - sum)) + 50;
  var ms := MillisecondsDelta;
  //if freq then
  //var cx := 0;
  //var tarr: array of string;
  //SetLength(tarr, v.Count);
  //foreach var x in v do
  //begin
  //tarr[cx] := ignoreCase ? x.Key.ToLower() : x.Key; // + ' -> ' + x.Count());
  //cx += 1;
  //if cx = amount then
  //begin
  //SetLength(tarr, cx);
  //if alf then tarr.Sort;
  //Result := tarr;
  //exit;
  //end;
  //end;
  //SetLength(tarr, cx);
  //writeln(am);
//  var tarr := amount <> 0 ? words[0 : amount] : words;
  //if alf then tarr.Sort;
  res := (words, ms, wordsLower);
  pBar.Value := 100;
  Thread.Sleep(0);
end;

function Form1.GetStates: array of string;
begin
  setLength(Result, 8);
  Result[0] := checkBox1.Checked.ToString;
  Result[1] := checkBox2.Checked.ToString;
  // Result[2] := checkBox3.Checked.ToString;
  // Result[3] := checkBox4.Checked.ToString;
  Result[4] := IntToStr(radioButton2.Checked ? 1 : (radioButton3.Checked ? 2 : 0));
  Result[5] := IntToStr(radioButton5.Checked ? 1 : (radioButton6.Checked ? 2 : 0));
  Result[6] := IntToStr(radioButton8.Checked ? 1 : (radioButton9.Checked ? 2 : 0));
  Result[7] := textBox2.Text;
end;

function Form1.CheckStates(states: array of string): boolean;
begin
  var newStates := GetStates;
  for var i := 0 to states.length - 2 do
  if states[i] <> newStates[i] then
  begin
  Result := false;
  exit;
  end;
  Result := true;
end;

function Form1.GetFile(): string;
begin
  openFileDialog1.Filter := 'Text files| *.txt; *.doc; *.docx; *.rtf;|All files|*.*';
  openFileDialog1.ShowDialog;
  Result := openFileDialog1.FileName;
  openfilename := Result;
end;

var output: (array of string, array of integer, integer);

procedure Form1.SaveFile();
begin
   progressBar1.Value := 0;
   var rex := new System.Text.RegularExpressions.Regex('[^0-9]');
   var am := rex.Replace(textBox2.Text, '').ToInteger;
   textBox2.Text := am + '';
   var tarr := am <> 0 ? output.Item1[0 : am] : output.Item1;
   if (radioButton11.Checked or radioButton12.Checked) then
   begin
   var k := radioButton12.Checked ? (am <> 0 ? output.Item2[0 : am] : output.Item2).Min : (am <> 0 ? output.Item2[0 : am] : output.Item2).Max;
   var temp := new string[tarr.length];
   if radioButton12.Checked then
     for var i := 0 to tarr.length - 1 do
     temp[i] := Trim((tarr[i] + ' ') * round(output.Item2[i] / k))
   else
     for var i := 0 to tarr.length - 1 do
     temp[i] := Trim((tarr[i] + ' ') * round(k / output.Item2[i]));
   tarr := temp;
   end;
//  var tarr := (textBox2.Text.Replace(' ', '') <> '') and (textBox2.Text.Replace(' ', '') <> '0') ? res.Item1[0 : textBox2.Text.Replace(' ', '').ToInteger] : res.Item1;
   WriteAllLines(savefilename, checkBox4.Checked ? tarr.zip(output.Item2, (x, y) -> x + ' ' + y).ToArray : tarr, System.Text.Encoding.GetEncoding('UTF-8'));
   progressBar1.Value := 100;
end;

function Form1.DataProcessing(): (array of string, array of integer, integer);
begin
  Milliseconds;
  var radio0 := radioButton2.Checked ? 1 : (radioButton3.Checked ? 2 : 0);
  var radio1 := radioButton5.Checked ? 1 : (radioButton6.Checked ? 2 : 0);
  var radio2 := radioButton8.Checked ? 1 : (radioButton9.Checked ? 2 : 0);
  var words := res.Item1;
  var wordsArray: array of string;
  var amArray: array of integer;
  if checkBox1.Checked then
  words := res.Item3;
//  else
//  begin
//  setLength(wordsArray, res.Item1.length);
//  setLength(amArray, res.Item2.length);
//  end;
//  for var i := 0 to words.length - 1 do
//  words[i] := checkBox1.Checked ? words[i].ToLower() : words[i];
//  var d := new Dictionary<string, integer>;
  if not(checkBox2.Checked) then
  begin
  var tmp := 0;
  foreach var i in words.Keys.ToArray do
  if TryStrToInt(i, tmp) then
  words.Remove(i);
  end;
//  if not(checkBox2.Checked) then
//  begin
//  var tmp := 0;
//  foreach var s in d.Keys.ToArray do
//  if TryStrToInt(s, tmp) then d.Remove(s);
//  end;
  var w := words.OrderBy(x -> 0);
  w := (radio1 = 1) ? w.ThenByDescending(x -> x.Value) : (radio1 = 2) ? w.ThenBy(x -> x.Value) : w;
  w := (radio2 = 1) ? w.ThenBy(x -> x.Key.length) : (radio2 = 2) ? w.ThenByDescending(x -> x.Key.length) : w;
  w := (radio0 = 1) ? w.ThenBy(x -> x.Key) : (radio0 = 2) ? w.ThenByDescending(x -> x.Key) : w;
  words := w.ToDictionary(d -> d.Key, d -> d.Value);
  {if (radio1 in [1..2]) or (radio0 in [1..2]) then
  begin
//  var sorted := new Dictionary<string, integer>;
  if radio1 = 0 then
  begin
  if radio0 = 1 then words := words.OrderBy(x -> x.Key).ToDictionary(d -> d.Key, d -> d.Value);
  if radio0 = 2 then words := words.OrderByDescending(x -> x.Key).ToDictionary(d -> d.Key, d -> d.Value);
  end
  else
  begin
  if radio1 = 1 then words := words.OrderByDescending((x : KeyValuePair<string, integer>) -> x.Value).ToDictionary(d -> d.Key, d -> d.Value);
  if radio1 = 2 then words := words.OrderBy((x : KeyValuePair<string, integer>) -> x.Value).ToDictionary(d -> d.Key, d -> d.Value);
  end;
  end;}
  wordsArray := words.Keys.ToArray;
  amArray := words.Values.ToArray;
  var ms := MillisecondsDelta;
  Result := (wordsArray, amArray, ms);
  output := (wordsArray, amArray, ms);
end;

procedure Form1.WriteAndDataProcessing(filename: string);
begin
  if filename <> '' then
  begin
   label1.Text := ExtractFileName(filename);
   var lines := ReadAllLines(filename);
   textBox1.Text := 'Общее кол-во строк: ' + lines.length + NewLine;
   textBox1.Text += 'Средняя длина строки: ' + round(lines.Select(x -> x.length).Average * 100) / 100 + NewLine;
   textBox1.Text += 'Средняя длина строк без пустых: ' + round(lines.Where(x -> x.length <> 0).Select(x -> x.length).Average * 100) / 100 + NewLine;
   textBox1.Text += 'Максимальная длина строки: ' + lines.Select(x -> x.length).Max + NewLine;
   textBox1.Text += 'Минимальная длина строки: ' + lines.Select(x -> x.length).Min + NewLine;
   textBox1.Text += 'Всего символов: ' + lines.JoinIntoString.length + NewLine;
   textBox1.Text += 'Всего слов: ' + lines.JoinIntoString.ToWords.length + NewLine;
   var re := new System.Text.RegularExpressions.Regex('[^a-zA-Zа-яА-ЯёЁ0-9]');
   var v := re.Replace(lines.JoinIntoString, ' ').ToWords();
   textBox1.Text += 'Кол-во уникальных слов: ' + v.GroupBy(s -> s.ToLower()).Distinct.Count + NewLine;
   textBox1.Text += 'Средняя длина слов: ' + round(lines.JoinIntoString.ToWords.Select(x -> x.length).Average * 100) / 100 + NewLine;
//   var withDigit := true;
//   amoNum := textBox2.Text.Replace(' ', '') <> '' ? textBox2.Text.ToInteger : 0;
//   if Pos('n', textBox2.Text) <> 0 then begin
//   withDigit := true;
//   if not(TryStrToInt(textBox2.Text.Replace('n', '').Replace(' ', ''), amoNum)) then amoNum := 0;
//   end
//   else
//   if textBox2.Text.Replace(' ', '') <> '' then
//   if not(TryStrToInt(textBox2.Text.Replace(' ', ''), amoNum)) then amoNum := 0;
//   else amoNum := 0;
   // var radio0 := radioButton2.Checked ? 1 : (radioButton3.Checked ? 2 : 0);
   // var radio1 := radioButton5.Checked ? 1 : (radioButton6.Checked ? 2 : 0);
   BeginInvoke(TakeWords(filename, progressBar1));//checkBox2.Checked));
   //textBox1.Text += (1 + '');
   var f := DataProcessing;
   var rex := new System.Text.RegularExpressions.Regex('[^0-9]');
   var am := rex.Replace(textBox2.Text, '') = '' ? 0 : rex.Replace(textBox2.Text, '').ToInteger;
   textBox2.Text := am + '';
   var tarr := am <> 0 ? f.Item1[0 : am] : f.Item1;
//   var tarr := (textBox2.Text.Replace(' ', '') <> '') and (textBox2.Text.Replace(' ', '') <> '0') ? res.Item1[0 : textBox2.Text.Replace(' ', '').ToInteger] : res.Item1;
   textBox1.Text += 'Время поиска: ' + (f.Item3 + res.Item2) / 1000 + ' сек.' + NewLine;
//   if withDigit then
   //for var i := 0 to f.Item1.length - 1 do
   //textBox1.Text += f.Item1[i] + ' ' + (not(checkBox2.Checked) ? ('(' + f.Item2[i] + ') ') : '')
   textBox1.Text += String.Join(' ', tarr.Zip(f.Item2, (x, y) -> x + ' (' + y + ')'))
//   else
//   textBox1.Text += tarr.JoinIntoString(' ');
   //write(f.Item1);
  end;
end;

procedure Form1.WriteInfo();
begin
   label1.Text := ExtractFileName(openfilename);
   var lines := ReadAllLines(openfilename);
   textBox1.Text := 'Общее кол-во строк: ' + lines.length + NewLine;
   textBox1.Text += 'Средняя длина строки: ' + round(lines.Select(x -> x.length).Average * 100) / 100 + NewLine;
   textBox1.Text += 'Средняя длина строк без пустых: ' + round(lines.Where(x -> x.length <> 0).Select(x -> x.length).Average * 100) / 100 + NewLine;
   textBox1.Text += 'Максимальная длина строки: ' + lines.Select(x -> x.length).Max + NewLine;
   textBox1.Text += 'Минимальная длина строки: ' + lines.Select(x -> x.length).Min + NewLine;
   textBox1.Text += 'Всего символов: ' + lines.JoinIntoString.length + NewLine;
   textBox1.Text += 'Всего слов: ' + lines.JoinIntoString.ToWords.length + NewLine;
   var re := new System.Text.RegularExpressions.Regex('[^a-zA-Zа-яА-ЯёЁ0-9]');
   var v := re.Replace(lines.JoinIntoString, ' ').ToWords();
   textBox1.Text += 'Кол-во уникальных слов: ' + v.GroupBy(s -> s.ToLower()).Distinct.Count + NewLine;
   textBox1.Text += 'Средняя длина слов: ' + round(lines.JoinIntoString.ToWords.Select(x -> x.length).Average * 100) / 100 + NewLine;
end;

procedure Form1.Processing();
begin
   BeginInvoke(TakeWords(openfilename, progressBar1)); //checkBox2.Checked));
end;

procedure Form1.WriteData();
begin
   var f := DataProcessing;
   var rex := new System.Text.RegularExpressions.Regex('[^0-9]');
   var am := rex.Replace(textBox2.Text, '') = '' ? 0 : rex.Replace(textBox2.Text, '').ToInteger;
   textBox2.Text := am + '';
   var tarr := am <> 0 ? f.Item1[0 : am] : f.Item1;
//   var tarr := (textBox2.Text.Replace(' ', '') <> '') and (textBox2.Text.Replace(' ', '') <> '0') ? res.Item1[0 : textBox2.Text.Replace(' ', '').ToInteger] : res.Item1;
   textBox1.Text += 'Время поиска: ' + (f.Item3 + res.Item2) / 1000 + ' сек.' + NewLine;
//   if withDigit then
   //for var i := 0 to f.Item1.length - 1 do
   //textBox1.Text += f.Item1[i] + ' ' + (not(checkBox2.Checked) ? ('(' + f.Item2[i] + ') ') : '')
   textBox1.Text += String.Join(' ', tarr.Zip(f.Item2, (x, y) -> x + ' (' + y + ')'))
//   else
//   textBox1.Text += tarr.JoinIntoString(' ');
end;

var globalStates: array of string; // глобальная переменная для хранения положений переключателей

procedure Form1.button1_Click(sender: Object; e: EventArgs);
begin
  globalStates := self.GetStates;
  //try
  self.WriteAndDataProcessing(self.GetFile);
  if savefilename <> '' then
  self.SaveFile;
  //except
  //textBox1.Text += 'Ошибка: Неверно заполнены поля';
  //end;
end;

procedure Form1.button2_Click(sender: Object; e: EventArgs);
begin
  saveFileDialog1.Filter := 'Text files| *.txt; *.doc; *.docx; *.rtf;|All files|*.*';
  saveFileDialog1.ShowDialog;
  if saveFileDialog1.FileName <> '' then
  begin
   savefilename := saveFileDialog1.FileName;
   label4.Text := ExtractFileName(savefilename);
  end;
end;

procedure Form1.label1_MouseClick(sender: Object; e: MouseEventArgs);
begin
  if e.Button.ToString = 'Left' then
  try
   Execute(openfilename);
  except
   textBox1.Text += 'Файл не открывается' + NewLine;
  end
  else if e.Button.ToString = 'Right' then
  begin
  openfilename := '';
  label1.Text := '';
  end;
end;

procedure Form1.label4_MouseClick(sender: Object; e: MouseEventArgs);
begin
  if e.Button.ToString = 'Left' then
  try
   Execute(savefilename);
  except
   textBox1.Text += 'Файл не открывается' + NewLine;
  end
  else if e.Button.ToString = 'Right' then
  begin
  savefilename := '';
  label4.Text := '';
  end;
end;

procedure Form1.button3_Click(sender: Object; e: EventArgs);
begin
  try
  if CheckStates(globalStates) then
  begin
//  if savefilename <> '' then
//  self.SaveFile
//  else begin end
  if globalStates[globalStates.length - 1] <> GetStates[globalStates.length - 1] then
  begin
  self.WriteInfo;
  self.WriteData;
  globalStates := GetStates;
  if savefilename <> '' then
  begin
  self.SaveFile
  end;
  end;
  end
  else
  begin
  globalStates := GetStates;
  self.WriteInfo;
  self.WriteData;
  end;
  if savefilename <> '' then
  self.SaveFile
//  self.button1_Click(nil, nil);
  except
  textBox1.Text += 'Ошибка: Неверно заполнены поля' + NewLine;
  end;
end;

end.
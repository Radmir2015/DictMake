procedure InitializeComponent;
    begin
        var resources: System.ComponentModel.ComponentResourceManager := new System.ComponentModel.ComponentResourceManager(typeof(Form1));
        self.button1 := new System.Windows.Forms.Button();
        self.label1 := new System.Windows.Forms.Label();
        self.checkBox3 := new System.Windows.Forms.CheckBox();
        self.label3 := new System.Windows.Forms.Label();
        self.textBox1 := new System.Windows.Forms.TextBox();
        self.button2 := new System.Windows.Forms.Button();
        self.label4 := new System.Windows.Forms.Label();
        self.button3 := new System.Windows.Forms.Button();
        self.progressBar1 := new System.Windows.Forms.ProgressBar();
        self.openFileDialog1 := new System.Windows.Forms.OpenFileDialog();
        self.saveFileDialog1 := new System.Windows.Forms.SaveFileDialog();
        self.label5 := new System.Windows.Forms.Label();
        self.checkBox2 := new System.Windows.Forms.CheckBox();
        self.label6 := new System.Windows.Forms.Label();
        self.checkBox1 := new System.Windows.Forms.CheckBox();
        self.label7 := new System.Windows.Forms.Label();
        self.textBox2 := new System.Windows.Forms.TextBox();
        self.radioButton1 := new System.Windows.Forms.RadioButton();
        self.radioButton2 := new System.Windows.Forms.RadioButton();
        self.radioButton3 := new System.Windows.Forms.RadioButton();
        self.groupBox1 := new System.Windows.Forms.GroupBox();
        self.groupBox2 := new System.Windows.Forms.GroupBox();
        self.radioButton4 := new System.Windows.Forms.RadioButton();
        self.radioButton6 := new System.Windows.Forms.RadioButton();
        self.radioButton5 := new System.Windows.Forms.RadioButton();
        self.label2 := new System.Windows.Forms.Label();
        self.checkBox4 := new System.Windows.Forms.CheckBox();
        self.groupBox3 := new System.Windows.Forms.GroupBox();
        self.radioButton7 := new System.Windows.Forms.RadioButton();
        self.radioButton8 := new System.Windows.Forms.RadioButton();
        self.radioButton9 := new System.Windows.Forms.RadioButton();
        self.groupBox1.SuspendLayout();
        self.groupBox2.SuspendLayout();
        self.groupBox3.SuspendLayout();
        self.SuspendLayout();
        // 
        // button1
        // 
        self.button1.Font := new System.Drawing.Font('Microsoft Sans Serif', 8.25, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.button1.Location := new System.Drawing.Point(12, 12);
        self.button1.Name := 'button1';
        self.button1.Size := new System.Drawing.Size(102, 23);
        self.button1.TabIndex := 0;
        self.button1.Text := 'Открыть файл';
        self.button1.UseVisualStyleBackColor := true;
        self.button1.Click += button1_Click;
        // 
        // label1
        // 
        self.label1.Font := new System.Drawing.Font('Microsoft Sans Serif', 9, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.label1.Location := new System.Drawing.Point(120, 11);
        self.label1.Name := 'label1';
        self.label1.Size := new System.Drawing.Size(152, 23);
        self.label1.TabIndex := 1;
        self.label1.TextAlign := System.Drawing.ContentAlignment.MiddleLeft;
        self.label1.MouseClick += label1_MouseClick;
        // 
        // checkBox3
        // 
        self.checkBox3.Font := new System.Drawing.Font('Microsoft Sans Serif', 9, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.checkBox3.Location := new System.Drawing.Point(120, 79);
        self.checkBox3.Name := 'checkBox3';
        self.checkBox3.Size := new System.Drawing.Size(13, 13);
        self.checkBox3.TabIndex := 3;
        self.checkBox3.UseVisualStyleBackColor := true;
        // 
        // label3
        // 
        self.label3.Font := new System.Drawing.Font('Microsoft Sans Serif', 9, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.label3.Location := new System.Drawing.Point(12, 69);
        self.label3.Name := 'label3';
        self.label3.Size := new System.Drawing.Size(102, 31);
        self.label3.TabIndex := 1;
        self.label3.Text := 'Умный режим';
        self.label3.TextAlign := System.Drawing.ContentAlignment.MiddleCenter;
        // 
        // textBox1
        // 
        self.textBox1.Location := new System.Drawing.Point(12, 331);
        self.textBox1.Multiline := true;
        self.textBox1.Name := 'textBox1';
        self.textBox1.ReadOnly := true;
        self.textBox1.ScrollBars := System.Windows.Forms.ScrollBars.Vertical;
        self.textBox1.Size := new System.Drawing.Size(260, 97);
        self.textBox1.TabIndex := 0;
        self.textBox1.TabStop := false;
        self.textBox1.Text := 'Утилита для TextParse (версия от 31.08.16)';
        // 
        // button2
        // 
        self.button2.Font := new System.Drawing.Font('Microsoft Sans Serif', 8.25, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.button2.Location := new System.Drawing.Point(12, 276);
        self.button2.Name := 'button2';
        self.button2.Size := new System.Drawing.Size(102, 23);
        self.button2.TabIndex := 12;
        self.button2.Text := 'Сохранить файл';
        self.button2.UseVisualStyleBackColor := true;
        self.button2.Click += button2_Click;
        // 
        // label4
        // 
        self.label4.Font := new System.Drawing.Font('Microsoft Sans Serif', 9, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.label4.Location := new System.Drawing.Point(120, 275);
        self.label4.Name := 'label4';
        self.label4.Size := new System.Drawing.Size(152, 23);
        self.label4.TabIndex := 1;
        self.label4.TextAlign := System.Drawing.ContentAlignment.MiddleLeft;
        self.label4.MouseClick += label4_MouseClick;
        // 
        // button3
        // 
        self.button3.Font := new System.Drawing.Font('Microsoft Sans Serif', 8.25, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.button3.Location := new System.Drawing.Point(202, 302);
        self.button3.Name := 'button3';
        self.button3.Size := new System.Drawing.Size(70, 23);
        self.button3.TabIndex := 13;
        self.button3.Text := 'Создать!';
        self.button3.UseVisualStyleBackColor := true;
        self.button3.Click += button3_Click;
        // 
        // progressBar1
        // 
        self.progressBar1.Location := new System.Drawing.Point(12, 302);
        self.progressBar1.Name := 'progressBar1';
        self.progressBar1.Size := new System.Drawing.Size(184, 23);
        self.progressBar1.TabIndex := 4;
        // 
        // saveFileDialog1
        // 
        self.saveFileDialog1.FileName := 'Dictionary.txt';
        // 
        // label5
        // 
        self.label5.Font := new System.Drawing.Font('Microsoft Sans Serif', 9, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.label5.Location := new System.Drawing.Point(145, 44);
        self.label5.Name := 'label5';
        self.label5.Size := new System.Drawing.Size(102, 19);
        self.label5.TabIndex := 1;
        self.label5.Text := 'С числами';
        self.label5.TextAlign := System.Drawing.ContentAlignment.MiddleCenter;
        // 
        // checkBox2
        // 
        self.checkBox2.Font := new System.Drawing.Font('Microsoft Sans Serif', 9, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.checkBox2.Location := new System.Drawing.Point(253, 48);
        self.checkBox2.Name := 'checkBox2';
        self.checkBox2.Size := new System.Drawing.Size(13, 13);
        self.checkBox2.TabIndex := 2;
        self.checkBox2.UseVisualStyleBackColor := true;
        // 
        // label6
        // 
        self.label6.Font := new System.Drawing.Font('Microsoft Sans Serif', 9, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.label6.Location := new System.Drawing.Point(12, 38);
        self.label6.Name := 'label6';
        self.label6.Size := new System.Drawing.Size(102, 31);
        self.label6.TabIndex := 1;
        self.label6.Text := 'Игнорировать регистр';
        self.label6.TextAlign := System.Drawing.ContentAlignment.MiddleCenter;
        // 
        // checkBox1
        // 
        self.checkBox1.Font := new System.Drawing.Font('Microsoft Sans Serif', 9, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.checkBox1.Location := new System.Drawing.Point(120, 48);
        self.checkBox1.Name := 'checkBox1';
        self.checkBox1.Size := new System.Drawing.Size(13, 13);
        self.checkBox1.TabIndex := 1;
        self.checkBox1.UseVisualStyleBackColor := true;
        // 
        // label7
        // 
        self.label7.Font := new System.Drawing.Font('Microsoft Sans Serif', 9, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.label7.Location := new System.Drawing.Point(12, 250);
        self.label7.Name := 'label7';
        self.label7.Size := new System.Drawing.Size(152, 23);
        self.label7.TabIndex := 1;
        self.label7.Text := 'Количество элементов:';
        self.label7.TextAlign := System.Drawing.ContentAlignment.MiddleCenter;
        self.label7.MouseClick += label1_MouseClick;
        // 
        // textBox2
        // 
        self.textBox2.Location := new System.Drawing.Point(170, 253);
        self.textBox2.Name := 'textBox2';
        self.textBox2.Size := new System.Drawing.Size(102, 20);
        self.textBox2.TabIndex := 11;
        // 
        // radioButton1
        // 
        self.radioButton1.Checked := true;
        self.radioButton1.Location := new System.Drawing.Point(6, 20);
        self.radioButton1.Name := 'radioButton1';
        self.radioButton1.Size := new System.Drawing.Size(48, 20);
        self.radioButton1.TabIndex := 5;
        self.radioButton1.TabStop := true;
        self.radioButton1.Text := 'Нет';
        self.radioButton1.UseVisualStyleBackColor := true;
        // 
        // radioButton2
        // 
        self.radioButton2.Location := new System.Drawing.Point(81, 20);
        self.radioButton2.Name := 'radioButton2';
        self.radioButton2.Size := new System.Drawing.Size(71, 20);
        self.radioButton2.TabIndex := 6;
        self.radioButton2.Text := 'Прямой';
        self.radioButton2.UseVisualStyleBackColor := true;
        // 
        // radioButton3
        // 
        self.radioButton3.Location := new System.Drawing.Point(169, 20);
        self.radioButton3.Name := 'radioButton3';
        self.radioButton3.Size := new System.Drawing.Size(85, 20);
        self.radioButton3.TabIndex := 7;
        self.radioButton3.Text := 'Обратный';
        self.radioButton3.UseVisualStyleBackColor := true;
        // 
        // groupBox1
        // 
        self.groupBox1.Controls.Add(self.radioButton1);
        self.groupBox1.Controls.Add(self.radioButton3);
        self.groupBox1.Controls.Add(self.radioButton2);
        self.groupBox1.Font := new System.Drawing.Font('Microsoft Sans Serif', 9, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.groupBox1.Location := new System.Drawing.Point(12, 97);
        self.groupBox1.Name := 'groupBox1';
        self.groupBox1.Size := new System.Drawing.Size(260, 46);
        self.groupBox1.TabIndex := 7;
        self.groupBox1.TabStop := false;
        self.groupBox1.Text := 'Сортировать по алфавитному порядку';
        // 
        // groupBox2
        // 
        self.groupBox2.Controls.Add(self.radioButton4);
        self.groupBox2.Controls.Add(self.radioButton6);
        self.groupBox2.Controls.Add(self.radioButton5);
        self.groupBox2.Font := new System.Drawing.Font('Microsoft Sans Serif', 9, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.groupBox2.Location := new System.Drawing.Point(12, 149);
        self.groupBox2.Name := 'groupBox2';
        self.groupBox2.RightToLeft := System.Windows.Forms.RightToLeft.No;
        self.groupBox2.Size := new System.Drawing.Size(260, 46);
        self.groupBox2.TabIndex := 7;
        self.groupBox2.TabStop := false;
        self.groupBox2.Text := 'Сортировать по частоте встречи';
        // 
        // radioButton4
        // 
        self.radioButton4.Checked := true;
        self.radioButton4.Location := new System.Drawing.Point(6, 20);
        self.radioButton4.Name := 'radioButton4';
        self.radioButton4.Size := new System.Drawing.Size(48, 20);
        self.radioButton4.TabIndex := 8;
        self.radioButton4.TabStop := true;
        self.radioButton4.Text := 'Нет';
        self.radioButton4.UseVisualStyleBackColor := true;
        // 
        // radioButton6
        // 
        self.radioButton6.Location := new System.Drawing.Point(169, 20);
        self.radioButton6.Name := 'radioButton6';
        self.radioButton6.Size := new System.Drawing.Size(85, 20);
        self.radioButton6.TabIndex := 10;
        self.radioButton6.Text := 'Обратный';
        self.radioButton6.UseVisualStyleBackColor := true;
        // 
        // radioButton5
        // 
        self.radioButton5.Location := new System.Drawing.Point(81, 20);
        self.radioButton5.Name := 'radioButton5';
        self.radioButton5.Size := new System.Drawing.Size(71, 20);
        self.radioButton5.TabIndex := 9;
        self.radioButton5.Text := 'Прямой';
        self.radioButton5.UseVisualStyleBackColor := true;
        // 
        // label2
        // 
        self.label2.Font := new System.Drawing.Font('Microsoft Sans Serif', 9, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.label2.Location := new System.Drawing.Point(145, 69);
        self.label2.Name := 'label2';
        self.label2.Size := new System.Drawing.Size(102, 31);
        self.label2.TabIndex := 1;
        self.label2.Text := 'Частота слов в файле';
        self.label2.TextAlign := System.Drawing.ContentAlignment.MiddleCenter;
        // 
        // checkBox4
        // 
        self.checkBox4.Font := new System.Drawing.Font('Microsoft Sans Serif', 9, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.checkBox4.Location := new System.Drawing.Point(253, 79);
        self.checkBox4.Name := 'checkBox4';
        self.checkBox4.Size := new System.Drawing.Size(13, 13);
        self.checkBox4.TabIndex := 4;
        self.checkBox4.UseVisualStyleBackColor := true;
        // 
        // groupBox3
        // 
        self.groupBox3.Controls.Add(self.radioButton7);
        self.groupBox3.Controls.Add(self.radioButton8);
        self.groupBox3.Controls.Add(self.radioButton9);
        self.groupBox3.Font := new System.Drawing.Font('Microsoft Sans Serif', 9, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.groupBox3.Location := new System.Drawing.Point(12, 201);
        self.groupBox3.Name := 'groupBox3';
        self.groupBox3.RightToLeft := System.Windows.Forms.RightToLeft.No;
        self.groupBox3.Size := new System.Drawing.Size(260, 46);
        self.groupBox3.TabIndex := 7;
        self.groupBox3.TabStop := false;
        self.groupBox3.Text := 'Сортировать по длине слова';
        // 
        // radioButton7
        // 
        self.radioButton7.Checked := true;
        self.radioButton7.Location := new System.Drawing.Point(6, 20);
        self.radioButton7.Name := 'radioButton7';
        self.radioButton7.Size := new System.Drawing.Size(48, 20);
        self.radioButton7.TabIndex := 8;
        self.radioButton7.TabStop := true;
        self.radioButton7.Text := 'Нет';
        self.radioButton7.UseVisualStyleBackColor := true;
        // 
        // radioButton8
        // 
        self.radioButton8.Location := new System.Drawing.Point(169, 20);
        self.radioButton8.Name := 'radioButton8';
        self.radioButton8.Size := new System.Drawing.Size(85, 20);
        self.radioButton8.TabIndex := 10;
        self.radioButton8.Text := 'Обратный';
        self.radioButton8.UseVisualStyleBackColor := true;
        // 
        // radioButton9
        // 
        self.radioButton9.Location := new System.Drawing.Point(81, 20);
        self.radioButton9.Name := 'radioButton9';
        self.radioButton9.Size := new System.Drawing.Size(71, 20);
        self.radioButton9.TabIndex := 9;
        self.radioButton9.Text := 'Прямой';
        self.radioButton9.UseVisualStyleBackColor := true;
        // 
        // Form1
        // 
        self.ClientSize := new System.Drawing.Size(284, 440);
        self.Controls.Add(self.label2);
        self.Controls.Add(self.groupBox3);
        self.Controls.Add(self.groupBox2);
        self.Controls.Add(self.groupBox1);
        self.Controls.Add(self.textBox2);
        self.Controls.Add(self.progressBar1);
        self.Controls.Add(self.textBox1);
        self.Controls.Add(self.checkBox1);
        self.Controls.Add(self.checkBox4);
        self.Controls.Add(self.checkBox3);
        self.Controls.Add(self.checkBox2);
        self.Controls.Add(self.label6);
        self.Controls.Add(self.label3);
        self.Controls.Add(self.label5);
        self.Controls.Add(self.label4);
        self.Controls.Add(self.label7);
        self.Controls.Add(self.label1);
        self.Controls.Add(self.button3);
        self.Controls.Add(self.button2);
        self.Controls.Add(self.button1);
        self.FormBorderStyle := System.Windows.Forms.FormBorderStyle.FixedSingle;
        self.Icon := (System.Drawing.Icon(resources.GetObject('$this.Icon')));
        self.MaximizeBox := false;
        self.Name := 'Form1';
        self.StartPosition := System.Windows.Forms.FormStartPosition.CenterScreen;
        self.Text := 'DictMake';
        self.groupBox1.ResumeLayout(false);
        self.groupBox2.ResumeLayout(false);
        self.groupBox3.ResumeLayout(false);
        self.ResumeLayout(false);
        self.PerformLayout();
    end;

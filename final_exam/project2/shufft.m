function Card_Num=shufft(Card_Num)
 h=msgbox('œ¥≈∆£°','Ã· æ','help');
 [y,Fs]=audioread('shuffle.wav');
  sound(y,Fs);
  pause(4);

for a=1:52
      i=1;
      temp=randi(52);
      t=Card_Num(i);
      Card_Num(i)=Card_Num(temp);
      Card_Num(temp)=t;
      i=i+1;
end
end


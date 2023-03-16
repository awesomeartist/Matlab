function P_point=total_point(Card_Num)

P_point=0;

if mod(Card_Num,13)==1 
P_point=P_point+11;
elseif mod(Card_Num,13)==0||mod(Card_Num,13)>=10
 P_point=P_point+10;    
else
P_point=P_point+mod(Card_Num,13);
end

end


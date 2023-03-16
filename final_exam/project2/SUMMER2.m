function varargout = SUMMER2(varargin)
% SUMMER2 MATLAB code for SUMMER2.fig
%      SUMMER2, by itself, creates a new SUMMER2 or raises the existing
%      singleton*.
%
%      H = SUMMER2 returns the handle to a new SUMMER2 or the handle to
%      the existing singleton*.
%
%      SUMMER2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SUMMER2.M with the given input arguments.
%
%      SUMMER2('Property','Value',...) creates a new SUMMER2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before SUMMER2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to SUMMER2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help SUMMER2

% Last Modified by GUIDE v2.5 13-Aug-2018 18:04:14

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @SUMMER2_OpeningFcn, ...
                   'gui_OutputFcn',  @SUMMER2_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before SUMMER2 is made visible.
function SUMMER2_OpeningFcn(hObject, eventdata, handles, varargin)
clc
global Card_Num n Balance_end
Card_Num=1:52;
Card_Num=shufft(Card_Num);
n=1;                                          %构造扑克牌
handles.card={'方块A','方块2','方块3','方块4','方块5','方块6','方块7','方块8','方块9','方块10','方块J','方块Q','方块K', '梅花A','梅花2','梅花3','梅花4','梅花5','梅花6','梅花7','梅花8','梅花9','梅花10','梅花J','梅花Q','梅花K', '红桃A','红桃2','红桃3','红桃4','红桃5','红桃6','红桃7','红桃8','红桃9','红桃10','红桃J','红桃Q','红桃K','黑桃A','黑桃2','黑桃3','黑桃4','黑桃5','黑桃6','黑桃7','黑桃8','黑桃9','黑桃10','黑桃J','黑桃Q','黑桃K'};
Balance_end='5000';                           %记录一轮游戏后玩家余额，并监督玩家是否改变余额
set(handles.edit1, 'Max',9);                  %设置文本框属性
set(handles.edit2, 'Max',9);                  %初始化显示框
set(handles.edit1, 'string',' ');             %显示玩家的牌
set(handles.edit2, 'string',' ');             %显示庄家的牌
set(handles.edit3,'string','5000');           %显示玩家余额
set(handles.edit4,'string','0');              %显示玩家的下注金额    
set(handles.edit5,'string','0');              %显示玩家的点数
set(handles.edit6,'string','0');              %显示庄家的点数


% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to SUMMER2 (see VARARGIN)

% Choose default command line output for SUMMER2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes SUMMER2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = SUMMER2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
global Card_Num
  Card_Num=shufft(Card_Num);
  

% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)

global Card_Num P_point B_point B_point1 P_Ace B_Ace Balance_end
global n                                        %记录牌的位置
P_point=0;                                      %玩家点数
B_point=0;                                      %庄家点数
P_Ace=0;                                        %玩家拥有的Ace牌数
B_Ace=0;                                        %庄家拥有的Ace牌数
B_point1=0;                                     %记录庄家隐藏牌的点数

Balance=get(handles.edit3,'string');            %读取余额
Bet=get(handles.edit4,'string');                %读取下注金额
if str2num(Balance)~=str2num(Balance_end)%||isempty(str2num(Balance)),逻辑错误
    msgbox('不能改变余额!!','提示','error'); %不允许玩家改变余额
    Balance=Balance_end;
    set(handles.edit3,'string',Balance);
    return;
end
if str2num(Bet)==0                              %控制下注大于零
  msgbox('下注不能为0!!','提示','error');
  return;
elseif isempty(Bet)
    msgbox('请下注!!','提示','error');
  return;
elseif isempty(str2num(Bet))
    msgbox('请正确下注!!','提示','error');
  return;
end
    
if (str2num(Balance)-str2num(Bet))<0             %不允许玩家下注大于余额
    msgbox('余额不足!!','提示','error');
    return;
    
end
   
Balance=str2num(Balance)-str2num(Bet);           %下注完成，结算
Balance=num2str(Balance);
Bet=num2str(Bet);
set(handles.edit4,'string',Bet);
set(handles.edit3,'string',Balance);

Player={handles.card{Card_Num(n)}};             %记录玩家的牌
if mod(Card_Num(n),13)==1                       %计算玩家第一张牌
P_Ace=P_Ace+1;
end
P_point=P_point+total_point(Card_Num(n));
set(handles.edit5,'String',num2str(P_point));   %显示玩家初始点数
set(handles.edit1,'String',Player);             %显示玩家初始的牌
n=n+1;
     if n>52                                    %判断是否重新洗牌
  h=msgbox('洗牌！','提示','help');
  Card_Num=shufft(Card_Num);
  close(h);                   
  n=1;
     end
Player=[Player,handles.card{Card_Num(n)}];      %记录玩家的牌
if mod(Card_Num(n),13)==1                       %计算玩家第二章牌
P_Ace=P_Ace+1;
end
P_point=P_point+total_point(Card_Num(n));
if (P_point)>21&&(P_Ace>0 )                     %判断点数是否大于21点
P_point=P_point-10;
P_Ace=P_Ace-1;
end
set(handles.edit5,'String',num2str(P_point));   %显示玩家初始点数
set(handles.edit1,'String',Player);             %显示玩家初始的牌 
n=n+1;
if n>52                                         %判断是否重新洗牌
h=msgbox('洗牌！','提示','help');
  pause(3);
  Card_Num=shufft(Card_Num);
  close(h);                   
  n=1;
end


handles.hide=handles.card{Card_Num(n)};         %记录庄家的隐藏牌
Banker={'隐藏'};
if mod(Card_Num(n),13)==1                       %计算庄家第一张牌
B_Ace=B_Ace+1;
end
B_point=B_point+total_point(Card_Num(n));
%set(handles.edit2,'String',Banker);            %显示庄家初始的牌
%set(handles.edit6,'String',num2str(B_point));  %显示庄家初始点数
n=n+1;
if n>52                                         %判断是否重新洗牌
 h=msgbox('洗牌！','提示','help');
  pause(3);
  Card_Num=shufft(Card_Num);
  close(h);                  
 n=1;
end
 
B_point1=B_point;
B_point=0;
Banker=[Banker,handles.card{Card_Num(n)}] ;     %记录庄家的牌
if mod(Card_Num(n),13)==1                       % 计算庄家第二张牌
B_Ace=B_Ace+1;
end
 B_point=B_point+total_point(Card_Num(n));
set(handles.edit2,'String',Banker);             %显示庄家初始的牌
set(handles.edit6,'String',num2str(B_point));   %显示庄家初始点数
n=n+1;
  if n>52                                       %判断是否重新洗牌
  h=msgbox('洗牌！','提示','help');
  Card_Num=shufft(Card_Num);
  close(h);  
 n=1;
  end
  
  Banker{1}=handles.hide;                       %恢复庄家的牌
B_point=B_point+B_point1;                       %将庄家点数恢复
if B_point>21&&B_Ace>0                          %判断点数是否大于21点
B_point=B_point-10;
B_Ace=B_Ace-1;
end

if  P_point==21|| B_point==21                   %判断庄家与玩家点数是否等于21点
    if P_point>B_point                          %初步判断结果
        s=2;
    elseif  P_point==B_point
        s=1;
    else
        s=0;
    end
end
        


while P_point<21&&B_point~=21                  %询问玩家是否继续要牌
    q=questdlg('还想要牌吗？','提示','Yes','No','No');
if strcmp(q,'Yes')==1
    Player=[Player,handles.card{Card_Num(n)}]; %记录玩家的牌
else
    break;
end   

if mod(Card_Num(n),13)==1                      %计算玩家第N章牌
P_Ace=P_Ace+1;
end
P_point=P_point+total_point(Card_Num(n));

if P_point>21&&P_Ace>0                         %判断点数是否大于21点
P_point=P_point-10;
P_Ace=P_Ace-1;
end
    set(handles.edit5,'String',num2str(P_point));%显示玩家的牌和点数
    set(handles.edit1,'String',Player);
     n=n+1;   
 if n>52                                       %判断是否重新洗牌
 h=msgbox('洗牌！','提示','help');
  pause(3);
  Card_Num=shufft(Card_Num);
  close(h);  
 n=1;
 end
  if P_point>21                                %判断是否引爆
     P_point=0;
    break;
 end
end

set(handles.edit2,'String',Banker);             %显示庄家的牌
set(handles.edit6,'String',num2str(B_point));   %显示庄家初始总点数
pause(1);
while (B_point<=P_point&&P_point~=21)
 Banker=[Banker,handles.card{Card_Num(n)}];     %记录庄家的牌
if mod(Card_Num(n),13)==1                       %计算庄家第N张牌
B_Ace=B_Ace+1;
end
 B_point=B_point+total_point(Card_Num(n));
 if B_point>21
if B_Ace>0                                       %判断点数是否大于21点
B_point=B_point-10;
B_Ace=B_Ace-1;
end
 end
    set(handles.edit6,'String',num2str(B_point));%显示庄家的牌和点数
    set(handles.edit2,'String',Banker);
  n=n+1;      
if n>52                                          %判断是否重新洗牌
  h=msgbox('洗牌！','提示','help');
  pause(3);
  Card_Num=shufft(Card_Num);
  close(h);  
  n=1;
end    
 if B_point>21                                    %判断是否引爆
    B_point=0;
    break;
 end
end

if B_point==0                                    %本轮游戏结束，结算游戏结果
      msgbox('庄家引爆，你赢了！！','提示','help');
    s=2;
elseif P_point==0
      msgbox('引爆，你输了！！','提示','error');
      s=0;
elseif P_point>B_point
      msgbox('你赢了！！','提示','help');
      s=2;
elseif  P_point==B_point
    msgbox('平局，你赢！！','提示','help');
    s=2;  
else
    msgbox('你输了！！','提示','error');
    s=0;
end

Balance=get(handles.edit3,'string');                %显示游戏结果
Bet=get(handles.edit4,'string');
Balance=str2num(Balance)+s*str2num(Bet);
Balance=num2str(Balance);
set(handles.edit4,'string','0');
set(handles.edit3,'string',Balance);
Balance_end=get(handles.edit3,'string');            %获取结束时的余额，防止玩家改变余额
guidata(hObject, handles);

    
    

% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
global on
set(0,'DefaultUicontrolFontsize',12)

selection = questdlg('要结束游戏吗?','提示','Yes','No','No');
if strcmp(selection,'No')
return;
end
close(gcf)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

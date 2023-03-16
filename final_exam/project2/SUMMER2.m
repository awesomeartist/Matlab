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
n=1;                                          %�����˿���
handles.card={'����A','����2','����3','����4','����5','����6','����7','����8','����9','����10','����J','����Q','����K', '÷��A','÷��2','÷��3','÷��4','÷��5','÷��6','÷��7','÷��8','÷��9','÷��10','÷��J','÷��Q','÷��K', '����A','����2','����3','����4','����5','����6','����7','����8','����9','����10','����J','����Q','����K','����A','����2','����3','����4','����5','����6','����7','����8','����9','����10','����J','����Q','����K'};
Balance_end='5000';                           %��¼һ����Ϸ����������ල����Ƿ�ı����
set(handles.edit1, 'Max',9);                  %�����ı�������
set(handles.edit2, 'Max',9);                  %��ʼ����ʾ��
set(handles.edit1, 'string',' ');             %��ʾ��ҵ���
set(handles.edit2, 'string',' ');             %��ʾׯ�ҵ���
set(handles.edit3,'string','5000');           %��ʾ������
set(handles.edit4,'string','0');              %��ʾ��ҵ���ע���    
set(handles.edit5,'string','0');              %��ʾ��ҵĵ���
set(handles.edit6,'string','0');              %��ʾׯ�ҵĵ���


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
global n                                        %��¼�Ƶ�λ��
P_point=0;                                      %��ҵ���
B_point=0;                                      %ׯ�ҵ���
P_Ace=0;                                        %���ӵ�е�Ace����
B_Ace=0;                                        %ׯ��ӵ�е�Ace����
B_point1=0;                                     %��¼ׯ�������Ƶĵ���

Balance=get(handles.edit3,'string');            %��ȡ���
Bet=get(handles.edit4,'string');                %��ȡ��ע���
if str2num(Balance)~=str2num(Balance_end)%||isempty(str2num(Balance)),�߼�����
    msgbox('���ܸı����!!','��ʾ','error'); %��������Ҹı����
    Balance=Balance_end;
    set(handles.edit3,'string',Balance);
    return;
end
if str2num(Bet)==0                              %������ע������
  msgbox('��ע����Ϊ0!!','��ʾ','error');
  return;
elseif isempty(Bet)
    msgbox('����ע!!','��ʾ','error');
  return;
elseif isempty(str2num(Bet))
    msgbox('����ȷ��ע!!','��ʾ','error');
  return;
end
    
if (str2num(Balance)-str2num(Bet))<0             %�����������ע�������
    msgbox('����!!','��ʾ','error');
    return;
    
end
   
Balance=str2num(Balance)-str2num(Bet);           %��ע��ɣ�����
Balance=num2str(Balance);
Bet=num2str(Bet);
set(handles.edit4,'string',Bet);
set(handles.edit3,'string',Balance);

Player={handles.card{Card_Num(n)}};             %��¼��ҵ���
if mod(Card_Num(n),13)==1                       %������ҵ�һ����
P_Ace=P_Ace+1;
end
P_point=P_point+total_point(Card_Num(n));
set(handles.edit5,'String',num2str(P_point));   %��ʾ��ҳ�ʼ����
set(handles.edit1,'String',Player);             %��ʾ��ҳ�ʼ����
n=n+1;
     if n>52                                    %�ж��Ƿ�����ϴ��
  h=msgbox('ϴ�ƣ�','��ʾ','help');
  Card_Num=shufft(Card_Num);
  close(h);                   
  n=1;
     end
Player=[Player,handles.card{Card_Num(n)}];      %��¼��ҵ���
if mod(Card_Num(n),13)==1                       %������ҵڶ�����
P_Ace=P_Ace+1;
end
P_point=P_point+total_point(Card_Num(n));
if (P_point)>21&&(P_Ace>0 )                     %�жϵ����Ƿ����21��
P_point=P_point-10;
P_Ace=P_Ace-1;
end
set(handles.edit5,'String',num2str(P_point));   %��ʾ��ҳ�ʼ����
set(handles.edit1,'String',Player);             %��ʾ��ҳ�ʼ���� 
n=n+1;
if n>52                                         %�ж��Ƿ�����ϴ��
h=msgbox('ϴ�ƣ�','��ʾ','help');
  pause(3);
  Card_Num=shufft(Card_Num);
  close(h);                   
  n=1;
end


handles.hide=handles.card{Card_Num(n)};         %��¼ׯ�ҵ�������
Banker={'����'};
if mod(Card_Num(n),13)==1                       %����ׯ�ҵ�һ����
B_Ace=B_Ace+1;
end
B_point=B_point+total_point(Card_Num(n));
%set(handles.edit2,'String',Banker);            %��ʾׯ�ҳ�ʼ����
%set(handles.edit6,'String',num2str(B_point));  %��ʾׯ�ҳ�ʼ����
n=n+1;
if n>52                                         %�ж��Ƿ�����ϴ��
 h=msgbox('ϴ�ƣ�','��ʾ','help');
  pause(3);
  Card_Num=shufft(Card_Num);
  close(h);                  
 n=1;
end
 
B_point1=B_point;
B_point=0;
Banker=[Banker,handles.card{Card_Num(n)}] ;     %��¼ׯ�ҵ���
if mod(Card_Num(n),13)==1                       % ����ׯ�ҵڶ�����
B_Ace=B_Ace+1;
end
 B_point=B_point+total_point(Card_Num(n));
set(handles.edit2,'String',Banker);             %��ʾׯ�ҳ�ʼ����
set(handles.edit6,'String',num2str(B_point));   %��ʾׯ�ҳ�ʼ����
n=n+1;
  if n>52                                       %�ж��Ƿ�����ϴ��
  h=msgbox('ϴ�ƣ�','��ʾ','help');
  Card_Num=shufft(Card_Num);
  close(h);  
 n=1;
  end
  
  Banker{1}=handles.hide;                       %�ָ�ׯ�ҵ���
B_point=B_point+B_point1;                       %��ׯ�ҵ����ָ�
if B_point>21&&B_Ace>0                          %�жϵ����Ƿ����21��
B_point=B_point-10;
B_Ace=B_Ace-1;
end

if  P_point==21|| B_point==21                   %�ж�ׯ������ҵ����Ƿ����21��
    if P_point>B_point                          %�����жϽ��
        s=2;
    elseif  P_point==B_point
        s=1;
    else
        s=0;
    end
end
        


while P_point<21&&B_point~=21                  %ѯ������Ƿ����Ҫ��
    q=questdlg('����Ҫ����','��ʾ','Yes','No','No');
if strcmp(q,'Yes')==1
    Player=[Player,handles.card{Card_Num(n)}]; %��¼��ҵ���
else
    break;
end   

if mod(Card_Num(n),13)==1                      %������ҵ�N����
P_Ace=P_Ace+1;
end
P_point=P_point+total_point(Card_Num(n));

if P_point>21&&P_Ace>0                         %�жϵ����Ƿ����21��
P_point=P_point-10;
P_Ace=P_Ace-1;
end
    set(handles.edit5,'String',num2str(P_point));%��ʾ��ҵ��ƺ͵���
    set(handles.edit1,'String',Player);
     n=n+1;   
 if n>52                                       %�ж��Ƿ�����ϴ��
 h=msgbox('ϴ�ƣ�','��ʾ','help');
  pause(3);
  Card_Num=shufft(Card_Num);
  close(h);  
 n=1;
 end
  if P_point>21                                %�ж��Ƿ�����
     P_point=0;
    break;
 end
end

set(handles.edit2,'String',Banker);             %��ʾׯ�ҵ���
set(handles.edit6,'String',num2str(B_point));   %��ʾׯ�ҳ�ʼ�ܵ���
pause(1);
while (B_point<=P_point&&P_point~=21)
 Banker=[Banker,handles.card{Card_Num(n)}];     %��¼ׯ�ҵ���
if mod(Card_Num(n),13)==1                       %����ׯ�ҵ�N����
B_Ace=B_Ace+1;
end
 B_point=B_point+total_point(Card_Num(n));
 if B_point>21
if B_Ace>0                                       %�жϵ����Ƿ����21��
B_point=B_point-10;
B_Ace=B_Ace-1;
end
 end
    set(handles.edit6,'String',num2str(B_point));%��ʾׯ�ҵ��ƺ͵���
    set(handles.edit2,'String',Banker);
  n=n+1;      
if n>52                                          %�ж��Ƿ�����ϴ��
  h=msgbox('ϴ�ƣ�','��ʾ','help');
  pause(3);
  Card_Num=shufft(Card_Num);
  close(h);  
  n=1;
end    
 if B_point>21                                    %�ж��Ƿ�����
    B_point=0;
    break;
 end
end

if B_point==0                                    %������Ϸ������������Ϸ���
      msgbox('ׯ����������Ӯ�ˣ���','��ʾ','help');
    s=2;
elseif P_point==0
      msgbox('�����������ˣ���','��ʾ','error');
      s=0;
elseif P_point>B_point
      msgbox('��Ӯ�ˣ���','��ʾ','help');
      s=2;
elseif  P_point==B_point
    msgbox('ƽ�֣���Ӯ����','��ʾ','help');
    s=2;  
else
    msgbox('�����ˣ���','��ʾ','error');
    s=0;
end

Balance=get(handles.edit3,'string');                %��ʾ��Ϸ���
Bet=get(handles.edit4,'string');
Balance=str2num(Balance)+s*str2num(Bet);
Balance=num2str(Balance);
set(handles.edit4,'string','0');
set(handles.edit3,'string',Balance);
Balance_end=get(handles.edit3,'string');            %��ȡ����ʱ������ֹ��Ҹı����
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

selection = questdlg('Ҫ������Ϸ��?','��ʾ','Yes','No','No');
if strcmp(selection,'No')
return;
end
close(gcf)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

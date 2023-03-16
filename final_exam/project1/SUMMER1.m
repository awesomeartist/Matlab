function varargout = SUMMER1(varargin)
% SUMMER1 MATLAB code for SUMMER1.fig
%      SUMMER1, by itself, creates a new SUMMER1 or raises the existing
%      singleton*.
%
%      H = SUMMER1 returns the handle to a new SUMMER1 or the handle to
%      the existing singleton*.
%
%      SUMMER1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SUMMER1.M with the given input arguments.
%
%      SUMMER1('Property','Value',...) creates a new SUMMER1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before SUMMER1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to SUMMER1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help SUMMER1

% Last Modified by GUIDE v2.5 16-Mar-2023 12:02:09

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @SUMMER1_OpeningFcn, ...
                   'gui_OutputFcn',  @SUMMER1_OutputFcn, ...
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


% --- Executes just before SUMMER1 is made visible.
function SUMMER1_OpeningFcn(hObject, eventdata, handles, varargin)
global mode                                         %���Ʊ���ģʽ
global n                                            %�����±�
global card                                         %�����±�����
mode=1;
[~,TXT]=xlsread('CET4.xlsx');                       %����Ĭ�ϴʿ�
s=size(TXT);                                        %��ȡ�ʿⳤ��
handles.length=s(1);
handles.voc=TXT(:,1);                               %���뵥��
handles.mea=TXT(:,2);                               %�������
card=1:handles.length;                              %��ʼ�������±�����
n=1;
handles.cur=card(n);                                %��õ�һ�������±�
handles.word=handles.voc{handles.cur};              %��õ���
handles.expla=handles.mea{handles.cur};             %��ö�Ӧ����
set(handles.edit1,'String',handles.word);           %��ʾ����
set(handles.edit2,'String',handles.expla);          %��ʾ����



% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to SUMMER1 (see VARARGIN)

% Choose default command line output for SUMMER1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes SUMMER1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = SUMMER1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit1_Callback(hObject, eventdata, handles)
words=get(handles.edit1,'String');                   %ȷ��Ĭд���
if(strcmp(words,handles.word))
    msgbox('��ȷ��','���','help');
else
    msgbox('����','���','error'); 
end
guidata(hObject, handles);

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


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)

global mode n card    
value1=get(handles.popupmenu1,'value');              %ѡ�񲢵���ʿ�
switch value1
    case 1 
       [~,TXT]=xlsread('CET4.xlsx');                 %����Ĭ�ϴʿ�
    case 2
       [~,TXT]=xlsread('CET6.xlsx');
    case 3
        msgbox('�뵼����ʵ��ļ���ʽ��','��ʾ');       %�����Զ���ʿ�
        costom=uigetfile('*.xlsx','Open File');
        [~,TXT]=xlsread(costom);        
end
 s=size(TXT);                                         %��ôʿⳤ��
handles.length=s(1);
handles.voc=TXT(:,1);                                 %�ֱ��뵥�������
handles.mea=TXT(:,2);
n=1;                                                  %Ĭ�ϻ�ȡ��һ������
handles.cur=card(n);   
handles.word=handles.voc{handles.cur};                %��õ������������
handles.expla=handles.mea{handles.cur};
if(mode==1)                                           %�ڲ�ͬ����ģʽ����ʾ����
set(handles.edit1,'String',handles.word);             
set(handles.edit2,'String',handles.expla);            
end
if(mode==2)
set(handles.edit1,'String',handles.word);
set(handles.edit2,'String','');
end
if(mode==3)
set(handles.edit1,'String','');
set(handles.edit2,'String',handles.expla);
end
guidata(hObject, handles);
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
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


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
global mode n card                         %��ʾ��һ���ʴ���
A=1;B=0;
n=n-1;
if n<1                                         %��Ϊ��һ�����ʣ�����Ϊ���һ��
    n=handles.length;
end
handles.word=handles.voc{card(n)};             %��õ������������
handles.expla=handles.mea{card(n)};
if(mode==1)
set(handles.edit1,'String',handles.word);      %�ڲ�ͬ����ģʽ����ʾ����
set(handles.edit2,'String',handles.expla);
end
if(mode==2)
set(handles.edit1,'String',handles.word);
set(handles.edit2,'String','');
end
if(mode==3)
set(handles.edit1,'String','');
set(handles.edit2,'String',handles.expla);
end
guidata(hObject, handles);

% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)

global mode  n card                                 %��ʾ��һ������
n=n+1;
if n>handles.length                                 %��Ϊ��һ�����ʣ�����Ϊ��һ��
    n=1;
end
handles.cur=card(n);
handles.word=handles.voc{handles.cur};              %��õ������������
handles.expla=handles.mea{handles.cur};
if(mode==1)
set(handles.edit1,'String',handles.word);           %�ڲ�ͬ����ģʽ����ʾ����
set(handles.edit2,'String',handles.expla);
end
if(mode==2)
set(handles.edit1,'String',handles.word);
set(handles.edit2,'String','');
end
if(mode==3)
set(handles.edit1,'String','');
set(handles.edit2,'String',handles.expla);
end
guidata(hObject, handles);
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)

set(0,'DefaultUicontrolFontsize',12)                    %ѯ���Ƿ��˳�
selection = questdlg('Have a rest?','��ʾ','YES','NO','NO');
if strcmp(selection,'NO')
return;
end
close(gcf)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
global mode                                             %ѡ�����ģʽ
value2=get(handles.popupmenu2,'value');
switch value2
    case 1 
      mode=1;
      set(handles.edit1,'String',handles.word);
      set(handles.edit2,'String',handles.expla);
    case 2
      mode=2;
      set(handles.edit1,'String',handles.word);
      set(handles.edit2,'String','');
    case 3
      mode=3;
      set(handles.edit1,'String','');
      set(handles.edit2,'String',handles.expla);
end
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)

   set(handles.edit1,'String',handles.word);           %��ʾ���ص���
   set(handles.edit2,'String',handles.expla);
   
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(hObject, eventdata, handles)
global n card mode      
value3=get(handles.popupmenu3,'value');               %ѡ�񵥴����з�ʽ
switch value3
    case 1                                            %˳��ģʽ
        card=1:handles.length;
        n=1;
        handles.next=card(n);
handles.word=handles.voc{card(n)};                    %��ȡ�����������Ӧ����
handles.expla=handles.mea{card(n)};
if(mode==1)                                           %�ڲ�ͬģʽ����ʾ����         
set(handles.edit1,'String',handles.word);
set(handles.edit2,'String',handles.expla);
end
if(mode==2)
set(handles.edit1,'String',handles.word);
set(handles.edit2,'String','');
end
if(mode==3)
set(handles.edit1,'String','');
set(handles.edit2,'String',handles.expla);
end

    case 2                                            %���ģʽ
     card=1:handles.length;
for a=1:handles.length                                %�����治�ظ��Ļ�����
    i=1;
    temp=randi(handles.length);
    t=card(i);
    card(i)=card(temp);
    card(temp)=t;
     i=i+1;
     handles.next=card(n);
end
handles.word=handles.voc{card(n)};                      %��ȡ�����������Ӧ����
handles.expla=handles.mea{card(n)};
if(mode==1)                                             %�ڲ�ͬģʽ����ʾ����
set(handles.edit1,'String',handles.word);               
set(handles.edit2,'String',handles.expla);
end
if(mode==2)
set(handles.edit1,'String',handles.word);
set(handles.edit2,'String','');
end
if(mode==3)
set(handles.edit1,'String','');
set(handles.edit2,'String',handles.expla);
end

end
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu3


% --- Executes during object creation, after setting all properties.
function popupmenu3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function text2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function pushbutton2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function pushbutton3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function pushbutton5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function pushbutton4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

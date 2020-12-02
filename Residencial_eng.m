%     AUTHORS
%
%     [1] Cristian de Jesús Castillo Cruz
%     [2] Diego Julián Rodríguez Patarroyo
%     [3] Julián Andrés Salamanca Bernal
%
%     Universidad Distrital Francisco José de Caldas
%
%    Facultad de Ingeniería
%    Proyecto Curricular Ingeniería Eléctrica
%    [1,2] Laboratorio de Investigación de Fuentes Alternativas de Energía - LIFAE
%    [3] Grupo de Física e Informática - FISINFOR
%    Emails: 
%    [1] cdcastilloc@correo.udistrital.edu.co,
%    [2] djrodriguezp@udistrital.edu.co,
%    [3] jasalamanca@udistrital.edu.co
%    December 1st, 2020


%COPYRIGHT
%
%     This file is part of DimBat.
%     DimBat is free software: you can redistribute it and/or modify
%     it under the terms of the GNU General Public License as published by
%     the Free Software Foundation, either version 3 of the License, or
%     (at your option) any later version.
% 
%     DimBat is distributed in the hope that it will be useful,
%     but WITHOUT ANY WARRANTY; without even the implied warranty of
%     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%     GNU General Public License for more details.
% 
%     You should have received a copy of the GNU General Public License
%     along with this program.  If not, see <https://www.gnu.org/licenses/>.


function varargout = Residencial_eng(varargin)

% RESIDENCIAL_ENG MATLAB code for Residencial_eng.fig
%      RESIDENCIAL_ENG, by itself, creates a new RESIDENCIAL_ENG or raises the existing
%      singleton*.
%
%      H = RESIDENCIAL_ENG returns the handle to a new RESIDENCIAL_ENG or the handle to
%      the existing singleton*.
%
%      RESIDENCIAL_ENG('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RESIDENCIAL_ENG.M with the given input arguments.
%
%      RESIDENCIAL_ENG('Property','Value',...) creates a new RESIDENCIAL_ENG or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Residencial_eng_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Residencial_eng_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Residencial_eng

% Last Modified by GUIDE v2.5 18-Sep-2020 10:25:07

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @Residencial_eng_OpeningFcn, ...
    'gui_OutputFcn',  @Residencial_eng_OutputFcn, ...
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


% --- Executes just before Residencial_eng is made visible.
function Residencial_eng_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Residencial_eng (see VARARGIN)

% Choose default command line output for Residencial_eng
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Residencial_eng wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Residencial_eng_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
global imp control1 control2;

set(handles.text13,'Visible','off');
set(handles.text14,'Visible','off');
set(handles.text15,'Visible','off');
set(handles.text4,'Visible','off');
set(handles.text5,'Visible','off');
set(handles.text6,'Visible','off');
set(handles.text7,'Visible','off');
set(handles.text8,'Visible','on');
set(handles.text9,'Visible','on');
set(handles.text18,'Visible','off');

if control1==1
    
    hrs=imp(:,1);
    cnm=imp(:,2);
    ptot=sum(cnm);
    set(handles.text9,'String', ptot);
    %pmax=max(cnm);
    %disp(cnm);
    axes(handles.axes1);
    bar(hrs,cnm,1,'FaceColor',[100/255 149/255 237/255],'EdgeColor',[0/255 0/255 205/255],'LineWidth',1.5);
    hold on;
    plot(hrs,cnm,'k','LineWidth',2);
    axis([1 24 0 inf]);
    %axis auto;
    xlabel('Time');
    ylabel('Consumption (Wh)');
    grid on;
    % disp(pmax);
    
    
    
end
if control2==1
    hrs=imp(:,2);
    cnm=imp(:,1);
    ptot=sum(cnm);
    set(handles.text9,'String', ptot);
    %pmax=max(cnm);
    %disp(cnm);
    axes(handles.axes1);
    plot(hrs,cnm,'-o');
    axis([1 24 0 inf]);
    xlabel('Time');
    ylabel('Consumption (Wh)');
end



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


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
AyResi_eng;
uiwait;


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global imp control1 control2;
if control1==1
    hrs=imp(:,1);
    cnm=imp(:,2);
    ptot=sum(cnm);
    set(handles.text9,'String', ptot);
    %disp(ptot);
    
    pd=str2num(get(handles.edit1,'string'));
    if isempty(pd)
        msgbox('Please enter a depth of discharge value.','Error','error');
        return;
    end
    pd=pd/100;
    if pd>=1
        msgbox('The depth of discharge cannot be equal to or greater than 100%.','Error','error');
        return;
    end
    if pd<=0
        msgbox('The depth of discharge cannot be equal to or less than 0%.','Error','error');
        return;
    end
    
    fsd=str2num(get(handles.edit2,'string'));
    if isempty(fsd)
        msgbox('Please enter a value for the oversize factor.','Error','error');
        return;
    end
    fsd=fsd/100;
        
    pdr=1-pd;
    pdu=1+pdr;
        
    pad=(ptot*pdu);
    %disp(psis);
    
    psis=pad+(pad*fsd);
    
    set(handles.text14,'String', psis);
    set(handles.text13,'Visible','on');
    set(handles.text14,'Visible','on');
    set(handles.text15,'Visible','on');
    
    
    for i=1:1:6
        tb(i)=12*i;
        
        tens=psis/100;
        cab(i)=tens/tb(i);
        
        %carga(i)=psis/tb(i);
        %disp(carga);
        %carr=ceil(carga);
        %disp(carr);
        %cab=carr/100;
        %disp(cab);
        cabr=ceil(cab);
        disp(cabr);
        set(handles.text4,'String',{tb});
        set(handles.text6,'String',{cabr});
        
        
        prue=psis/100;
        
        disp("Pot "+ psis);
        disp("Prueba " + prue);
        
        
    end
    set(handles.text4,'Visible','on');
    set(handles.text5,'Visible','on');
    set(handles.text6,'Visible','on');
    set(handles.text7,'Visible','on');
    set(handles.text8,'Visible','on');
    set(handles.text9,'Visible','on');
    set(handles.text19,'Visible','on');
end

if control2==1
    hrs=imp(:,2);
    cnm=imp(:,1);
    ptot=sum(cnm);
    set(handles.text9,'String', ptot);
    %disp(ptot);
    
    pd=str2num(get(handles.edit1,'string'));
    if isempty(pd)
        msgbox('Please enter a depth of discharge value.','Error','error');
        return;
    end
    pd=pd/100;
    if pd>=1
        msgbox('The depth of discharge cannot be equal to or greater than 100%.','Error','error');
        return;
    end
    if pd<=0
        msgbox('The depth of discharge cannot be equal to or less than 0%.','Error','error');
        return;
    end
    
    fsd=str2num(get(handles.edit2,'string'));
    if isempty(fsd)
        msgbox('Please enter a value for the oversize factor.','Error','error');
        return;
    end
    fsd=fsd/100;
    
    pdr=1-pd;
    pdu=1+pdr;
        
    pad=(ptot*pdu);
    %disp(psis);
    
    psis=pad+(pad*fsd);
    
    
    set(handles.text14,'String', psis);
    set(handles.text13,'Visible','on');
    set(handles.text14,'Visible','on');
    set(handles.text15,'Visible','on');
    
    for i=1:1:6
        tb(i)=12*i;
        
        tens=psis/100;
        cab(i)=tens/tb(i);
        
        %carga(i)=psis/tb(i);
        %disp(carga);
        %carr=ceil(carga);
        %disp(carr);
        %cab=carr/100;
        %disp(cab);
        cabr=ceil(cab);
        disp(cabr);
        set(handles.text4,'String',{tb});
        set(handles.text6,'String',{cabr});
        
        
        prue=psis/100;
        
        disp("Pot "+ psis);
        disp("Prueba " + prue);
        
        
    end
    set(handles.text4,'Visible','on');
    set(handles.text5,'Visible','on');
    set(handles.text6,'Visible','on');
    set(handles.text7,'Visible','on');
    set(handles.text8,'Visible','on');
    set(handles.text9,'Visible','on');
    set(handles.text19,'Visible','on');
   
end
%  disp("profundidad "+pd);
%  pdr=1-pd;
%  disp("profundidad real "+pdr);
%  pdu=1+pdr;
%  disp("profundidad usada "+pdu);


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


% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1
cb_pd=get(handles.checkbox1,'Value');
if cb_pd==0
    set(handles.edit1,'Enable','off');
    set(handles.edit1,'String','80');
    set(handles.text2,'Enable','off');
    set(handles.text3,'Enable','off');
    set(handles.text18,'Visible','off');
   
else
    set(handles.edit1,'Enable','on');
    set(handles.edit1,'String',' ');
    set(handles.text2,'Enable','on');
    set(handles.text3,'Enable','on');
    set(handles.text18,'Visible','on');
end


% --- Executes on button press in checkbox2.
function checkbox2_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox2
cb_fs=get(handles.checkbox2,'Value');
if cb_fs==0
   set(handles.edit2,'Enable','off');
   set(handles.edit2,'String','0');
   set(handles.text11,'Enable','off');
   set(handles.text12,'Enable','off');
else
    set(handles.edit2,'Enable','on');
    set(handles.edit2,'String',' ');
    set(handles.text11,'Enable','on');
    set(handles.text12,'Enable','on');
end

% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over edit2.
function edit1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over edit2.
function edit2_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over text16.
function text16_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to text16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

msgbox('It is the percentage of the total battery capacity that is used during a charge/discharge cycle. For more information go to the help menu.',...
    'Depth of discharge.','help');

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
msgbox('It is the additional percentage of the total energy that will be stored. For more information go to the help menu.',...
    'Oversizing factor','help');

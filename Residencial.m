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


function varargout = Residencial(varargin)

% RESIDENCIAL MATLAB code for Residencial.fig
%      RESIDENCIAL, by itself, creates a new RESIDENCIAL or raises the existing
%      singleton*.
%
%      H = RESIDENCIAL returns the handle to a new RESIDENCIAL or the handle to
%      the existing singleton*.
%
%      RESIDENCIAL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RESIDENCIAL.M with the given input arguments.
%
%      RESIDENCIAL('Property','Value',...) creates a new RESIDENCIAL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Residencial_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Residencial_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Residencial

% Last Modified by GUIDE v2.5 17-Jun-2020 08:48:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @Residencial_OpeningFcn, ...
    'gui_OutputFcn',  @Residencial_OutputFcn, ...
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


% --- Executes just before Residencial is made visible.
function Residencial_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Residencial (see VARARGIN)

% Choose default command line output for Residencial
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Residencial wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Residencial_OutputFcn(hObject, eventdata, handles)
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
    xlabel('Hora');
    ylabel('Consumo (Wh)');
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
    xlabel('Hora');
    ylabel('Consumo (Wh)');
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
AyResi;
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
        msgbox('Por favor ingrese un valor de profundidad de descarga.','Error','error');
        return;
    end
    pd=pd/100;
    if pd>=1
        msgbox('La profundidad de descarga no puede ser igual o mayor al 100%.','Error','error');
        return;
    end
    if pd<=0
        msgbox('La profundidad de descarga no puede ser igual o menor al 0%.','Error','error');
        return;
    end
    
    fsd=str2num(get(handles.edit2,'string'));
    if isempty(fsd)
        msgbox('Por favor ingrese un valor para el factor de sobredimensionamiento.','Error','error');
        return;
    end
    fsd=fsd/100;
        
    pad=ptot+(ptot*pd);
    %disp(psis);
    
    psis=pad+(pad*fsd);
    
    set(handles.text14,'String', psis);
    set(handles.text13,'Visible','on');
    set(handles.text14,'Visible','on');
    set(handles.text15,'Visible','on');
    
    
    for i=1:1:6
        tb(i)=12*i;
        carga(i)=psis/tb(i);
        %disp(carga);
        carr=ceil(carga);
        disp(carr);
        cab=carr/20;
        disp(cab);
        cabr=ceil(cab);
        disp(cabr);
        set(handles.text4,'String',{tb});
        set(handles.text6,'String',{cabr});
    end
    set(handles.text4,'Visible','on');
    set(handles.text5,'Visible','on');
    set(handles.text6,'Visible','on');
    set(handles.text7,'Visible','on');
    set(handles.text8,'Visible','on');
    set(handles.text9,'Visible','on');
end

if control2==1
    hrs=imp(:,2);
    cnm=imp(:,1);
    ptot=sum(cnm);
    set(handles.text9,'String', ptot);
    %disp(ptot);
    
    pd=str2num(get(handles.edit1,'string'));
    if isempty(pd)
        msgbox('Por favor ingrese un valor de profundidad de descarga.','Error','error');
        return;
    end
    pd=pd/100;
    if pd>=1
        msgbox('La profundidad de descarga no puede ser igual o mayor al 100%.','Error','error');
        return;
    end
    if pd<=0
        msgbox('La profundidad de descarga no puede ser igual o menor al 0%.','Error','error');
        return;
    end
    
    fsd=str2num(get(handles.edit2,'string'));
    if isempty(fsd)
        msgbox('Por favor ingrese un valor para el factor de sobredimensionamiento.','Error','error');
        return;
    end
    fsd=fsd/100;
        
    pad=ptot+(ptot*pd);
    %disp(psis);
    
    psis=pad+(pad*fsd);
    
    
    set(handles.text14,'String', psis);
    set(handles.text13,'Visible','on');
    set(handles.text14,'Visible','on');
    set(handles.text15,'Visible','on');
    
    for i=1:1:6
        tb(i)=12*i;
        carga(i)=psis/tb(i);
        %disp(carga);
        carr=ceil(carga);
        disp(carr);
        cab=carr/20;
        disp(cab);
        cabr=ceil(cab);
        disp(cabr);
        set(handles.text4,'String',{tb});
        set(handles.text6,'String',{cabr});
    end
    set(handles.text4,'Visible','on');
    set(handles.text5,'Visible','on');
    set(handles.text6,'Visible','on');
    set(handles.text7,'Visible','on');
    set(handles.text8,'Visible','on');
    set(handles.text9,'Visible','on');
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


% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1
cb_pd=get(handles.checkbox1,'Value');
if cb_pd==0
    set(handles.edit1,'Enable','off');
    set(handles.edit1,'String','60');
    set(handles.text2,'Enable','off');
    set(handles.text3,'Enable','off');
   
else
    set(handles.edit1,'Enable','on');
    set(handles.edit1,'String',' ');
    set(handles.text2,'Enable','on');
    set(handles.text3,'Enable','on');
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

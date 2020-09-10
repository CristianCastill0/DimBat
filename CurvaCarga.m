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


function varargout = CurvaCarga(varargin)

% CURVACARGA MATLAB code for CurvaCarga.fig
%      CURVACARGA, by itself, creates a new CURVACARGA or raises the existing
%      singleton*.
%
%      H = CURVACARGA returns the handle to a new CURVACARGA or the handle to
%      the existing singleton*.
%
%      CURVACARGA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CURVACARGA.M with the given input arguments.
%
%      CURVACARGA('Property','Value',...) creates a new CURVACARGA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before CurvaCarga_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to CurvaCarga_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help CurvaCarga

% Last Modified by GUIDE v2.5 21-Jun-2020 17:50:15

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @CurvaCarga_OpeningFcn, ...
    'gui_OutputFcn',  @CurvaCarga_OutputFcn, ...
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

% --- Executes just before CurvaCarga is made visible.
function CurvaCarga_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to CurvaCarga (see VARARGIN)

% Choose default command line output for CurvaCarga
handles.output = hObject;
global abierto control1 control2;
abierto=1;
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes CurvaCarga wait for user response (see UIRESUME)
% uiwait(handles.figure1);
setGlobalx(1);
%setGlobalelec(0);
r = getGlobalx();
%s = getGlobalelec();
disp('principal...');
disp(r);
%disp(s);
control1=0;
control2=0;
set(handles.pushbutton5,'Visible','on');

% --- Outputs from this function are returned to the command line.
function varargout = CurvaCarga_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

%cont=1;
%disp(cont);




% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global imp control1 control2;
try
    
    [file,path]=uigetfile({'*.txt;*.xlsx;*.xls'},'Seleccione el archivo');
    arc=file;
    disp(imp)    
    m_pr=msgbox('Cargando archivo','Mensaje','warn');
    imp=importdata(fullfile(path,file));
    delete(m_pr)
    msgbox('Archivo subido exitosamente','Mensaje','help');
    set(handles.text5,'Visible','on');
    set(handles.text5,'String',fullfile('Archivo subido: ',file));
    control1=1;
    control2=0;
catch
    errordlg('Error durante la carga del archivo','Error');
end
disp(imp);



% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
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


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

close;




% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)

disp('Botón agregar');
disp('cont antes');
pulso=get(hObject,'Value');
r = getGlobalx;
disp(r);
global imp control1 control2;
if pulso==1
    setGlobalelec(r,get(handles.popupmenu1,'Value'));
    pd=str2double(get(handles.edit1,'string'));
    tou=str2double(get(handles.edit2,'String'));
    fh=get(handles.popupmenu2,'Value');
    %[pr]=[elec];
    tou=tou/60;
    disp('Tiempo');
    disp(tou);
    pd=pd*tou;
    
    TV=isnan(tou);
    PV=isnan(pd);
    
    if TV==1
        msgbox('Debe indicar el tiempo de uso del electrodoméstico.','Error','error');
    else
        
        if PV==1
            msgbox('Debe indicar la potencia del electrodoméstico.','Error','error');
        else
            
            
    
    setDatosManuales(pd,fh);
    
    val=r+1;
    setGlobalx(val);
    %cont=cont+1;
    msgbox('Electrodoméstico agregado correctamente.','Información','help');
        end
    end
end
disp('cont');
r = getGlobalx;
disp(r);
disp('elec');
elec=getGlobalelec();
disp(elec);
disp('imp');
disp(imp);
control1=0;
control2=1;




% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
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


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1
global imp;
set(handles.pushbutton1,'Visible','on');
set(handles.pushbutton3,'Visible','on');
set(handles.uipanel1,'Visible','off');
imp=0;


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2
global imp;
set(handles.uipanel1,'Visible','on');
set(handles.pushbutton3,'Visible','on');
set(handles.pushbutton1,'Visible','off');
set(handles.text5,'Visible','off');
imp=0;




% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
disp('Botón agregar');
disp('cont antes');

r = getGlobalx;
disp(r);

elec(r)=get(handles.popupmenu1,'Value');
%[pr]=[elec];
val=r+1;
setGlobalx(val);
%cont=cont+1;

disp('cont');
r = getGlobalx;
disp(r);
disp('elec');
disp(elec);

function setGlobalx(val)
global x;
x = val;

function r = getGlobalx()
global x;
r = x;

function setGlobalelec(pos, val)
global elec;
elec(pos)= val;

function s = getGlobalelec()
global elec;
s = elec;

function setDatosManuales(pd,fh)
global imp;
for i=1:24
    imp(i,2)=i;
    if i==fh
        imp(i,1)=imp(i,1)+pd;
        
    end
end
%imp(pos,1)=pd;
%imp(pos,2)=fh;



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


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global imp control1 control2;
imp=0;
close;
MP;




% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global imp;
if imp==0
    msgbox('Antes de poder borrar un electrodoméstico debe agregarlo.','Error','error');
else
    imp=0
    disp(imp);
    set(handles.edit1,'String',' ');
    set(handles.edit2,'String',' ');
    msgbox('Datos ingresados borrados correctamente.','Información','help');
end

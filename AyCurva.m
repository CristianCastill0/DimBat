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


function varargout = AyCurva(varargin)
% AYCURVA MATLAB code for AyCurva.fig
%      AYCURVA, by itself, creates a new AYCURVA or raises the existing
%      singleton*.
%
%      H = AYCURVA returns the handle to a new AYCURVA or the handle to
%      the existing singleton*.
%
%      AYCURVA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in AYCURVA.M with the given input arguments.
%
%      AYCURVA('Property','Value',...) creates a new AYCURVA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before AyCurva_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to AyCurva_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help AyCurva

% Last Modified by GUIDE v2.5 17-Sep-2020 15:16:16

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @AyCurva_OpeningFcn, ...
    'gui_OutputFcn',  @AyCurva_OutputFcn, ...
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


% --- Executes just before AyCurva is made visible.
function AyCurva_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to AyCurva (see VARARGIN)

% Choose default command line output for AyCurva
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes AyCurva wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = AyCurva_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1




% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;


% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton3



% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1

valor=get(handles.popupmenu1,'Value');


if valor==1
    
    set(handles.text9,'String','');
    set(handles.text10,'String','');
    set(handles.checkbox3,'Visible','off');
    set(handles.checkbox3,'Value',0);
    axes(handles.axes1)
    cla;
end

if valor==2
    
    set(handles.text9,'String','Seleccionar el archivo a cargar.');
    set(handles.text9,'Visible','on');
    set(handles.text10,'String','Debe tener el siguiente formato. Columna A: Hora. Columna B: Consumo');
    set(handles.text10,'Visible','on');
    set(handles.checkbox3,'Visible','off');
    set(handles.checkbox3,'Value',0);
    axes(handles.axes1)
    path='DimBat_resources/Formato.png';
    imag1=imread(path);
    imshow(imag1);
    
    msgbox('Ha completado exitosamente todos los pasos para introducir la curva de carga con un archivo de Excel.','Todos los pasos completados','help');


end

if valor==3
    
    set(handles.text9,'String','Seleccionar el electrodoméstico a agregar dentro de la lista.');
    set(handles.text9,'Visible','on');
    set(handles.text10,'String','');
    set(handles.text10,'Visible','off');
    set(handles.checkbox3,'Visible','on');
    axes(handles.axes1)
    path='DimBat_resources/Electrodomestico.png';
    imag1=imread(path);
    imshow(imag1);
end



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


% --- Executes on button press in radiobutton4.
function radiobutton4_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton4





% --- Executes on button press in radiobutton5.
function radiobutton5_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton5



% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1




% --- Executes on button press in checkbox2.
function checkbox2_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox2


% --- Executes on button press in checkbox3.
function checkbox3_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox3
p2=get(handles.checkbox3,'Value');

if p2==1
    set(handles.text11,'String','Seleccionar la franja horaria de uso dentro de la lista.');
    set(handles.text11,'Visible','on');
    
    
    axes(handles.axes1)
    path='DimBat_resources/Franja horaria.png';
    imag1=imread(path);
    imshow(imag1);
    
    set(handles.checkbox4,'Visible','on');
else
    
    set(handles.text11,'String','');
    set(handles.text11,'Visible','off');
    
    set(handles.text12,'String','');
    set(handles.text12,'Visible','off');
    
    set(handles.text13,'String','');
    set(handles.text13,'Visible','off');
    
    set(handles.checkbox4,'Visible','off');
    set(handles.checkbox5,'Visible','off');
    
    set(handles.checkbox4,'Value',0);
    set(handles.checkbox5,'Value',0);
    
    axes(handles.axes1)
    path='DimBat_resources/Electrodomestico.png';
    imag1=imread(path);
    imshow(imag1);
    
end


% --- Executes on button press in checkbox4.
function checkbox4_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox4
p3=get(handles.checkbox4,'Value');

if p3==1
    set(handles.text12,'String','Ingresar cuanta potencia consume el electrodoméstico y por cuantos minutos es usado.');
    set(handles.text12,'Visible','on');
    
    
    axes(handles.axes1)
    path='DimBat_resources/Manuales.png';
    imag1=imread(path);
    imshow(imag1);
    
    set(handles.checkbox5,'Visible','on');
else
    
    set(handles.text12,'String','');
    set(handles.text12,'Visible','off');
    
    set(handles.text13,'String','');
    set(handles.text13,'Visible','off');
    
    set(handles.checkbox5,'Visible','off');
    
    set(handles.checkbox5,'Value',0);
    
    axes(handles.axes1)
    path='DimBat_resources/Franja horaria.png';
    imag1=imread(path);
    imshow(imag1);
    
end


% --- Executes on button press in checkbox5.
function checkbox5_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox5
p4=get(handles.checkbox5,'Value');

if p4==1
    set(handles.text13,'String','Presionar el botón "Agregar" y repetir el proceso cuantas veces sea necesario. Para borrar todos los datos introducidos presionar el botón "Borrar todo".');
    set(handles.text13,'Visible','on');
    
    
    axes(handles.axes1)
    path='DimBat_resources/Boton.png';
    imag1=imread(path);
    imshow(imag1);
    
    msgbox('Ha completado exitosamente todos los pasos para introducir la curva de carga de manualmente.','Todos los pasos completados','help');
else
    
    
    axes(handles.axes1)
    path='DimBat_resources/Manuales.png';
    imag1=imread(path);
    imshow(imag1);
    
end

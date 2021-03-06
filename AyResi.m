%     AUTHORS
%
%     [1] Cristian de Jes�s Castillo Cruz
%     [2] Diego Juli�n Rodr�guez Patarroyo
%     [3] Juli�n Andr�s Salamanca Bernal
%
%     Universidad Distrital Francisco Jos� de Caldas
%
%    Facultad de Ingenier�a
%    Proyecto Curricular Ingenier�a El�ctrica
%    [1,2] Laboratorio de Investigaci�n de Fuentes Alternativas de Energ�a - LIFAE
%    [3] Grupo de F�sica e Inform�tica - FISINFOR
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


function varargout = AyResi(varargin)
% AYRESI MATLAB code for AyResi.fig
%      AYRESI, by itself, creates a new AYRESI or raises the existing
%      singleton*.
%
%      H = AYRESI returns the handle to a new AYRESI or the handle to
%      the existing singleton*.
%
%      AYRESI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in AYRESI.M with the given input arguments.
%
%      AYRESI('Property','Value',...) creates a new AYRESI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before AyResi_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to AyResi_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help AyResi

% Last Modified by GUIDE v2.5 16-Sep-2020 17:52:15

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @AyResi_OpeningFcn, ...
    'gui_OutputFcn',  @AyResi_OutputFcn, ...
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


% --- Executes just before AyResi is made visible.
function AyResi_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to AyResi (see VARARGIN)

% Choose default command line output for AyResi
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes AyResi wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = AyResi_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

axes(handles.axes1)
axis off;
set(handles.uibuttongroup2,'Visible','off');



% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1

set(handles.text3,'Visible','on');
set(handles.text3,'String',{'La profundidad de descarga de una bater�a es el porcentaje de la capacidad total de la bater�a que se usa durante un ciclo de carga o un ciclo descarga. Podemos distinguir dos posibilidades:',' Descargas superficiales: Son descargas de aproximadamente el 20% de la capacidad nominal.',' Descargas profundas: Son descargas del 60-80% de la capacidad nominal.'});
set(handles.text4,'Visible','on');
set(handles.text4,'String','Profundidad de descarga');
set(handles.pushbutton1,'Position',[261.75,140,75.75,16.5]);
set(handles.axes1,'Visible','off');
set(handles.axes2,'Visible','off');


axes(handles.axes1)
cla;
axis off;
axes(handles.axes2)
cla;
axis off;



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
set(handles.text3,'Visible','on');
set(handles.text3,'String',{'Bater�as conectadas en paralelo: Con este tipo de conexi�n conseguimos aumentar la capacidad y mantener un mismo valor de tensi�n. La capacidad total del sistema de bater�as ser� entonces igual a la suma de todas las capacidades de cada bater�a.','Bater�as conectadas en serie: Con este tipo de conexi�n conseguimos aumentar la tensi�n final del sistema de acumulaci�n, que ser�a la suma de las tensiones de la bater�as conectadas en serie, y mantenemos la capacidad.'});
set(handles.pushbutton1,'Position',[261.75,0.75,75.75,16.5]);
set(handles.axes1,'Visible','on');
set(handles.axes2,'Visible','on');





axes(handles.axes1)
path='DimBat_resources/serie.png';
imag1=imread(path);
imshow(imag1);
axis off;
axes(handles.axes2)
path='DimBat_resources/paralelo.png';
imag2=imread(path);
imshow(imag2);
axis off;


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1

valor=get(handles.popupmenu1,'Value');

if valor==1
    axes(handles.axes1)
    cla;
    axis off;
    set(handles.text3,'Visible','off');
    set(handles.text3,'Position',[9.8,24.385,75.75,6.31]);
    set(handles.axes1,'Visible','off');
    set(handles.uibuttongroup2,'Visible','off');
end

if valor==2
    set(handles.text3,'Visible','on');
    set(handles.text3,'String',{'Es el porcentaje de la capacidad total de la bater�a que se usa durante un ciclo de carga o descarga. La relaci�n entre la vida �til de la bater�a en ciclos de carga/descarga y esta es inversamente proporcional, por lo que a una mayor profundidad de descarga se obtienen una menor cantidad de ciclos de carga/descarga y viceversa. Podemos distinguir dos posibilidades:','Descargas superficiales: Son descargas de aproximadamente el 20% de la capacidad nominal.','Descargas profundas: Son descargas del 60-80% de la capacidad nominal.'});
    set(handles.text3,'Position',[9.8,24.385,180.2,6.31]);
    set(handles.axes1,'Position',[34.4,-0.077,120.2,26]);
    set(handles.axes1,'Visible','off');
    set(handles.uibuttongroup2,'Visible','off');
    set(handles.uibuttongroup2,'Position',[9.8,16.385,34,6.46]);
    
    axes(handles.axes1)
    path='DimBat_resources/Profundidad de descarga.jpg';
    imag1=imread(path);
    imshow(imag1);
    axis off;

end

if valor==3
    
    axes(handles.axes1)
    cla;
    
    set(handles.text3,'Visible','off');
    set(handles.text3,'Position',[9.8,16.385,75.75,6.31]);
    set(handles.axes1,'Position',[79.6,-0.077,120.2,30.77]);
    set(handles.radiobutton6,'Value',1);
    set(handles.uibuttongroup2,'Visible','on');
    set(handles.uibuttongroup2,'Position',[9.8,24.385,34,6.46]);
    
    

    

    
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

ser=get(handles.radiobutton4,'Value');

if ser==1
    set(handles.text3,'String',{'Con este tipo de conexi�n conseguimos aumentar la tensi�n final del sistema de acumulaci�n, que ser�a la suma de las tensiones de la bater�as conectadas en serie, y mantenemos la capacidad.'});
    set(handles.text3,'Visible','on');
    set(handles.axes1,'Visible','on');
    
    axes(handles.axes1)
    %axis off;
    path='DimBat_resources/serie.png';
    imag1=imread(path);
    imshow(imag1);
    
    
    
    
end



% --- Executes on button press in radiobutton5.
function radiobutton5_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton5
par=get(handles.radiobutton5,'Value');

if par==1
    set(handles.text3,'String',{'Con este tipo de conexi�n conseguimos aumentar la capacidad y mantener un mismo valor de tensi�n. La capacidad total del sistema de bater�as ser� entonces igual a la suma de todas las capacidades de cada bater�a.'});
    set(handles.text3,'Visible','on');
    
    axes(handles.axes1)
    path='DimBat_resources/paralelo.png';
    imag1=imread(path);
    imshow(imag1);
    %axis off;
end

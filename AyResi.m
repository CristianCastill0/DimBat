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

% Last Modified by GUIDE v2.5 23-Jun-2020 14:14:07

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


% ay1=get(handles.radiobutton1,'Value');
% if ay1==1
%     pr=1;
%     disp(pr);
%    set(handles.text3,'Visible','on');
%    set(handles.text3,'String','Prueba');
% end


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1

set(handles.text3,'Visible','on');
set(handles.text3,'String',{'La profundidad de descarga de una batería es el porcentaje de la capacidad total de la batería que se usa durante un ciclo de carga o un ciclo descarga. Podemos distinguir dos posibilidades:',' Descargas superficiales: Son descargas de aproximadamente el 20% de la capacidad nominal.',' Descargas profundas: Son descargas del 60-80% de la capacidad nominal.'});
set(handles.text4,'Visible','on');
set(handles.text4,'String','Profundidad de descarga');
set(handles.pushbutton1,'Position',[261.75,140,75.75,16.5]);
set(handles.axes1,'Visible','off');
set(handles.axes2,'Visible','off');


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
set(handles.text3,'String',{'Baterías conectadas en paralelo: Con este tipo de conexión conseguimos aumentar la capacidad y mantener un mismo valor de tensión. La capacidad total del sistema de baterías será entonces igual a la suma de todas las capacidades de cada batería.','Baterías conectadas en serie: Con este tipo de conexión conseguimos aumentar la tensión final del sistema de acumulación, que sería la suma de las tensiones de la baterías conectadas en serie, y mantenemos la capacidad.'});
set(handles.text4,'Visible','on');
set(handles.text4,'String','Conexiones de baterias');
set(handles.pushbutton1,'Position',[261.75,0.75,75.75,16.5]);
set(handles.axes1,'Visible','on');
set(handles.axes2,'Visible','on');

axes(handles.axes1)
path='C:\Users\A51-17Y8\Documents\Documentos UD\Tesis\serie.png';
imag1=imread(path);
imshow(imag1);
axis off
axes(handles.axes2)
path='C:\Users\A51-17Y8\Documents\Documentos UD\Tesis\paralelo.png';
imag2=imread(path);
imshow(imag2);
axis off

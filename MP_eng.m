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



function varargout = MP_eng(varargin)
% MP_eng MATLAB code for MP_eng.fig
%      MP_eng, by itself, creates a new MP_eng or raises the existing
%      singleton*.
%
%      H = MP_eng returns the handle to a new MP_eng or the handle to
%      the existing singleton*.
%
%      MP_eng('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MP_eng.M with the given input arguments.
%
%      MP_eng('Property','Value',...) creates a new MP_eng or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before MP_eng_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to MP_eng_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help MP_eng

% Last Modified by GUIDE v2.5 18-Sep-2020 09:31:45

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @MP_eng_OpeningFcn, ...
    'gui_OutputFcn',  @MP_eng_OutputFcn, ...
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


% --- Executes just before MP_eng is made visible.
function MP_eng_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to MP_eng (see VARARGIN)

% Choose default command line output for MP_eng
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes MP_eng wait for user response (see UIRESUME)
% uiwait(handles.figure1);
set(handles.text4,'Visible','off');
set(handles.pushbutton1,'Visible','off');
set(handles.pushbutton2,'Visible','off');

axes(handles.axes4);
axis off
axes(handles.axes5);
axis off
axes(handles.axes6);
axis off
axes(handles.axes7);
axis off

axes(handles.axes4);
handles.im1=imread('DimBat_resources/Escudo UD.png');
imagesc(handles.im1);
axis off
axes(handles.axes5);
handles.im2=imread('DimBat_resources/logo IE.png');
imagesc(handles.im2);
axis off
axes(handles.axes6);
handles.im3=imread('DimBat_resources/LogoLIFAE.jpg');
imagesc(handles.im3);
axis off
axes(handles.axes7);
handles.im4=imread('DimBat_resources/LogoFISINFOR.jpg');
imagesc(handles.im4);
axis off
% --- Outputs from this function are returned to the command line.
function varargout = MP_eng_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure


varargout{1} = handles.output;

set(handles.text4,'Visible','off');
set(handles.pushbutton1,'Visible','off');
set(handles.pushbutton2,'Visible','off');



% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1
set(handles.text4,'Visible','on');
set(handles.pushbutton1,'Visible','on');
set(handles.pushbutton2,'Visible','off');


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

CurvaCarga_eng;
global control1  control2 canc;
uiwait;
if control1==0 && control2 == 0
    if canc==1
        msgbox('To perform the analysis you must have a load curve, please add','Error','error');
        uiwait;
        set(handles.text4,'Visible','on');
        set(handles.pushbutton1,'Visible','on');
        set(handles.pushbutton2,'Visible','off');
    else
    set(handles.pushbutton2,'Visible','off');
    msgbox('To perform the analysis you must have a load curve, please add','Error','error');
    uiwait;
    CurvaCarga_eng;
    end
else
    disp('Completado');
    set(handles.pushbutton2,'Visible','on');
end
% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global control1 control2;

u1=get(handles.radiobutton1,'Value');
% u2=get(handles.radiobutton2,'Value');
% u3=get(handles.radiobutton3,'Value');
u4=get(handles.radiobutton4,'Value');
disp(u1);
% disp(u2);
% disp(u3);
disp(u4);
if control1==1 || control2==1
    
    if u1==1
        Residencial_eng;
    end
else
    msgbox('To perform the analysis you must have a load curve, please add','Error','error');
    uiwait;
    CurvaCarga_eng;
end
if u4==1
    msgbox('Before performing the analysis you must select a type of user','Error','error');
end


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2
set(handles.text4,'Visible','off');
set(handles.pushbutton1,'Visible','off');
set(handles.pushbutton2,'Visible','off');
icono=imread('DimBat_resources/Trabajando.jpg');
msgbox('Option under development.','Error','custom',icono);


% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton3
set(handles.text4,'Visible','off');
set(handles.pushbutton1,'Visible','off');
set(handles.pushbutton2,'Visible','off');
icono=imread('DimBat_resources/Trabajando.jpg');
msgbox('Option under development.','Error','custom',icono);

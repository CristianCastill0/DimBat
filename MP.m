%COPYRIGHT
%
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



function varargout = MP(varargin)
% MP MATLAB code for MP.fig
%      MP, by itself, creates a new MP or raises the existing
%      singleton*.
%
%      H = MP returns the handle to a new MP or the handle to
%      the existing singleton*.
%
%      MP('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MP.M with the given input arguments.
%
%      MP('Property','Value',...) creates a new MP or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before MP_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to MP_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help MP

% Last Modified by GUIDE v2.5 10-Dec-2019 11:04:11

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @MP_OpeningFcn, ...
    'gui_OutputFcn',  @MP_OutputFcn, ...
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


% --- Executes just before MP is made visible.
function MP_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to MP (see VARARGIN)

% Choose default command line output for MP
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes MP wait for user response (see UIRESUME)
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
handles.im1=imread('Escudo UD.png');
imagesc(handles.im1);
axis off
axes(handles.axes5);
handles.im2=imread('logo IE.png');
imagesc(handles.im2);
axis off
axes(handles.axes6);
handles.im3=imread('LogoLIFAE.jpg');
imagesc(handles.im3);
axis off
axes(handles.axes7);
axis off
% --- Outputs from this function are returned to the command line.
function varargout = MP_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure


varargout{1} = handles.output;

set(handles.text4,'Visible','off');
set(handles.pushbutton1,'Visible','off');
set(handles.pushbutton2,'Visible','off');

% axes(handles.axes1)
% path='C:\Users\A51-17Y8\Documents\Documentos UD\Tesis\casa.png';
% imag1=imread(path);
% imshow(imag1);
% axis off
% axis image
% axes(handles.axes2)
% path='C:\Users\A51-17Y8\Documents\Documentos UD\Tesis\tienda.png';
% imag2=imread(path);
% imshow(imag2);
% axis off
% axes(handles.axes3)
% path='C:\Users\A51-17Y8\Documents\Documentos UD\Tesis\fabrica.png';
% imag3=imread(path);
% imshow(imag3);
% axis off





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

CurvaCarga;
global control1  control2;
uiwait;
if control1==0 && control2 == 0
    set(handles.pushbutton2,'Visible','off');
    msgbox('Para efectuar el análisis se debe tener una curva de carga, por favor agréguela','Error','error');
    uiwait;
    CurvaCarga;
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
u2=get(handles.radiobutton2,'Value');
u3=get(handles.radiobutton3,'Value');
u4=get(handles.radiobutton4,'Value');
disp(u1);
disp(u2);
disp(u3);
disp(u4);
if control1==1 || control2==1
    
    if u1==1
        Residencial;
    end
else
    msgbox('Para efectuar el análisis se debe tener una curva de carga, por favor agréguela','Error','error');
    uiwait;
    CurvaCarga;
end
if u4==1
    msgbox('Antes de efectuar el análisis debe seleccionar un tipo de usuario','Error','error');
end


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2
set(handles.text4,'Visible','on');
set(handles.pushbutton1,'Visible','on');
set(handles.pushbutton2,'Visible','off');


% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton3
set(handles.text4,'Visible','on');
set(handles.pushbutton1,'Visible','on');
set(handles.pushbutton2,'Visible','off');

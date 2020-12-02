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



function varargout = Idioma(varargin)



% IDIOMA MATLAB code for Idioma.fig
%      IDIOMA, by itself, creates a new IDIOMA or raises the existing
%      singleton*.
%
%      H = IDIOMA returns the handle to a new IDIOMA or the handle to
%      the existing singleton*.
%
%      IDIOMA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in IDIOMA.M with the given input arguments.
%
%      IDIOMA('Property','Value',...) creates a new IDIOMA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Idioma_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Idioma_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Idioma

% Last Modified by GUIDE v2.5 18-Sep-2020 09:42:37

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Idioma_OpeningFcn, ...
                   'gui_OutputFcn',  @Idioma_OutputFcn, ...
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


% --- Executes just before Idioma is made visible.
function Idioma_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Idioma (see VARARGIN)

% Choose default command line output for Idioma
handles.output = hObject;


axes(handles.axes1);
handles.im1=imread('DimBat_resources/Escudo UD.png');
imshow(handles.im1);
axis off
axes(handles.axes2);
handles.im2=imread('DimBat_resources/logo IE.png');
imagesc(handles.im2);
axis off
axes(handles.axes3);
handles.im3=imread('DimBat_resources/LogoLIFAE.jpg');
imagesc(handles.im3);
axis off
axes(handles.axes4);
handles.im4=imread('DimBat_resources/LogoFISINFOR.jpg');
imagesc(handles.im4);
axis off

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Idioma wait for user response (see UIRESUME)
% uiwait(handles.figure1);






% --- Outputs from this function are returned to the command line.
function varargout = Idioma_OutputFcn(hObject, eventdata, handles) 
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
close;
MP;


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2
close;
MP_eng;

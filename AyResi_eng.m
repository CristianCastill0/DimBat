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


function varargout = AyResi_eng(varargin)
% AYRESI_ENG MATLAB code for AyResi_eng.fig
%      AYRESI_ENG, by itself, creates a new AYRESI_ENG or raises the existing
%      singleton*.
%
%      H = AYRESI_ENG returns the handle to a new AYRESI_ENG or the handle to
%      the existing singleton*.
%
%      AYRESI_ENG('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in AYRESI_ENG.M with the given input arguments.
%
%      AYRESI_ENG('Property','Value',...) creates a new AYRESI_ENG or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before AyResi_eng_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to AyResi_eng_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help AyResi_eng

% Last Modified by GUIDE v2.5 18-Sep-2020 10:41:58

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @AyResi_eng_OpeningFcn, ...
    'gui_OutputFcn',  @AyResi_eng_OutputFcn, ...
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


% --- Executes just before AyResi_eng is made visible.
function AyResi_eng_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to AyResi_eng (see VARARGIN)

% Choose default command line output for AyResi_eng
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes AyResi_eng wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = AyResi_eng_OutputFcn(hObject, eventdata, handles)
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
set(handles.text3,'String',{'The depth of discharge of a battery is the percentage of the total battery capacity that is used during a charge cycle or a discharge cycle. We can distinguish two possibilities:',' Surface discharges: These are discharges of approximately 20% of the nominal capacity.',' Deep discharges: These are discharges of 60-80% of the nominal capacity.'});
set(handles.text4,'Visible','on');
set(handles.text4,'String','Depth of discharge');
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
set(handles.text3,'String',{'Batteries connected in parallel: With this type of connection we manage to increase the capacity and maintain the same voltage value. The total capacity of the battery system will then be equal to the sum of all the capacities of each battery.','Batteries connected in series: With this type of connection we manage to increase the final voltage of the accumulation system, which would be the sum of the voltages of the batteries connected in series, and we maintain the capacity.'});
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
    set(handles.text3,'String',{'It is the percentage of the total battery capacity that is used during a charge or discharge cycle. The relationship between the life of the battery in charge/discharge cycles and this is inversely proportional, so the greater the depth of discharge, the fewer the charge/discharge cycles and vice versa. We can distinguish two possibilities:','Surface discharges: These are discharges of approximately 20% of the nominal capacity.','Deep discharges: These are discharges of 60-80% of the nominal capacity.'});
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
    set(handles.text3,'String',{'With this type of connection we manage to increase the final voltage of the accumulation system, which would be the sum of the voltages of the batteries connected in series, and we maintain the capacity.'});
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
    set(handles.text3,'String',{'With this type of connection we manage to increase the capacity and maintain the same voltage value. The total capacity of the battery system will then be equal to the sum of all the capacities of each battery.'});
    set(handles.text3,'Visible','on');
    
    axes(handles.axes1)
    path='DimBat_resources/paralelo.png';
    imag1=imread(path);
    imshow(imag1);
    %axis off;
end

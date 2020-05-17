function varargout = GUI_Spectrum(varargin)
% GUI_SPECTRUM MATLAB code for GUI_Spectrum.fig
%      GUI_SPECTRUM, by itself, creates a new GUI_SPECTRUM or raises the existing
%      singleton*.
%
%      H = GUI_SPECTRUM returns the handle to a new GUI_SPECTRUM or the handle to
%      the existing singleton*.
%
%      GUI_SPECTRUM('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_SPECTRUM.M with the given input arguments.
%ss
%      GUI_SPECTRUM('Property','Value',...) creates a new GUI_SPECTRUM or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_Spectrum_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_Spectrum_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI_Spectrum

% Last Modified by GUIDE v2.5 16-May-2011 12:01:33

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_Spectrum_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_Spectrum_OutputFcn, ...
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


% --- Executes just before GUI_Spectrum is made visible.
function GUI_Spectrum_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI_Spectrum (see VARARGIN)

% Choose default command line output for GUI_Spectrum
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI_Spectrum wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI_Spectrum_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


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


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1
value=get(handles.popupmenu1,'value')
if value==1                                         %for germany confirmed
cases=(xlsread('data.xlsx','E1:E122'));
cases1=(xlsread('data.xlsx','F1:F122'));
n=0;
n1=0;
Cases=reshape(cases,1,[]);
Cases1=reshape(cases1,1,[]);
for i=1:121
    n=n+Cases(i);
end

for j=1:121
    n1=n1+Cases1(j);
end

plot(handles.axes1,cases)
plot(handles.axes2,0)
str=num2str(n)
str1=num2str(n1)
set(handles.edit2,'string',str1)
set(handles.edit1,'string',str)
set(handles.radiobutton2,'value',0)
set(handles.radiobutton3,'value',0)

elseif value==2                              %for china  confirmed
    
cases=(xlsread('data.xlsx','E124:E244'));
cases1=(xlsread('data.xlsx','F124:F244'));
n=0;
n1=0;
p=244-124;
Cases=reshape(cases,1,[]);
Cases1=reshape(cases1,1,[]);
for i=1:p
    n=n+Cases(i);
end

for j=1:p
    n1=n1+Cases1(j);
end
plot(handles.axes1,cases)
plot(handles.axes2,0)
str=num2str(n)
str1=num2str(n1)
set(handles.edit2,'string',str1)
set(handles.edit1,'string',str)
set(handles.radiobutton2,'value',0)
set(handles.radiobutton3,'value',0)

elseif value==3                              %for india  confirmed
    
cases=(xlsread('data.xlsx','E246:E365'));
cases1=(xlsread('data.xlsx','F246:F365'));
n=0;
n1=0;
p=365-246;
Cases=reshape(cases,1,[]);
Cases1=reshape(cases1,1,[]);
for i=1:p
    n=n+Cases(i);
end

for j=1:p
    n1=n1+Cases1(j);
end
plot(handles.axes1,cases)
plot(handles.axes2,0)
str=num2str(n)
str1=num2str(n1)
set(handles.edit2,'string',str1)
set(handles.edit1,'string',str)
set(handles.radiobutton2,'value',0)
set(handles.radiobutton3,'value',0)
elseif value==4                              %for itally  confirmed
    
cases=(xlsread('data.xlsx','E367:E487'));
cases1=(xlsread('data.xlsx','F367:F487'));
n=0;
n1=0;
p=487-367;
Cases=reshape(cases,1,[]);
Cases1=reshape(cases1,1,[]);
for i=1:p
    n=n+Cases(i);
end

for j=1:p
    n1=n1+Cases1(j);
end
plot(handles.axes1,cases)
plot(handles.axes2,0)
str=num2str(n)
str1=num2str(n1)
set(handles.edit2,'string',str1)
set(handles.edit1,'string',str)
set(handles.radiobutton2,'value',0)
set(handles.radiobutton3,'value',0)
elseif value==5                              %for usa  confirmed
    
cases=(xlsread('data.xlsx','E489:E609'));
cases1=(xlsread('data.xlsx','F489:F609'));
n=0;
n1=0;
p=609-489;
Cases=reshape(cases,1,[]);
Cases1=reshape(cases1,1,[]);
for i=1:p
    n=n+Cases(i);
end

for j=1:p
    n1=n1+Cases1(j);
end
plot(handles.axes1,cases)
plot(handles.axes2,0)
str=num2str(n)
str1=num2str(n1)
set(handles.edit2,'string',str1)
set(handles.edit1,'string',str)
set(handles.radiobutton2,'value',0)
set(handles.radiobutton3,'value',0)
end
% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2
value=get(handles.popupmenu1,'value')
if value==1                                 %for germany deacesed
cases=(xlsread('data.xlsx','E1:E122'));
cases1=(xlsread('data.xlsx','F1:F122'));
n=0;
n1=0;
Cases=reshape(cases,1,[]);
Cases1=reshape(cases1,1,[]);
for i=1:121
    n=n+Cases(i);
end

for j=1:121
    n1=n1+Cases1(j);
end
plot(handles.axes1,cases1)
plot(handles.axes2,0)
str=num2str(n)
str1=num2str(n1)
set(handles.edit2,'string',str1)
set(handles.edit1,'string',str)
set(handles.radiobutton1,'value',0)
set(handles.radiobutton3,'value',0)

elseif value==2                              %for china  deceased
    
cases=(xlsread('data.xlsx','E124:E244'));
cases1=(xlsread('data.xlsx','F124:F244'));
n=0;
n1=0;
p=244-124;
Cases=reshape(cases,1,[]);
Cases1=reshape(cases1,1,[]);
for i=1:p
    n=n+Cases(i);
end

for j=1:p
    n1=n1+Cases1(j);
end
plot(handles.axes1,cases1)
plot(handles.axes2,0)
str=num2str(n)
str1=num2str(n1)
set(handles.edit2,'string',str1)
set(handles.edit1,'string',str)
set(handles.radiobutton1,'value',0)
set(handles.radiobutton3,'value',0)
elseif value==3                              %for india  deceased
    
cases=(xlsread('data.xlsx','E246:E365'));
cases1=(xlsread('data.xlsx','F246:F365'));
n=0;
n1=0;
p=365-246;
Cases=reshape(cases,1,[]);
Cases1=reshape(cases1,1,[]);
for i=1:p
    n=n+Cases(i);
end

for j=1:p
    n1=n1+Cases1(j);
end
plot(handles.axes1,cases1)
plot(handles.axes2,0)
str=num2str(n)
str1=num2str(n1)
set(handles.edit2,'string',str1)
set(handles.edit1,'string',str)
set(handles.radiobutton1,'value',0)
set(handles.radiobutton3,'value',0)
elseif value==4                              %for itally  deceased
    
cases=(xlsread('data.xlsx','E367:E487'));
cases1=(xlsread('data.xlsx','F367:F487'));
n=0;
n1=0;
p=487-367;
Cases=reshape(cases,1,[]);
Cases1=reshape(cases1,1,[]);
for i=1:p
    n=n+Cases(i);
end

for j=1:p
    n1=n1+Cases1(j);
end
plot(handles.axes1,cases1)
plot(handles.axes2,0)
str=num2str(n)
str1=num2str(n1)
set(handles.edit2,'string',str1)
set(handles.edit1,'string',str)
set(handles.radiobutton1,'value',0)
set(handles.radiobutton3,'value',0)

elseif value==5                              %for usa  deceased
    
cases=(xlsread('data.xlsx','E489:E609'));
cases1=(xlsread('data.xlsx','F489:F609'));
n=0;
n1=0;
p=609-489;
Cases=reshape(cases,1,[]);
Cases1=reshape(cases1,1,[]);
for i=1:p
    n=n+Cases(i);
end

for j=1:p
    n1=n1+Cases1(j);
end
plot(handles.axes1,cases1)
plot(handles.axes2,0)
str=num2str(n)
str1=num2str(n1)
set(handles.edit2,'string',str1)
set(handles.edit1,'string',str)
set(handles.radiobutton1,'value',0)
set(handles.radiobutton3,'value',0)
end

% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton3
value=get(handles.popupmenu1,'value')
if value==1                                       %for germany both
cases=(xlsread('data.xlsx','E1:E122'));
cases1=(xlsread('data.xlsx','F1:F122'));
n=0;
n1=0;
Cases=reshape(cases,1,[]);
Cases1=reshape(cases1,1,[]);
for i=1:121
    n=n+Cases(i);
end

for j=1:121
    n1=n1+Cases1(j);
end
plot(handles.axes2,cases1)
plot(handles.axes1,cases)
str=num2str(n)
str1=num2str(n1)
set(handles.edit2,'string',str1)
set(handles.edit1,'string',str)
set(handles.radiobutton1,'value',0)
set(handles.radiobutton2,'value',0)
elseif value==2                              %for china   both
    
cases=(xlsread('data.xlsx','E124:E244'));
cases1=(xlsread('data.xlsx','F124:F244'));
n=0;
n1=0;
p=244-124;
Cases=reshape(cases,1,[]);
Cases1=reshape(cases1,1,[]);
for i=1:p
    n=n+Cases(i);
end

for j=1:p
    n1=n1+Cases1(j);
end
plot(handles.axes1,cases)
plot(handles.axes2,cases1)
str=num2str(n)
str1=num2str(n1)
set(handles.edit2,'string',str1)
set(handles.edit1,'string',str)
set(handles.radiobutton2,'value',0)
set(handles.radiobutton1,'value',0)
elseif value==3                              %for india both
    
cases=(xlsread('data.xlsx','E246:E365'));
cases1=(xlsread('data.xlsx','F246:F365'));
n=0;
n1=0;
p=365-246;
Cases=reshape(cases,1,[]);
Cases1=reshape(cases1,1,[]);
for i=1:p
    n=n+Cases(i);
end

for j=1:p
    n1=n1+Cases1(j);
end
plot(handles.axes1,cases)
plot(handles.axes2,cases1)
str=num2str(n)
str1=num2str(n1)
set(handles.edit2,'string',str1)
set(handles.edit1,'string',str)
set(handles.radiobutton2,'value',0)
set(handles.radiobutton1,'value',0)
elseif value==4                              %for itally both
    
cases=(xlsread('data.xlsx','E367:E489'));
cases1=(xlsread('data.xlsx','F367:F489'));
n=0;
n1=0;
p=489-367;
Cases=reshape(cases,1,[]);
Cases1=reshape(cases1,1,[]);
for i=1:p
    n=n+Cases(i);
end

for j=1:p
    n1=n1+Cases1(j);
end
plot(handles.axes1,cases)
plot(handles.axes2,cases1)
str=num2str(n)
str1=num2str(n1)
set(handles.edit2,'string',str1)
set(handles.edit1,'string',str)
set(handles.radiobutton2,'value',0)
set(handles.radiobutton1,'value',0)

elseif value==5                              %for usa both
    
cases=(xlsread('data.xlsx','E489:E609'));
cases1=(xlsread('data.xlsx','F489:F609'));
n=0;
n1=0;
p=609-489;
Cases=reshape(cases,1,[]);
Cases1=reshape(cases1,1,[]);
for i=1:p
    n=n+Cases(i);
end

for j=1:p
    n1=n1+Cases1(j);
end
plot(handles.axes1,cases)
plot(handles.axes2,cases1)
str=num2str(n)
str1=num2str(n1)
set(handles.edit2,'string',str1)
set(handles.edit1,'string',str)
set(handles.radiobutton2,'value',0)
set(handles.radiobutton1,'value',0)
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

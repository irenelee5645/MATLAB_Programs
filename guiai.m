function varargout = guiai(varargin)
% GUIAI MATLAB code for guiai.fig
%      GUIAI, by itself, creates a new GUIAI or raises the existing
%      singleton*.
%
%      H = GUIAI returns the handle to a new GUIAI or the handle to
%      the existing singleton*.
%
%      GUIAI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUIAI.M with the given input arguments.
%
%      GUIAI('Property','Value',...) creates a new GUIAI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before guiai_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to guiai_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help guiai

% Last Modified by GUIDE v2.5 19-Apr-2019 14:41:13

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @guiai_OpeningFcn, ...
                   'gui_OutputFcn',  @guiai_OutputFcn, ...
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


% --- Executes just before guiai is made visible.
function guiai_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to guiai (see VARARGIN)

% Choose default command line output for guiai
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

%set default talbe size
set(handles.xytable,'Data',cell(3,2));

% UIWAIT makes guiai wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = guiai_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes when entered data in editable cell(s) in xytable.
function xytable_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to xytable (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function xytable_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xytable (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in RunButton.
function RunButton_Callback(hObject, eventdata, handles)
a=get(handles.xytable,'Data');
try
    px=a(:,1);
    px=cell2mat(px);
    px=str2num(px);
    py=a(:,2);
    py=cell2mat(py);
    py=str2num(py);
    plot(handles.plot1, px,py,'ko')
    xmin= min(px,[],'all')-1;
    xmax=max(px,[],'all')+1;
    ymin=min(py,[],'all')-1;
    ymax=max(py,[],'all')+1;
    axis([xmin xmax ymin ymax]);
    set(handles.ErrorBox,'String','Initial data shown. Pleas wait');
    pause(1);
    set(handles.ErrorBox,'String','.');
    pause(1);
    set(handles.ErrorBox,'String','..');
    pause(1);
    set(handles.ErrorBox,'String','...');
    try
        guiaimap;
        set(handles.ErrorBox,'String','Done');

    catch
        set(handles.ErrorBox,'String','Error; try entering more data');
    end
    
catch
    set(handles.ErrorBox,'String','fill in the table completely');
end




% hObject    handle to RunButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function getDataNum_Callback(hObject, eventdata, handles)
a=get(handles.getDataNum,'String');
a=str2num(a);
if a<3
    set(handles.checkNum,'String','not valid');
else
    set(handles.xytable,'Data',cell(a,2));
end

% hObject    handle to getDataNum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of getDataNum as text
%        str2double(get(hObject,'String')) returns contents of getDataNum as a double


% --- Executes during object creation, after setting all properties.
function getDataNum_CreateFcn(hObject, eventdata, handles)
% hObject    handle to getDataNum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

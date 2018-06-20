function varargout = Sea_Fight_GUI_game_with_PC(varargin)
% Copyright Ivan Tsud
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Sea_Fight_GUI_game_with_PC_OpeningFcn, ...
                   'gui_OutputFcn',  @Sea_Fight_GUI_game_with_PC_OutputFcn, ...
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

function Sea_Fight_GUI_game_with_PC_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;

guidata(hObject, handles);

function varargout = Sea_Fight_GUI_game_with_PC_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

axes(handles.axes1)
set(gca, 'XTick', []); 
set(gca, 'YTick', []);

function Play_Callback(hObject, eventdata, handles)
k = gcf;
set(gcf, 'Resize', 'on');
Sea_Fight_Computer;
close(k);

function Back_Callback(hObject, eventdata, handles)
k = gcf;
Sea_Fight_GUI_choose_how_to_play;
close(k);

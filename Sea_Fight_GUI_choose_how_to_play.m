function varargout = Sea_Fight_GUI_choose_how_to_play(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Sea_Fight_GUI_choose_how_to_play_OpeningFcn, ...
                   'gui_OutputFcn',  @Sea_Fight_GUI_choose_how_to_play_OutputFcn, ...
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

function Sea_Fight_GUI_choose_how_to_play_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);

function varargout = Sea_Fight_GUI_choose_how_to_play_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

function Player_and_Player_Callback(hObject, eventdata, handles)
k=gcf;
Sea_Fight_GUI_game_of_2_players;
close(k);

function Player_and_Computer_Callback(hObject, eventdata, handles)
k=gcf;
Sea_Fight_GUI_game_with_PC;
close(k);

function Back_Callback(hObject, eventdata, handles)
k=gcf;
Sea_Fight_GUI;
close(k);

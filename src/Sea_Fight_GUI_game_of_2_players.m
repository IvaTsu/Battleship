function varargout = Sea_Fight_GUI_game_of_2_players(varargin)
% Copyright Ivan Tsud
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Sea_Fight_GUI_game_of_2_players_OpeningFcn, ...
                   'gui_OutputFcn',  @Sea_Fight_GUI_game_of_2_players_OutputFcn, ...
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

function Sea_Fight_GUI_game_of_2_players_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);

function varargout = Sea_Fight_GUI_game_of_2_players_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

axes(handles.axes1)
set(gca,'XTick',[]); 
set(gca,'YTick',[]);
set(gcf,'Resize','on');

function Play_Callback(hObject, eventdata, handles)
k=gcf;
set(gcf,'Resize','on');
Sea_Fight_Mod;
close(k);

function Back_Callback(hObject, eventdata, handles)
k=gcf;
Sea_Fight_GUI_choose_how_to_play;
close(k);
close(figure(2));
close(figure(3));

function Ships1_Callback(hObject, eventdata, handles)
Dodatok_Sea;

function Ships2_Callback(hObject, eventdata, handles)
Dodatok_Sea_2;


function Close_Ships1_Callback(hObject, eventdata, handles)
close(figure(2));


function Close_Ships_2_Callback(hObject, eventdata, handles)
close(figure(3));

function varargout = Sudoku(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Sudoku_OpeningFcn, ...
                   'gui_OutputFcn',  @Sudoku_OutputFcn, ...
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

% --- Executes just before Sudoku is made visible.
function Sudoku_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);

% --- Outputs from this function are returned to the command line.
function varargout = Sudoku_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

% ---------------------Taking input from user------------------------
% -------------------------------------------------------------------
function edit1_Callback(hObject, eventdata, handles)
n1=str2num(get(handles.edit1,'String'));
setappdata(0,'num_1',n1);

function edit1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit2_Callback(hObject, eventdata, handles)
n2=str2num(get(handles.edit2,'String'));
setappdata(0,'num_2',n2);

function edit2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit3_Callback(hObject, eventdata, handles)
n3=str2num(get(handles.edit3,'String'));
setappdata(0,'num_3',n3);

function edit3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit4_Callback(hObject, eventdata, handles)
n4=str2num(get(handles.edit4,'String'));
setappdata(0,'num_4',n4);

function edit4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit5_Callback(hObject, eventdata, handles)
n5=str2num(get(handles.edit5,'String'));
setappdata(0,'num_5',n5);

function edit5_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit6_Callback(hObject, eventdata, handles)
n6=str2num(get(handles.edit6,'String'));
setappdata(0,'num_6',n6);

function edit6_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit7_Callback(hObject, eventdata, handles)
n7=str2num(get(handles.edit7,'String'));
setappdata(0,'num_7',n7);

function edit7_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit8_Callback(hObject, eventdata, handles)
n8=str2num(get(handles.edit8,'String'));
setappdata(0,'num_8',n8);

function edit8_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit9_Callback(hObject, eventdata, handles)
n9=str2num(get(handles.edit9,'String'));
setappdata(0,'num_9',n9);

function edit9_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit10_Callback(hObject, eventdata, handles)
n10=str2num(get(handles.edit10,'String'));
setappdata(0,'num_10',n10);

function edit10_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit11_Callback(hObject, eventdata, handles)
n11=str2num(get(handles.edit11,'String'));
setappdata(0,'num_11',n11);

function edit11_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit12_Callback(hObject, eventdata, handles)
n12=str2num(get(handles.edit12,'String'));
setappdata(0,'num_12',n12);

function edit12_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit13_Callback(hObject, eventdata, handles)
n13=str2num(get(handles.edit13,'String'));
setappdata(0,'num_13',n13);

function edit13_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit14_Callback(hObject, eventdata, handles)
n14=str2num(get(handles.edit14,'String'));
setappdata(0,'num_14',n14);

function edit14_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit15_Callback(hObject, eventdata, handles)
n15=str2num(get(handles.edit15,'String'));
setappdata(0,'num_15',n15);

function edit15_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit16_Callback(hObject, eventdata, handles)
n16=str2num(get(handles.edit16,'String'));
setappdata(0,'num_16',n16);

function edit16_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit17_Callback(hObject, eventdata, handles)
n17=str2num(get(handles.edit17,'String'));
setappdata(0,'num_17',n17);

function edit17_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit18_Callback(hObject, eventdata, handles)
n18=str2num(get(handles.edit18,'String'));
setappdata(0,'num_18',n18);

function edit18_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit19_Callback(hObject, eventdata, handles)
n19=str2num(get(handles.edit19,'String'));
setappdata(0,'num_19',n19);

function edit19_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit20_Callback(hObject, eventdata, handles)
n20=str2num(get(handles.edit20,'String'));
setappdata(0,'num_20',n20);

function edit20_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit21_Callback(hObject, eventdata, handles)
n21=str2num(get(handles.edit21,'String'));
setappdata(0,'num_21',n21);

function edit21_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit22_Callback(hObject, eventdata, handles)
n22=str2num(get(handles.edit22,'String'));
setappdata(0,'num_22',n22);

function edit22_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit23_Callback(hObject, eventdata, handles)
n23=str2num(get(handles.edit23,'String'));
setappdata(0,'num_23',n23);

function edit23_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit24_Callback(hObject, eventdata, handles)
n24=str2num(get(handles.edit24,'String'));
setappdata(0,'num_24',n24);

function edit24_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit25_Callback(hObject, eventdata, handles)
n25=str2num(get(handles.edit25,'String'));
setappdata(0,'num_25',n25);

function edit25_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit26_Callback(hObject, eventdata, handles)
n26=str2num(get(handles.edit26,'String'));
setappdata(0,'num_26',n26);

function edit26_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit27_Callback(hObject, eventdata, handles)
n27=str2num(get(handles.edit27,'String'));
setappdata(0,'num_27',n27);

function edit27_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit28_Callback(hObject, eventdata, handles)
n28=str2num(get(handles.edit28,'String'));
setappdata(0,'num_28',n28);

function edit28_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit29_Callback(hObject, eventdata, handles)
n29=str2num(get(handles.edit29,'String'));
setappdata(0,'num_29',n29);

function edit29_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit30_Callback(hObject, eventdata, handles)
n30=str2num(get(handles.edit30,'String'));
setappdata(0,'num_30',n30);

function edit30_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit31_Callback(hObject, eventdata, handles)
n31=str2num(get(handles.edit31,'String'));
setappdata(0,'num_31',n31);

function edit31_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit32_Callback(hObject, eventdata, handles)
n32=str2num(get(handles.edit32,'String'));
setappdata(0,'num_32',n32);

function edit32_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit33_Callback(hObject, eventdata, handles)
n33=str2num(get(handles.edit33,'String'));
setappdata(0,'num_33',n33);

function edit33_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit34_Callback(hObject, eventdata, handles)
n34=str2num(get(handles.edit34,'String'));
setappdata(0,'num_34',n34);

function edit34_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit35_Callback(hObject, eventdata, handles)
n35=str2num(get(handles.edit35,'String'));
setappdata(0,'num_35',n35);

function edit35_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit36_Callback(hObject, eventdata, handles)
n36=str2num(get(handles.edit36,'String'));
setappdata(0,'num_36',n36);

function edit36_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit37_Callback(hObject, eventdata, handles)
n37=str2num(get(handles.edit37,'String'));
setappdata(0,'num_37',n37);

function edit37_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit38_Callback(hObject, eventdata, handles)
n38=str2num(get(handles.edit38,'String'));
setappdata(0,'num_38',n38);

function edit38_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit39_Callback(hObject, eventdata, handles)
n39=str2num(get(handles.edit39,'String'));
setappdata(0,'num_39',n39);

function edit39_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit40_Callback(hObject, eventdata, handles)
n40=str2num(get(handles.edit40,'String'));
setappdata(0,'num_40',n40);

function edit40_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit41_Callback(hObject, eventdata, handles)
n41=str2num(get(handles.edit41,'String'));
setappdata(0,'num_41',n41);

function edit41_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit42_Callback(hObject, eventdata, handles)
n42=str2num(get(handles.edit42,'String'));
setappdata(0,'num_42',n42);

function edit42_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit43_Callback(hObject, eventdata, handles)
n43=str2num(get(handles.edit43,'String'));
setappdata(0,'num_43',n43);

function edit43_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit44_Callback(hObject, eventdata, handles)
n44=str2num(get(handles.edit44,'String'));
setappdata(0,'num_44',n44);

function edit44_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit45_Callback(hObject, eventdata, handles)
n45=str2num(get(handles.edit45,'String'));
setappdata(0,'num_45',n45);

function edit45_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit46_Callback(hObject, eventdata, handles)
n46=str2num(get(handles.edit46,'String'));
setappdata(0,'num_46',n46);

function edit46_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit47_Callback(hObject, eventdata, handles)
n47=str2num(get(handles.edit47,'String'));
setappdata(0,'num_47',n47);

function edit47_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit48_Callback(hObject, eventdata, handles)
n48=str2num(get(handles.edit48,'String'));
setappdata(0,'num_48',n48);

function edit48_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit49_Callback(hObject, eventdata, handles)
n49=str2num(get(handles.edit49,'String'));
setappdata(0,'num_49',n49);

function edit49_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit50_Callback(hObject, eventdata, handles)
n50=str2num(get(handles.edit50,'String'));
setappdata(0,'num_50',n50);

function edit50_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit51_Callback(hObject, eventdata, handles)
n51=str2num(get(handles.edit51,'String'));
setappdata(0,'num_51',n51);

function edit51_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit52_Callback(hObject, eventdata, handles)
n52=str2num(get(handles.edit52,'String'));
setappdata(0,'num_52',n52);

function edit52_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit53_Callback(hObject, eventdata, handles)
n53=str2num(get(handles.edit53,'String'));
setappdata(0,'num_53',n53);

function edit53_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit54_Callback(hObject, eventdata, handles)
n54=str2num(get(handles.edit54,'String'));
setappdata(0,'num_54',n54);

function edit54_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit55_Callback(hObject, eventdata, handles)
n55=str2num(get(handles.edit55,'String'));
setappdata(0,'num_55',n55);

function edit55_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit56_Callback(hObject, eventdata, handles)
n56=str2num(get(handles.edit56,'String'));
setappdata(0,'num_56',n56);

function edit56_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit57_Callback(hObject, eventdata, handles)
n57=str2num(get(handles.edit57,'String'));
setappdata(0,'num_57',n57);

function edit57_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit58_Callback(hObject, eventdata, handles)
n58=str2num(get(handles.edit58,'String'));
setappdata(0,'num_58',n58);

function edit58_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit59_Callback(hObject, eventdata, handles)
n59=str2num(get(handles.edit59,'String'));
setappdata(0,'num_59',n59);

function edit59_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit60_Callback(hObject, eventdata, handles)
n60=str2num(get(handles.edit60,'String'));
setappdata(0,'num_60',n60);

function edit60_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit61_Callback(hObject, eventdata, handles)
n61=str2num(get(handles.edit61,'String'));
setappdata(0,'num_61',n61);

function edit61_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit62_Callback(hObject, eventdata, handles)
n62=str2num(get(handles.edit62,'String'));
setappdata(0,'num_62',n62);

function edit62_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit63_Callback(hObject, eventdata, handles)
n63=str2num(get(handles.edit63,'String'));
setappdata(0,'num_63',n63);

function edit63_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit64_Callback(hObject, eventdata, handles)
n64=str2num(get(handles.edit64,'String'));
setappdata(0,'num_64',n64);

function edit64_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit65_Callback(hObject, eventdata, handles)
n65=str2num(get(handles.edit65,'String'));
setappdata(0,'num_65',n65);

function edit65_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit66_Callback(hObject, eventdata, handles)
n66=str2num(get(handles.edit66,'String'));
setappdata(0,'num_66',n66);

function edit66_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit67_Callback(hObject, eventdata, handles)
n67=str2num(get(handles.edit67,'String'));
setappdata(0,'num_67',n67);

function edit67_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit68_Callback(hObject, eventdata, handles)
n68=str2num(get(handles.edit68,'String'));
setappdata(0,'num_68',n68);

function edit68_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit69_Callback(hObject, eventdata, handles)
n69=str2num(get(handles.edit69,'String'));
setappdata(0,'num_69',n69);

function edit69_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit70_Callback(hObject, eventdata, handles)
n70=str2num(get(handles.edit70,'String'));
setappdata(0,'num_70',n70);

function edit70_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit71_Callback(hObject, eventdata, handles)
n71=str2num(get(handles.edit71,'String'));
setappdata(0,'num_71',n71);

function edit71_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit72_Callback(hObject, eventdata, handles)
n72=str2num(get(handles.edit72,'String'));
setappdata(0,'num_72',n72);

function edit72_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit73_Callback(hObject, eventdata, handles)
n73=str2num(get(handles.edit73,'String'));
setappdata(0,'num_73',n73);

function edit73_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit74_Callback(hObject, eventdata, handles)
n74=str2num(get(handles.edit74,'String'));
setappdata(0,'num_74',n74);

function edit74_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit75_Callback(hObject, eventdata, handles)
n75=str2num(get(handles.edit75,'String'));
setappdata(0,'num_75',n75);

function edit75_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit76_Callback(hObject, eventdata, handles)
n76=str2num(get(handles.edit76,'String'));
setappdata(0,'num_76',n76);

function edit76_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit77_Callback(hObject, eventdata, handles)
n77=str2num(get(handles.edit77,'String'));
setappdata(0,'num_77',n77);

function edit77_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit78_Callback(hObject, eventdata, handles)
n78=str2num(get(handles.edit78,'String'));
setappdata(0,'num_78',n78);

function edit78_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit79_Callback(hObject, eventdata, handles)
n79=str2num(get(handles.edit79,'String'));
setappdata(0,'num_79',n79);

function edit79_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit80_Callback(hObject, eventdata, handles)
n80=str2num(get(handles.edit80,'String'));
setappdata(0,'num_80',n80);

function edit80_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit81_Callback(hObject, eventdata, handles)
n81=str2num(get(handles.edit81,'String'));
setappdata(0,'num_81',n81);

function edit81_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
clear unsolvedBoard
n_1=getappdata(0,'num_1');
n_2=getappdata(0,'num_2');
n_3=getappdata(0,'num_3');
n_4=getappdata(0,'num_4');
n_5=getappdata(0,'num_5');
n_6=getappdata(0,'num_6');
n_7=getappdata(0,'num_7');
n_8=getappdata(0,'num_8');
n_9=getappdata(0,'num_9');
n_10=getappdata(0,'num_10');
n_11=getappdata(0,'num_11');
n_12=getappdata(0,'num_12');
n_13=getappdata(0,'num_13');
n_14=getappdata(0,'num_14');
n_15=getappdata(0,'num_15');
n_16=getappdata(0,'num_16');
n_17=getappdata(0,'num_17');
n_18=getappdata(0,'num_18');
n_19=getappdata(0,'num_19');
n_20=getappdata(0,'num_20');
n_21=getappdata(0,'num_21');
n_22=getappdata(0,'num_22');
n_23=getappdata(0,'num_23');
n_24=getappdata(0,'num_24');
n_25=getappdata(0,'num_25');
n_26=getappdata(0,'num_26');
n_27=getappdata(0,'num_27');
n_28=getappdata(0,'num_28');
n_29=getappdata(0,'num_29');
n_30=getappdata(0,'num_30');
n_31=getappdata(0,'num_31');
n_32=getappdata(0,'num_32');
n_33=getappdata(0,'num_33');
n_34=getappdata(0,'num_34');
n_35=getappdata(0,'num_35');
n_36=getappdata(0,'num_36');
n_37=getappdata(0,'num_37');
n_38=getappdata(0,'num_38');
n_39=getappdata(0,'num_39');
n_40=getappdata(0,'num_40');
n_41=getappdata(0,'num_41');
n_42=getappdata(0,'num_42');
n_43=getappdata(0,'num_43');
n_44=getappdata(0,'num_44');
n_45=getappdata(0,'num_45');
n_46=getappdata(0,'num_46');
n_47=getappdata(0,'num_47');
n_48=getappdata(0,'num_48');
n_49=getappdata(0,'num_49');
n_50=getappdata(0,'num_50');
n_51=getappdata(0,'num_51');
n_52=getappdata(0,'num_52');
n_53=getappdata(0,'num_53');
n_54=getappdata(0,'num_54');
n_55=getappdata(0,'num_55');
n_56=getappdata(0,'num_56');
n_57=getappdata(0,'num_57');
n_58=getappdata(0,'num_58');
n_59=getappdata(0,'num_59');
n_60=getappdata(0,'num_60');
n_61=getappdata(0,'num_61');
n_62=getappdata(0,'num_62');
n_63=getappdata(0,'num_63');
n_64=getappdata(0,'num_64');
n_65=getappdata(0,'num_65');
n_66=getappdata(0,'num_66');
n_67=getappdata(0,'num_67');
n_68=getappdata(0,'num_68');
n_69=getappdata(0,'num_69');
n_70=getappdata(0,'num_70');
n_71=getappdata(0,'num_71');
n_72=getappdata(0,'num_72');
n_73=getappdata(0,'num_73');
n_74=getappdata(0,'num_74');
n_75=getappdata(0,'num_75');
n_76=getappdata(0,'num_76');
n_77=getappdata(0,'num_77');
n_78=getappdata(0,'num_78');
n_79=getappdata(0,'num_79');
n_80=getappdata(0,'num_80');
n_81=getappdata(0,'num_81');
% -------------Forming a 9x9 matrix from the user input-------------------
% ------------------------------------------------------------------------
unsolvedBoard = [n_1 n_2 n_3 n_4 n_5 n_6 n_7 n_8 n_9
    n_10 n_11 n_12 n_13 n_14 n_15 n_16 n_17 n_18
    n_19 n_20 n_21 n_22 n_23 n_24 n_25 n_26 n_27
    n_28 n_29 n_30 n_31 n_32 n_33 n_34 n_35 n_36
    n_37 n_38 n_39 n_40 n_41 n_42 n_43 n_44 n_45
    n_46 n_47 n_48 n_49 n_50 n_51 n_52 n_53 n_54
    n_55 n_56 n_57 n_58 n_59 n_60 n_61 n_62 n_63
    n_64 n_65 n_66 n_67 n_68 n_69 n_70 n_71 n_72
    n_73 n_74 n_75 n_76 n_77 n_78 n_79 n_80 n_81];

for i=1:9
    for j=1:9
        if unsolvedBoard(i,j)== 0
            unsolvedBoard(i,j)=NaN;
        end
    end
end

solved = SolveSudoku(unsolvedBoard);
disp(solved)

%-----------------------Printing the Result-----------------------------
% ----------------------------------------------------------------------
set(handles.text1,'String',num2str(solved(1,1)));
set(handles.text2,'String',num2str(solved(1,2)));
set(handles.text3,'String',num2str(solved(1,3)));
set(handles.text4,'String',num2str(solved(1,4)));
set(handles.text5,'String',num2str(solved(1,5)));
set(handles.text6,'String',num2str(solved(1,6)));
set(handles.text7,'String',num2str(solved(1,7)));
set(handles.text8,'String',num2str(solved(1,8)));
set(handles.text9,'String',num2str(solved(1,9)));

set(handles.text10,'String',num2str(solved(2,1)));
set(handles.text11,'String',num2str(solved(2,2)));
set(handles.text12,'String',num2str(solved(2,3)));
set(handles.text13,'String',num2str(solved(2,4)));
set(handles.text14,'String',num2str(solved(2,5)));
set(handles.text15,'String',num2str(solved(2,6)));
set(handles.text16,'String',num2str(solved(2,7)));
set(handles.text17,'String',num2str(solved(2,8)));
set(handles.text18,'String',num2str(solved(2,9)));

set(handles.text19,'String',num2str(solved(3,1)));
set(handles.text20,'String',num2str(solved(3,2)));
set(handles.text21,'String',num2str(solved(3,3)));
set(handles.text22,'String',num2str(solved(3,4)));
set(handles.text23,'String',num2str(solved(3,5)));
set(handles.text24,'String',num2str(solved(3,6)));
set(handles.text25,'String',num2str(solved(3,7)));
set(handles.text26,'String',num2str(solved(3,8)));
set(handles.text27,'String',num2str(solved(3,9)));

set(handles.text28,'String',num2str(solved(4,1)));
set(handles.text29,'String',num2str(solved(4,2)));
set(handles.text30,'String',num2str(solved(4,3)));
set(handles.text31,'String',num2str(solved(4,4)));
set(handles.text32,'String',num2str(solved(4,5)));
set(handles.text33,'String',num2str(solved(4,6)));
set(handles.text34,'String',num2str(solved(4,7)));
set(handles.text35,'String',num2str(solved(4,8)));
set(handles.text36,'String',num2str(solved(4,9)));

set(handles.text37,'String',num2str(solved(5,1)));
set(handles.text38,'String',num2str(solved(5,2)));
set(handles.text39,'String',num2str(solved(5,3)));
set(handles.text40,'String',num2str(solved(5,4)));
set(handles.text41,'String',num2str(solved(5,5)));
set(handles.text42,'String',num2str(solved(5,6)));
set(handles.text43,'String',num2str(solved(5,7)));
set(handles.text44,'String',num2str(solved(5,8)));
set(handles.text45,'String',num2str(solved(5,9)));

set(handles.text46,'String',num2str(solved(6,1)));
set(handles.text47,'String',num2str(solved(6,2)));
set(handles.text48,'String',num2str(solved(6,3)));
set(handles.text49,'String',num2str(solved(6,4)));
set(handles.text50,'String',num2str(solved(6,5)));
set(handles.text51,'String',num2str(solved(6,6)));
set(handles.text52,'String',num2str(solved(6,7)));
set(handles.text53,'String',num2str(solved(6,8)));
set(handles.text54,'String',num2str(solved(6,9)));

set(handles.text55,'String',num2str(solved(7,1)));
set(handles.text56,'String',num2str(solved(7,2)));
set(handles.text57,'String',num2str(solved(7,3)));
set(handles.text58,'String',num2str(solved(7,4)));
set(handles.text59,'String',num2str(solved(7,5)));
set(handles.text60,'String',num2str(solved(7,6)));
set(handles.text61,'String',num2str(solved(7,7)));
set(handles.text62,'String',num2str(solved(7,8)));
set(handles.text63,'String',num2str(solved(7,9)));

set(handles.text64,'String',num2str(solved(8,1)));
set(handles.text65,'String',num2str(solved(8,2)));
set(handles.text66,'String',num2str(solved(8,3)));
set(handles.text67,'String',num2str(solved(8,4)));
set(handles.text68,'String',num2str(solved(8,5)));
set(handles.text69,'String',num2str(solved(8,6)));
set(handles.text70,'String',num2str(solved(8,7)));
set(handles.text71,'String',num2str(solved(8,8)));
set(handles.text72,'String',num2str(solved(8,9)));

set(handles.text73,'String',num2str(solved(9,1)));
set(handles.text74,'String',num2str(solved(9,2)));
set(handles.text75,'String',num2str(solved(9,3)));
set(handles.text76,'String',num2str(solved(9,4)));
set(handles.text77,'String',num2str(solved(9,5)));
set(handles.text78,'String',num2str(solved(9,6)));
set(handles.text79,'String',num2str(solved(9,7)));
set(handles.text80,'String',num2str(solved(9,8)));
set(handles.text81,'String',num2str(solved(9,9)));


% ------------------------------------------------------------------------
% --------------------Setting All values to Null--------------------------
% --- Executes on button press in clear.
function clear_Callback(hObject, eventdata, handles)
set(handles.text1,'String','');
set(handles.text2,'String','');
set(handles.text3,'String','');
set(handles.text4,'String','');
set(handles.text5,'String','');
set(handles.text6,'String','');
set(handles.text7,'String','');
set(handles.text8,'String','');
set(handles.text9,'String','');

set(handles.text10,'String','');
set(handles.text11,'String','');
set(handles.text12,'String','');
set(handles.text13,'String','');
set(handles.text14,'String','');
set(handles.text15,'String','');
set(handles.text16,'String','');
set(handles.text17,'String','');
set(handles.text18,'String','');

set(handles.text19,'String','');
set(handles.text20,'String','');
set(handles.text21,'String','');
set(handles.text22,'String','');
set(handles.text23,'String','');
set(handles.text24,'String','');
set(handles.text25,'String','');
set(handles.text26,'String','');
set(handles.text27,'String','');

set(handles.text28,'String','');
set(handles.text29,'String','');
set(handles.text30,'String','');
set(handles.text31,'String','');
set(handles.text32,'String','');
set(handles.text33,'String','');
set(handles.text34,'String','');
set(handles.text35,'String','');
set(handles.text36,'String','');

set(handles.text37,'String','');
set(handles.text38,'String','');
set(handles.text39,'String','');
set(handles.text40,'String','');
set(handles.text41,'String','');
set(handles.text42,'String','');
set(handles.text43,'String','');
set(handles.text44,'String','');
set(handles.text45,'String','');

set(handles.text46,'String','');
set(handles.text47,'String','');
set(handles.text48,'String','');
set(handles.text49,'String','');
set(handles.text50,'String','');
set(handles.text51,'String','');
set(handles.text52,'String','');
set(handles.text53,'String','');
set(handles.text54,'String','');

set(handles.text55,'String','');
set(handles.text56,'String','');
set(handles.text57,'String','');
set(handles.text58,'String','');
set(handles.text59,'String','');
set(handles.text60,'String','');
set(handles.text61,'String','');
set(handles.text62,'String','');
set(handles.text63,'String','');

set(handles.text64,'String','');
set(handles.text65,'String','');
set(handles.text66,'String','');
set(handles.text67,'String','');
set(handles.text68,'String','');
set(handles.text69,'String','');
set(handles.text70,'String','');
set(handles.text71,'String','');
set(handles.text72,'String','');

set(handles.text73,'String','');
set(handles.text74,'String','');
set(handles.text75,'String','');
set(handles.text76,'String','');
set(handles.text77,'String','');
set(handles.text78,'String','');
set(handles.text79,'String','');
set(handles.text80,'String','');
set(handles.text81,'String','');

set(handles.edit1,'String','');
set(handles.edit2,'String','');
set(handles.edit3,'String','');
set(handles.edit4,'String','');
set(handles.edit5,'String','');
set(handles.edit6,'String','');
set(handles.edit7,'String','');
set(handles.edit8,'String','');
set(handles.edit9,'String','');

set(handles.edit10,'String','');
set(handles.edit11,'String','');
set(handles.edit12,'String','');
set(handles.edit13,'String','');
set(handles.edit14,'String','');
set(handles.edit15,'String','');
set(handles.edit16,'String','');
set(handles.edit17,'String','');
set(handles.edit18,'String','');

set(handles.edit19,'String','');
set(handles.edit20,'String','');
set(handles.edit21,'String','');
set(handles.edit22,'String','');
set(handles.edit23,'String','');
set(handles.edit24,'String','');
set(handles.edit25,'String','');
set(handles.edit26,'String','');
set(handles.edit27,'String','');

set(handles.edit28,'String','');
set(handles.edit29,'String','');
set(handles.edit30,'String','');
set(handles.edit31,'String','');
set(handles.edit32,'String','');
set(handles.edit33,'String','');
set(handles.edit34,'String','');
set(handles.edit35,'String','');
set(handles.edit36,'String','');

set(handles.edit37,'String','');
set(handles.edit38,'String','');
set(handles.edit39,'String','');
set(handles.edit40,'String','');
set(handles.edit41,'String','');
set(handles.edit42,'String','');
set(handles.edit43,'String','');
set(handles.edit44,'String','');
set(handles.edit45,'String','');

set(handles.edit46,'String','');
set(handles.edit47,'String','');
set(handles.edit48,'String','');
set(handles.edit49,'String','');
set(handles.edit50,'String','');
set(handles.edit51,'String','');
set(handles.edit52,'String','');
set(handles.edit53,'String','');
set(handles.edit54,'String','');

set(handles.edit55,'String','');
set(handles.edit56,'String','');
set(handles.edit57,'String','');
set(handles.edit58,'String','');
set(handles.edit59,'String','');
set(handles.edit60,'String','');
set(handles.edit61,'String','');
set(handles.edit62,'String','');
set(handles.edit63,'String','');

set(handles.edit64,'String','');
set(handles.edit65,'String','');
set(handles.edit66,'String','');
set(handles.edit67,'String','');
set(handles.edit68,'String','');
set(handles.edit69,'String','');
set(handles.edit70,'String','');
set(handles.edit71,'String','');
set(handles.edit72,'String','');

set(handles.edit73,'String','');
set(handles.edit74,'String','');
set(handles.edit75,'String','');
set(handles.edit76,'String','');
set(handles.edit77,'String','');
set(handles.edit78,'String','');
set(handles.edit79,'String','');
set(handles.edit80,'String','');
set(handles.edit81,'String','');

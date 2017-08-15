% craeted on 09.08.2017

function [tunSimilarityCorrMo, tunSimilarityCorrVis]= Script_analyzeReactionTime(unitRecord, resultPath, options)
% Script outputs tuning plots and other output formerly produced by
% call_tuning.
% Parameters:
% unitRecord= UnitRecord object with all selected units
% resultPath= path for result graphs and reports
% options= options struct that configure the script
%
% Returns:
% -

% define default unitRecord if unitRecord is not set
if isempty(unitRecord)
    % get header info  
    warning('No unitRecord selected.');
    return;
end

% define default resultPath if no path is given
if isempty(resultPath)
    resultPath=['D:\_DPZ\Results\NDA\'];
end

% get array with relevant information from unitRecord
inputData= getSelectedUnits(unitRecord,{'DataFile','Area','Unit'},[]);

% find unique rows to create list of unique datafiles (double entries for PRR and PMd)
row=[];

for i=1:size(inputData,1)
    row{i}=strcat(inputData{i,1:2});
end
clear i

[b1 m1 n1] = unique(row);
%inputData = inputData(m1,:);
inputDataFiles=inputData(m1,1:2);
clear row

% fetch path to recording files
tmpDataPath = getDataPath(unitRecord);
dataPath = tmpDataPath(m1);
clear tmpDataPath m1 b1 n1

% set default options
eval('defaultOptions_reactionTime')

% set options
options = setScriptOptions(defaultOptions,options)                         % without ';' so that we can see the used options

options.kw.save_path  = [resultPath '\Behavior\'];       % specify path for saving pics (original data location if empty)

global pathdata pathfigs
R = [];

if options.kw.filter.Success ~= 1, disp 'caution: irregular SUCCESS setting!'; end

%% get the original plx file names
selPLXname = [];
f = 1;
while f<=size(inputData,1)
    idx = strfind(inputData{f,1},'_chan');
    selPLXname = [selPLXname; {inputData{f,1}(1:idx-1)}];
    f=f+1;
end
clear idx f

selPLXname = unique(selPLXname, 'rows')

%% we will use the sorted behavioral data for this analysis 
if 0
% get all the plx file names in the data path
allPlxFileInfo = dir([dataPath{1} '*.plx']);
allPlxFileInfo = struct2cell(allPlxFileInfo)';

f = 0;
allSesTransformRT = [];
allSesPctCrrct = [];
ses={};
while f<length(selPLXname)
    f=f+1;
    % find the index for this selected file
    idx = [];
    for i = 1:length(allPlxFileInfo)
        if strcmp( selPLXname{f} , allPlxFileInfo{i}(1:length(selPLXname{f})) )
            idx = i;
            break
        end
    end
    % load the data. varaible names: data, eb, ep, et, evtb, evtt, fsample, hd, offset_start, offset_stopp, startstopbin  
    load([dataPath{1} allPlxFileInfo{idx} 'Eye_sort.mat'])
    clear i idx
    
    % finde the correct trials from the header info
    succTrl = find(hd.Success==1);
    % collect reaction times in successful trials from this session
    ses{f}.SesSuccRT = hd.ReaTime(succTrl);
    ses{f}.TransformRT = zscore( ses{f}.SesSuccRT );
    allSesTransformRT = [allSesTransformRT; ses{f}.TransformRT];
    % collect percentage of correct trials relative to the number of started trials
    ses{f}.PctCorrect = sum(hd.Success == 1)/sum(hd.AbortSt>1);
    allSesPctCrrct = [allSesPctCrrct; ses{f}.PctCorrect];
end
clear f


end

%%
shortReaTime = [];
longReaTime = [];
conReaTime = [];
incongReaTime = [];
successRate = struct('Type',[],'PerSession',[],'OverAll',[],'StateAbortCount',[]);

allSesNumCorr = [];
allSesNumFalse = [];
successRate.Type = options.kw.SuccessRateType;
% create struct for Tuning
for r = 1:length(selPLXname)
    r
    inputStruct.DataFile = selPLXname{r};
    inputStruct.Area = '';

    % show progress
    disp(['Get data from: ' inputStruct.DataFile]);
    
    % for Kaspar, filter ROE trials; for Humphrey, filter ROE and ORF trials
    switch inputStruct.DataFile(1:4)
        case 'Kasp'
            options.kw.filter.TrialType = {'ROE'}; 
        case 'Hump'
            options.kw.filter.TrialType = [{'ROE'},{'ORF'}]; 
    end
    [aux,cond] = Tuning_Perf(dataPath{1}, inputStruct, options.kw);   %we assume all data files have the same path %


   % this is to analize perf.
    temp = zeros(11,3);
    for dr = 1:length(aux.perfstr.ts)
        temp = temp + aux.perfstr.ts{1,dr}.abortcnt;
    end
    abortCnt{r} = temp;  % size(abortCnt)=numStates x 3; abortCnt(state,:) -> [Complete, Time out, Fix. break]
    clear temp dr
    
    % count abort trials for each state
    if 1
        stateAbort = {};
        for stt = 1:size(abortCnt{r}, 1) % for each state
            aa = statename_roe01(aux.perfstr.ts{1}.allstates(stt));
            stateAbort = [ stateAbort; [aa , {num2str(abortCnt{r}(stt,:))}] ];
        end
        clear aa stt
        seccessRate.StateAbortCount = stateAbort;
        clear stateAbort
    end
    
    % calculate success rate
    switch options.kw.SuccessRateType
        case 'numCompletedTrials/(numTimeOutErrors+numCompletedTrials/)'
            successRate.PerSession(r)= 100*abortCnt{r}(end,1)/(sum(sum(abortCnt{r}))-sum(abortCnt{r}(:,3)));
            allSesNumCorr(r) = abortCnt{r}(end,1);
            allSesNumFalse(r) = (sum(sum(abortCnt{r}))-sum(abortCnt{r}(:,3)));
        
        case 'numCompletedTrials/(numAllErrorsAfterFAV+numCompletedTrials/)'
            successRate.PerSession(r)= 100*abortCnt{r}(end,1)/sum(sum(abortCnt{r}(2:end,:)));
            allSesNumCorr(r) = abortCnt{r}(end,1);
            allSesNumFalse(r) = sum(sum(abortCnt{r}(2:end,:)));
    end
      
   % this is to analize reaction time; old version, probably will not work
   if 0
       % cong vs incong
       valTrials = find((aux.varpar.Success == 1) .* (aux.varpar.ReaTime >= 50));      
       conValTrials = valTrials((aux.varpar.HRefPosX(valTrials)<0 & aux.varpar.HDecPosX(valTrials)<0) | (aux.varpar.HRefPosX(valTrials)>0 & aux.varpar.HDecPosX(valTrials)>0));
       incongValTrials = valTrials((aux.varpar.HRefPosX(valTrials)<0 & aux.varpar.HDecPosX(valTrials)>0) | (aux.varpar.HRefPosX(valTrials)>0 & aux.varpar.HDecPosX(valTrials)<0));
       
       conReaTime = [conReaTime; mean(aux.varpar.ReaTime(conValTrials))];
       incongReaTime = [incongReaTime; mean(aux.varpar.ReaTime(incongValTrials))];
       
       clear valTrials conValTrials incongValTrials
       
       % short vs long obj
       if strcmp(R(r).Task,'rrb')
       valTrials = find((aux.varpar.Success == 1) .* (aux.varpar.ReaTime >= 50));      
       longValTrials = valTrials(aux.varpar.PttrnIdx(valTrials)==0);
       shortValTrials = valTrials(aux.varpar.PttrnIdx(valTrials)==1);

       longReaTime = [longReaTime; mean(aux.varpar.ReaTime(longValTrials))];
       shortReaTime = [shortReaTime; mean(aux.varpar.ReaTime(shortValTrials))];
       
       end
   end
   
   
end

successRate.OverAll = 100*sum(allSesNumCorr)/sum(allSesNumFalse);
    
return


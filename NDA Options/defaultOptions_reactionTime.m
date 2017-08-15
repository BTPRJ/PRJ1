

% -------------------------------------------------------------------------
% created on 09.08.2017
% -------------------------------------------------------------------------

defaultOptions.kw.conv_plex   = 0;               % convert plexon file to separate SPK and ANA *.mat files
defaultOptions.kw.sort_data   = 0;               % load original *.mat files from disc and save it as sorted
defaultOptions.kw.plot_pics   = 0;               % plot tuning/psth
defaultOptions.kw.save_pics   = '';              % specify file type for saving pics ('' | 'eps' | 'jpg' | 'tif')
defaultOptions.kw.MotionTrack = 0;
defaultOptions.kw.moSource    = 'da';            % 'vzp' for psychophysics setup | 'da' for physio setup ??

defaultOptions.kw.eye         = 0;               % eye & hand data
defaultOptions.kw.spk         = 0;               % spike data
defaultOptions.kw.spd    = 0;                   % spike density data
defaultOptions.kw.lfp    = 0;                   % lfp data
defaultOptions.kw.mua    = 0;                   % multi unit activity data
defaultOptions.kw.gtc    = 0;                   % gtc data
defaultOptions.kw.asp    = 0;                   % analog data spectra
defaultOptions.kw.MotionTrack = 0;

%% 
defaultOptions.kw.psth        = 0;               % 1: calculate and plot PSTHs
defaultOptions.kw.spkdt       = 0;               % 1: calculate and plot SPK directional tuning
defaultOptions.kw.spkct       = 0;               % 1: calculate and plot SPK tuning across conditions
defaultOptions.kw.spktt       = 0;               % 1: calculate trial-by-trial spike rates (mean over window_dt)
defaultOptions.kw.spkrw       = 0;               % 1: extract trial-by-trial spike rates (within window_dt)
defaultOptions.kw.stth        = 0;               % 1: calculate and plot SPK direction selective PSTHs
defaultOptions.kw.spkd        = 0;               % 1: spike density

defaultOptions.kw.spdave      = 0;               % 1: calculate and plot SPD average
defaultOptions.kw.spddt       = 0;               % 1: calculate and plot SPD directional tuning
defaultOptions.kw.spdct       = 0;               % 1: calculate and plot SPD tuning across conditions
defaultOptions.kw.spdtt       = 0;               % 1: calculate trial-by-trial SPD amplitudes (mean over window_dt)
defaultOptions.kw.spdrw       = 0;               % 1: extract trial-by-trial SPD amplitudes (within window_dt)
defaultOptions.kw.dtth        = 0;               % 1: calculate and plot SPD direction selective averages

defaultOptions.kw.erps        = 0;               % 1: calculate and plot LFP ERPs
defaultOptions.kw.lfpdt       = 0;               % 1: calculate and plot LFP amplitude directional tuning
defaultOptions.kw.lfpct       = 0;               % 1: calculate and plot LFP amplitude tuning across conditions
defaultOptions.kw.lfptt       = 0;               % 1: calculate trial-by-trial LFP amplitudes (mean over window_dt)
defaultOptions.kw.lfprw       = 0;               % 1: extract trial-by-trial LFP amplitudes (within window_dt)
defaultOptions.kw.ltth        = 0;               % 1: calculate and plot LFP ERPs direction selective PSTHs

defaultOptions.kw.spec        = 0;               % 1: calculate and plot LFP spectra
defaultOptions.kw.asp1        = 0;               % 1: calculate and plot LFP spectra for 1 band
defaultOptions.kw.aspdt       = 0;               % 1: calculate and plot LFP spectral directional tuning
defaultOptions.kw.aspct       = 0;               % 1: calculate and plot LFP spectral tuning across conditions
defaultOptions.kw.asptt       = 0;               % 1: calculate trial-by-trial LFP spectral amplitude density (mean over window_dt)
defaultOptions.kw.asprw       = 0;               % 1: extract trial-by-trial LFP spectral amplitude density (within window_dt)
defaultOptions.kw.atth        = 0;               % 1: calculate and plot LPF direction selective spectra
defaultOptions.kw.atth1       = 0;               % 1: calculate and plot LPF direction selective spectra for sgl. band

%%
defaultOptions.kw.behavior    = 0 & defaultOptions.kw.eye;      % 1: calculate and plot general behavioral data
defaultOptions.kw.perform     = 0 & defaultOptions.kw.eye;      % 1: calculate and plot eye hand position
defaultOptions.kw.behaviorDir = 0 & defaultOptions.kw.behavior; % 1: calculated dircection selective behavior

%% display options
defaultOptions.kw.disp_neuro     = {''};                                              % alignment pts for PSTHs (must be valid event for trials chosen)
defaultOptions.kw.window_show    = [];                                         % time windows for PSTHs (relative to 1st neural alignment)
defaultOptions.kw.raster_showEvt = 1;                                                    % 1: show events in rasters
defaultOptions.kw.raster_event   = {''};                                  % events to be shown in rasters
%% choose plot options
defaultOptions.kw.raster    = 0;                                                        % 1: add raster plots to PSTHs
defaultOptions.kw.plotstyle = 'plot';                                                   % plot | polar | bar | stem
defaultOptions.kw.interpol  = 0;                                                        % 1: interpolate tuning plots
defaultOptions.kw.iminterp  = 'nearest';                                                % method for image resizing (spectral plots)

defaultOptions.kw.tunpara     = '';            % D1: cue position; D2: movement goal.
defaultOptions.kw.rt          = 0;

defaultOptions.kw.hdpara      = {'HCuCPosY'};

defaultOptions.kw.align_neuro = '';                          % alignment of neural data (must be valid event for trials chosen)
defaultOptions.kw.window_dt   = [];                       % time window for directional tuning (relative to neural alignment)
defaultOptions.kw.window_ct   = '';                             % time window for contextual tuning (relative to neural alignment); default: same as window_dt

defaultOptions.kw.window_rt   = ['INI';'fso'];
defaultOptions.kw.window_ef   = ['INI';'fso'];
defaultOptions.kw.window_3D   = ['INI';'ITI'];
defaultOptions.kw.align_eye   = 'INI';
defaultOptions.kw.window_eye  = [-0.4,0];

defaultOptions.kw.filter.TrialType = {''};             %{'ROE'}; {'ORF'} 
defaultOptions.kw.filter.CuingType = {''};             % {'ECES'} {'ECLS'} cuingcondition
defaultOptions.kw.filter.Success   = [];
defaultOptions.kw.filter.EffDir    = [1:360];          % select directions for effector in degree
defaultOptions.kw.filter.Mapping   = [];
defaultOptions.kw.filter.TarDimm   = [];
defaultOptions.kw.filter.HCuePosX  = [];               % cue X position for Roelofs Effect task
defaultOptions.kw.filter.HDecPosX  = [];               % DA X position for Roelofs Effect task/ before 2012.12.19
defaultOptions.kw.filter.HRefPosX  = [];               % DA X position for Roelofs Effect task
defaultOptions.kw.filter.Operator  = [];                % .Operator must be the last field in the filter because of what will be going on in trialfilter.m
if defaultOptions.kw.filter.Success  ~= 1, disp 'caution: irregular SUCCESS setting!'; end

defaultOptions.kw.SuccessRateType         = '';


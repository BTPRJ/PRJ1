% -------------------------------------------------------------------------
%  created on 09.08.2017
% -------------------------------------------------------------------------

options.kw.conv_plex   = 0;                                                % convert plexon file to separate SPK and ANA *.mat files
options.kw.sort_data   = 0;                                                % load original *.mat files from disc and save it as sorted
options.kw.plot_pics   = 0;                                                % plot tuning/psth
options.kw.save_pics   = '';                                               % specify file type for saving pics ('' | 'eps' | 'jpg' | 'tif')
options.kw.MotionTrack = 0;
options.kw.moSource    = 'da';                                             % 'vzp' for psychophysics setup | 'da' for physio setup ??

options.kw.eye    = 1;                                                     % eye & hand data
options.kw.spk    = 0;                                                     % spike data
options.kw.spd    = 0;                                                     % spike density data
options.kw.lfp    = 0;                                                     % lfp data
options.kw.mua    = 0;                                                     % multi unit activity data
options.kw.gtc    = 0;                                                     % gtc data
options.kw.asp    = 0;                                                     % analog data spectra
options.kw.MotionTrack = 0;                                 

%% 
options.kw.psth        = 0;                                                % 1: calculate and plot PSTHs
options.kw.spkdt       = 0;                                                % 1: calculate and plot SPK directional tuning
options.kw.spkct       = 0;                                                % 1: calculate and plot SPK tuning across conditions
options.kw.spktt       = 0;                                                % 1: calculate trial-by-trial spike counts (mean over window_dt)
options.kw.spkrw       = 0;                                                % 1: extract trial-by-trial spike rates (within window_dt)
options.kw.stth        = 0;                                                % 1: calculate and plot SPK direction selective PSTHs
options.kw.spkd        = 0;                                                % 1: spike density

options.kw.spdave      = 0;                                                % 1: calculate and plot SPD average
options.kw.spddt       = 0;                                                % 1: calculate and plot SPD directional tuning
options.kw.spdct       = 0;                                                % 1: calculate and plot SPD tuning across conditions
options.kw.spdtt       = 0;                                                % 1: calculate trial-by-trial SPD amplitudes (mean over window_dt)
options.kw.spdrw       = 0;                                                % 1: extract trial-by-trial SPD amplitudes (within window_dt)
options.kw.dtth        = 0;                                                % 1: calculate and plot SPD direction selective averages

options.kw.erps        = 0;                                                % 1: calculate and plot LFP ERPs
options.kw.lfpdt       = 0;                                                % 1: calculate and plot LFP amplitude directional tuning
options.kw.lfpct       = 0;                                                % 1: calculate and plot LFP amplitude tuning across conditions
options.kw.lfptt       = 0;                                                % 1: calculate trial-by-trial LFP amplitudes (mean over window_dt)
options.kw.lfprw       = 0;                                                % 1: extract trial-by-trial LFP amplitudes (within window_dt)
options.kw.ltth        = 0;                                                % 1: calculate and plot LFP ERPs direction selective PSTHs

options.kw.spec        = 0;                                                % 1: calculate and plot LFP spectra
options.kw.asp1        = 0;                                                % 1: calculate and plot LFP spectra for 1 band
options.kw.aspdt       = 0;                                                % 1: calculate and plot LFP spectral directional tuning
options.kw.aspct       = 0;                                                % 1: calculate and plot LFP spectral tuning across conditions
options.kw.asptt       = 0;                                                % 1: calculate trial-by-trial LFP spectral amplitude density (mean over window_dt)
options.kw.asprw       = 0;                                                % 1: extract trial-by-trial LFP spectral amplitude density (within window_dt)
options.kw.atth        = 0;                                                % 1: calculate and plot LPF direction selective spectra
options.kw.atth1       = 0;                                                % 1: calculate and plot LPF direction selective spectra for sgl. band

%%
options.kw.behavior    = 1 & options.kw.eye;                               % 1: calculate and plot general behavioral data
options.kw.perform     = 1 & options.kw.eye;                               % 1: calculate and plot eye hand position
options.kw.behaviorDir = 0 & options.kw.behavior;                          % 1: calculated dircection selective behavior

%% display options
% - must be initialized otherwise Tuning function crashes!
options.kw.disp_neuro     = {'INI'};                                       % alignment pts for PSTHs (must be valid event for trials chosen)
% -kw.window_show  must be initialized otherwise the program crashes
options.kw.window_show    = [-.1 .1];                                      % time windows for PSTHs (relative to 1st neural alignment)
options.kw.raster_showEvt = 0;                                             % 1: show events in rasters
options.kw.raster_event   = {''};                                          % events to be shown in rasters
%% choose plot options
options.kw.raster    = 0;                                                  % 1: add raster plots to PSTHs
options.kw.plotstyle = 'plot';                                             % plot | polar | bar | stem
options.kw.interpol  = 0;                                                  % 1: interpolate tuning plots
options.kw.iminterp  = 'nearest';                                          % method for image resizing (spectral plots)
%% tuning curve settings
options.kw.tunpara     = 'D2';                                             % D1: tuning to cue position; D2: tuning to movement goal.
options.kw.rt          = 0;

options.kw.hdpara      = {'HCuCPosY'};

% - Tuning function returns event time relative  to this event. must be initialized
options.kw.align_neuro = 'INI';                                            % alignment of neural data (must be valid event for trials chosen)
options.kw.window_dt   = [];                                               % time window for directional tuning (relative to neural alignment); start looking at the tuning [-0.42  -0.27] before the CSO event
options.kw.window_ct   = '';                                               % time window for contextual tuning (relative to neural alignment); default: same as window_dt

% specialized parameters for this analysis
options.kw.numSteps = 1;                                                   % number of time steps to look at measure the tuning 
options.kw.numVisualTunStep = 1;                                           % number of visual tuning step. here all time steps are visual tuning!  
options.kw.stepSize = 0;                                                   % time step to shift the analysis time window forward  

options.kw.window_rt   = ['FTT';'TAV'];                                    % time window for reaction time analysis
options.kw.window_ef   = ['INI';'ITI'];                                    % time window with eye fixation
options.kw.window_3D   = ['INI';'ITI']; 
options.kw.align_eye   = 'CSO';                                            % alignment of eye-hand data (must be valid event for trials chosen)
options.kw.window_eye  = [-0.1 1];                                               % time window for eye-hand data (relative to behavioral alignment)

%% task related options
options.kw.filter.TrialType = {''};                                        %{'ROE'}; {'ORF'} 
options.kw.filter.CuingType = {''};                                        % {'ECES'} {'ECLS'} cuingcondition
options.kw.filter.Success   = [];
options.kw.filter.EffDir    = [1:360];                                     % select directions for effector in degree
options.kw.filter.Mapping   = [];
options.kw.filter.TarDimm   = 1;

if options.kw.filter.Success  ~= 1, disp 'caution: irregular SUCCESS setting!'; end
%% define how success rate is calculated
% 'numCompletedTrials/(numTimeOutErrors+numCompletedTrials/)' or 'numCompletedTrials/(numAllErrorsAfterFAV+numCompletedTrials/)'
options.kw.SuccessRateType  = 'numCompletedTrials/(numTimeOutErrors+numCompletedTrials/)';

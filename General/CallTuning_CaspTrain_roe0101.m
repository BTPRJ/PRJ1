clc
clear
global pathdata pathfigs maxdir
pathdata=[];
pathfigs=[];
% clear kw R R1 R2 rttpro tparpro rttanti tparanti

% -------------------------------------------------------------------------
% Data selection parameter(spm)
% -------------------------------------------------------------------------
% spm.dataset = 'TC_roe0101_CasperTrain';
% spm.dataset = 'TC_roe0203_CasperTrain';
% spm.dataset = 'TC_roe0204_CasperTrain';
% spm.dataset = 'testNoise';
% spm.dataset = 'ROE_resorted'; 
spm.dataset = 'test cut'; % convert and cut the files
% spm.dataset = 'run cut files'; % sort the cut files and analize
 
spm.ptitle = 'Reaction task';
R = []; 
switch spm.dataset

    case 'testNoise'  
        DataPath  = [pathdata 'D:\Data\Neural\Data_Kaspar_ObjRef\']; 
%         R = [R,struct('DataFile','test-Noise-NoElectrode-20121022-01','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp121107_01_SM_meml_c003','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp121107_02_SM_mem','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp121107_03_SM_mem','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp121107_04_SM_roeNoEye','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp121109_01_SM_mem-01','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp121109_02_SM_mem-01_sub','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp121109_03_SM_mem-01','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp121109_04_SM_mem-01','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp121109_05_SM_mem-01_sub','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp121113_01_SM_mem-01_spl_c004_01','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp121114_01_SM_mem','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp121114_02_SM_mem','Task','Memory Reach','Subj',1)];   %bad!
%         R = [R,struct('DataFile','Kasp121121_01_SM_mem','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp121121_02_SM_mem','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp121121_03_SM_mem','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp121121_04_SM_mem','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp121121_05_SM_mem','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp121121_06_SM_mem','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp121122_01_SM_mem','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp121122_02_SM_mem','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp121122_03_SM_mem','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp121122_04_SM_mem','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp121122_05_SM_mem','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp121122_06_SM_mem-01','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp121123_01_SM_mem','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp121123_02_SM_mem','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp121123_03_SM_mem','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp121123_04_SM_mem','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp121123_05_SM_mem','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp121127_01_SM_mem-01','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp121127_03_SM_roe','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp121128_01_SM_mem_PMd','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp121128_02_SM_mem_PMd','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp121128_03_SM_mem_PMd','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp121130_03_SM_roe&mem','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp121205_01_DM_mrm','Task','MRM','Subj',1)];   
%         R = [R,struct('DataFile','Kasp121206_01_DM_mrm','Task','MRM','Subj',1)];   
%         R = [R,struct('DataFile','Kasp121212_01_DM_rm','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp121213_02_SM_roe','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp121214_01_DM_rm','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp121218_02_DM_rm','Task','ROE','Subj',1)];   
%         R = [R,struct('DataFile','Kasp121219_01_DM_rm','Task','ROE','Subj',1)];   
% %         R = [R,struct('DataFile','Kasp121204_02_SM_mem','Task','ROE','Subj',1)];   
%         R = [R,struct('DataFile','Kasp130111_01_DM_roe','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp130130_01_DM_rm','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp130131_01_DM_rm','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp130201_01_DM_rm','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp130213_01_DM_rm','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp130214_02_DM_rm','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp130215_01_DM_rm','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp130226_01_DM_roe-02','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp130227_01_DM_rm-02','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp130308_01_DM_rm','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp130321_01_DM_rm','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp130322_01_DM_rm','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp130329_01_DM_rm','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp130410_01_DM_rmm','Task','Memory Reach','Subj',1)];   
        
        
%         R = [R,struct('DataFile','','Task','Memory Reach','Subj',1)];   

    case 'ROE_resorted'  
        DataPath  = [pathdata 'D:\Data\Neural\Data_Kaspar_ObjRef\resorted\']; 
%         R = [R,struct('DataFile','Kasp121206_01_DM_c008b','Task','ROE','Subj',1)];   
%         R = [R,struct('DataFile','Kasp121206_01_DM_c008c','Task','ROE','Subj',1)];   
        R = [R,struct('DataFile','Kasp121206_01_DM_c007a','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp121206_01_DM_mrm','Task','MRM','Subj',1)];   

    case 'test cut'  
        DataPath  = [pathdata 'F:\Data\Neural\Data_Kaspar_ObjRef\test cut\']; 
%         R = [R,struct('DataFile','Kasp121206_01_DM_c008b','Task','MRM','Subj',1)];   % original cut plx
%         R = [R,struct('DataFile','Kasp121219_01_DM_rm-01','Task','RM','Subj',1)];   % original cut plx
%         R = [R,struct('DataFile','Kasp130111_01_DM_roe-03','Task','MRM','Subj',1)];   % original cut plx
% % % % %         R = [R,struct('DataFile','Kasp130117_01_DM_rm-04','Task','MRM','Subj',1)];   % original cut plx
%         R = [R,struct('DataFile','Kasp130130_01_DM_rm-01','Task','MRM','Subj',1)];   % original plx
%         R = [R,struct('DataFile','Kasp130131_01_DM_rm-03','Task','MRM','Subj',1)];   % original plx
%         R = [R,struct('DataFile','Kasp130201_01_DM_rm-01','Task','MRM','Subj',1)];   % original plx
%         R = [R,struct('DataFile','Kasp130205_01_DM_roe-02','Task','MRM','Subj',1)];   % original plx
%         R = [R,struct('DataFile','Kasp130206_01_DM_rm-02','Task','MRM','Subj',1)];   % original plx
%         R = [R,struct('DataFile','Kasp130207_01_DM_rm-01','Task','MRM','Subj',1)];   % original plx
%         R = [R,struct('DataFile','Kasp130213_01_DM_rm-01','Task','MRM','Subj',1)];   % original plx
%         R = [R,struct('DataFile','Kasp130215_01_DM_rm-02','Task','MRM','Subj',1)];   % original plx
%         R = [R,struct('DataFile','Kasp130226_01_DM_roe-02','Task','MRM','Subj',1)];   % original plx
%         R = [R,struct('DataFile','Kasp130227_01_DM_rm-02','Task','MRM','Subj',1)];   % original plx
%         R = [R,struct('DataFile','Kasp130228_01_DM_roe-01','Task','MRM','Subj',1)];   % original plx
%         R = [R,struct('DataFile','Kasp130306_01_DM_rm-01','Task','MRM','Subj',1)];   % original plx
%         R = [R,struct('DataFile','Kasp130307_01_DM_roe-02','Task','MRM','Subj',1)];   % original plx
%         R = [R,struct('DataFile','Kasp130308_01_DM_rm-01','Task','MRM','Subj',1)];   % original plx
%         R = [R,struct('DataFile','Kasp130321_01_DM_rm-01','Task','MRM','Subj',1)];   % original plx
%         R = [R,struct('DataFile','Kasp130411_01_DM_rmm-02','Task','Memory Reach','Subj',1)];   % original plx   
%         R = [R,struct('DataFile','Kasp130417_01_DM_rmm-03','Task','Memory Reach','Subj',1)];   % original plx
%         R = [R,struct('DataFile','Kasp130418_01_DM_rmm-01','Task','Memory Reach','Subj',1)];   % original plx   
%         R = [R,struct('DataFile','Kasp130425_01_DM_cim-01','Task','Memory Reach','Subj',1)];   % original plx   
%         R = [R,struct('DataFile','Kasp130426_01_DM_cim-01','Task','Memory Reach','Subj',1)];   % original plx   
%         R = [R,struct('DataFile','Kasp130502_01_SM_cim-01','Task','cim','Subj',1)];   % original plx   
%         R = [R,struct('DataFile','Kasp130523_01_DM_or-01','Task','cim','Subj',1)];   % original plx   
%         R = [R,struct('DataFile','Kasp130524_01_DM_orm-02','Task','orm','Subj',1)];   % original plx   
%         R = [R,struct('DataFile','Kasp130530_01_DM_orm-01','Task','orm','Subj',1)];   % original plx   
%         R = [R,struct('DataFile','Kasp130531_01_DM_orm-01','Task','orm','Subj',1)];   % original plx   
%         R = [R,struct('DataFile','Kasp130606_01_SM_rm-01','Task','rm','Subj',1)];   % original plx   
%         R = [R,struct('DataFile','Kasp130621_02_DM_rrb-01','Task','rm','Subj',1)];   % original plx   
%         R = [R,struct('DataFile','Kasp130621_02_DM_rrb-01','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp130626_02_DM_rrb-02','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp130627_01_DM_rrb-01','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp121127_01_SM_mem','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp131106_01_SM_rrb_testRecording-01','Task','rrb','Subj',1)];   
%         R = [R,struct('DataFile','Kasp131127_01_DM_rrb-01','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp131129_01_DM_rrb-01','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp131128_01_DM_rrb-03','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp131203_01_DM_rrb-02','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp131204_01_DM_rrb-01','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp131205_01_DM_rrb-01','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp131219_01_DM_rmM-02','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp131220_01_DM_rm-02','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp140115_01_DM_rrb-01','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp140116_01_SM_rrb-01','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp140128_01_DM_rrb-01','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp140129_01_DM_rrb-01','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp140130_01_DM_rrb-03','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp140131_01_DM_rrb-02','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp140205_01_DM_rrb-01','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp140207_01_DM_rrb-01','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp140211_01_DM_rrb-02','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp140213_01_DM_rrb-01','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp140214_01_DM_rrb-01','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp140219_01_DM_rrb-01','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp140221_01_DM_rrb-02','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp140225_01_DM_rrb-01','Task','Memory Reach','Subj',1)];   
% % % %         R = [R,struct('DataFile','Kasp140227_01_DM_rrb-02','Task','MemoryReach','Subj',1)];    % something is wrong with recorded evtt data in the plx file!
%         R = [R,struct('DataFile','Kasp140409_01_DM_rrb-03','Task','rrb','Subj',1)];   
%         R = [R,struct('DataFile','Kasp140410_01_DM_rrb-02','Task','rrb','Subj',1)];   
%         R = [R,struct('DataFile','Kasp140614_01_DM_rrb-01','Task','rrb','Subj',1)];   
%         R = [R,struct('DataFile','Kasp140626_01_DM_rrb-01','Task','rrb','Subj',1)];   
%         R = [R,struct('DataFile','Kasp140627_01_DM_rrb-01','Task','rrb','Subj',1)];   
%         R = [R,struct('DataFile','Kasp140718_01_SM_rrb-01','Task','rrb','Subj',1)];   
%         R = [R,struct('DataFile','Kasp140724_01_SM_rrb-01','Task','rrb','Subj',1)];   
%         R = [R,struct('DataFile','Kasp140731_01_SM_rrb-01','Task','rrb','Subj',1)];   
%         R = [R,struct('DataFile','Kasp140801_01_SM_rrb-01','Task','rrb','Subj',1)];   
%         R = [R,struct('DataFile','Kasp140806_01_SM_rrb-01','Task','rrb','Subj',1)];   
%         R = [R,struct('DataFile','Kasp140807_01_DM_rrb-01','Task','rrb','Subj',1)];   
% % % % %         R = [R,struct('DataFile','Hump160526_01_DM_orf-03','Task','orf','Subj',2)];   
% % % % %         R = [R,struct('DataFile','Hump160601_01_DM_orf-03','Task','orf','Subj',2)];   
% % % % %         R = [R,struct('DataFile','Hump160602_01_DM_orf-01','Task','orf','Subj',2)];   
% % % % %         R = [R,struct('DataFile','Hump160607_01_SM_orf-01','Task','orf','Subj',2)];   
% % % % %         R = [R,struct('DataFile','Hump160608_01_SM_orf-01','Task','orf','Subj',2)];   
% % % % %         R = [R,struct('DataFile','Hump160613_01_DM_orf-01','Task','orf','Subj',2)];   
% % % % %         R = [R,struct('DataFile','Hump160614_01_DM_orf-02','Task','orf','Subj',2)];   
%         R = [R,struct('DataFile','Hump160704_01_DM_orf-02','Task','orf','Subj',2)];   
%         R = [R,struct('DataFile','Hump160705_01_DM_orf-01','Task','orf','Subj',2)];   
%         R = [R,struct('DataFile','Hump160706_01_DM_orf-03','Task','orf','Subj',2)];   
%         R = [R,struct('DataFile','Hump160707_01_DM_orf-01','Task','orf','Subj',2)];   
%         R = [R,struct('DataFile','Hump160712_01_DM_orf-02','Task','orf','Subj',2)];   
%         R = [R,struct('DataFile','Hump160713_01_DM_orf-01','Task','orf','Subj',2)];   
%         R = [R,struct('DataFile','Hump160714_01_DM_orf-02','Task','orf','Subj',2)];   
%         R = [R,struct('DataFile','Hump160718_01_DM_orf-01','Task','orf','Subj',2)];   
%         R = [R,struct('DataFile','Hump160719_01_DM_orf-01','Task','orf','Subj',2)];   
%         R = [R,struct('DataFile','Hump160720_01_DM_orf-01','Task','orf','Subj',2)];   
%         R = [R,struct('DataFile','Hump160721_01_DM_orf-02','Task','orf','Subj',2)];   
%         R = [R,struct('DataFile','Hump160727_02_DM_orf-01','Task','orf','Subj',2)];   
%         R = [R,struct('DataFile','Hump160728_01_DM_orf-02','Task','orf','Subj',2)];   
%         R = [R,struct('DataFile','Hump161004_01_DM_orf-02','Task','orf','Subj',2)];   
%         R = [R,struct('DataFile','Hump161005_01_DM_orf-01','Task','orf','Subj',2)];   
%         R = [R,struct('DataFile','Hump161006_01_DM_orf-01','Task','orf','Subj',2)];   
%         R = [R,struct('DataFile','Hump161010_01_DM_orf-01','Task','orf','Subj',2)];   
%         R = [R,struct('DataFile','Hump161020_01_DM_orf-01','Task','orf','Subj',2)];   
%         R = [R,struct('DataFile','Hump161020_02_DM_osh-02','Task','osh','Subj',2)];   
%         R = [R,struct('DataFile','Hump161027_01_DM_oob-01','Task','oob','Subj',2)];   
%         R = [R,struct('DataFile','Hump161031_01_DM_oob-02','Task','oob','Subj',2)];   
%         R = [R,struct('DataFile','Hump161102_01_DM_oob-01','Task','oob','Subj',2)];   
%         R = [R,struct('DataFile','Hump161103_02_DM_oob-01','Task','oob','Subj',2)];   
%         R = [R,struct('DataFile','Hump161108_01_DM_oob-01','Task','oob','Subj',2)];   
%         R = [R,struct('DataFile','Hump161109_01_DM_oob-02','Task','oob','Subj',2)];   
%         R = [R,struct('DataFile','Hump161115_01_DM_oob-01','Task','oob','Subj',2)];   
%         R = [R,struct('DataFile','Hump161117_01_DM_oob-01','Task','oob','Subj',2)];   
    
    case 'run cut files'  
        DataPath  = [pathdata 'D:\Data\Neural\Data_Kaspar_ObjRef\test cut\']; 
%         R = [R,struct('DataFile','Kasp121219_01_DM_rm-01_chan2a','Task','MRM','Subj',1)];   %  cut plx
%         R = [R,struct('DataFile','Kasp121219_01_DM_rm-01_chan3a','Task','MRM','Subj',1)];   %  cut plx
%         R = [R,struct('DataFile','Kasp121219_01_DM_rm-01_chan4a','Task','MRM','Subj',1)];   %  cut plx
%         R = [R,struct('DataFile','Kasp121219_01_DM_rm-01_chan4b','Task','MRM','Subj',1)];   %  cut plx
%         R = [R,struct('DataFile','Kasp121219_01_DM_rm-01_chan5a','Task','MRM','Subj',1)];   %  cut plx
%         R = [R,struct('DataFile','Kasp121219_01_DM_rm-01_chan5b','Task','MRM','Subj',1)];   %  cut plx
%         R = [R,struct('DataFile','Kasp121219_01_DM_rm-01_chan9a','Task','MRM','Subj',1)];   %  cut plx
%         R = [R,struct('DataFile','Kasp121219_01_DM_rm-01_chan10a','Task','MRM','Subj',1)];  %  cut plx
% 
%         R = [R,struct('DataFile','Kasp130111_01_DM_roe-03_chan1a','Task','MRM','Subj',1)];   %  cut plx
%         R = [R,struct('DataFile','Kasp130111_01_DM_roe-03_chan1b','Task','MRM','Subj',1)];   %  cut plx
%         R = [R,struct('DataFile','Kasp130111_01_DM_roe-03_chan3a','Task','MRM','Subj',1)];   %  cut plx
%         R = [R,struct('DataFile','Kasp130111_01_DM_roe-03_chan4a','Task','MRM','Subj',1)];   %  cut plx
%         R = [R,struct('DataFile','Kasp130111_01_DM_roe-03_chan8a','Task','MRM','Subj',1)];   %  cut plx
%         R = [R,struct('DataFile','Kasp130111_01_DM_roe-03_chan8b','Task','MRM','Subj',1)];   %  cut plx
%      
%         R = [R,struct('DataFile','Kasp130130_01_DM_rm-01_chan3a','Task','MRM','Subj',1)];   %  cut plx
%         R = [R,struct('DataFile','Kasp130130_01_DM_rm-01_chan8b','Task','MRM','Subj',1)];   %  cut plx
% 
%         R = [R,struct('DataFile','Kasp130131_01_DM_rm-03_chan2a','Task','MRM','Subj',1)];   %  cut plx
%         R = [R,struct('DataFile','Kasp130131_01_DM_rm-03_chan2b','Task','MRM','Subj',1)];   %  cut plx
%         R = [R,struct('DataFile','Kasp130131_01_DM_rm-03_chan3a','Task','MRM','Subj',1)];   %  cut plx
%         R = [R,struct('DataFile','Kasp130131_01_DM_rm-03_chan3b','Task','MRM','Subj',1)];   %  cut plx
% % % % %         R = [R,struct('DataFile','Kasp130131_01_DM_rm-03_chan6a','Task','MRM','Subj',1)];   %  cut plx; lowfiring rate; 
%         R = [R,struct('DataFile','Kasp130131_01_DM_rm-03_chan7a','Task','MRM','Subj',1)];   %  cut plx
%         R = [R,struct('DataFile','Kasp130131_01_DM_rm-03_chan7b','Task','MRM','Subj',1)];   %  cut plx
%         R = [R,struct('DataFile','Kasp130131_01_DM_rm-03_chan7c','Task','MRM','Subj',1)];   %  cut plx
% % % % %         R = [R,struct('DataFile','Kasp130131_01_DM_rm-03_chan9a','Task','MRM','Subj',1)];   %  cut plxx; lowfiring rate;
% % % % %         R = [R,struct('DataFile','Kasp130131_1_DM_rm-03_chan9b','Task','MRM','Subj',1)];   %  cut plxx; lowfiring rate;
%         R = [R,struct('DataFile','Kasp130131_01_DM_rm-03_chan9c','Task','MRM','Subj',1)];   %  cut plx
% 
%         R = [R,struct('DataFile','Kasp130201_01_DM_rm-01_chan1a','Task','MRM','Subj',1)];   %  cut plx
%         R = [R,struct('DataFile','Kasp130201_01_DM_rm-01_chan2a','Task','MRM','Subj',1)];   %  cut plx
%         R = [R,struct('DataFile','Kasp130201_01_DM_rm-01_chan2b','Task','MRM','Subj',1)];   %  cut plx
%         R = [R,struct('DataFile','Kasp130201_01_DM_rm-01_chan2c','Task','MRM','Subj',1)];   %  cut plx
%         R = [R,struct('DataFile','Kasp130201_01_DM_rm-01_chan3a','Task','MRM','Subj',1)];   %  cut plx
%         R = [R,struct('DataFile','Kasp130201_01_DM_rm-01_chan3b','Task','MRM','Subj',1)];   %  cut plx
%         R = [R,struct('DataFile','Kasp130201_01_DM_rm-01_chan4a','Task','MRM','Subj',1)];   %  cut plx
%         R = [R,struct('DataFile','Kasp130201_01_DM_rm-01_chan4b','Task','MRM','Subj',1)];   %  cut plx
%         R = [R,struct('DataFile','Kasp130201_01_DM_rm-01_chan6a','Task','MRM','Subj',1)];   %  cut plx
%         R = [R,struct('DataFile','Kasp130201_01_DM_rm-01_chan6b','Task','MRM','Subj',1)];   %  cut plx
%         R = [R,struct('DataFile','Kasp130201_01_DM_rm-01_chan6c','Task','MRM','Subj',1)];   %  cut plx
% % % % %         R = [R,struct('DataFile','Kasp130201_01_DM_rm-01_chan6d','Task','MRM','Subj',1)];   %  cut plx
%         R = [R,struct('DataFile','Kasp130201_01_DM_rm-01_chan9a','Task','MRM','Subj',1)];   %  cut plx
%         R = [R,struct('DataFile','Kasp130201_01_DM_rm-01_chan9b','Task','MRM','Subj',1)];   %  cut plx
% % % % %         R = [R,struct('DataFile','Kasp130201_01_DM_rm-01_chan9c','Task','MRM','Subj',1)];   %  cut plx
%         R = [R,struct('DataFile','Kasp130201_01_DM_rm-01_chan10a','Task','MRM','Subj',1)];   %  cut plx
%         R = [R,struct('DataFile','Kasp130201_01_DM_rm-01_chan10b','Task','MRM','Subj',1)];   %  cut plx

%         R = [R,struct('DataFile','Kasp130205_01_DM_roe-02_chan2a','Task','MRM','Subj',1)];   %  cut plx
%         R = [R,struct('DataFile','Kasp130205_01_DM_roe-02_chan6a','Task','MRM','Subj',1)];   %  cut plx
% %         R = [R,struct('DataFile','Kasp130205_01_DM_roe-02_chan6b','Task','MRM','Subj',1)];   %  cut plx
%         R = [R,struct('DataFile','Kasp130205_01_DM_roe-02_chan9a','Task','MRM','Subj',1)];   %  cut plx *****
%         R = [R,struct('DataFile','Kasp130205_01_DM_roe-02_chan9b','Task','MRM','Subj',1)];   %  cut plx
% % % % %         R = [R,struct('DataFile','Kasp130205_01_DM_roe-02_chan9c','Task','MRM','Subj',1)];   %  cut plx
%         R = [R,struct('DataFile','Kasp130205_01_DM_roe-02_chan10a','Task','MRM','Subj',1)];   %  cut plx

% % % % %         R = [R,struct('DataFile','Kasp130206_01_DM_rm-02_chan1a','Task','MRM','Subj',1)];   %  cut plx; low firing rate
% % % % %         R = [R,struct('DataFile','Kasp130206_01_DM_rm-02_chan1b','Task','MRM','Subj',1)];   %  cut plx; low firing rate       
%         R = [R,struct('DataFile','Kasp130206_01_DM_rm-02_chan2a','Task','MRM','Subj',1)];   %  cut plx
%         R = [R,struct('DataFile','Kasp130206_01_DM_rm-02_chan2b','Task','MRM','Subj',1)];   %  cut plx ****  
%         R = [R,struct('DataFile','Kasp130206_01_DM_rm-02_chan3a','Task','MRM','Subj',1)];   %  cut plx
%         R = [R,struct('DataFile','Kasp130206_01_DM_rm-02_chan3b','Task','MRM','Subj',1)];   %  cut plx ****  
%         R = [R,struct('DataFile','Kasp130206_01_DM_rm-02_chan4a','Task','MRM','Subj',1)];   %  cut plx
% % % % %         R = [R,struct('DataFile','Kasp130206_01_DM_rm-02_chan5a','Task','MRM','Subj',1)];   %  cut plx; low firing rate  
% % % % %         R = [R,struct('DataFile','Kasp130206_01_DM_rm-02_chan6a','Task','MRM','Subj',1)];   %  cut plx low firing rate 
%         R = [R,struct('DataFile','Kasp130206_01_DM_rm-02_chan6b','Task','MRM','Subj',1)];   %  cut plx
%         R = [R,struct('DataFile','Kasp130206_01_DM_rm-02_chan6c','Task','MRM','Subj',1)];   %  cut plx *****  
%         R = [R,struct('DataFile','Kasp130206_01_DM_rm-02_chan7a','Task','MRM','Subj',1)];   %  cut plx ***  
%         R = [R,struct('DataFile','Kasp130206_01_DM_rm-02_chan9a','Task','MRM','Subj',1)];   %  cut plx ***** 
%         R = [R,struct('DataFile','Kasp130206_01_DM_rm-02_chan10a','Task','MRM','Subj',1)];  %  cut plx
% % % % %         R = [R,struct('DataFile','Kasp130206_01_DM_rm-02_chan10b','Task','MRM','Subj',1)];   %  cut plx; low firing rate  
%         R = [R,struct('DataFile','Kasp130206_01_DM_rm-02_chan10c','Task','MRM','Subj',1)];   %  cut plx
% % 
%         R = [R,struct('DataFile','Kasp130207_01_DM_rm-01_chan1a','Task','MRM','Subj',1)];  %  cut plx
%         R = [R,struct('DataFile','Kasp130207_01_DM_rm-01_chan3a','Task','MRM','Subj',1)];  %  cut plx ***** 
%         R = [R,struct('DataFile','Kasp130207_01_DM_rm-01_chan3b','Task','MRM','Subj',1)];  %  cut plx **  
%         R = [R,struct('DataFile','Kasp130207_01_DM_rm-01_chan4a','Task','MRM','Subj',1)];  %  cut plx **egocentric**
%         R = [R,struct('DataFile','Kasp130207_01_DM_rm-01_chan5a','Task','MRM','Subj',1)];  %  cut plx ****   
%         R = [R,struct('DataFile','Kasp130207_01_DM_rm-01_chan5b','Task','MRM','Subj',1)];  %  cut plx
%         R = [R,struct('DataFile','Kasp130207_01_DM_rm-01_chan5c','Task','MRM','Subj',1)];  %  cut plx
% % % % %         R = [R,struct('DataFile','Kasp130207_01_DM_rm-01_chan6a','Task','MRM','Subj',1)];  %  cut plx; low firing rate     
%         R = [R,struct('DataFile','Kasp130207_01_DM_rm-01_chan7a','Task','MRM','Subj',1)];  %  cut plx
% % % % %         R = [R,struct('DataFile','Kasp130207_01_DM_rm-01_chan9a','Task','MRM','Subj',1)];  %  cut plx; low firing rate  
%         R = [R,struct('DataFile','Kasp130207_01_DM_rm-01_chan10a','Task','MRM','Subj',1)];  %  cut plx
% % % % % %         R = [R,struct('DataFile','Kasp130207_01_DM_rm-01_chan10b','Task','MRM','Subj',1)];  %  cut plx????    
%         R = [R,struct('DataFile','Kasp130207_01_DM_rm-01_chan10d','Task','MRM','Subj',1)];  %  cut plx

%         R = [R,struct('DataFile','Kasp130213_01_DM_rm-01_chan3a','Task','MRM','Subj',1)];  %  cut plx

%         R = [R,struct('DataFile','Kasp130306_01_DM_rm-01_chan5a','Task','MRM','Subj',1)];  %  cut plx

%         R = [R,struct('DataFile','Kasp130308_01_DM_rm-01_chan2c','Task','MRM','Subj',1)];  %  cut plx
%         R = [R,struct('DataFile','Kasp130308_01_DM_rm-01_chan1a','Task','MRM','Subj',1)];  %  cut plx

%         R = [R,struct('DataFile','Kasp131106_01_SM_rrb_testRecording-01_chan5a','Task','rrb','Subj',1)];   
%         R = [R,struct('DataFile','Kasp131106_01_SM_rrb_testRecording-01_chan5b','Task','rrb','Subj',1)];   

        R = [R,struct('DataFile','Kasp131127_01_DM_rrb-01_chan1a','Task','rbb','Subj',1)];   
        R = [R,struct('DataFile','Kasp131127_01_DM_rrb-01_chan6a','Task','rbb','Subj',1)];   
        R = [R,struct('DataFile','Kasp131127_01_DM_rrb-01_chan6b','Task','rbb','Subj',1)];   
        R = [R,struct('DataFile','Kasp131127_01_DM_rrb-01_chan6c','Task','rbb','Subj',1)];   
        R = [R,struct('DataFile','Kasp131127_01_DM_rrb-01_chan6d','Task','rbb','Subj',1)];   
        R = [R,struct('DataFile','Kasp131127_01_DM_rrb-01_chan6e','Task','rbb','Subj',1)];   

%         R = [R,struct('DataFile','Kasp131128_01_DM_rrb-03_chan6a','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp131128_01_DM_rrb-03_chan6b','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp131128_01_DM_rrb-03_chan7a','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp131128_01_DM_rrb-03_chan7b','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp131128_01_DM_rrb-03_chan8a','Task','Memory Reach','Subj',1)];   
%         R = [R,struct('DataFile','Kasp131128_01_DM_rrb-03_chan8b','Task','Memory Reach','Subj',1)];   

%         R = [R,struct('DataFile','Kasp131129_01_DM_rrb-01_chan1a','Task','rbb','Subj',1)];   
%         R = [R,struct('DataFile','Kasp131129_01_DM_rrb-01_chan2a','Task','rbb','Subj',1)];   
%         R = [R,struct('DataFile','Kasp131129_01_DM_rrb-01_chan3a','Task','rbb','Subj',1)];   
%         R = [R,struct('DataFile','Kasp131129_01_DM_rrb-01_chan3b','Task','rbb','Subj',1)];   
%         R = [R,struct('DataFile','Kasp131129_01_DM_rrb-01_chan5a','Task','rbb','Subj',1)];   
%         R = [R,struct('DataFile','Kasp131129_01_DM_rrb-01_chan6a','Task','rbb','Subj',1)];   

%         R = [R,struct('DataFile','Kasp131203_01_DM_rrb-02_chan1a','Task','rbb','Subj',1)];   
%         R = [R,struct('DataFile','Kasp131203_01_DM_rrb-02_chan4a','Task','rbb','Subj',1)];   
%         R = [R,struct('DataFile','Kasp131203_01_DM_rrb-02_chan5a','Task','rbb','Subj',1)];   
%         R = [R,struct('DataFile','Kasp131203_01_DM_rrb-02_chan6a','Task','rbb','Subj',1)];   
%         R = [R,struct('DataFile','Kasp131203_01_DM_rrb-02_chan6b','Task','rbb','Subj',1)];   
%         R = [R,struct('DataFile','Kasp131203_01_DM_rrb-02_chan6c','Task','rbb','Subj',1)];   
%         R = [R,struct('DataFile','Kasp131203_01_DM_rrb-02_chan6d','Task','rbb','Subj',1)];   
%         R = [R,struct('DataFile','Kasp131203_01_DM_rrb-02_chan7a','Task','rbb','Subj',1)];   
%         R = [R,struct('DataFile','Kasp131203_01_DM_rrb-02_chan7b','Task','rbb','Subj',1)];   
%         R = [R,struct('DataFile','Kasp131203_01_DM_rrb-02_chan7c','Task','rbb','Subj',1)];   
%         R = [R,struct('DataFile','Kasp131203_01_DM_rrb-02_chan7d','Task','rbb','Subj',1)];   
%         R = [R,struct('DataFile','Kasp131203_01_DM_rrb-02_chan7e','Task','rbb','Subj',1)];   
%         R = [R,struct('DataFile','Kasp131203_01_DM_rrb-02_chan7f','Task','rbb','Subj',1)];   
%         R = [R,struct('DataFile','Kasp131203_01_DM_rrb-02_chan8a','Task','rbb','Subj',1)];   
% 
%         R = [R,struct('DataFile','Kasp131204_01_DM_rrb-01_chan1a','Task','rbb','Subj',1)];   
%         R = [R,struct('DataFile','Kasp131204_01_DM_rrb-01_chan1b','Task','rbb','Subj',1)];   
%         R = [R,struct('DataFile','Kasp131204_01_DM_rrb-01_chan2a','Task','rbb','Subj',1)];   
%         R = [R,struct('DataFile','Kasp131204_01_DM_rrb-01_chan2b','Task','rbb','Subj',1)];   
%         R = [R,struct('DataFile','Kasp131204_01_DM_rrb-01_chan3a','Task','rbb','Subj',1)];   
%         R = [R,struct('DataFile','Kasp131204_01_DM_rrb-01_chan3b','Task','rbb','Subj',1)];   
%         R = [R,struct('DataFile','Kasp131204_01_DM_rrb-01_chan3c','Task','rbb','Subj',1)];   
%         R = [R,struct('DataFile','Kasp131204_01_DM_rrb-01_chan4a','Task','rbb','Subj',1)];   
%         R = [R,struct('DataFile','Kasp131204_01_DM_rrb-01_chan6a','Task','rbb','Subj',1)];   
%         R = [R,struct('DataFile','Kasp131204_01_DM_rrb-01_chan6b','Task','rbb','Subj',1)];   
%         R = [R,struct('DataFile','Kasp131204_01_DM_rrb-01_chan8a','Task','rbb','Subj',1)];  
%         
%         R = [R,struct('DataFile','Kasp131205_01_DM_rrb-01_chan1a','Task','rbb','Subj',1)];   
%         R = [R,struct('DataFile','Kasp131205_01_DM_rrb-01_chan2a','Task','rbb','Subj',1)];   
%         R = [R,struct('DataFile','Kasp131205_01_DM_rrb-01_chan3a','Task','rbb','Subj',1)];   
%         R = [R,struct('DataFile','Kasp131205_01_DM_rrb-01_chan3b','Task','rbb','Subj',1)];   
%         R = [R,struct('DataFile','Kasp131205_01_DM_rrb-01_chan3c','Task','rbb','Subj',1)];   
%         R = [R,struct('DataFile','Kasp131205_01_DM_rrb-01_chan4a','Task','rbb','Subj',1)];   
%         R = [R,struct('DataFile','Kasp131205_01_DM_rrb-01_chan5a','Task','rbb','Subj',1)];   
%         R = [R,struct('DataFile','Kasp131205_01_DM_rrb-01_chan5b','Task','rbb','Subj',1)];   
%         R = [R,struct('DataFile','Kasp131205_01_DM_rrb-01_chan6a','Task','rbb','Subj',1)];   
%         R = [R,struct('DataFile','Kasp131205_01_DM_rrb-01_chan6b','Task','rbb','Subj',1)];   
%         R = [R,struct('DataFile','Kasp131205_01_DM_rrb-01_chan6c','Task','rbb','Subj',1)];   
%         R = [R,struct('DataFile','Kasp131205_01_DM_rrb-01_chan7a','Task','rbb','Subj',1)];   
%         R = [R,struct('DataFile','Kasp131205_01_DM_rrb-01_chan7b','Task','rbb','Subj',1)];   
%         R = [R,struct('DataFile','Kasp131205_01_DM_rrb-01_chan7c','Task','rbb','Subj',1)];   
%         R = [R,struct('DataFile','Kasp131205_01_DM_rrb-01_chan8a','Task','rbb','Subj',1)];   
%         R = [R,struct('DataFile','Kasp131205_01_DM_rrb-01_chan8b','Task','rbb','Subj',1)];   
%         R = [R,struct('DataFile','Kasp131205_01_DM_rrb-01_chan8c','Task','rbb','Subj',1)];   
%         R = [R,struct('DataFile','Kasp131205_01_DM_rrb-01_chan8d','Task','rbb','Subj',1)];   

        R = [R,struct('DataFile','Kasp131219_01_DM_rmM-02_chan3a','Task','rmM','Subj',1)];   
        R = [R,struct('DataFile','Kasp131219_01_DM_rmM-02_chan4a','Task','rmM','Subj',1)];   
        R = [R,struct('DataFile','Kasp131219_01_DM_rmM-02_chan5a','Task','rmM','Subj',1)];   
        R = [R,struct('DataFile','Kasp131219_01_DM_rmM-02_chan5b','Task','rmM','Subj',1)];   
        R = [R,struct('DataFile','Kasp131219_01_DM_rmM-02_chan6a','Task','rmM','Subj',1)];   
        R = [R,struct('DataFile','Kasp131219_01_DM_rmM-02_chan6b','Task','rmM','Subj',1)];   
        R = [R,struct('DataFile','Kasp131219_01_DM_rmM-02_chan6c','Task','rmM','Subj',1)];   
        R = [R,struct('DataFile','Kasp131219_01_DM_rmM-02_chan6d','Task','rmM','Subj',1)];   
        R = [R,struct('DataFile','Kasp131219_01_DM_rmM-02_chan7a','Task','rmM','Subj',1)];   
        R = [R,struct('DataFile','Kasp131219_01_DM_rmM-02_chan7b','Task','rmM','Subj',1)];   
        R = [R,struct('DataFile','Kasp131219_01_DM_rmM-02_chan7c','Task','rmM','Subj',1)];   

        R = [R,struct('DataFile','Kasp131220_01_DM_rm-02_chan2a','Task','rm','Subj',1)];   
        R = [R,struct('DataFile','Kasp131220_01_DM_rm-02_chan2b','Task','rm','Subj',1)];   
        R = [R,struct('DataFile','Kasp131220_01_DM_rm-02_chan3a','Task','rm','Subj',1)];   
        R = [R,struct('DataFile','Kasp131220_01_DM_rm-02_chan3b','Task','rm','Subj',1)];   
        R = [R,struct('DataFile','Kasp131220_01_DM_rm-02_chan4a','Task','rm','Subj',1)];   
        R = [R,struct('DataFile','Kasp131220_01_DM_rm-02_chan4b','Task','rm','Subj',1)];   
        R = [R,struct('DataFile','Kasp131220_01_DM_rm-02_chan5a','Task','rm','Subj',1)];   
        R = [R,struct('DataFile','Kasp131220_01_DM_rm-02_chan5b','Task','rm','Subj',1)];   
        R = [R,struct('DataFile','Kasp131220_01_DM_rm-02_chan6a','Task','rm','Subj',1)];   
        R = [R,struct('DataFile','Kasp131220_01_DM_rm-02_chan6b','Task','rm','Subj',1)];   
        
        
% added on 21.03.2013
%         R = [R,struct('DataFile','Kasp130213_01_DM_rm-01_chan3a','Task','MRM','Subj',1)];  %  cut plx

%         R = [R,struct('DataFile','','Task','Memory Reach','Subj',1)];   


end  
DataPath       = repmat(DataPath,[length(R) 1])
FullFileName   = [pathfigs '\' spm.dataset '\' spm.dataset '.mat'];

spm.window_rt  = ['INI';'fso'];                   % time window for reaction time analysis
spm.window_ef  = ['INI';'fso'];                   % time window with eye fixation
spm.window_3D  = ['FAV';'RWO']; 
spm.align_eye  = 'INI';                           % alignment of eye-hand data (must be valid event for trials chosen)
spm.window_eye = [-0.4,0];                     % time window for eye-hand data (relative to behavioral alignment)
kw.align_neuro = 'FTT';                          % alignment of neural data (must be valid event for trials chosen)
kw.window_dt   = [-0.3 0];                       % time window for directional tuning (relative to neural alignment)
kw.window_ct   = '';                             % time window for contextual tuning (relative to neural alignment); default: same as window_dt
 
hdpara   = {'HCuCPosY'};               % specify parameters of header, which should be available as output of tuing
% -------------------------------------------------------------------------
% Main program parameter (mpm)
% -------------------------------------------------------------------------
savecol   =  1;               % save collected data as Matlab file
loadcol   =  1 & ~savecol;    % load collected data from Matlab file (caution: overwriting of some parameters)

mpm.siglim     = 0.01;
mpm.savefig    = 1;
mpm.savePath   = [pathfigs '\' spm.dataset '\Figures\'];
 
mpm.sgltrial   = 1;                          % plot single trial data
mpm.sglrec     = 1;                          % plot single recording data
mpm.averec     = 1;                          % plot average over recordings

mpm.rt         = 0;
mpm.fit        = 1;                          % plot Fit 
mpm.norm       = 1;                          % normalize data to baseline 
mpm.LearnCurve = false;

mpm.time       = {'RT'};                      % RT | MT
mpm.coor       = {'R'};                      % Y  | X | TH | R

mpm.kout       = 3;                         % factor defining outlier kout*interquartile-range

mpm.G_idx      = 1;                           % DO NOT CHANGE: Index which defines order of generalization and control in cell array
mpm.C_idx      = 2;                           % DO NOT CHANGE: Index which defines order of generalization and control in cell array

% -------------------------------------------------------------------------
% Bahareh - Introducing kw('keyword'), the main control of the whole program.
% Parameters for call of 'Tuning' function 
% (you will have to re-calculate tunings if you make changes in this section)
% -------------------------------------------------------------------------

kw.conv_plex   = 1;               % convert plexon file to separate SPK and ANA *.mat files
kw.sort_data   = 1;               % load original *.mat files from disc and save it as sorted
kw.plot_pics   = 0;               % plot tuning/psth
kw.save_pics   = '';              % specify file type for saving pics ('' | 'eps' | 'jpg' | 'tif')
kw.MotionTrack = 0;
kw.moSource    = 'da';            % 'vzp' for psychophysics setup | 'da' for physio setup ??

kw.eye         = 1;               % eye & hand data
kw.spk         = 0;               % spike data
kw.spd    = 0;                   % spike density data
kw.lfp    = 0;                   % lfp data
kw.mua    = 0;                   % multi unit activity data
kw.gtc    = 0;                   % gtc data
kw.asp    = 0;                   % analog data spectra
kw.MotionTrack = 0;

%% 
kw.psth        = 0;               % 1: calculate and plot PSTHs
kw.spkdt       = 0;               % 1: calculate and plot SPK directional tuning
kw.spkct       = 0;               % 1: calculate and plot SPK tuning across conditions
kw.spktt       = 0;               % 1: calculate trial-by-trial spike rates (mean over window_dt)
kw.spkrw       = 0;               % 1: extract trial-by-trial spike rates (within window_dt)
kw.stth        = 0;               % 1: calculate and plot SPK direction selective PSTHs
kw.spkd        = 0;               % 1: spike density

kw.spdave      = 0;               % 1: calculate and plot SPD average
kw.spddt       = 0;               % 1: calculate and plot SPD directional tuning
kw.spdct       = 0;               % 1: calculate and plot SPD tuning across conditions
kw.spdtt       = 0;               % 1: calculate trial-by-trial SPD amplitudes (mean over window_dt)
kw.spdrw       = 0;               % 1: extract trial-by-trial SPD amplitudes (within window_dt)
kw.dtth        = 0;               % 1: calculate and plot SPD direction selective averages

kw.erps        = 0;               % 1: calculate and plot LFP ERPs
kw.lfpdt       = 0;               % 1: calculate and plot LFP amplitude directional tuning
kw.lfpct       = 0;               % 1: calculate and plot LFP amplitude tuning across conditions
kw.lfptt       = 0;               % 1: calculate trial-by-trial LFP amplitudes (mean over window_dt)
kw.lfprw       = 0;               % 1: extract trial-by-trial LFP amplitudes (within window_dt)
kw.ltth        = 0;               % 1: calculate and plot LFP ERPs direction selective PSTHs

kw.spec        = 0;               % 1: calculate and plot LFP spectra
kw.asp1        = 0;               % 1: calculate and plot LFP spectra for 1 band
kw.aspdt       = 0;               % 1: calculate and plot LFP spectral directional tuning
kw.aspct       = 0;               % 1: calculate and plot LFP spectral tuning across conditions
kw.asptt       = 0;               % 1: calculate trial-by-trial LFP spectral amplitude density (mean over window_dt)
kw.asprw       = 0;               % 1: extract trial-by-trial LFP spectral amplitude density (within window_dt)
kw.atth        = 0;               % 1: calculate and plot LPF direction selective spectra
kw.atth1       = 0;               % 1: calculate and plot LPF direction selective spectra for sgl. band

%%
kw.behavior    = 0 & kw.eye;      % 1: calculate and plot general behavioral data
kw.perform     = 0 & kw.eye;      % 1: calculate and plot eye hand position
kw.behaviorDir = 0 & kw.behavior; % 1: calculated dircection selective behavior

%% display options
kw.disp_neuro     = {'FTT'};                                              % alignment pts for PSTHs (must be valid event for trials chosen)
kw.window_show    = [-1.5, 1.5];                                         % time windows for PSTHs (relative to 1st neural alignment)
kw.raster_showEvt = 0;                                                    % 1: show events in rasters
kw.raster_event   = {'RFO','CSO'};                                  % events to be shown in rasters
%% choose plot options
kw.raster    = 0;                                                        % 1: add raster plots to PSTHs
kw.plotstyle = 'plot';                                                   % plot | polar | bar | stem
kw.interpol  = 0;                                                        % 1: interpolate tuning plots
kw.iminterp  = 'nearest';                                                % method for image resizing (spectral plots)

kw.tunpara     = 'D2';            % D1: cue position; D2: movement goal.
kw.rt          = 0;


kw.hdpara      = hdpara;

kw.window_rt   = spm.window_rt;
kw.window_ef   = spm.window_ef;
kw.window_3D   = spm.window_3D;
kw.align_eye   = spm.align_eye;
kw.window_eye  = spm.window_eye;

kw.filter.TrialType = {'ROE'};          %{'ROE'}; {'ORF'} 
% kw.filter.TrialID   = [300:1200];         % 
kw.filter.CuingType = {''};         % {'ECES'} {'ECLS'} cuingcondition
kw.filter.Success   = 1;
% kw.filter.EffDir    = [0:45:359];          % select directions for effector in degree
% kw.filter.EffDir    = [21, 32, 62, 118, 148, 159];          % select directions for effector in degree
kw.filter.Mapping   = [];
kw.filter.TarDimm   = 1;
% kw.filter.HCuePosX  = -4.24 ;               % cue X position for Roelofs Effect task
% kw.filter.HDecPosX  = -1.41000000000000;               % DA X position for Roelofs Effect task/ before 2012.12.19
% kw.filter.HDecPosX  = 1.41000000000000;               % DA X position for Roelofs Effect task/ before 2012.12.19
% kw.filter.HRefPosX  = -1.41000000000000;               % DA X position for Roelofs Effect task
% kw.filter.HRefPosX  = 1.41000000000000;               % DA X position for Roelofs Effect task
% dfOptions.HRefPosX           = [];                % 
% dfOptions.HDecPosX           = [];                % 

if kw.filter.Success  ~= 1, disp 'caution: irregular SUCCESS setting!'; end

tunSimilarity = {};
% -------------------------------------------------------------------------
% call evaluation functions
    for r = 1:length(R)
%         [aux,cond] = Tuning_Roe03(DataPath(r,:), R(r), kw); 
        Tuning1(DataPath(r,:), R(r), kw); % to convert and cut the plx files
if 0
kw.conv_plex   = 0;               % convert plexon file to separate SPK and ANA *.mat files
kw.sort_data   = 1;               % load original *.mat files from disc and save it as sorted
kw.mua    = 0;                   % multi unit activity data
kw.eye    = 0;                   % eye & hand data
kw.spk    = 1;                   % spike data
kw.spd    = 0;                   % spike density data
kw.lfp    = 0;                   % lfp data
% 
kw.psth        = 0;               % 1: calculate and plot PSTHs
kw.spkdt       = 0;               % 1: calculate and plot SPK directional tuning
kw.spkct       = 0;               % 1: calculate and plot SPK tuning across conditions
kw.spktt       = 0;               % 1: calculate trial-by-trial spike rates (mean over window_dt)
kw.spkrw       = 0;               % 1: extract trial-by-trial spike rates (within window_dt)
kw.stth        = 0;               % 1: calculate and plot SPK direction selective PSTHs
kw.spkd        = 0;               % 1: spike density

kw.filter.TrialType = {'ROE'};          %{'ROE'}; {'ORF'} 
[aux,cond] = Tuning2(DataPath(r,:), R(r), kw);  % to sort and analize the cut files
% kw.filter.TrialType = {'ROE'};          %{'ROE'}; {'ORF'} 
% kw.filter.HDecPosX  = -1.41000000000000;               % DA X position for Roelofs Effect task/ before 2012.12.19
% [aux,cond] = Tuning2(DataPath(r,:), R(r), kw);  % to sort and analize the cut files
% kw.filter.HDecPosX  = 1.41000000000000;               % DA X position for Roelofs Effect task/ before 2012.12.19
% [aux,cond] = Tuning2(DataPath(r,:), R(r), kw);  % to sort and analize the cut files





r
% [~,tunSimilarity] = spkRate_regressConditions(aux,R(r),r,kw,tunSimilarity,kw.tunpara,'Tar2DA');
end
    end
    
    
    
%% fix aux!
% fn=fieldnames(aux.varpar);
% for i=1:size(fn,1)-1
%     aux.varpar.(fn{i}) = round(aux.varpar.(fn{i})*1000)/1000;    
% end
%% 
    
% Traj=Roe_GetTraj(aux,TrialState);
% POP_ErrBar_Compatible=Roe_POP(total_incong,left,POP);
% PairedTest

% [hm,pm,hb,pb]=PairedTestSingle(POP,size(POP),5);
% [p_incong,table_incong,p_left,table_left,p_center,table_center]=Roe_Stat(POP_ErrBar_Compatible,length(R));

% Roe_plot_ErrBar(num2str(R(r).Task),ErrBar_Compatible,num2str(R(r).Subj),total_incong,p_incong,p_left,p_center,1,0); % RUN only when there is one sbj 
% Roe_plot_ErrBar(num2str(R(r).Task),POP_ErrBar_Compatible,'Population',total_incong,p_incong,p_left,p_center,1,0);



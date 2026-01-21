function startup()
%Main startup function for the simulink GN&C cubesat simulation
%Clear Command Window / Workspace / Open Figures
clear; clc; close all;

%Set Root File Path
root = matlab.project.rootProject().RootFolder;

%Add additional paths for folders
addpath(genpath(fullfile(root, "scripts")));
addpath(genpath(fullfile(root, "data")));
addpath(genpath(fullfile(root, "models")));
addpath(genpath(fullfile(root, "subsystems")));
addpath(genpath(fullfile(root, "tests")));


%Load parameters into the base workspace
evalin("base", sprintf('run("%s")', fullfile(root,"data","init_gnc_ministack.m")));

%Print confirmation
disp("Mini-Stack startup complete.");
end

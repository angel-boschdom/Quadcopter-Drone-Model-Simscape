% Startup script for project Quadcopter_Drone.prj
% Copyright 2018-2021 The MathWorks, Inc.

%% Code for building Simscape custom library at startup
% Change to folder with package directory
curr_proj = simulinkproject;
cd(curr_proj.RootFolder)

% Change to root folder
cd(curr_proj.RootFolder)

% If running in a parallel pool
% do not open model or demo script
open_start_content = 1;
if(~isempty(ver('parallel')))
    if(~isempty(getCurrentTask()))
        open_start_content = 0;
    end
end

if(open_start_content)
    % Parameters
    quadcopter_parameters
    quadcopter_define_waypoints
    % Model
    quadcopter_package_delivery
end


% This demo script runs the ECO tracker with deep features on the
% included "Crossing" video.

% Add paths
setup_paths();

% Load video information
% video_path = 'sequences/Crossing';
video_name = 'MotorRolling';
video_path = fullfile(get_global_variable('ECO_dataset_path'),'OTB50',video_name);

[seq, ground_truth] = load_video_info(video_path);

% Run ECO
results = testing_ECO_RS(seq);
% results = VOT2016_DEEP_settings(seq)
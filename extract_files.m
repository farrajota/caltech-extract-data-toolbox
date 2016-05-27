function extract_files( varargin )
%% Extracts all image and annotations files into a folder
%
% If an input folder is specified, this script will extract all images from
% all files (every frame from the dataset) and organizes it into
% corresponding folders inside a folder named 'extracted_files'. If no
% input path is specified, the folder will be created in the current
% directory.

%% Add eval code paths
addpath(genpath('./'));

%% Initializations

if (nargin>=1), 
    if ~isempty(varargin{1}),
        dataset_path = varargin{1};
    else dataset_path = pwd; end
else dataset_path = '../../'; end

% create folders
% extracted_files
if(~exist(strcat(dataset_path,'/extracted_data'),'dir')), mkdir(strcat(dataset_path,'/extracted_data')); end

%% Extract image files
% Train
fprintf('Unpacking train set data...');
dbInfo('usatrain', dataset_path); 
dbExtract(dataset_path, strcat(dataset_path,'/extracted_data'),1,1);
fprintf('\nDone.');

% Test
fprintf('\nUnpacking test set data...');
dbInfo('usatest', dataset_path); 
dbExtract(dataset_path, strcat(dataset_path,'/extracted_data'),1,1);
fprintf('\nDone.');

fprintf('\nData extraction complete!\n');
end

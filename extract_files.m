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
% function's inputs
if (nargin>=1), 
    if ~isempty(varargin{1}),
        dataset_path = varargin{1};
    else dataset_path = pwd; end
else dataset_path = '../../'; end
if (nargin >= 2), 
    if ~isempty(varargin{2}),
        dataset_name = varargin{2};
    else dataset_name = 'usa'; end
else dataset_name = 'usa'; end
if (nargin >= 3), 
    if ~isempty(varargin{3}),
        store_name = varargin{3};
    else store_name = '/extracted_data'; end
else store_name = '/extracted_data'; end

% create folders
if(~exist(strcat(dataset_path, store_name),'dir')), mkdir(strcat(dataset_path, store_name)); end

%% Extract image files
switch dataset_name
  case 'usa' % Caltech Pedestrian Datasets (all)
    % Train
    fprintf('Unpacking train set data...');
    dbInfo('usatrain', dataset_path); 
    dbExtract(dataset_path, strcat(dataset_path, store_name),1,1);
    fprintf('\nDone.');
    % Test
    fprintf('\nUnpacking test set data...');
    dbInfo('usatest', dataset_path); 
    dbExtract(dataset_path, strcat(dataset_path, store_name),1,1);
    fprintf('\nDone.');
  case 'inria' % INRIA dataset
    % train
    fprintf('Unpacking train set data...');
    dbInfo('inriatrain', dataset_path); 
    dbExtract(dataset_path, strcat(dataset_path, store_name),1,1);
    fprintf('\nDone.');
    % Test
    fprintf('\nUnpacking test set data...');
    dbInfo('inriatest', dataset_path); 
    dbExtract(dataset_path, strcat(dataset_path, store_name),1,1);
    fprintf('\nDone.');
  case 'tudbrussels' % TUD-Brussels dataset
    % test
    fprintf('Unpacking test set data...');
    dbInfo('tudbrussels', dataset_path); 
    dbExtract(dataset_path, strcat(dataset_path, store_name),1,1);
    fprintf('\nDone.');
  case 'eth' % ETH dataset
    % test
    fprintf('Unpacking test set data...');
    dbInfo('eth', dataset_path); 
    dbExtract(dataset_path, strcat(dataset_path, store_name),1,1);
    fprintf('\nDone.');
  case 'daimler' % Daimler dataset
    % test
    fprintf('Unpacking test set data...');
    dbInfo('daimler', dataset_path); 
    dbExtract(dataset_path, strcat(dataset_path, store_name),1,1);
    fprintf('\nDone.');
  otherwise, error('unknown data type: %s', dataset_name);
end

end

# Caltech's functions for data extraction

Extracts all images and annotations of the (Caltech/INRIA/Tud-Brussels/ETH/Daimler) Pedestrian dataset from data files with the `.vbb` format into `.jpg` and `.txt` files, respectively.

## Requirements

- Matlab (R2012a or above)

## Usage 

To use this code simply call **extract_file(`data_folder_path`, `dataset_name`, `store_folder_name`)** to extract the desired dataset.

Parameters default values:
- `data_folder_path = ../../`;
- `dataset_name=usa`;
- `store_folder_name=/extracted_data`

Current available datasets for extraction:
- Caltech Pedestrian
- INRIA Pedestrian
- ETH Pedestrian
- TUD-Brussels Pedestrian
- Daimler Pedestrian


## Disclamer

This code has been adapted from pdollar's [toolbox](https://github.com/pdollar/toolbox) and [evaluation code](http://www.vision.caltech.edu/Image_Datasets/CaltechPedestrians/code/code3.2.1.zip).

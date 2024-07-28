# cli-awesomeness

Useful stuff for the command line (CLI)

## Configuration

Assuming that you're using `bash`, add the following lines to `bash_profile`:
```
export PATH_CLIA=[path_to_local_folder_of_cli-awesomeness]
export PATH_CLIA_SCRIPTS=$PATH_CLIA/scripts
export PATH_CLIA_CONFIG=$PATH_CLIA/config

source $PATH_CLIA_CONFIG/.aliases
```

Install the package `cliapy` (in editable mode):
```
pip install -e cliapy
```

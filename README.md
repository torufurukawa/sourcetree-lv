# diff and merge wrappers for LabVIEW with SourceTree

This is a utility to diff and merge LabVIEW source files visually using SourceTree on Windows.


## Requirements

- Windows 10
- SourceTree 1.9.6.2  
  - Assuming build-in git was selected when installed
- LabVIEW 2014


## Install and settings

1. Download xxx.zip.
2. Extract zip and save lvdiffmerge folder somewhere you prefer.
3. Edit ```lvdiffmerge\config.txt```.  That is, if LVCompare.exe is not located as defined in the file, correct DIFF_CMD value.
4. Configure SourceTree
   1. From menu, select Tool >> Options
   2. Click Diff tab
   3. Set External Diff tool to "Custom"
   4. Set Diff command to the path to ```lvdiffmerge\diff.sh```.  For example, if you save lvdifmerge folder in ```C:\My Programs```, set this value to ```C:\My Programs\lvdiffmerge|diff.sh```.
   5. Set Arguments to ```$REMOTE $LOCAL```
   6. Click "OK" button

TODO: screen shot


## Usage

### Diff

Suppose you have foo.vi already committed in a git repository, and you have just edited it.  Now, you want to see what you changed exactly BEFORE committing.

In the file list, right click on the VI and select ```External Diff```.  LabVIEW's diff tool will be launched.

TODO: screen shots


## License

This software is released under the MIT License, see LICENSE.txt.


## Development

Run ```./mkdist <version>``` to build distribution package as a zip file.


### Files

- config.txt ... configuration
- diff.sh ... wrapper for LVCompare.exe

diff.sh accepts remote and local paths, converts them into DOS format and passes them to LVCompare.exe.


## Known issues

- You cannot specify LabVIEW version to open VIs.


## References

- license
- existing project

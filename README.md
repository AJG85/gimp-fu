# gimp-fu

## Install

Copy the batch script into your GIMP installation scripts directory.
Goto Edit -> Preferences -> Folders -> Scripts to view or update paths.

## Run

GIMP can be run from the terminal in batch mode. If you wanted to autocrop a directory of PNG then call the function and quit gimp process as a chain of commands like so:
```
gimp -ib '(batch-autocrop "*.png")' -b '(gimp-quit 0)'
```
You can chain as many commands as you like to crop multiple glob patterns or call various functions:
```
gimp -ib '(batch-autocrop "subdir1/*.png")' -ib '(batch-autocrop "subdir2/*.png")' ...
```
For more complex usage consider making a shell script to invoke GIMP commands with additional logic.

## Create

GIMP uses Tiny Scheme which is a subset of the Scheme functional Lisp-like langauge ...
Use Help -> Procedure Browser to explore GIMP functions you can call from scripts!

## Share

Feel free to make a pull request adding your own GIMP scripts or even just to update this readme with more useful links for learning script-fu, other tutorials, etc

## References

 - https://www.gimp.org/tutorials/Basic_Scheme/
 - https://www.gimp.org/tutorials/Basic_Batch/


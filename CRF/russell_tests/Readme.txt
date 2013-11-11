russell_tests folder
Author: Russell Melick  Contact rmelick@hmc.edu with any questions.   2009

* Final Results
	This folder contains the text output that were used to generate the 
graphs, etc. that can be found on the FinalResults section of Russell Melick's
wiki log.  For use if there are any questions about that data.

* graphMagics
	This folder is the home of two files.  One is a neighbors list that
can be imported into graphMagics for viewing.  It is the graph that is 
created by the recognition program after connecting all of the strokes.
The other file is a triangulated version of the first file.

* labeledSketches
	This folder contains all of the labeled xml sketch files that were used
to create the data referenced earlier.

* fileStrip.py
	This python script will print to console the data from one of the output
text files.  It prints the confusion matrix (nodes recognized as nodes, links
recognized as links, etc.)  Given a single results file, it can get this information
for each of the multiple sketch files present in that one result file.

* plotMatlab.m
	This matlab script will take the output from the python (in one giant matrix
as can be seen at the top of the file), and will generate all of the plots that can
be seen in the final results section of Russell's wiki.  It makes plots of the change
in accuracy depending on thresholds and max clique size for each of the files 
included in one of the results files.  Right now, it is hard coded for 14 files.

* russell.tcrf
	This is the file that the program output after it has trained on all of the provided
sketches.  It's name is set in the testTrain script.

* testRun.bat
	This is a windows batch file.  It had decent comenting inside of it.  Basically,
it takes all of the sketches inside of labeledSketches, uses the training file russell.tcrf,
and runs recognition on all of those sketches.  The output is placed in 
C:\Documents and Settings\sketcher\My Documents\sketch\Code\Util\TestRig\bin\Debug\output

* testRunGraphs.bat
	This is a windows batch file with internal commenting.  This takes all of the sketches
in the labeledSketches folder and runs a modified version of the recognition on them.  It 
basically just builds the tree it would use if it were to run.  I'm not actually sure what
file it chooses if there are multiple files in the folder (it might not work then).  It outputs
two neighbor lists for GraphMagics into the graphMagics folder.  Use the traingulated one
for the most meaningful data.

* testTrain.bat
	This is a windows batch file.  It has decent commenting inside of it.  Basically,
if you are in the russell_tests directory, and you run testTrain, the program will run
training on all of the sketches located in labeledSketches (but not in any subdirectories)
and will output the resulting training file as russell.tcrf.  This directory and output file
can be modified by changing the command run in testTrain.  See the wiki, especially Russell's
log for more information.

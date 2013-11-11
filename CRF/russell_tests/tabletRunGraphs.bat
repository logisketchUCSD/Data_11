:: Run the testRig on already trained data

:: Turn off screen output
@echo off

:: Get the current directory so we can move back there when we're done.
:: Be careful not to put spaces next to the =.  This doesn't work: "a = b"
set OLDDIR=%cd%

:: create a variable to make path names shorter.
:: note that %TRUNK% expands TRUNK exactly as typed, so a final " is needed.
set TRUNK="C:\Documents and Settings\sparkey\My Documents\Trunk

:: Turn screen printing back on
@echo on

:: Change directory to the run directory
cd %TRUNK%\Code\Util\TestRig\bin\Debug"

:: Run the recognition on a file (the same one we used to train it on)

:: Run without graph outputs
::TestRig.exe -s l [l -lab %TRUNK%\Data\Domains\labelMapFiles\ftree-nlt.txt" -crf %TRUNK%\Code\Recognition\RunCRF\russell_tests\russell.tcrf" %TRUNK%\Data\Domains\domainIndexFiles\ftree.txt"] -d %TRUNK%\Code\Recognition\RunCRF\russell_tests\labeledSketches"

:: Run with graph outputs for GraphMagics
TestRig.exe -s l [l -lab %TRUNK%\Data\Domains\labelMapFiles\ftree-nlt.txt" -crf %TRUNK%\Code\Recognition\RunCRF\russell_tests\russell.tcrf" %TRUNK%\Data\Domains\domainIndexFiles\ftree.txt" -printgraphs "%OLDDIR%\graphMagics"] -d %TRUNK%\Code\Recognition\RunCRF\russell_tests\labeledSketches"

:: Turn screen printing back off
@echo off

:: Change back to the original directory
cd %OLDDIR%

:: Long form of the command
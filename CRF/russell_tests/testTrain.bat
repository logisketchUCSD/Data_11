:: Train a CRF

:: Turn off printing to screen
@echo off

:: Get the current directory so we can move back there when we're done.
:: Be careful not to put spaces next to the =.  This doesn't work: "a = b"
set OLDDIR=%cd%

:: create a variable to make path names shorter.
:: note that %TRUNK% expands TRUNK exactly as typed, so final " is needed.
set TRUNK="C:\Documents and Settings\sketcher\My Documents\sketch

:: create a variable for horizontal line
set HORIZLINE=--------------------------------------------------------------------------

echo.
echo.Batch File to test CRF training
echo.%HORIZLINE%
echo.Changing to RunCRF Release Directory: \Code\Recognition\RunCRF\bin\Debug

:: Change directory to the training code directory
cd %TRUNK%\Code\Recognition\RunCRF\bin\Debug"

:: Run the training on the file called gng.txt using labeled sketch
:: files in russell_tests
:: More comments here later


:: Turn screen printing back on
@echo on

:: -n 3 b/c there are 3 classes in a family tree (node link text)

RunCRF.exe -t -ft -n 3 -l %TRUNK%\Data\Domains\domainIndexFiles\ftree.txt" -o ..\..\russell_tests\russell.tcrf -d ..\..\russell_tests\labeledSketches -map %TRUNK%\Data\Domains\labelMapFiles\ftree-nlt.txt"

:: Turn screen printing back off
@echo off

:: Change back to the original directory
cd %OLDDIR%

::This is what the expanded command looks like

:: RunCRF.exe -t -ft -n 3 -l "C:\Documents and Settings\sketcher\My Documents\sketch\Data\Domains\domainIndexFiles\ftree.txt" -o ..\..\russell_tests\russell.tcrf -d ..\..\russell_tests\labeledSketches -map "C:\Documents and Settings\sketcher\My Documents\sketch\Data\Domains\labelMapFiles\ftree-nlt.txt"
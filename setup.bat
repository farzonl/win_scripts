set varDevMountDrive=E:
set varDevMountPoint=%varDevMountDrive%/win_exe
set varDevLanguages=%varDevMountPoint%/Languages
set varDevTools=%varDevMountPoint%\Tools
set varDevRepos=%varDevMountDrive%\repos
set varJavaHome=%varDevLanguages%/x64/Java/jkd1.7.0_65/
set varCmakeBuildRoot=%varDevRepos%\CMAKE_BUILD_ROOT
set varPerl1=%varDevLanguages%\x64\Perl_(strawberry)\perl\bin
set varPerl2=%varDevLanguages%\x64\Perl_(strawberry)\perl\site\bin
set varPerl3=%varDevLanguages%\x64\Perl_(strawberry)\c\bin
set varSwigW=%varDevTools%\swigwin-3.0.8
set varGradle=%varDevTools%\gradle-2.10\bin
set varScripts=%varDevTools%\scripts
set varAutoJ=%varDevTools%\autojump\bin
set varAnt=%varDevTools%\apache-ant-1.9.6\bin
set varGit=%varDevTools%\Git\usr\bin
set varMingW=%varDevTools%\Git\mingw64\bin
set varGitCmd=%varDevTools%\Git\cmd
set varRuby=%varDevLanguages%\x64\Ruby192\bin
set varPython1=%varDevLanguages%\x64\Python
set varPython2=%varDevLanguages%\x64\Python\Scripts


reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v ANT_CUSTOM /t REG_SZ /d custom-FL.xml /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v DevMountPoint /t REG_SZ /d %varDevMountPoint% /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v DevLanguages /t REG_SZ /d %varDevLanguages% /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v DevTools /t REG_SZ /d  %varDevTools% /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v JAVA_HOME /t REG_SZ /d %varJavaHome% /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v CMAKE_BUILD_ROOT /t REG_SZ /d %varCmakeBuildRoot% /f

set varNewPath="%path%;%JAVA_HOME%;%varPerl1%;%varPerl2%;%varPerl3%;%varSwigW%;%varGradle%;%varScripts%;%varAutoJ%;%varAnt%;%varGit%;%varMingW%;%varGitCmd%;%varPython1%;%varPython2%"
echo new path is: %varNewPath%

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v Path /t REG_SZ /d %varNewPath%

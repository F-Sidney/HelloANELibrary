SET FLEX_ADT=java -jar "D:\Program Files\Adobe\Adobe Flash Builder 4.6\sdks\4.6.0\lib\adt.jar"
@REM ���ɵ�ANEĿ��·��
SET ANE_TARGET=HelloANELibrary.ane
@REM SWC��·��
SET ANE_SWC=HelloANELibrary.swc
@REM JAR��·��
@REM jar cf AndroidANE.jar org/
@rem SET ANE_JAR=..\androidANE\bin\AndroidANE.jar
@REM ��ѹ��SWC�������У�������HaoZipC�������滻�������κ�unzip����
@rem SET ZIP_CMD=d:\PortableApps\HaoZip\HaoZipC.exe x -oAndroid-ARM\ -y %ANE_SWC%
@rem SET ZIP_CMD="C:\Program Files\Git\bin\unzip.exe" %ANE_SWC% -d Android-ARM

%ZIP_CMD%
@rem copy /B /Y %ANE_JAR% Android-ARM\
@rem del Android-ARM\catalog.xml

@REM ��ʼ���ANE
%FLEX_ADT% -package -target ane %ANE_TARGET% extension.xml -swc %ANE_SWC% -platform Android-ARM -C ./ARM/ . -platform default -C ./ARM/ library.swf

@REM ���ƴ�����ANE��Ŀ��lib
@rem copy /B /Y %ANE_TARGET% ..\aneTest\libs
@REM copy /B /Y %ANE_TARGET% d:\works\sg\project_client\sgane\sganetest\libs\
@REM copy /B /Y %ANE_TARGET% d:\works\sg\project_client\build\original_files\extensions\
@REM copy /B /Y %ANE_TARGET% d:\works\sg\project_client\sgParent\libs\

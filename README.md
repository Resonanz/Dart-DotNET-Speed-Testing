# Dart-DotNET-Speed-Testing (2023-09-25)

## Description

A simple speed test to compare Dart and C#.NET.

### Tests
Math exp and sin functions.

## Versions:
- Dart: Dart SDK version: 3.1.2 (stable) (Tue Sep 12 16:26:23 2023 +0000) on "windows_x64"
- DotNET: 8.0.100-rc.1.23455.8

## To run:

### Compile Dart program 
#### For single .exe with embedded AoT compiler
- Go into Dart directory and compile: ```dart compile exe bin/Program.dart```
- Result: 4,763,136 byte program.exe

#### For single .aot that requires external AoT compiler to run
- Go into Dart directory and compile: ```dart compile aot-snapshot bin/Program.dart```
- Result: 874,688 byte program.aot

### DotNET
Compile and run the program: ```dotnet run```

## Results

### Run Dart program

Go into the /bin directory and run: ```program.exe```
Result: 126607078.81100518. Calculation time:  0:00:04.500831

Go into the /bin directory and run: ```dartaotruntime bin/Program.aot```
Result: 126607078.81100518. Calculation time:  0:00:04.545745

### C# DotNET

```<PublishAot>true</PublishAot>```
Result: 126607078.81100518. Calculation time (ms): 3120

```<PublishAot>false</PublishAot>```
Result: 126607078.81100518. Calculation time (ms): 3732
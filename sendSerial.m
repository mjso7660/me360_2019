%% TESTS
clear all
clc

delete(instrfind);

% arduino=serial('COM3','BaudRate',9600);
a = arduino('COM3');

fopen(arduino); 

roundtrip(a,42);
% fprintf(arduino,123);

fclose(arduino); % end communication with arduino
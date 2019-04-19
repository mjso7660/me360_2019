%% TESTS
clear all
clc

delete(instrfind);

arduino=serial('COM3','BaudRate',9600);
fopen(arduino); 

pause(1)

while 1
    new_str = split(fscanf(arduino,'%s'),',');
    disp(new_str);
end


fclose(arduino); % end communication with arduino
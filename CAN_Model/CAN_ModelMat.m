
clc
clear

FrameLenght = 110;
SimTime = 0.1;
CLK = 0.000002;

NodeTiming = 0.01;
time = NodeTiming / CLK;

ID = [0,0,0,0,0,1,1,0,0,1,0];

NodesID = [ 0,0,1,1,0,1,1,0,0,1,1
            0,0,1,1,0,1,1,0,0,1,0
            0,0,1,0,0,1,1,0,1,1,0
            0,0,1,1,1,1,1,0,0,1,0];
        

BusLoadInserted = 90;

NumOfFrame_Max = SimTime / (CLK * FrameLenght);

NumOfFrames = BusLoadInserted / 100 * NumOfFrame_Max;
RTS_Inc = round(SimTime / CLK / NumOfFrames);


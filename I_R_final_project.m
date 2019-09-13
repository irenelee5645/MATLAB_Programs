x=1;
voltn=-1;
%name the handler for the ardunio board au
%make a matrix LED size of 16*3; each row corresponds with each note; each row
%correponds with R G B
%notes - save each note
% each song S1... S10
% each beat BS1 ... BS10--> current one : BSP
I_R_final_project_data;
while 1
    voltc=readVoltage(au, 'A0');
    if abs(voltc - voltn)<.05
        if x<length(SP)
            % color of R
            writePWMVoltage(au,'D9', LED((strcmp(SP(x),notes)),3));
            % color of G
            writePWMVoltage(au,'D10', LED((strcmp(SP(x),notes)),2));
            % color of B
            writePWMVoltage(au,'D11', LED((strcmp(SP(x),notes)),1));
            if x>1 & strcmp(SP(x),notes)==strcmp(SP(x-1),notes)
                playTone(au,'D6',0);
                pause(.01);
            end
            for ii=1:15
                
                playTone(au,'D6',freqs(strcmp(SP(x),notes)),BSP(x));
            end
            x=x+1;
        else
            x=1;
        end
    else
        voltn=voltc;
        x=1;
        if voltn<.5
            SP=S1;
            BSP=BS1;
        elseif voltn<1
            SP=S2;
            BSP=BS2;
        elseif voltn<1.5
            SP=S3;
            BSP=BS3;
        elseif voltn<2
            SP=S4;
            BSP=BS4;
        elseif voltn<2.5
            SP=S5;
            BSP=BS5;
        elseif voltn<3
            SP=S6;
            BSP=BS6;
        elseif voltn<3.5
            SP=S7;
            BSP=BS7;
        elseif voltn<4
            SP=S8;
            BSP=BS8;
        elseif voltn<4.5
            SP=S9;
            BSP=BS9;
        else
            SP=S10;
            BSP=BS10;
        end
        BSP=BSP.*10;
    end
end
        
            
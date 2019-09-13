
rm=0;
Array1=[ 1 2 4 2 3 1 3 4 2 3 1 2 4 3 1 2 3 1 4 2 3 1 2 4 3 2 1 3 4 3 1 2 4 3 2];
Array2=[3 4 1 2 3 1 4 2 3 1 2 4 2 1 2 3 3 1 2 3 4 2 1 2 3 4 2 1 2 3 4 1 2 3 4 1];
Array3=[4 1 3 2 1 4 2 3 1 2 3 1 3 2 4 3 2 1 3 2 4 3 1 2 3 4 1 2 3 4 1 3 2 4 2 1];
Array4=[2 4 3 1 2 3 4 1 2 3 2 1 2 3 4 4 2 1 3 2 3 4 2 1 2 3 4 2 1 3 2 4 3 2 1 2];
Array5=[2 3 4 1 2 3 1 2 3 1 4 3 2 4 1 3 2 3 4 2 1 3 2 4 3 2 1 2 3 4 2 1 2 3 1 4];
go=0;
while 1
    fprintf('STARTING A NEW GAME\n\n');
    go=0;
    playTone(a,'D11', 700, 2);
    G_A=[2 4 3 4 2 3 4 2 3 4 2 4 3 4 3 3 2 3 4 3 2];
    
    for r=1:length(G_A)
        fprintf('\nloading level %d\n', r);
        pause(1);
        fprintf('The pattern : ');
        for g=1:r
            fprintf('%d ', G_A(g));
            playTone(a,'D11',400, .25);
            if G_A(g)==1
                writeDigitalPin(a,'D3',1);
                pause(.5);
                writeDigitalPin(a,'D3',0);
                pause(.25);
            elseif G_A(g)==2
                writeDigitalPin(a,'D5',1);
                pause(.5);
                writeDigitalPin(a,'D5',0);
                pause(.25);
            elseif G_A(g)==3
                writeDigitalPin(a,'D7',1);
                pause(.5);
                writeDigitalPin(a,'D7',0);
                pause(.25);
            elseif G_A(g)==4
                writeDigitalPin(a,'D9',1);
                pause(.5);
                writeDigitalPin(a,'D9',0);
                pause(.25);
            end
        end %show pattern
        fprintf('\n');
        fprintf('User input');
        for f=1:r
            fprintf('User input');
            fprintf('**%d\n',f);
            bp=0;
            while 1
                bp=0;
                
                if readDigitalPin(a,'D6')==0
                    bp=2;
                    pause(.25);
                    break;
                end
                if readDigitalPin(a,'D8')==0
                    bp=3;
                    pause(.25);
                    break;
                end
                if readDigitalPin(a,'D10')==0
                    bp=4;
                    pause(.25);
                    break;
                end
            end %get the value of the button pressed
            fprintf('%d ', bp);
            if G_A(f)~=bp
                fprintf('\n %d is not %d', bp, G_A(f));
                pause(2);
                go=1;
                fprintf('\n');
                break;
            else
                fprintf('\nnumber %d correct', f);
            end
            fprintf('\n');
        end
        if go==1
            fprintf('\n\nGAME OVER :(\n\n');
            playTone(a, 'D11', 1000, 2);
            pause(.5);
            playTone(a, 'D11', 1000, 2);
            break;
        end
        if r==length(G_A)
            fprintf('\n\n***LEVEL COMPLETE***\n\n');
            playTone(a, 'D11', 1000, .5);
            playTone(a, 'D11', 500, .5);
            playTone(a, 'D11', 1000, .5);
            playTone(a, 'D11', 500, .5);
        end
 
    end
end
            
            
                
       

    

    q = 1.60217653e-19;             % electron charge
    m = 9.10938215e-31;             % electron mass
    
    OV = 0; %%initial velocity
    OP = 0; %%initial position
    field = 1;
    
    t=0.01;
    
    for i=1:100
        force = q*field;
        v = (OV + force/m*t);
        
        r = rand(1,1);
        if r <= 0.05
            v = 0;
        end
        
        OV = v;
        vt(i) = v; 
        vd = mean(vt);
        P = OP + v/t;     
        OP = P;
        dF = v/i;
       
        
        subplot(1,2,1)
        plot(i,v, 'b*'); hold on;
        plot(i,vd, 'go');
        pause(0.1);
        xlabel('time');
        ylabel('Velocity');
        
        subplot(1,2,2)
        hold on;
        plot(i,P, 'b*');
        pause(0.1);
        xlabel('time');
        ylabel('Position');
        title(['Drift Velocity: ', num2str(dF)]);
        grid on
    end
    
    
    
    plot(v,y);
    
    xlabel('v');
    ylabel('y');
    grid on
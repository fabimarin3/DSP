function filtro = hendidura(f,Fs)
    F=f/Fs;
    wo=2*pi*F;
    w= [];
    magnitud=[];
    fase= [];
    bo=0.5;
    r=0.9;
    r2=r^2;
    %zeros=(1-(2*cos(wo)*(cos(w)-(sin(w)*i)))+(cos(2*w)-(sin(2*w)*i)));
    %polos=1-(2*r*cos(w)*(cos(w)-(sin(w)*i)))+(r^2*(cos(2*w)-(sin(2*w)*i)));
    %h = bo*zeros/polos;
     
for i=-pi:0.01:pi
   
        w=[w,i];
        
        am= sqrt(1+(1)-(2*1*cos(wo-i)));
        bm= sqrt(1+(1)-(2*1*cos(wo+i)));
        cm= sqrt(1+(r2)-(2*r*cos(wo-i)));
        dm= sqrt(1+(r2)-(2*r*cos(wo+i)));
        
        magnitud=[magnitud, (bo*(am*bm))/(cm*dm)];
        
        af= atan((sin(wo-i))/(1-(cos(wo-i))));
        bf= atan((sin(wo+i))/(1-(cos(wo+i))));
        cf= atan((r*sin(wo-i))/(1-(r*cos(wo-i))));
        df= atan((r*sin(wo+i))/(1-(r*cos(wo+i))))
        
        fase = [fase,(af*bf)/(cf*df)];
        
end
    figure(1)
    
    subplot(2,1,1),plot(w,magnitud); 
    title('Función |H1|(jw)')
    
    subplot(2,1,2),plot(w,fase);
    title('Función <H1(jw)')

        
end
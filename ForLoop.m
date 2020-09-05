
windspeed=round(net(input6))
DNI=round(net2(inputsolar6))
 
 num_rows=size(windspeed,1);
 num_cols=size(windspeed,2);

 for i=1:num_rows
     for j=1:num_cols
     if(windspeed(i,j)>=(90))
         fprintf('wind speed %0.0f (km/h)is very strog ((Cut out speed)).\n',windspeed(i,j))
          fprintf('wind power %f MW\n',((0.5*((windspeed(i,j))*(1000/3600))^3*82^2*pi*1.225*0.267)*960/10^6))%% 1000/3600 to convert speed from km/h to m/s and 10^6 to convert power from W to MW 
           
          
     elseif (windspeed(i,j)<(90)&& windspeed(i,j)>=(57.6))
         fprintf('wind speed %0.0f (km/h)is strong.\n',windspeed(i,j))
          fprintf('wind power %f MW\n',((0.5*((windspeed(i,j))*(1000/3600))^3*82^2*pi*1.225*0.267)*960/10^6))
          
     elseif (windspeed(i,j)<(57.6)&& windspeed(i,j)>=(43.2))
         fprintf('wind speed %0.0f (km/h) ((Turbines reach the highest efficiency)) .\n',windspeed(i,j))
          fprintf('wind power %f MW\n',((0.5*((windspeed(i,j))*(1000/3600))^3*82^2*pi*1.225*0.267)*960/10^6))
          
          elseif (windspeed(i,j)<(43.2)&& windspeed(i,j)>(12.6))
         fprintf('wind speed %0.0f  (km/h)in a good level  .\n',windspeed(i,j))
          fprintf('wind power %f MW\n',((0.5*((windspeed(i,j))*(1000/3600))^3*82^2*pi*1.225*0.267)*960/10^6))
          
     elseif (windspeed(i,j)==(12.6))
         fprintf('wind speed %0.0f  (km/h) ((equal to Cut in speed)) .\n',windspeed(i,j))
          fprintf('wind power %f MW\n',((0.5*((windspeed(i,j))*(1000/3600))^3*82^2*pi*1.225*0.267)*960/10^6))
          
     elseif  (windspeed(i,j)<(12.6))
         fprintf('wind speed %0.0f (km/h) in the minimum level ((less than the Cut in speed)).\n',windspeed(i,j))
           fprintf('wind power %f MW\n',((0.5*((windspeed(i,j))*(1000/3600))^3*82^2*pi*1.225*0.267)*960/10^6))
        
                   
     end
     
     end 

 end

for i=1:num_rows
     for j=1:num_cols
     if(DNI(i,j)>=5000)
          fprintf('DNI %0.1f (W/m^2) is very strog.\n',DNI(i,j))
          fprintf('solar tower power %f MW\n',(1362465*0.412*DNI(i,j))/10^6)
         
     elseif (DNI(i,j)>=4000)
          fprintf('DNI %0.1f (W/m^2) is strog.\n',DNI(i,j))
          fprintf('solar tower power %f MW\n',(1362465*0.412*DNI(i,j))/10^6)
           
     elseif (DNI(i,j)>=900)
         fprintf('DNI %0.1f (W/m^2) in a good level.\n',DNI(i,j)) 
          fprintf('solar tower power %f MW\n',(1362465*0.412*DNI(i,j))/10^6)
              
     elseif  (DNI(i,j)<900)
         fprintf('DNI %0.1f (W/m^2) is very weak.\n',DNI(i,j)) 
          fprintf('solar tower power %f MW\n',(1362465*0.412*DNI(i,j))/10^6)
              
     end
  
     end 
  
end


     for j=1:num_cols
         
         fprintf('Total power %f GW\n',(((0.5*((windspeed(i,j))*(1000/3600))^3*88^2*pi*1.225*0.267)*960/10^9))+(1362465*0.412*DNI(i,j)/10^9))
         
     end
     
     

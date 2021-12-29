function [output] = SynthesisEx5(input)
    
    global w1;
    global w2;
    global w3;
    
    
    
    T_hat = input(1);
    k_hat = input(2);
    alpha = 0.5;
    
   
    if (k_hat ~= 0)  
        w1 =(5 * T_hat - 1)/(k_hat * alpha);
        w2 = 1/k_hat;
        w3 = T_hat / k_hat;
        output = [(5 * T_hat - 1)/(k_hat * alpha); 1/k_hat; T_hat / k_hat];
    else
        output = [0 ; 0 ; 0];
        w1 = 0;
        w2 = 0;
        w3 = 0;
    end
    
    
    
end
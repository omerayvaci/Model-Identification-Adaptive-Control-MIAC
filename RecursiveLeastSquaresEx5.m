function [output] = RecursiveLeastSquaresEx5(input)

    global P;
    global p_hat;
    y = input(1);
    yd = input(2);
    u = input(3);
    %p_hat = input(4:5);

    Fi = [ -yd; u ];
    P = (P - (P * Fi * Fi' * P)/(1 + Fi' * P * Fi));
    k = P * Fi;
    e = y - Fi' * p_hat;
    p_hat = p_hat + k * e;
    output = p_hat;
    

end


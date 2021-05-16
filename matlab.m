format compact

iterations = input('Number of iterations: ');
% iterations = 100;

sum_total = 0;
for i=0:iterations
    temp = 0;
    while temp < 1 
        temp = temp + rand;
        sum_total = sum_total + 1;
    end
end


fprintf("e = %f\n", double(sum_total)/double(iterations));

function [xs, ys] = randpoints(width, height, n)

xs = [];
ys = [];
    for i =1:n
       xs = [xs,randi([-width width],1, 1)];
       ys = [ys,randi([-height height],1, 1)];
    end

end
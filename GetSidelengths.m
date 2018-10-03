function [sideLengths] = GetSidelengths(xs, ys, order)
sideLengths = [];
for i  = 1:length(order)-1
    sideLengths =[sideLengths, pdist2([xs(order(i)) ys(order(i))],[xs(order(i+1)) ys(order(i+1))],'euclidean')]; %obtaining euclidean distance    
end

end
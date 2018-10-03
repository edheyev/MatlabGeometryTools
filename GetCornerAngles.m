function [cornerAngles] = GetCornerAngles(xs, ys, sideLengths, order)
cornerAngles = [];
orderlong = [unique(order),unique(order),unique(order)];
for i = 1: length(sideLengths)
    x1 = xs(orderlong(i + 1))
    y1 = ys(orderlong(i + 1))
    xc = xs(orderlong(i))
    yc = ys(orderlong(i))
    x2 = xs(orderlong(i + 3))
    y2 = ys(orderlong(i + 3))
    
    
    lenA = pdist2([xc,yc],[x1,y1],'euclidean');
    lenB =pdist2([xc,yc],[x2,y2],'euclidean');
    lenC =pdist2([x1,y1],[x2,y2],'euclidean');
    
    angleC = rad2deg(real(acos(((lenA^2) +  (lenB^2) - (lenC^2))/(2*lenA*lenB))))
    
    cornerAngles = [cornerAngles, angleC];
end


end
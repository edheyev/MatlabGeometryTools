function [cornerAngles] = GetCornerAngles(ogCoords, sideLengths)
cornerAngles = [];
coords = ogCoords;
coords(:,end)= [];
coords = [coords,coords];


for i = 1: length(sideLengths)
    x1 = coords(1,i+1);
    y1 = coords(2,i+1);
    xc = coords(1,i);
    yc = coords(2,i);
    x2 = coords(1,i + length(sideLengths)-1);
    y2 = coords(2,i + length(sideLengths)-1);
    
    lenA = sqrt(((x1-xc)^2)+((y1-yc)^2));
    lenB = sqrt(((x2-xc)^2)+((y2-yc)^2));
    lenC = sqrt(((x2-x1)^2)+((y2-y1)^2));
    
    angleC = acos(((lenA^2) +  (lenB^2) - (lenC^2))/(2*lenA*lenB));
    cornerAngles = [cornerAngles, rad2deg(angleC)];
end

end
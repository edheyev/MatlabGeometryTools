function [sideLengths] = GetSidelengths(coords)
sideLengths = [];

for i = 1:length(coords)-1
   x1 = coords(1,i);
   y1 = coords(2,i);
   x2 = coords(1,i+1);
   y2 = coords(2,i+1);
   
   thislength = sqrt(((x2-x1)^2)+((y2-y1)^2));
   sideLengths = [sideLengths, thislength];
end

end
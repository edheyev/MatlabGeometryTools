function [sides, orderedCoords] = HullShape(coords)

k = convhull(coords(1,:),coords(2,:));
sides = length(unique(k));

uniqueK = unique(k);
hullCoords = [];

hullCoords(:,1) = coords(1,(unique(k)));
hullCoords(:,2) = coords(2,(unique(k)));% unused but could be useful
orderedCoords = coords(:,k);

plot(coords(1,k),coords(2,k),'g-');
fill(coords(1,k),coords(2,k),rand(1,3));

end
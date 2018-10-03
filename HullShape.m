function [sides, order] = HullShape(xs,ys)

k = convhull(xs,ys);
sides = length(unique(k));

uniqueK = unique(k);
hullCoords = []

hullCoords(:,1) = xs(unique(k));
hullCoords(:,2) = ys(unique(k));% unused but could be useful
order = k;

plot(xs(k),ys(k),'g-');


end
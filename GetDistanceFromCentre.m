function [distances] = GetDistanceFromCentre(coords)

distances = [];
centroid(1,1) = mean(coords(1,:));
centroid(2,1) = mean(coords(2,:));

plot([centroid(1,1)],[centroid(2,1)],'*');

for i = 1: length(coords)
    thisDistance = sqrt(((coords(1,i)-centroid(1,1))^2)+((coords(2,i)-centroid(2,1))^2));   
    distances = [distances, thisDistance];
end

end

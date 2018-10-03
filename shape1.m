clear
close all
hold on
%make random points
coords = randpoints(0, 100, 4);

%perfectSquare
%coords = [-2, -2, 2, 2; -2, 2, -2, 2]

%rectangle
%coords = [-20, -20, 20, 20; -2, 2, -2, 2];

[sides, orderedCoords] = HullShape(coords); % find hull shape and sides

sideLengths = GetSidelengths(orderedCoords); % get side lengths
sideVariance  = std(sideLengths)/ mean(sideLengths);

cornerAngles = GetCornerAngles(orderedCoords, sideLengths);
cornerVariance = std(cornerAngles)/ mean(cornerAngles);

distanceFromCentre = GetDistanceFromCentre(coords);
meanDistanceFromCentre = mean(distanceFromCentre);
irregularity = std(distanceFromCentre)/ mean(distanceFromCentre);

if (sides == 3)
    if((sum(cornerAngles>60))>1)
        disp("ACUTE TRIANGLE");
    elseif ((sum(cornerAngles>60))==1)
        disp("OBTUSE TRIANGLE");
    else
        disp("EQUALATERAL TRIANGLE");
    end
elseif (sides == 4)
    disp("QUADRILATERAL");
elseif (sides == 5)
    disp("PENTALATERAL");
elseif (sides == 6)
    disp("HEXATALATERAL");
elseif (sides == 7)
    disp("SEPTALATERAL");
elseif (sides == 8)
    disp("OCTOLATERA"); 
elseif (sides == 9)
    disp("NONALATERAL");
elseif (sides == 10)
    disp("DECALATERAL");
end


disp("Corner Var: " + cornerVariance);
disp("Side Var: " + sideVariance);
disp("Irregularity Var from Centroid: " + irregularity);
%disp("Mean distance from Centroid: " + meanDistanceFromCentre);

plot(coords(1,:),coords(2,:),'o');
xlim([min(coords(1,:))-2 max(coords(1,:))+2]);
ylim([min(coords(2,:))-2 max(coords(2,:))+2]);




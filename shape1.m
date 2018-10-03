clear
close all
hold on
%make random points
coords = randpoints(0, 100, 4);
[sides, orderedCoords] = HullShape(coords) % find hull shape and sides

sideLengths = GetSidelengths(orderedCoords); % get side lengths
sideVariance  = std(sideLengths)/ mean(sideLengths);
cornerAngles = GetCornerAngles(orderedCoords, sideLengths);% not working
cornerVariance = std(cornerAngles)/ mean(cornerAngles);


plot(coords(1,:),coords(2,:),'o')
xlim([min(coords(1,:))-2 max(coords(1,:))+2])
ylim([min(coords(2,:))-2 max(coords(2,:))+2])

if (sides == 3)
    'TRIANGLE'
elseif (sides == 4)
    'QUADRILATERAL'
elseif (sides == 5)
    'PENTALATERAL'
elseif (sides == 6)
    'HEXATALATERAL'
elseif (sides == 7)
    'SEPTALATERAL'
elseif (sides == 8)
    'OCTOLATERAL'   
elseif (sides == 9)
    'NONALATERAL'
elseif (sides == 10)
    'DECALATERAL'
end





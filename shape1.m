clear
close all

%make random points
[xs,ys] = randpoints(10, 10, 4); % generate random points

[sides, order] = HullShape(xs,ys) % find hull shape and sides

sidelengths = GetSidelengths(xs, ys, order); % get side lengths
sideVariance  = std(sidelengths)/ mean(sidelengths);
cornerAngles = GetCornerAngles(xs, ys, sidelengths, order);% not working

hold on
plot(xs,ys,'o')
xlim([min(xs)-2 max(xs)+2])
ylim([min(ys)-2 max(ys)+2])

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




%calculate intersections
% num lines to calculate =  nth triangle number eg n-1 + n-2 + n-3 ... + 1....sum(length(points)-1:-1:1)
% lines = [];
% linecount =0;
% for i = 1: length(points)
%     for j = i+1:length(points)
%         linecount = linecount + 1;
%             lines(linecount).m = (points{j,2} - points{i,2})/(points{j,1} - points{i,1}); %slope
%             lines(linecount).c = points{j,2}-(lines(linecount).m * points{j,1}); %intercept
%             lines(linecount).x1 = points{i,1};
%             lines(linecount).x2 = points{j,1};
%             lines(linecount).y1 = points{i,2};
%             lines(linecount).y2 = points{j,2};
%     end
% end
% %plotting
% hold on
% 
% for i = 1:length(lines)
%   x= linspace(lines(i).x1,lines(i).x2, 3); % Adapt n for resolution of graph
%   y = (lines(i).m * x) + lines(i).c;
%   
%   %plot(x,y)
% end
% for i =1:numPoints
%     %plot(points{i,1},points{i,2}, 'o')
% end



% %find number of intersections
% numintersecionts = 0;
% for i = 1: length(lines)
%     for j = i+1:length(lines)
%         poix =  (lines(j).c - lines(i).c)/(lines(i).m - lines(j).m);
%         poiy = (lines(j).m * poix) + lines(j).c;
%         if ((poix > min([lines(i).x1, lines(i).x2,lines(j).x1, lines(j).x2])) && (poix < max([lines(i).x1, lines(i).x2,lines(j).x1, lines(j).x2])))
%             if ((poiy > min([lines(i).y1, lines(i).y2,lines(j).y1, lines(j).y2])) && (poiy < max([lines(i).y1, lines(i).y2,lines(j).y1, lines(j).y2])))
%                 %plot(poix, poiy, 'o');
%             end
%         end
%     end
% end
% 
% % 
% if ((poix > min([lines(i).x1, lines(i).x2,lines(j).x1, lines(j).x2])) && (poix < max([lines(i).x1, lines(i).x2,lines(j).x1, lines(j).x2])))
%             if ((poiy > min([lines(i).y1, lines(i).y2,lines(j).y1, lines(j).y2])) && (poiy < max([lines(i).y1, lines(i).y2,lines(j).y1, lines(j).y2])))
%                 plot(poix, poiy, 'o');
%             end
%         end


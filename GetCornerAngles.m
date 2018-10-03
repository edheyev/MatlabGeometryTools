function [cornerAngles] = GetCornerAngles(xs, ys, lengths, order)
cornerAngles = [];
% for i  = 1:length(order)-1
%     cornerAngles = [cornerAngles, ];    
% end

A = 1;
B = 2;
C = 3;
D = 4;
hold on
plot([xs(order(B)) xs(order(D))],[ys(order(B)) ys(order(D))], '*')
for i = 1:length(lengths)

    da = lengths(order(A))
    db = pdist2([xs(order(B)) ys(order(B))],[xs(order(D)) ys(order(D))], 'euclidean')
    
    plot([xs(order(B)) xs(order(D))],[ys(order(B)) ys(order(D))])
    
    dc = lengths(order(C))
    
    if(A >= length(lengths))
        A = 1;
    else
        A = A + 1;
    end
    if (B >= length(lengths))
        B = 1;
     else
        B = B + 1;
    end
    
    if (C >= length(lengths))
        C = 1;
    else
        C = C + 1;
    end
     if (D >= length(lengths))
        D = 1;
    else
        D = D + 1;
    end
    
    
    %p2 = centre point distances are P2-P1 = A, P1-P3 = B and P3-P2 = C:

    (dc^2) +  (da^2) - (db^2)/(2*dc*da)
    %Angle = radtodeg(acos(((da^2)+(dc^2)-(db^2))/(2*da*dc)))
    angle = radtodeg(real(acos(((dc^2) +  (da^2) - (db^2))/(2*dc*da))))
    cornerAngles = [cornerAngles, angle];
    
end
%cornerAngles = radtodeg(cornerAngles);
end
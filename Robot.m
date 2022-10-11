l = 300; l2 = 220; l3 = 220; l4 = 150; lo1 = 100; lo2 = 150; l1 = 200;
while 1
  n = input('Moi ban nhap ma tran (toi da 9x9)');
  if n <=9
      break;
  end
end
temp1 = l/n;
% V? bàn c?
for I = 0:1:n
    for X = 0:1:300
        plot(I*300/n,X,'.','color','r');
        hold on
        grid on
    end
end
for J = 0:1:n
    for Y = 0:1:300
        plot(Y,J*300/n,'.','color','r');
        hold on
        grid on
    end
end
for a = 0:1:(n-1)
    for b = 0:1:(n-1)
        if mod(b,2) == 1
            for t = 0:0.05:2*pi
                xij = temp1*(b + 0.5);
                yij = temp1*(a + 0.5);
                x = xij + 5*cos(t);
                y = yij + 5*sin(t);
                A = x + lo1; B = y - lo2;
                c2 = (A^2 + B^2 - l3^2 - l2^2)/(2*l2*l3);
                s2 = sqrt(abs(1 - c2^2));
                t2 = atan2(s2,c2);
                c1 = A*(l3*c2 + l2) + B*(l3*s2);
                s1 = A*(-l3*s2) + B*(l2 + l3*c2);
                t1 = atan2(s1,c1);
                Px = l2*cos(t1) + l3*cos(t1 + t2)-lo1;
                Py = l2*sin(t1) + l3*sin(t1 + t2)+lo2;
                Pz = 0;
                plot(Px,Py,'.','color','k');
                hold on
                grid on
                pause(0.2);
            end
        elseif mod(b,2) == 0
            for t = 0:0.05:2*pi
                xij = temp1*(b + 0.5);
                yij = temp1*(a + 0.5);
                x = xij + 5*cos(t);
                y = yij + 5*sin(t);
                A = x + lo1; B = y - lo2;
                c2 = (A^2 + B^2 - l3^2 - l2^2)/(2*l2*l3);
                s2 = sqrt(abs(1 - c2^2));
                t2 = atan2(s2,c2);
                c1 = A*(l3*c2 + l2) + B*(l3*s2);
                s1 = A*(-l3*s2) + B*(l2 + l3*c2);
                t1 = atan2(s1,c1);
                Px = l2*cos(t1) + l3*cos(t1 + t2)-lo1;
                Py = l2*sin(t1) + l3*sin(t1 + t2)+lo2;
                Pz = 0;
                plot(Px,Py,'.','color','r');
                hold on
                grid on
                pause(0.2);
            end
        end      
    end
end
    

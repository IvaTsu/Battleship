function Dodatok_Sea_2
%Subfunction for observing ships of Player 2
%Vipadok choses the current nuber of the field of ships.
%We obtain it from Sea_Fight_Mod
%Copyright Ivan Tsud

global Vipadok
m = 10;
n = 10;
p2 = zeros(m, n);
%========

switch Vipadok
    %ships for the 2nd player
            %if form is like p1(1,1+p)=1;-it means that ship lacated
            %apeak
            %if form is like p1(1+p,10)=1;-it means that ship located 
            %horizontally
    case 1    
        for p = 0 : 3 %preparing 1 four tube ship
                p2(4 + p, 1) = 1;
        end
        for p = 0 : 2 %preparing 2 three tube ships
            p2(5, 3 + p) = 1;
            p2(9, 8 + p) = 1;
        end
        for p = 0 : 1 %preparing 3 three tube ships
            p2(1 + p, 7) = 1;
            p2(1 + p, 10) = 1;
            p2(4, 8 + p) = 1;
        end
            %preparing 4 One Tube Ships
            p2(2, 5) = 1;
            p2(1, 1) = 1;
            p2(1, 3) = 1;
            p2(8, 5) = 1;    
	case 2
        for p = 0 : 3
            p2(4, 5 + p) = 1;
        end
        for p = 0 : 2
            p2(7 + p, 3) = 1;
            p2(2, 8 + p) = 1;
        end
        for p = 0 : 1
            p2(2, 1 + p) = 1;
            p2(7, 5 + p) = 1;
            p2(9, 9 + p) = 1;
        end
            p2(1, 4) = 1;
            p2(5, 1) = 1;
            p2(10, 6) = 1;
            p2(6, 9) = 1;
    case 3
        for p = 0 : 3
            p2(4, 4 + p) = 1;
        end
        for p = 0 : 2
            p2(10, 1 + p) = 1;
            p2(9, 8 + p) = 1;
        end
        for p = 0 : 1
            p2(7, 3 + p) = 1;
            p2(6, 6 + p) = 1;
            p2(1, 9 + p) = 1;
        end
            p2(1, 4) = 1;
            p2(5, 1) = 1;
            p2(10, 6) = 1;
            p2(6, 9) = 1;
    case 4
        for p = 0 : 3 
            p2(7, 1 + p) = 1;
        end
        for p = 0 : 2
            p2(1 + p, 4) = 1;
            p2(3, 8 + p) = 1;
        end
        for p = 0 : 1
            p2(1, 6 + p) = 1;
            p2(9, 2 + p) = 1;
            p2(6 + p, 8) = 1;
        end
            p2(3, 1) = 1;
            p2(1, 2) = 1;
            p2(3, 6) = 1;
            p2(10, 9) = 1;
    case 5
        for p = 0 : 3
            p2(5 + p, 3) = 1;
        end
        for p = 0 : 2
            p2(1, 8 + p) = 1;
            p2(6 + p, 9) = 1;
        end
        for p = 0 : 1
            p2(2, 1 + p) = 1;
            p2(3 + p, 6) = 1;
            p2(8 + p, 6) = 1;
        end
            p2(6, 5) = 1;
            p2(1, 5) = 1;
            p2(4, 10) = 1;
            p2(10, 9) = 1;
    otherwise
        for p = 0 : 3
            p2(9, 2 + p) = 1;
        end
        for p = 0 : 2
            p2(4 + p, 5) = 1;
            p2(2 + p, 9) = 1;
        end
        for p = 0 : 1
            p2(5, 1 + p) = 1;
            p2(5 + p, 7) = 1;
            p2(10, 9 + p) = 1;
        end
            p2(2, 4) = 1;
            p2(2, 7) = 1;
            p2(6, 10) = 1;
            p2(8, 9) = 1;     
end

    function Frame_and_Cells(p,xdisp)
        %Here:
            %p is a 10*10 array in acccordance: p1 for the 1st player and p2 for
            %the 2nd player
            %xdisp is a certain coordinate, which be used: 0 for creation field of the 
            %1st player and 15 for creation field of the 2nd player 
            %==========
            %Frame
            hold on;
           
           plot([15 25 25 15 15], [10 10 0 0 10], 'k');
            %p2 field
            
            %Cells
            for i = 1 : 10%along x-coordinates
                for j = 1 : 10%along y-coordinates
                    j_inv= 11 - j;
                    plot([i - 1 + xdisp, i + xdisp, i + xdisp, i - 1 + xdisp,...
                        i - 1 + xdisp], [j_inv, j_inv, j_inv - 1, j_inv - 1, j_inv],...
                        'k', 'LineWidth', 2);

                    switch (p(i, j))%certain cell with certain coordinates
                        case 1%creation of ships
                            if (true && (xdisp == 15))
                                fill([i - 1 + xdisp, i + xdisp, i + xdisp,...
                                    i - 1 + xdisp, i - 1 + xdisp], [j_inv, j_inv, j_inv - 1,...
                                    j_inv - 1, j_inv], 'b');
                            end
                    end
                end
            end
            hold off;
    end
  
while (true)
    figure(3);
    set(gca, 'XTick', []);
    set(gca, 'YTick', []);
	Frame_and_Cells(p2,15);
	return;
end
end

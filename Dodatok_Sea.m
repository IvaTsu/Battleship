function Dodatok_Sea
%Subfunction for observing ships of Player 1
%Vipadok choses the current nuber of the field of ships.
%We obtain it from Sea_Fight_Mod
%Copyright Ivan Tsud
global Vipadok
turn = 1; %variable, that switches the player's turn
m = 10;
n = 10;
p1 = zeros(m, n);
%========

switch Vipadok
    case 1    
            %ships for the 1st player
            %if form is like p1(1,1+p)=1;-it means that ship lacated
            %apeak
            %if form is like p1(1+p,10)=1;-it means that ship located 
            %horizontally
            for p = 0 : 3 %preparing 1 the four tube ship
                p1(1, 2 + p) = 1; %apeak ship
            end
            for p = 0 : 2 %preparing 2 the three tube ships
                p1(3 + p, 3) = 1; %horizontal ship
                p1(3 + p, 5) = 1; 
            end
            for p = 0 : 1 %preparing 3 the two tube ships
                p1(1 + p, 10) = 1;
                p1(8, 2 + p) = 1;
                p1(8, 5 + p) = 1;
            end
            % preparing 4 the one tube ships
            p1(3, 8) = 1;
            p1(6, 8) = 1;
            p1(9, 8) = 1;
            p1(6, 10) = 1;
    case 2
            for p = 0 : 3
                p1(10, 1 + p) = 1;
            end
            for p = 0 : 2
                p1(9, 6 + p) = 1;
                p1(5, 1 + p) = 1;
            end
            for p = 0 : 1
                p1(1, 3 + p) = 1;
                p1(6, 7 + p) = 1;
                p1(1, 9 + p )= 1;
            end
            p1(2, 1) = 1;
            p1(7, 1) = 1;
            p1(6, 5) = 1;
            p1(10, 10) = 1;
    case 3       
             for p = 0 : 3
                p1(8, 5 + p) = 1;
            end
            for p = 0 : 2
                p1(10, 2 + p) = 1;
                p1(1 + p, 6) = 1;
            end
            for p = 0 : 1
                p1(6, 7 + p) = 1;
                p1(2, 1 + p) = 1;
                p1(8, 1 + p) = 1;
            end
            p1(4, 1) = 1;
            p1(4, 3) = 1;
            p1(3, 8) = 1;
            p1(8, 10) = 1;
	case 4
            for p = 0 : 3
                p1(10, 2 + p) = 1;
            end
            for p = 0 : 2
                p1(1 + p, 5) = 1;
                p1(8 + p, 9) = 1;
            end
            for p = 0 : 1
                p1(2, 2 + p) = 1;
                p1(2, 7 + p) = 1;
                p1(5 + p, 9) = 1;
            end
            p1(5, 5) = 1;
            p1(4, 3) = 1;
            p1(7, 6) = 1;
            p1(9, 7) = 1;
    case 5
            for p = 0 : 3
                p1(1 + p, 1) = 1;
            end
            for p = 0 : 2
                p1(1, 6 + p) = 1;
                p1(8, 8 + p) = 1;
            end
            for p=0 : 1
                p1(5 + p, 3) = 1;
                p1(3, 5 + p) = 1;
                p1(8, 3 + p) = 1;
            end
            p1(6, 5) = 1;
            p1(2, 3) = 1;
            p1(4, 9) = 1;
            p1(6, 7) = 1;
    otherwise
            for p = 0 : 3
                p1(7 + p, 5) = 1;
            end
            for p = 0 : 2
                p1(8 + p, 3) = 1;
                p1(4 + p, 8) = 1;
            end
            for p = 0 : 1
                p1(4 + p, 5) = 1;
                p1(2, 6 + p) = 1;
                p1(9, 9 + p) = 1;
            end
            p1(2, 1) = 1;
            p1(5, 1) = 1;
            p1(8, 7) = 1;
            p1(6, 10) = 1;
end

  function Frame_and_Cells(p, xdisp)
        %Here:
        %p is a 10*10 array for the 1st player 
        %xdisp is a certain coordinate, which be used: 0 for creation field of the 
        %1st player
        %==========
        
        %Frame
        hold on;
        %p1 field
        plot([0 10 10 0 0], [10 10 0 0 10], 'k');
             
        %Cells  
        for i = 1 : 10%along x-coordinates
            for j = 1 : 10%along y-coordinates
 
                %j_inv new y - coordinates
                j_inv = 11 - j;
                plot([i - 1 + xdisp, i + xdisp, i + xdisp, i - 1 + xdisp,...
                    i - 1 + xdisp], [j_inv, j_inv, j_inv-1, j_inv - 1, j_inv],...
                    'k', 'LineWidth', 2);
             
                switch (p(i, j))%certain cell with certain coordinates
                    case 1%creation of ships
                        %for field of the 1st player
                        if ((turn && (xdisp == 0)))    
                            fill([i - 1 + xdisp, i + xdisp, i + xdisp,...
                                i - 1 + xdisp, i - 1 + xdisp], [j_inv, j_inv,...
                                j_inv - 1, j_inv - 1, j_inv], 'b');
                        end
                end
            end
        end
        hold off;
  end
while (true)
    figure(2);
    set(gca, 'XTick', []);
    set(gca, 'YTick', []);
    Frame_and_Cells(p1, 0);
    return;
end
end

function Sea_Fight_Mod

%Copyright, Ivan Tsud

turn = 1;%variable, that switches the player's turn
%=========
%zero matrices for following usage as stencil(øàáëîí) for location ships
global Vipadok
m = 10;
n = 10;
p1 = zeros(m, n);
p2 = p1;
%========
%Generation randomly 6 cases of ship's location for both players
Vipadok = randi(6);
%^Vipadok choses the current nuber of the field of ships
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
            for p = 0 : 2  %preparing 2 the three tube ships
                p1(3 + p, 3) = 1;%horizontal ship
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
            %ships for the 2nd player
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
         %ships for the 1st player
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
                p1(1, 9 + p) = 1;
            end
            p1(2, 1) = 1;
            p1(7, 1) = 1;
            p1(6, 5) = 1;
            p1(10, 10) = 1;
            %ships for the 2nd player
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
       %ships for the 1st player
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
            %ships for the 2nd palyer
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
        %ships for the 1st player
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
            %ships for the 2nd player
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
         %ships for the 1st player
            for p = 0 : 3
                p1(1 + p, 1) = 1;
            end
            for p = 0 : 2
                p1(1, 6 + p) = 1;
                p1(8, 8 + p) = 1;
            end
            for p = 0 : 1
                p1(5 + p, 3) = 1;
                p1(3, 5 + p) = 1;
                p1(8, 3 + p) = 1;
            end
            p1(6, 5) = 1;
            p1(2, 3) = 1;
            p1(4, 9) = 1;
            p1(6, 7) = 1;
            %ships for the 2nd player
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
        %ships for the 1st player
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
            %ships for the 2nd player
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
            
    %Beginning of the Nested Function Frame_and_Cells
    function Frame_and_Cells(p, xdisp)
        %Here:
        %p is a 10*10 array in acccordance: p1 for the 1st player and p2 for
        %the 2nd player
        %xdisp is a certain coordinate, which be used: 0 for creation field of the 
        %1st player and 15 for creation field of the 2nd player 
        %==========
        
        %Frame
        hold on;
        %p1 field
        plot([0 10 10 0 0], [10 10 0 0 10], 'k');
        %p2 field
        plot([15 25 25 15 15], [10 10 0 0 10], 'k');
      
        %Cells
        for i = 1 : 10%along x-coordinates
            for j = 1 : 10%along y-coordinates
                %j_inv - to make new y-coordinates 
                j_inv = 11 - j;
                plot([i - 1 + xdisp, i + xdisp, i + xdisp, i - 1 + xdisp,...
                    i - 1 + xdisp], [j_inv, j_inv, j_inv - 1, j_inv - 1, j_inv],...
                    'k', 'LineWidth', 2);
             
                switch (p(i, j))%certain cell with certain coordinates
                    case 2%player miss
                        plot(i + xdisp - 0.5, j_inv - 0.5, 'go', 'LineWidth', 3.7, 'MarkerSize', 10);
                    case 3%player got
                        plot(i + xdisp - 0.5, j_inv - 0.5, 'r*');
                end
            end
        end
        hold off;
    end  %End of the Nested Function Frame_and_Cells
        
                %Beginning of the nested function Cheking
                %This function checks what number of times player got
                function x = Cheking(p)
                x = 0;
                for m = 1 : 10
                    for n = 1 : 10
                        if p(m, n) == 3
                            x = x + 1;
                        end
                    end
                end
                end
                %End of the nested function Cheking
                
% Main loop of the program
while (true)
     Frame_and_Cells(p1, 0);%Field of the 1st player
     Frame_and_Cells(p2, 15);%Field of the 2nd player
     axis equal
     set(gcf, 'Resize', 'on')
     set(gca, 'XTick', []); 
     set(gca, 'YTick', []);
      
     if (turn)%turn of the 1st player
        %Cells
        xdisp=15;
        hold on;
        for i = 1 : 10%along x-coordinates
            for j = 1 : 10%along y-coordinates
                j_inv = 11 - j;
                plot([i - 1 + xdisp, i + xdisp, i + xdisp, i - 1 + xdisp,...
                    i - 1 + xdisp], [j_inv, j_inv, j_inv - 1, j_inv - 1, j_inv],...
                    'r', 'LineWidth', 2);
            end
        end
        title('\bf Ãðàâåöü 1 õîäèòü!', 'Color', 'b');   
        [x, y] = ginput(1);
         x = ceil(x);%îêðóãëþºìî â ñòîðîíó á³ëüøîãî
         y = ceil(y);
         
         while ((x < 15 || x > 25) || (y < 0 || y > 10))
             [x, y] = ginput(1);
             x = ceil(x);
             y = ceil(y);
         end
         %New coordinates, to create (1,1) in the 1st cell of the 1st field
         %of the 1st player
         x = x - 15;
         y = 11 - y;
         
         switch (p2(x, y))%certain cell for player 1 with certain coordinates
             case 0%player 1 missed
                 p2(x, y) = 2;   
             case 1%player 1 got
                 p2(x, y)=3;
         end            
     else%turn of the 2nd player
         %Cells
        xdisp = 0;
        hold on;
        for i = 1 : 10%along x-coordinates
            for j = 1 : 10%along y-coordinates
                j_inv = 11 - j;
                plot([i - 1 + xdisp, i + xdisp, i + xdisp, i - 1 + xdisp,...
                    i - 1 + xdisp], [j_inv, j_inv, j_inv - 1, j_inv - 1, j_inv],...
                'r', 'LineWidth', 2);
            end
        end
         title('\bf Ãðàâåöü 2 õîäèòü!','Color','k');
         [x, y] = ginput(1);
         x = ceil(x);
         y = ceil(y);
         while ((x < 0 || x > 10) || (y < 0 || y > 10))
             [x, y] = ginput(1);
             x = ceil(x);
             y = ceil(y);
         end
         %New coordinates, to create (1,1) in the 1st cell of the 1st field
         %of the 2nd player
         y = 11 - y;
         switch (p1(x, y))%certain cell for player 2 with certain coordinates
             case 0%player 2 missed
                 p1(x, y) = 2;
             case 1%player 2 got
                 p1(x, y) = 3;
         end
     end
%====================
     %When player got, he turns again
     if (p2(x, y) == 3)
         turn = 1;
     elseif (p1(x, y) == 3)
        turn = 0;
     else turn =~ turn;
     end     
     pause(0.8);
     cla;     
%====================
    if Cheking(p1) == 20
        helpdlg('Ãðàâåöü 2 ïåðåì³ã!','Ïåðåìîãà!!')
        pause;
    elseif Cheking(p2)==20
        helpdlg('Ãðàâåöü 1 ïåðåì³ã!','Ïåðåìîãà!!')
        pause;
    end
end
end

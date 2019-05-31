%Returns an x and y value
function [x,y] = get_input()
%Prompts the user for a value, we call it x here
     x = (input('Enter x coordinate: '));
%Keeps the value between 1 and 5 (since our matrix is a 5x5, this is our
%constraint)    
    if x < 1 || x > 5
        x = (input('Value must be 1 - 5, enter X coordinate again: '));
    end
%Prompts the user for a value, we call it y here    
    y = (input('Enter y coordinate: '));
%Keeps the value between 1 and 5 (since our matrix is a 5x5, this is our
%constraint)    
    if y < 1 || y > 5
        y = (input('Value must be 1 - 5, enter Y coordinate again: '));
    end
   
end
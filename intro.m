function intro()
%Simple intro function that prints the rules of the game out
fprintf("Hello there! Welcome to our Battleship game!\n");
z = input('Would you like to go over the rules? 1 for yes, 0 for no: ');

%z must be 1 or 0, otherwise, restart the function until the user inputs
%the proper value
if z == 1
    fprintf("There are 10 ships hidden in the map, you must enter x,y coordinates");
    fprintf(" and if you enter them in the correct spot,\nyou will hit them and get a point!\n");
    fprintf("Your entries must be between 1 and 5, otherwise the program will not be happy!\n");
    fprintf("You get 25 shots at hitting the 10 ships, after that, you lose. Good luck!\n");
    fprintf("Let's play Battleship!\n");
elseif z == 0
    fprintf("Let's play Battleship!\n");
else
    fprintf("\n\nYou entered an incorrect number, starting over...\n\n");
    intro()
end
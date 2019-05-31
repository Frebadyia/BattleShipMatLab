guess_count = 0;
maxguesses = 25;
numofships = 10;
hitflag = 0;
current_shot = 0;
total_num_hits = 0;
play_again_flag = 0;
%Zero out matrix
ship_locations = zeros(5,5);
current_map = zeros(5,5);

%Fill freshly zeroed out matrix with 1s and 0s
%Also ensuring that there are only 10 1s
%Gets number of elements and places numofships number of 1s
%In this project, 25 elements, 10 number of 1s
ship_locations(randperm(numel(ship_locations),numofships)) = 1;
intro();

%Main loop
main(guess_count, maxguesses, ship_locations, hitflag, total_num_hits, current_map);

playagain = input('Would you like to play again?: 1 for yes, 0 for no: ');
if playagain == 1
main(0,maxguesses, ship_locations, hitflag, total_num_hits, current_map);
else
    fprintf("Game over\n");
end


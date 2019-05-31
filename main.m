function main(guess_count, maxguesses, ship_locations, hitflag, total_num_hits, current_map)
while guess_count < maxguesses
    %Calls get_input function, passes those value to x and y for
    %other functions
    [x,y] = get_input();

    %Update the current map to show the user where that had already shot a
    %missle
    current_map(x,y) = 1;
    
    %Current shot will either be 1 or 0, depending on return value
    %of didwehit. 1 if hit, 0 if miss
    current_shot = didwehit(x,y, ship_locations, hitflag, current_map);
    %total_num_hits is a simple counter for how many shots have hit
    %the board and been a successful attack
    total_num_hits = total_num_hits + current_shot;
    
    %Simply print the matrix for the user to see
    fprintf("    ---------------------------\n");
    disp(current_map(:,:))
    fprintf("    ---------------------------\n");

    guess_count = guess_count + 1;
    fprintf("Number of guesses left: %d\n", maxguesses - guess_count);
    fprintf("Total number of hits: %d\n", total_num_hits);
    
    if total_num_hits == 10
        fprintf("You win!\n");
        break;
    end
    fprintf("\n");
end
end
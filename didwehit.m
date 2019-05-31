function a = didwehit(x, y, ship_locations, hitflag, current_map) 
%If our x,y meet a 1 on the randomized matrix, that's a hit
    if ship_locations(x,y)
        fprintf("Hit!\n");
%Set hitflag to 1 so we can increment the counter later on
        hitflag = 1;
    else
%If we didn't land on a 1, it's a miss. Tell the user so
            fprintf("Miss!\n");
    end
%We are returning a, so if a = 1, 
%it will be added to our counter once returned.
%If it's a 0, then the counter won't go up. Working as intended. 
    a = hitflag;
end

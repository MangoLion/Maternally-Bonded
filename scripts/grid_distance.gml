var path, grid, length, x1, x2, y1, y2;
wall1 = argument0;
wall2 = argument1;

w1 = wall1.x;
w2 = wall2.x;
wall1.x = -1000;
wall2.x = -1000;

grid = mp_grid_create(0, 0, room_width / 16, room_height / 16, 16, 16);
mp_grid_add_instances(grid, Obstacle, false); 
path = path_add();

if (!mp_grid_path(grid, path, w1, wall1.y, w2, wall2.y, 1))
    return -1;

wall1.x = w1;
wall2.x = w2;
    
mp_grid_destroy(grid);
length = path_get_length(path);
path_delete(path);
return length;

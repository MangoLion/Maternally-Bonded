var length, rayNum, startX, startY, dir, nearestDist, nearestWall, wall, dis, xx, yy;
////cornerRaycast(length, rayNum, startX, startY)
length = argument0;
rayNum = 6;
startX = argument1;
startY = argument2;

dir = point_direction (startX, startY, room_width/2, room_height/2);
nearestDist = 1000000000;
nearestWall = noone;
for (i = 0; i < rayNum; i++){
    xx = startX + lengthdir_x(length, dir-55+14*i);
    yy = startY + lengthdir_y(length, dir-55+14*i);
    wall = collision_line(startX, startY, xx, yy, Obstacle, 0, 1);
    
    if (instance_exists(wall)){
        dis = point_distance(startX, startY, wall.x, wall.y);
        if (dis < nearestDist){
            nearestDist = dis;
            nearestWall = wall;
        }
    }
}

return nearestWall;

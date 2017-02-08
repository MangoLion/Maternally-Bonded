if (waving || stopping){
    child = instance_nearest(x,y, Children);
    direction = point_direction(x,y, child.x, child.y);
}

//down
if (direction > 228 && direction < 328){
    if (image_index > 3)
        image_index = 0;
    if (waving || stopping)
        image_index = 0;
}
else
//up
if (direction > 48 && direction < 138){
    if (image_index < 4)
        image_index = 4;
    if (image_index > 5)
        image_index = 4;
    if (waving || stopping)
        image_index = 4;
}
else
//left
if (direction > 138 && direction < 228){
    if (image_index < 6)
        image_index = 6;
    if (image_index > 7)
        image_index = 6;
    if (waving || stopping)
        image_index = 10;
}
  else  
//right
if (direction < 48 || direction > 328){
    if (image_index < 8)
        image_index = 8;
    if (image_index > 9)
        image_index = 8;
}


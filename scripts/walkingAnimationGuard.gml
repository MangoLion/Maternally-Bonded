//down
if (dir > 228 && dir < 328){
    if (image_index > 2)
        image_index = 0;
}
else
//up
if (dir > 48 && dir < 138){
    if (image_index < 3)
        image_index = 3;
    if (image_index > 5)
        image_index = 3;
}
else
//left
if (dir > 138 && dir < 228){
    if (image_index < 6)
        image_index = 6;
    if (image_index > 9)
        image_index = 6;
}
  else  
//right
if (dir < 48 || dir > 328){
    if (image_index < 10)
        image_index = 10;
    if (image_index > 13)
        image_index = 10;
}


module grid(num, space) {
  for (i = [0 : num[0]-1]){
    for (j = [0 : num[1]-1]){
        translate([space[0]*i, space[1]*j, 0]) children(0);
    }
  }
}

module xcube(size, radius, centerX, centerY, centerZ, center) {
    if(radius == undef){
        if(!centerX && !centerY && !centerZ) {
        cube(size, center);
        }
        else {
            x = centerX ? -size[0]/2 : 0;
            y = centerY ? -size[1]/2 : 0;
            z = centerZ ? -size[2]/2 : 0;
            translate([x,y,z]) cube(size);
        }
    }
    else{
        x = centerX ? size[0]*-.5 : 0;
        y = centerY ? size[1]*-.5 : 0;
        z = centerZ ? size[2]*-.5 : 0;
        translate([x,y,z]) hull() {
            if(radius[0] == 0) cube([1, 1, size[2]]);
            else translate([radius[0], radius[0]]) cylinder(r = radius[0], h = size[2]);
            if(radius[1] == 0) translate([size[0] - 1, 0]) cube([1, 1, size[2]]);
            else translate([size[0] - radius[1], radius[1]]) cylinder(r = radius[1], h = size[2]);
            if(radius[2] == 0) translate([size[0] - 1, size[1] - 1])cube([1, 1, size[2]]);
            else translate([size[0] - radius[2], size[1] - radius[2]]) cylinder(r = radius[2], h = size[2]);
            if(radius[3] == 0) translate([0, size[1] - 1]) cube([1, 1, size[2]]);
            else translate([radius[3], size[1] - radius[3]]) cylinder(r = radius[3], h = size[2]);
        }
    }
}
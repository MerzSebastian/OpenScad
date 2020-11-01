$fn=50;

        difference(){
            union(){
                translate([-13,-13,0]) rcube([26, 26, 2], [3, 3, 3, 3]);
                rotate([0,0,45]) translate([5,5,0]) translate([-15.5,-15.5,0]) rcube([31, 31, 2], [3, 3, 3, 3]);
            }
            
            translate([10,10,0]) cylinder(h=6,d=2.6);
            translate([10,-10,0]) cylinder(h=6,d=2.6);
            translate([-10,10,0]) cylinder(h=6,d=2.6);
            translate([-10,-10,0]) cylinder(h=6,d=2.6);
            rotate([0,0,45]) translate([5,5,0]) union(){
                translate([12.5,12.5,0]) cylinder(h=6,d=2.6);
                translate([12.5,-12.5,0]) cylinder(h=6,d=2.6);
                translate([-12.5,12.5,0]) cylinder(h=6,d=2.6);
                translate([-12.5,-12.5,0]) cylinder(h=6,d=2.6);
            }
            //cylinder(d=15, h=5);
            //translate([0,22,0]) cylinder(d=15, h=5);
            
        }
        
module rcube(size, radius) {
    hull() {
        // BL
        if(radius[0] == 0) cube([1, 1, size[2]]);
        else translate([radius[0], radius[0]]) cylinder(r = radius[0], h = size[2]);
        // BR
        if(radius[1] == 0) translate([size[0] - 1, 0]) cube([1, 1, size[2]]);
        else translate([size[0] - radius[1], radius[1]]) cylinder(r = radius[1], h = size[2]);
        // TR
        if(radius[2] == 0) translate([size[0] - 1, size[1] - 1])cube([1, 1, size[2]]);
        else translate([size[0] - radius[2], size[1] - radius[2]]) cylinder(r = radius[2], h = size[2]);
        // TL
        if(radius[3] == 0) translate([0, size[1] - 1]) cube([1, 1, size[2]]);
        else translate([radius[3], size[1] - radius[3]]) cylinder(r = radius[3], h = size[2]);
    }
}
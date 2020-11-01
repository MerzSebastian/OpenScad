//20x20 whoop vtx (diamons shape) adapter
$fn=50;


//baseplate
difference(){
        difference(){
            translate([-3,-3,0]) rcube([26, 26, 2], [3, 3, 3, 3]);
            
            
            translate([0,0,0]) cylinder(h=6,d=2.6);
            translate([20,0,0]) cylinder(h=6,d=2.6);
            translate([0,20,0]) cylinder(h=6,d=2.6);
            translate([20,20,0]) cylinder(h=6,d=2.6);
            
            
        }


//canopy cutout
    translate([10,10,15]) difference(){
                
        union(){
            sphere(d=21);
            rotate([180,0,0]) cylinder(h=30,d=21);
        }
        translate([-15,5,-30]) cube([30,10,40]);
        translate([-15,-15,-30]) cube([30,10,40]);
         
    }

    
translate([3,3,1]) cube([14,14,3]);
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
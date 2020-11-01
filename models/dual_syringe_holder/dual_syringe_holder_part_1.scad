$fn=100;
//bottom part
difference(){
    union(){
        cylinder(h=4, d=20.6);
        translate([23,0,0]) cylinder(h=4, d=20.6);
        translate([0,-10.3,0]) cube([23,20.6,4]);
    }
    
    cylinder(h=4, d=16.6);
    translate([23,0,0]) cylinder(h=4, d=16.6);
}

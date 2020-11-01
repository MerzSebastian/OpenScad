$fn=100;
//bottom part
difference(){
    union(){
        cylinder(h=12, d=14.5);
        translate([23,0,0]) cylinder(h=12, d=14.5);
        translate([0,-7.25,0]) cube([23,14.5,12]);
    }
    
    translate([0,0,1]) cylinder(h=11, d=10.5);
    translate([23,0,1]) cylinder(h=11, d=10.5);
}

$fn=100;

//top part
difference(){
    union(){
        cylinder(h=4, d=20.7);
        translate([23,0,0]) cylinder(h=4, d=20.7);
        translate([0,-10.35,0]) cube([23,20.7,4]);
    }
    
    
    translate([23,-10,2.1]) cube([16.7,20,1.2], center=true);
    translate([23,-10,0]) cube([7,27,5], center=true);
    
    translate([0,-10,2.1]) cube([16.7,20,1.2], center=true);
    translate([0,-10,0]) cube([7,27,5], center=true);
    
    translate([0,0,1.5]) cylinder(h=1.2, d=16.7);
    translate([23,0,1.5]) cylinder(h=1.2, d=16.7);
}
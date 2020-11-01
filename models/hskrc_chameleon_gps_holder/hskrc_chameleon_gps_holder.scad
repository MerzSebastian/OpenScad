
$fn=50;
difference(){
    union(){
        //standoff sleves
        union(){
            translate([0,-9.5,0]) cylinder(h=22, d=10.5);
            translate([0,9.5,0]) cylinder(h=22, d=10.5);
        }
        //rail for pcb
        translate([-5.25,14,17]) cube([45,5,5]);
        translate([-5.25,-19,17]) cube([45,5,5]);

        //support by standoffs
        translate([-5.25,-19,0]) cube([10.5,9.5,22]);
        translate([-5.25,9.5,0]) cube([10.5,9.5,22]);

        //26 degree support
        rotate([0,-26,0]) translate([4.2,14,-2.04]) cube([39,5,5]);
        rotate([0,-26,0]) translate([4.2,-19,-2.04]) cube([39,5,5]);
        
        //screw support
        rotate([90,0,0]) translate([37,21,-19]) cylinder(h=5, d=6);
        rotate([90,0,0]) translate([37,21,14]) cylinder(h=5, d=6);

    }
    //standoffs
    union(){
        translate([0,-9.5,0]) cylinder(h=22, d=6.5);
        translate([0,9.5,0]) cylinder(h=22, d=6.5);
    }
    
    //gps module
    translate([6,-15.75,18]) union(){
        cube([31.5,31.5,1.3]);
        translate([4,2.7,1.3]) cube([25,25,4]);
        
        //extension for cutout
        translate([0,26.5,0]) cube([35,5,1.3]);
        cube([35,5,1.3]);
    }
    rotate([90,0,0]) translate([37,21,-20]) cylinder(h=40, d=3.2);
}






//translate([50,14.75,22]) rotate([180,0,-90]) prism(29.5, 55, 22);


module prism(l, w, h){
       polyhedron(
               points=[[0,0,0], [l,0,0], [l,w,0], [0,w,0], [0,w,h], [l,w,h]],
               faces=[[0,1,2,3],[5,4,3,2],[0,4,5,1],[0,3,4],[5,2,1]]
               );
       }
   
   
$fn=50;


difference(){
    union(){
        
        
        //baseplate
        difference(){
            translate([-3,-3,0]) rcube([26, 26, 2], [3, 3, 3, 3]);
            
            
            translate([0,0,0]) cylinder(h=2,d=2.6);
            translate([20,0,0]) cylinder(h=2,d=2.6);
            translate([0,20,0]) cylinder(h=2,d=2.6);
            translate([20,20,0]) cylinder(h=2,d=2.6);
            
            
        }
        difference(){
            //canopy
            translate([10,10,15]) difference(){
                
                union(){
                    sphere(d=25);
                    rotate([180,0,0]) cylinder(h=15,d=25);
                }
                translate([-15,10,-25]) cube([30,10,35]);
                translate([-15,-20,-25]) cube([30,10,35]);
                
                
            }
            //cut for camera
            rotate([0,55,0]) translate([-13,3.5,18]) rcube([20, 13, 12], [6, 6, 6, 6]);

            

        }
        //antenna holder outside
        translate([5,10,-2]) rotate([0,-30,0]) cylinder(h=25,d=9);

    }
    //antenna holder inside
    translate([5,10,-2]) rotate([0,-30,0]) cylinder(h=25,d=5);
    
    
    //muttern aussparung
    translate([0,0,2]) cylinder(h=2,d=5);
    translate([20,0,2]) cylinder(h=2,d=5);
    translate([0,20,2]) cylinder(h=2,d=5);
    translate([20,20,2]) cylinder(h=2,d=5);
    
    
    //canopy cutout
    translate([10,10,15]) difference(){
                
        union(){
            sphere(d=21);
            rotate([180,0,0]) cylinder(h=30,d=21);
        }
        translate([-15,8,-30]) cube([30,10,40]);
        translate([-15,-18,-30]) cube([30,10,40]);
         
    }
    
    //remove everything under y=0
    translate([-3,-3,-100]) cube([26, 26, 100]);
    
    translate([2,0,-2]) union(){
        //indent for screw to reach the camera
        translate([0,0,0]) difference(){
            union(){
                rotate([90,0,0]) translate([10,15,-20]) cylinder(h=2,d=4.2);
                rotate([90,0,0]) translate([10,15,-2]) cylinder(h=2,d=4.2);
            }
            rotate([90,0,0]) translate([10,15,-30]) cylinder(h=50,d=2.2); 
        }
        //camera screw hole
        rotate([90,0,0]) translate([10,15,-30]) cylinder(h=50,d=2.2); 
    }
}




//spacer for camera screw
translate([2,0,-2]) difference(){
    union(){
        rotate([90,0,0]) translate([10,15,-18]) cylinder(h=1,d=5);
        rotate([90,0,0]) translate([10,15,-3]) cylinder(h=1,d=5);
    }
    rotate([90,0,0]) translate([10,15,-30]) cylinder(h=50,d=2.6); 
}


module rcube(size, radius) {
    hull() {
        // BL
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
include <openX.scad>;
$fn=50;

//grid([countX,countY],[spaceX,spaceY]) child()
translate([-14,20,0]) grid([5,5],[7,6]) cylinder(h=15,r=2.5,$fn=6);

//xcube([X,Y,Z],centerX,centerY,centerZ)
xcube([5,5,5],centerX=true,centerY=true,centerZ=false);
translate([10,0,0]) xcube([5,5,5],centerX=true,centerY=true,centerZ=true);
translate([20,0,0]) xcube([5,5,5],centerX=true,centerY=false,centerZ=false);


//xcube([X,Y,Z],[radiusX,radiusY,radiusZ],centerX,centerY,centerZ)
translate([0,-20,0]) xcube([5,5,5],[1,1,1,1],centerX=true,centerY=true,centerZ=false);
translate([10,-20,0]) xcube([5,5,5],[1,1,1,1],centerX=true,centerY=true,centerZ=true);
translate([20,-20,0]) xcube([5,5,5],[1,1,1,1],centerX=true,centerY=false,centerZ=false);



offsetx =8;
offsety  =9;
barpositionz=30;
rodwidth =10;

include <functions.scad>;

towerWidth = 25;
depth = barwidth+widthNema17+offsety+3;
width = barwidth*4 + rodYOffset+towerWidth/2;


thickness=10;
spacing_bars = 50;
holespacing = 30;

 

holes = [

	[barwidth /2,0 ,5.5],
	[barwidth /2,-holespacing ,5.5],
    [barwidth /2,-holespacing*2 ,5.5],
];



difference() {
    union() {
        
        /* base */
        translate([0,-barwidth*4 ,0]) 
            cube([depth,width,thickness],false);

        translate([0,rodYOffset - towerWidth/2,thickness]) 
            cube([towerWidth,towerWidth,barpositionz- thickness+barwidth],false);
    }
    
    translate([barwidth/2,rodYOffset,barpositionz- thickness+20]) 
        rotate([90,0,270])
            cylinder(h=15,r=rodwidth/2+0.5, center = false, $fs=1);
    
    translate([barwidth*2,-barwidth*4 ,0]) 
        cube([depth,barwidth*3.5,thickness],false);

    drawHoles(holes);


    

    translate([barwidth + 40
        , beltoffset - (pulleygt2InclBeltDia/2-timingbeltthickness)+b624zzdia/2
        , 0]) 
        cylinder(h=15,r=2, center = false, $fs=1);
    
    translate([barwidth + 20
        , beltoffset - (pulleygt2InclBeltDia/2-timingbeltthickness)-b624zzdia/2
        , 0]) 
        cylinder(h=15,r=2, center = false, $fs=1);
}


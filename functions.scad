
barwidth = 20;
width_ridge=4;
widthNema17=43;

rodYOffset = 50;
pulleygt2InclBeltDia = 13.5;
timingbeltthickness=1;
beltoffset = 20;

b624zzdia = 13;


module drawHoles(holes) {
    for(i = holes) {
		translate([ i[0],i[1],-0.1])
			cylinder(h=100,r=i[2]/2, center = false, $fs=1);
	}
}

module nema17(x,y,thickness) {
    nema17holeOffset =6;
    nema17innerHole=25/2;
    nema17Shaft=8/2;
    nema17HoleDistance =31;
    
    /* large NEMA17 circle */
    translate([x,y,-10]) 
        cylinder(h=thickness,r=nema17innerHole, center = false, $fs=1);


    translate([x-nema17HoleDistance/2
        , y-nema17HoleDistance/2
        , -1
    ])
        rotate([0,0,-45])
            cube([3,6,thickness],true);


    translate([x+nema17HoleDistance/2
        ,y+nema17HoleDistance/2
        , -1
    ])
        rotate([0,0,-45])
            cube([3,6,thickness],true);

    translate([x-nema17HoleDistance/2
        ,y+nema17HoleDistance/2
        , -1
    ])
        rotate([0,0,45])
            cube([3,6,thickness],true);

    translate([x+nema17HoleDistance/2
        ,y-nema17HoleDistance/2
        , -1
    ])
        rotate([0,0,45])
            cube([3,6,thickness],true);
    
}
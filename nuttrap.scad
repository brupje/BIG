barwidth = 20;
width_ridge=4;
widthNema17=43;
nema17holeOffset =6;
nema17innerHole=25/2;
nema17Shaft=8/2;
motorThickNess=5;
offsetx =9;
offsety  =9;
barpositionz=30;
rodwidth =10;
nutwidth=14.5;

height = 40;
width = 40;

thickness=3;
spacing_bars = 50;
largeCircle = 70.0;
holeSize=5.5;

holes = [
	[nutwidth-2,5,3],
	[width-5,height-nutwidth+2,3],
    [nutwidth,height-nutwidth-8,3],
    [nutwidth,height-nutwidth+8,3],
     [nutwidth-8,height-nutwidth,3],
     [nutwidth+8,height-nutwidth,3],
];



difference() {
    union() {

        cube([width,height,thickness],false);

        translate([nutwidth,height-nutwidth ,3]) 
            cylinder(h=7,r=11, center = false, $fs=1);

    }

    translate([width-nutwidth*1.2,0,0]) 
        cube([width-nutwidth*1.5,height-nutwidth*1.5,thickness],false);

    translate([nutwidth,height-nutwidth,thickness]) {

        translate([0,0,(-thickness-1)]) 
            cylinder(h=100,r=rodwidth/2*1.2, center = false, $fs=1);
    }

    for(i = holes) {
        translate([ i[0],i[1],0])
            cylinder(h=100,r=i[2]/2, center = false, $fs=1);
    }

}
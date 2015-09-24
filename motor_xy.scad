barwidth = 20;
width_ridge=4;
widthNema17=43;
nema17holeOffset =6;
nema17innerHole=25/2;
nema17Shaft=8/2;
motorThickNess=5;
offsetx =13;
offsety  =9;
barpositionz=30;
rodwidth =8;


height = barwidth+widthNema17+offsety;
width = barwidth+widthNema17+offsetx;

thickness=10;
spacing_bars = 50;
largeCircle = 70.0;
holeSize=5.5;

holes = [

	[barwidth /2,-barwidth*3 ,5.5],
	[barwidth /2,-barwidth ,5.5],
	
	[barwidth+nema17holeOffset+ offsetx,barwidth+nema17holeOffset+ offsety,3.5],
	/*[barwidth+nema17holeOffset+31+ offsetx,barwidth+nema17holeOffset+ offsety,3.5],
	[barwidth+nema17holeOffset+ offsetx,barwidth+nema17holeOffset+ offsety+31,3.5],
	[barwidth+nema17holeOffset+31+ offsetx,barwidth+nema17holeOffset+ offsety+31,3.5],*/
];



difference() {
union() {

cube([width,height,thickness],false);

translate([0,0,thickness]) 
cube([barwidth,barwidth,barpositionz- thickness+barwidth],false);

translate([0,-barwidth*4,0]) 
cube([barwidth+offsetx+10,barwidth*4+offsety,thickness],false);




}



translate([0,0,-0.1]) {
	//cube([barwidth,width,thickness+motorThickNess],false);


	for(i = holes) {
		translate([ i[0],i[1],0])
			cylinder(h=100,r=i[2]/2, center = false, $fs=1);
	}


}

translate([barwidth+widthNema17/2 + offsetx,barwidth+widthNema17/2 + offsety,-1]) 
	cylinder(h=100,r=nema17innerHole, center = false, $fs=1);

translate([width,-barwidth,-1]) 
	cylinder(h=100,r=40, center = false, $fs=1);


translate([-barwidth,height,-1]) 
	cylinder(h=100,r=40, center = false, $fs=1);

translate([-barwidth*2,-barwidth*2,-1]) 
	cylinder(h=100,r=40, center = false, $fs=1);

translate([barwidth/2,barwidth/2,barpositionz- thickness+20]) 
rotate([90,0,270])
	cylinder(h=15,r=rodwidth/2+0.5, center = false, $fs=1);

translate([barwidth+offsetx+3,-barwidth*4,-1]) 
cube([barwidth,barwidth*3,thickness+2],false);

translate([barwidth+nema17holeOffset+31+ offsetx,barwidth+nema17holeOffset+ offsety,thickness/2])
	cube([5,3.5,thickness+2],true);

translate([barwidth+nema17holeOffset+ offsetx,barwidth+nema17holeOffset+31+ offsety,thickness/2])
	cube([3.5,5,thickness+2],true);

translate([barwidth+nema17holeOffset+31+ offsetx,barwidth+nema17holeOffset+31+ offsety,thickness/2])
rotate([0,0,-45])
	cube([3.5,5,thickness+2],true);
}


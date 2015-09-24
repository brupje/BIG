barwidth = 20;
width_ridge=4;
widthNema17=45;

nema17holeOffset =6;
nema17innerHole=25/2;
nema17Shaft=8/2;
nema17Center = barwidth+widthNema17/2;
nema17HoleDistance =31;

motorThickNess=5;
offsetx =0;
offsety  =0;



height = barwidth+widthNema17+offsety+2;
width = barwidth+widthNema17+offsetx+2;

thickness=8;
spacing_bars = 50;
largeCircle = 70.0;
holeSize=5.5;

holes = [

	[barwidth+barwidth,barwidth /2,5.5],
	[barwidth /2,barwidth+barwidth,5.5],
	

];



difference() {
union() {

cube([width,width,thickness],false);

translate([offsetx+barwidth/2-width_ridge/2 ,offsety+ barwidth,0.5]) {
	cube([width_ridge,width - barwidth - offsety,thickness],false);
}

translate([offsetx + barwidth,offsety+barwidth/2-width_ridge/2,0.5]) {
	cube([width - barwidth - offsetx,width_ridge,thickness],false);
}

translate([barwidth+15,barwidth,thickness])
	cube([(width-barwidth)-15,height-barwidth,nema17Center+thickness],false);

}



translate([0,0,-0.1]) {
	cube([barwidth,barwidth,thickness+motorThickNess],false);


	for(i = holes) {
		translate([offsetx + i[0],offsety + i[1],0])
			cylinder(h=100,r=i[2]/2, center = false, $fs=1);
	}


}

translate([nema17Center,nema17Center,-1])
cylinder(h=100,r=nema17innerHole, center = false, $fs=1);

translate([width+1,nema17Center,thickness+widthNema17/2])
rotate([0,-90,0])
union() {
	cylinder(h=100,r=nema17innerHole, center = false, $fs=1);

translate([-nema17HoleDistance/2,-nema17HoleDistance/2,thickness+motorThickNess/2])
	rotate([0,0,-45])
		cube([3,6,400],true);	

translate([nema17HoleDistance/2,-nema17HoleDistance/2,thickness+motorThickNess/2])
	rotate([0,0,45])
		cube([3,6,400],true);	


translate([nema17HoleDistance/2,nema17HoleDistance/2,thickness+motorThickNess/2])
	rotate([0,0,-45])
		cube([3,6,400],true);	

translate([-nema17HoleDistance/2,nema17HoleDistance/2,thickness+motorThickNess/2])
	rotate([0,0,45])
		cube([3,6,400],true);	
}

}

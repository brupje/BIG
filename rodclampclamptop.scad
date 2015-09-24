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
rodwidth =8;
nutwidth=14;

height = 30;
width = barwidth;

thickness=10;
spacing_bars = 50;
largeCircle = 70.0;
holeSize=5.5;

holes = [
	[width/2,5,3.5],
	[width/2,height-5,3.5],
];



difference() {
union() {

cube([width-6,height,thickness],false);


}



	for(i = holes) {
		translate([ i[0],i[1],0])
			cylinder(h=100,r=i[2]/2, center = false, $fs=1);
	}
rotate([0,90,0])
translate([0,height/2,-10])
	cylinder(h=100,r=5, center = false, $fs=1);
}	

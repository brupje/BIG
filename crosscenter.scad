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
rodwidth =8.2;
nutwidth=16;

height = 90;
width = 60;

bearingod=15;
topbardistance=23;
bearinglength=26;
od624=13;
odpulley=12;
timingbeltthickness=1;

thickness=8;
spacing_bars = 50;
largeCircle = 70.0;
holeSize=5.5;
bardistance=50;
bearingoffset=2;


holes = [
	[-width,0,5],
	[-width/2,0,5],
	[+width,0,5],
	[+width/2,0,5],
	[0,-width,5],
	[0,-width/2,5],
	[0,+width,5],
	[0,+width/2,5],
];



difference() {
union() {

cube([barwidth,barwidth,thickness+barwidth],false);

translate([barwidth/2,barwidth/2,thickness/2])
rotate([0,0,45])
cube([barwidth*5-1,barwidth*5-1,thickness],true);

translate([-width,0,0])
cube([width*2+barwidth,barwidth,thickness],false);

translate([0,-width,0])
cube([barwidth,width*2+barwidth,thickness],false);

}

translate([barwidth/2+width,barwidth/2+width,0]) {
		cylinder(h=thickness+2,r=50, center = false, $fn=100);
	}

translate([barwidth/2-width,barwidth/2+width,0]) {
		cylinder(h=thickness+2,r=50, center = false, $fn=100);
	}


translate([barwidth/2+width,barwidth/2-width,0]) {
		cylinder(h=thickness+2,r=50, center = false, $fn=100);
	}


translate([barwidth/2-width,barwidth/2-width,0]) {
		cylinder(h=thickness+2,r=50, center = false, $fn=100);
	}


	for(i = holes) {
		translate([offsetx + i[0],offsety + i[1],0])
			cylinder(h=thickness+2,r=holeSize/2, center = false, $fs=1);
	}
}
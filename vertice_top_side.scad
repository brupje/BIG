offsetx =8;
offsety  =0;
width_ridge=4;
height = 150;
width = 150+offsetx;
barwidth = 20;
thickness=8;
spacing_bars = 50;
largeCircle = 120.0;
holeSize=5;

holes = [
	[barwidth /2,barwidth /2],
	[barwidth+barwidth/2,barwidth /2],
	[width/2+offsetx,barwidth /2],
	[width-offsetx-barwidth/2,barwidth /2],

	[barwidth /2,barwidth /2+spacing_bars],


	[barwidth /2,height-barwidth /2],
];



difference() {
union() {
cube([width,height,thickness],false);
translate([8+offsetx,0,0.5]) {
	cube([width_ridge,height,thickness],false);
}
translate([offsetx + barwidth,offsety+barwidth/2-width_ridge/2,0.5]) {
	cube([width - barwidth - offsetx,width_ridge,thickness],false);
}


}

translate([0,0,-0.1]) {

	translate([width,height,0]) {
		cylinder(h=thickness+2,r=largeCircle, center = false, $fs=6);
	}

	for(i = holes) {
		translate([offsetx + i[0],i[1],0])
			cylinder(h=thickness+2,r=holeSize/2, center = false, $fs=1);
	}
	
}
rotate([0,-45,0])
cube([30,height,20],false);

}
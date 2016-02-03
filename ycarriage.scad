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
width = 70;

bearingod=19;
topbardistance=23;
bearinglength=30;
od624=16;
odpulley=12;
timingbeltthickness=1;

thickness=14;
spacing_bars = 50;
largeCircle = 70.0;
holeSize=5.5;
bardistance=50;
bearingoffset=2;


holes = [
	[nema17holeOffset+ offsetx+ 31/2 + od624/2 -odpulley/2+bearingod+4/2,height/2,5]
];



difference() {
union() {

cube([width,height,thickness],false);

translate([19,height/2-30/2,thickness]) 
	cube([8,30,topbardistance-4],false);
    

translate([19,height/2-20/2,thickness+topbardistance-4]) 
	cube([8,20,8+5],false);
  

translate([0,0,thickness]) 
	cube([bearingod,height,topbardistance-4],false);

}

translate([19,height/2-3/2-4,thickness+topbardistance-4+5]) 
	cube([8,3,5],false);

translate([19,height/2-3/2+4,thickness+topbardistance-4+5]) 
	cube([8,3,5],false);

translate([70,(height/2)-(bardistance/2),thickness/2]) 
	rotate([0,-90,0])
		cylinder(h=width-10,r=rodwidth/2, center = false, $fs =1);

translate([70,(height/2)+(bardistance/2),thickness/2]) 
	rotate([0,-90,0])
		cylinder(h=width-10,r=rodwidth/2, center = false, $fs =1);

translate([bearingod/2,bearingoffset,thickness+topbardistance]) 
	rotate([-90,0])
		cylinder(h=bearinglength,r=bearingod/2, center = false, $fs =1);

translate([bearingod/2,height-bearingoffset-bearinglength,thickness+topbardistance]) 
	rotate([-90,0])
		cylinder(h=bearinglength,r=bearingod/2, center = false, $fs =1);
/*
translate([0,bearingoffset*2+bearinglength,thickness]) 
	cube([bearingod,height-bearingoffset*4-bearinglength*2,topbardistance],false);
*/
translate([0,0,thickness+topbardistance/2]) {
	translate([0,bearinglength/4,0])
		cube([bearingod,5,3], center = false);

	translate([0,bearinglength/4*3,0])
		cube([bearingod,5,3], center = false);

	translate([0,height-bearingoffset*2-bearinglength+bearinglength/4,0])
		cube([bearingod,5,3], center = false);

	translate([0,height-bearingoffset*2-bearinglength+bearinglength/4*3,0])
		cube([bearingod,5,3], center = false);
}

	for(i = holes) {
		translate([ i[0],i[1],0])
			cylinder(h=100,r=i[2]/2, center = false, $fs=1);
	}

translate([nema17holeOffset+ offsetx+ 31/2 + od624/2 -odpulley/2+bearingod+4/2,height/2])
cylinder(h=5,r=6, center = false, $fs=1);

}
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

height = 25;
width = 50;

bearingod=15;

topbardistance=23;
bearinglm10uulength=30;
odlm10uu=19.3;
od=26;
id=14;
od624=13;
odpulley=12;
timingbeltthickness=1;

thickness=7;
spacing_bars = 50;
largeCircle = 70.0;
holeSize=5.5;
bardistance=50;
bearingoffset=2;


holes = [
	[-width/2+7,0,4],
	[width/2-7,0,4]
];



difference() {
	union() {
		
		cylinder(h=bearinglm10uulength+4,r=od/2, center = false, $fs =1);

		translate([-width/2,-height/2-5])
		cube([width,height,thickness]);
	}

	translate([0,0,0])
		cylinder(h=bearinglm10uulength,r=odlm10uu/2, center = false, $fs =1);

	translate([0,0,1])
		cylinder(h=bearinglm10uulength+4,r=odlm10uu/2-0.5, center = false, $fs =1);

	translate([-2,0,0])
	cube([4,height,bearinglm10uulength+5]);

	for(i = holes) 
		translate([ i[0],i[1],0])
			cylinder(h=100,r=i[2]/2, center = false, $fs=1);
}
barwidth = 20;
width_ridge=4;
widthNema17=45;
nema17holeOffset =6;
nema17innerHole=25/2;
nema17Shaft=8/2;
nema17Center = widthNema17/2;
nema17HoleDistance =31;

motorThickNess=5;
offsetx =0;
offsety  =0;



height = widthNema17-5;
width = widthNema17-5;

thickness=barwidth;
spacing_bars = 50;
largeCircle = 70.0;
holeSize=5.5;
od608=22;
id608=8;
holes = [

];



difference() {
union() {

cube([width,width,thickness/2],false);

cube([width+15,5,thickness],false);
cube([5,width+15,thickness],false);


}



translate([0,0,-0.1]) {


	for(i = holes) {
		translate([offsetx + i[0],offsety + i[1],0])
			cylinder(h=100,r=i[2]/2, center = false, $fs=1);
	}


}

translate([nema17Center,nema17Center,3]) 
	cylinder(h=100,r=od608/2+0.2, center = false, $fs=1);

translate([nema17Center,nema17Center,-1]) 
	cylinder(h=100,r=id608/2*1.2, center = false, $fs=1);


translate([width+15/2,-1,thickness/2]) 
	rotate([-90,0,0])
	cylinder(h=100,r=5.5/2, center = false, $fs=1);

translate([-1,width+15/2,thickness/2]) 
	rotate([0,90,0])
	cylinder(h=100,r=5.5/2, center = false, $fs=1);
}
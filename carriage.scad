barwidth = 20;
width_ridge=4;
widthNema17=43;
nema17holeOffset =6;
nema17innerHole=25/2;
nema17Shaft=8/2;
motorThickNess=5;
offsetx =9;
offsety  =0;



height = 70;
width = 80;

thickness=5;
spacing_bars = 50;
largeCircle = 70.0;
holeSize=5.5;

holes = [

];



difference() {
union() {

cube([width,height,thickness],false);



}



translate([30,12,-0.1]) {
	cube([20,45,thickness+2],false);


	for(i = holes) {
		translate([ i[0],i[1],0])
			cylinder(h=100,r=i[2]/2, center = false, $fs=1);
	}


}

translate([40,35,-1]) 
	cylinder(h=100,r=20, center = false, $fs=1);


}
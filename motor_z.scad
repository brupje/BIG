barwidth = 20;
width_ridge=4;
widthNema17=45;



nema17Center = barwidth+widthNema17/2;

motorThickNess=5;
offsetx =0;
offsety  =0;


include <functions.scad>;

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

translate([barwidth,barwidth,thickness])
	cube([width-barwidth,height-barwidth,thickness],false);

}



translate([0,0,-0.1]) {
	cube([barwidth,barwidth,thickness+motorThickNess],false);


	for(i = holes) {
		translate([offsetx + i[0],offsety + i[1],0])
			cylinder(h=100,r=i[2]/2, center = false, $fs=1);
	}


}

nema17(nema17Center,nema17Center,50);

}
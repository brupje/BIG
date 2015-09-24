barwidth = 20;
width_ridge=4;
widthNema17=43;
nema17holeOffset =6;
nema17innerHole=25/2;
nema17Shaft=8/2;
motorThickNess=10;
offsetx =9;
offsety  =9;
barpositionz=30;
rodwidth =8;
nutwidth=14;

height = 50;
width = barwidth*1.3;

thickness=6;
spacing_bars = 50;
largeCircle = 70.0;
holeSize=5.5;
widthendstop=18;

holes = [
	[width/2+5,5,3.5],
	[width/2+5,height-5,3.5],
];



difference() {
union() {

cube([width,height,thickness],false);


}

		translate([ 6,height/2+widthendstop/2,-1]){
			cylinder(h=100,r=3/2, center = false, $fs=1);
			cylinder(h=5,r=6/2, center = false, $fn=6);
			}	
		translate([ 6,height/2-widthendstop/2,-1]){
			cylinder(h=100,r=3/2, center = false, $fs=1);
			cylinder(h=5,r=6/2, center = false, $fn=6);
			}	
	for(i = holes) {
		translate([ i[0],i[1],0])
			cylinder(h=100,r=i[2]/2, center = false, $fs=1);
	}

}	

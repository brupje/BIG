
width = 80;
depth = 40;
bottomthickness=18;
towerheight=5;
holedistance=50;
od624=13;
timingbeltwidth=2;
timingbeltheight=7;
e3dwidth=16.2;
e3dwidthid=12;
e3dheight=18-4;
difference() {

	union() {
		cube([width,depth,bottomthickness],center=false);

		translate([0,0,bottomthickness])
		cube([15,depth,towerheight],center=false);

		translate([width-13,0,bottomthickness])
		cube([13,depth,towerheight],center=false);

		translate([width-13,0,1+timingbeltheight+2])
		cube([13,24,towerheight],center=false);
	}

	/* extruder main hole */
	translate([width/2,depth/2,-1]){
		cylinder(h=e3dheight,r=e3dwidth/2,center=false,$fs=1);
		cylinder(h=100,r=e3dwidth/2-2,center=false,$fs=1);
	}

	/* large cylinders */
	translate([width/2,-30,-1])
		cylinder(h=100,r=40,center=false,$fn=50);

	translate([width/2,depth+30,-1])
		cylinder(h=100,r=40,center=false,$fn=50);

  /* extruder holes */
	translate([width/2-e3dwidthid/2-3/2,0,e3dheight-7-3/2])
		rotate([-90,0,0])
			cylinder(h=100,r=3/2,center=false,$fs=1);
	
	translate([width/2+e3dwidthid/2+3/2,0,e3dheight-7-3/2])
		rotate([-90,0,0])
			cylinder(h=100,r=3/2,center=false,$fs=1);

	translate([width/2+17.5,0,3+3/2])
		rotate([-90,0,0])
			cylinder(h=100,r=3/2,center=false,$fs=1);

	translate([width-8,0,15])
		rotate([-90,0,0])
			cylinder(h=100,r=3/2,center=false,$fs=1);

	translate([width/2-holedistance/2,depth/2,-1])
	cylinder(h=100,r=3/2,center=false,$fs=1);

	translate([width/2+holedistance/2,depth/2,-1])
	cylinder(h=100,r=3/2,center=false,$fs=1);
	
	translate([width/2-holedistance/2,depth/2,bottomthickness])
	cylinder(h=100,r=7/2,center=false,$fs=1);

	translate([width/2+holedistance/2,depth/2,bottomthickness])
	cylinder(h=100,r=7/2,center=false,$fs=1);

	translate([5,depth/2-5,-1])
	cylinder(h=100,r=3/2,center=false,$fs=1);

	translate([5,depth/2+5,-1])
	cylinder(h=100,r=3/2,center=false,$fs=1);


	translate([0,depth/2-od624/2-2,1])
		cube([10,7,timingbeltheight],center=false);

	translate([0,depth/2+od624/2-5,1+timingbeltheight+2])
		cube([10,7,timingbeltheight],center=false);


	translate([width-30,depth/2+od624/2-5/2,1])
	cube([30,5,timingbeltheight+5],center=false);

	translate([width-13,depth/2+od624/2-5/2,10])
	cube([30,25,timingbeltheight+105],center=false);

	translate([width-28,0,1])
		cube([10,20,timingbeltheight+5],center=false);

	translate([width-28,depth-8,1])
		cube([10,8,timingbeltheight+5],center=false);

	translate([width-15,depth/2-od624/2-5/2,1+timingbeltheight+2])
		cube([15,5,timingbeltheight+5],center=false);
}

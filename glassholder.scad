

glassheight=3;
widthroof=2;

difference() {
union() {
translate([10,10,glassheight+widthroof/2])
	rotate([0,0,45])
	cube([30,30,widthroof],true);

cube([40,10,glassheight+widthroof]);
cube([10,40,glassheight+widthroof]);
}

translate([-10,-30,0])
	cube([40,30,glassheight+widthroof]);

translate([-30,-10,0])
	cube([30,40,glassheight+widthroof]);

translate([35,5,0])
	cylinder(h=100,r=4/2,center=false,$fs=1);
translate([5,35,0])
	cylinder(h=100,r=4/2,center=false,$fs=1);
}
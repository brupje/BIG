
od = 16;
id = 4;
height=2;


difference(){
	union(){
		cylinder(h=height-1,r=od/2,center=false,$fs=1);
		cylinder(h=height,r=id,center=false,$fs=1);
	}
	cylinder(h=height,r=id/2,center=false,$fs=1);
}
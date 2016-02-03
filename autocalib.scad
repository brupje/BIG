width = 27;
m3holedistance =20;
depthtop=25;
difference() {
    union() {
        cube([width,depthtop,8],false);
        
        translate([0,depthtop,0]) 
        cube([width,8,30],false);
        
        translate([0,depthtop+8,22]) 
        cube([width,27,8],false);
    }
    translate([0+width/2,depthtop+8+30/2,22]) 
    cylinder(h=100,d=19,center=false);
    
    translate([3,5,0]) 
    cylinder(h=100,d=3,center=false,$fn=10);
    
    translate([3,15,0]) 
    cylinder(h=100,d=3,center=false,$fn=10);
    
    translate([3+m3holedistance,5,0]) 
    cylinder(h=100,d=3,center=false,$fn=10);
    
    translate([3+m3holedistance,15,0]) 
    cylinder(h=100,d=3,center=false,$fn=10);
}
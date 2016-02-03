width = 10;
m3holedistance =20;
difference() {
    union() {
        cube([width,20,5],false);
        
        translate([0,20,0]) 
        cube([width,10,16],false);
        
   
    }
    
    translate([5,5,0]) 
        cylinder(h=100,d=3,center=false,$fn=10);
    
    
    translate([0,25,3]) 
    rotate([0,90,0])
        cylinder(h=100,d=3,center=false,$fn=10);
    
    translate([0,25,13]) 
    rotate([0,90,0])
        cylinder(h=100,d=3,center=false,$fn=10);
}
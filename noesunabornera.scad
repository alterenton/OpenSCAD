//rotate([-45,0,0])translate([10,0,0])cube(10);
module cilindro(){
	rotate([90,0,0])
		translate([2.5,0,0])
			cylinder(20,1.25,1.25, $fn=100, center=true);
}
//cilindro();

for(sep=[0:16]){
	difference(){
		translate([5.1*sep,0,0])
			cube([5,5,20]);
		
		rotate([90,0,0])
			translate([5.1*sep+2.5,5,0])
				cylinder(20,1.25,1.25, $fn=100, center=true);
		
		rotate([90,0,0])
			translate([5.1*sep+2.5,15,0])
				cylinder(20,1.25,1.25, $fn=100, center=true);
	}
}


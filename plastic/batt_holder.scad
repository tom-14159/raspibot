$fn=50;

difference() {
	translate([20,0,3])
		difference () {
			union() {
				translate([-22,0,5])
					cube(size=[12,70,18], center=true);

				translate([13,0,5])
					cube(size=[80,12,18], center=true);
			}

			translate([0,0,8])
				cube(size=[100,64,16], center=true);
		}

	cylinder(r=2.3, h=100, center=true);
	translate([50,0,0])
		cylinder(r=2.3, h=100, center=true);

	cylinder(r=4.6, h=100);
	translate([50,0,0])
		cylinder(r=4.6, h=100);
}

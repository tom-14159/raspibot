thickness = 1.1;
r_base = 5;
r_mm_hole = 2.3;

$fn = 50;

module holder() {
	difference() {
		hull() {
			translate([0,-5,0]) {
				cylinder(r=r_base, h=thickness);
				translate([ 0, 2*r_base, 0 ])
					cylinder(r=r_base, h=thickness);
				translate([ 0, 2*2*r_base, 0 ])
					cylinder(r=r_base, h=thickness);
			}

			translate([ 2*r_base-1.5 + 17.5/2, 9, 0 ])
				cylinder(r=r_base, h=thickness);

			translate([ 2*r_base-1.5, 0, 0 ])
				cylinder(r=r_base, h=thickness);
			translate([ 2*r_base-1.5 + 17.5, 0, 0 ])
				cylinder(r=r_base, h=thickness);
		}

		translate([0,0,-thickness]) {
			translate([0,-5,0]) {
				cylinder(r=r_mm_hole, h=3*thickness);
				translate([ 0, 2*r_base, 0 ])
					cylinder(r=r_mm_hole, h=3*thickness);
				translate([ 0, 2*2*r_base, 0 ])
					cylinder(r=r_mm_hole, h=3*thickness);
			}

			translate([ 2*r_base-1.5 + 17.5/2, 9, 0 ])
				cylinder(r=r_mm_hole, h=3*thickness);

			translate([ 2*r_base-1.5, 0, 0 ])
				cylinder(r=2, h=3*thickness);
			translate([ 2*r_base-1.5 + 17.5, 0, 0 ])
				cylinder(r=2, h=3*thickness);
		}
	}
}

holder();
translate([30,35,0])
	rotate([0,0,180])
		holder();

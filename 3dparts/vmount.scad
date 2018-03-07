difference () {
    cube([32,9,9], center=false);
	translate([6, 0, 0]) {
		cube([32-6*2, 3, 9]);
	}
    translate([10, 0, 3]) {
         cube([32-10*2, 9, 9-3*2]);
    }
    translate([7, 6, 0]) {
        cylinder(r=1.75, h=9, $fs=0.1);
    }
    translate([32-7, 6, 0]) {
        cylinder(r=1.75, h=9, $fs=0.1);
    }
    translate([3, 0, 4.5]) {
        rotate([-90, 0, 0,]) {
            cylinder(r=1.75, h=9, $fs=0.1);
        }
    }
    translate([32-3, 0, 4.5]) {
        rotate([-90, 0, 0,]) {
            cylinder(r=1.75, h=9, $fs=0.1);
        }
    }
}

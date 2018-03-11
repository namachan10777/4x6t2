difference () {
    v_hole_r = 1.75;
    h_hole_r = 1.5;
    height = 4.6;
    width  = 32;
    depth  = 9;
    v_hole_offset = 7;
    h_hole_offset = 3;
    $fs = 0.1;
    
    cube([width,depth,height], center=false);
	translate([6, 0, 0]) {
		cube([width-6*2, 3, height]);
	}
    translate([v_hole_offset, depth-3, 0]) {
        cylinder(r=v_hole_r, h=height);
    }
    translate([width-7, 6, 0]) {
        cylinder(r=v_hole_r, h=height);
    }
    translate([h_hole_offset, 0, height/2]) {
        rotate([-90, 0, 0,]) {
            cylinder(r=h_hole_r, h=depth);
        }
    }
    translate([width-h_hole_offset, 0, height/2]) {
        rotate([-90, 0, 0,]) {
            cylinder(r=h_hole_r, h=depth);
        }
    }
}

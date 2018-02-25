difference() {
    intersection () {
        union() {
            cylinder(r=4, h=3, $fs=0.1);
            translate([0,0,3]) {
                cylinder(r=8, h=1.5, $fs=0.1);
            }
        }
        translate([0,0,-20]) {
            sphere(25);
        }
    }
    translate([-3.5/2,-4.5/2,0]) {
        cube([3.5,4.5,3]);
    }
}
difference () {
    cube([10,6,9], center=false);
    translate([3,3,4.5]){
        cylinder(h=10, r=1.75, center=true, $fs=0.1);
    }
    translate([7,3,4.5]) {
        rotate([90,0,0]){
            cylinder(h=10, r=1.75, center=true, $fs=0.1);
        }
    }
}

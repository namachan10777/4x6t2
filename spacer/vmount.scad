difference () {
    cube([14,10,10], center=false);
    translate([5,5,5]){
        cylinder(h=10, r=1.75, center=true, $fs=0.1);
    }
    translate([9,5,5]) {
        rotate([90,0,0]){
            cylinder(h=10, r=1.75, center=true, $fs=0.1);
        }
    }
}

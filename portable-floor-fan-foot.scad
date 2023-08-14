$fn = 200;

foot_x = 17.8;
foot_y = 26.5;
foot_z = 13.9;
pipe_d = 16;
screwhead_plus_washer_h = 3.7;

module foot() {
    difference () {
        //Overall shape + hollowed out for metal pipe
        difference () {
            cube([foot_x, foot_y, foot_z]);
            translate([-5, 13, 13])
            rotate ([0, 90, 0])
            cylinder(h = foot_x * 2, d = pipe_d);
        }

        //Screwhole
        union() {
            translate([foot_x/2, 13, -0.1])
            cylinder(h = screwhead_plus_washer_h + 0.5, d = 11);
            translate([foot_x/2, 13, 4-0.2])
            cylinder(h = 10, d = 2);
        }
    }
}

foot();
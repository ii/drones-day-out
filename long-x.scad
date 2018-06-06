use <LEGO.scad>;

// Create the outter ring
//difference () {
//cylinder(3, 83, 83, center=false);
//cylinder(3, 78, 78, center=false);
//}

block_width = 1;
block_length = 3;
block_height_ratio = 1/3;
block_type = "brick";
block_brand = "lego";
stud_type = "hollow";
technic_holes = "no";
vertical_axle_holes = "no";
wing_type = "full";
wing_end_width = 2;
wing_base_length = 3;
wing_stud_notches = "yes";
slope_stud_rows = 1;
slope_end_height = 0;
curve_stud_rows = 5;
curve_type = "concave";
curve_end_height = 0;
roadway_width = 0;
roadway_length = 0;
roadway_x = 0;
roadway_y = 0;
dual_sided = "no";
dual_bottom = "no";
use_reinforcement = "no";
stud_rescale = 1.05;
//stud_rescale = 1.0475 * 1; // Orion Delta, T-Glase
//stud_rescale = 1.022 * 1; // Orion Delta, ABS

// Bottom Middle Brick
translate([0, 0, (block_type == "tile" ? block_height_ratio * block_height : 0)]) rotate([0, (block_type == "tile" ? 180 : 0), 45]) {
    translate([-20,-20,0]){
      cube(size=[40,40,5]);
    }
    block(
        width=5,
        length=5,
        height=block_height_ratio,
        type=block_type,
        brand=block_brand,
        stud_type=stud_type,
        horizontal_holes=(technic_holes=="yes"),
        vertical_axle_holes=(vertical_axle_holes=="yes"),
        reinforcement=(use_reinforcement=="yes"),
        wing_type=wing_type,
        wing_end_width=wing_end_width,
        wing_base_length=wing_base_length,
        stud_notches=(wing_stud_notches=="yes"),
        slope_stud_rows=slope_stud_rows,
        slope_end_height=slope_end_height,
        curve_stud_rows=curve_stud_rows,
        curve_type=curve_type,
        curve_end_height=curve_end_height,
        roadway_width=roadway_width,
        roadway_length=roadway_length,
        roadway_x=roadway_x,
        roadway_y=roadway_y,
        stud_rescale=stud_rescale,
        dual_sided=(dual_sided=="yes"),
        dual_bottom=(dual_bottom=="yes")
    );
}
// Bottom Middle 3x3 to make solid bottom
// Bottom Middle Brick
translate([0, 0, (block_type == "tile" ? block_height_ratio * block_height : 0)]) rotate([0, (block_type == "tile" ? 180 : 0), 45]) {
    block(
        width=3,
        length=3,
        height=block_height_ratio,
        type=block_type,
        brand=block_brand,
        stud_type=stud_type,
        horizontal_holes=(technic_holes=="yes"),
        vertical_axle_holes=(vertical_axle_holes=="yes"),
        reinforcement=(use_reinforcement=="yes"),
        wing_type=wing_type,
        wing_end_width=wing_end_width,
        wing_base_length=wing_base_length,
        stud_notches=(wing_stud_notches=="yes"),
        slope_stud_rows=slope_stud_rows,
        slope_end_height=slope_end_height,
        curve_stud_rows=curve_stud_rows,
        curve_type=curve_type,
        curve_end_height=curve_end_height,
        roadway_width=roadway_width,
        roadway_length=roadway_length,
        roadway_x=roadway_x,
        roadway_y=roadway_y,
        stud_rescale=stud_rescale,
        dual_sided=(dual_sided=="yes"),
        dual_bottom=(dual_bottom=="yes")
    );
}
// Bottom Middle 3x3 to make solid bottom
// Bottom Middle Brick
translate([0, 0, (block_type == "tile" ? block_height_ratio * block_height : 0)]) rotate([0, (block_type == "tile" ? 180 : 0), 45]) {
    block(
        width=4,
        length=4,
        height=block_height_ratio,
        type=block_type,
        brand=block_brand,
        stud_type=stud_type,
        horizontal_holes=(technic_holes=="yes"),
        vertical_axle_holes=(vertical_axle_holes=="yes"),
        reinforcement=(use_reinforcement=="yes"),
        wing_type=wing_type,
        wing_end_width=wing_end_width,
        wing_base_length=wing_base_length,
        stud_notches=(wing_stud_notches=="yes"),
        slope_stud_rows=slope_stud_rows,
        slope_end_height=slope_end_height,
        curve_stud_rows=curve_stud_rows,
        curve_type=curve_type,
        curve_end_height=curve_end_height,
        roadway_width=roadway_width,
        roadway_length=roadway_length,
        roadway_x=roadway_x,
        roadway_y=roadway_y,
        stud_rescale=stud_rescale,
        dual_sided=(dual_sided=="yes"),
        dual_bottom=(dual_bottom=="yes")
    );
}
// Top Middle Brick
translate([0, 0, (block_type == "tile" ? block_height_ratio * block_height : 2)]) rotate([0, (block_type == "tile" ? 180 : 0), 45]) {
    block(
        width=5,
        length=5,
        height=block_height_ratio,
        type=block_type,
        brand=block_brand,
        stud_type=stud_type,
        horizontal_holes=(technic_holes=="yes"),
        vertical_axle_holes=(vertical_axle_holes=="yes"),
        reinforcement=(use_reinforcement=="yes"),
        wing_type=wing_type,
        wing_end_width=wing_end_width,
        wing_base_length=wing_base_length,
        stud_notches=(wing_stud_notches=="yes"),
        slope_stud_rows=slope_stud_rows,
        slope_end_height=slope_end_height,
        curve_stud_rows=curve_stud_rows,
        curve_type=curve_type,
        curve_end_height=curve_end_height,
        roadway_width=roadway_width,
        roadway_length=roadway_length,
        roadway_x=roadway_x,
        roadway_y=roadway_y,
        stud_rescale=stud_rescale,
        dual_sided=(dual_sided=="yes"),
        dual_bottom=(dual_bottom=="yes")
    );
}
// Top Middle Brick 3x3
translate([0, 0, (block_type == "tile" ? block_height_ratio * block_height : 2)]) rotate([0, (block_type == "tile" ? 180 : 0), 45]) {
    block(
        width=3,
        length=3,
        height=block_height_ratio,
        type=block_type,
        brand=block_brand,
        stud_type=stud_type,
        horizontal_holes=(technic_holes=="yes"),
        vertical_axle_holes=(vertical_axle_holes=="yes"),
        reinforcement=(use_reinforcement=="yes"),
        wing_type=wing_type,
        wing_end_width=wing_end_width,
        wing_base_length=wing_base_length,
        stud_notches=(wing_stud_notches=="yes"),
        slope_stud_rows=slope_stud_rows,
        slope_end_height=slope_end_height,
        curve_stud_rows=curve_stud_rows,
        curve_type=curve_type,
        curve_end_height=curve_end_height,
        roadway_width=roadway_width,
        roadway_length=roadway_length,
        roadway_x=roadway_x,
        roadway_y=roadway_y,
        stud_rescale=stud_rescale,
        dual_sided=(dual_sided=="yes"),
        dual_bottom=(dual_bottom=="yes")
    );
}
// Long middle brick X
translate([0, 0, (block_type == "tile" ? block_height_ratio * block_height : 0)]) rotate([0, (block_type == "tile" ? 180 : 0), 90]) {
    translate([0,0,+1.5]) {
      cube([5,262,3],center=true);
    }
    block(
        width=33,
        length=1,
        height=block_height_ratio,
        type=block_type,
        brand=block_brand,
        stud_type=stud_type,
        horizontal_holes=(technic_holes=="yes"),
        vertical_axle_holes=(vertical_axle_holes=="yes"),
        reinforcement=(use_reinforcement=="yes"),
        wing_type=wing_type,
        wing_end_width=wing_end_width,
        wing_base_length=wing_base_length,
        stud_notches=(wing_stud_notches=="yes"),
        slope_stud_rows=slope_stud_rows,
        slope_end_height=slope_end_height,
        curve_stud_rows=curve_stud_rows,
        curve_type=curve_type,
        curve_end_height=curve_end_height,
        roadway_width=roadway_width,
        roadway_length=roadway_length,
        roadway_x=roadway_x,
        roadway_y=roadway_y,
        stud_rescale=stud_rescale,
        dual_sided=(dual_sided=="yes"),
        dual_bottom=(dual_bottom=="yes")
    );
}
// Long middle brick Y
translate([0, 0, (block_type == "tile" ? block_height_ratio * block_height : 0)]) rotate([0, (block_type == "tile" ? 180 : 0), 0]) {
    translate([0,0,+1.5]) {
      cube([5,262,3],center=true);
    }
    block(
        width=33,
        length=1,
        height=block_height_ratio,
        type=block_type,
        brand=block_brand,
        stud_type=stud_type,
        horizontal_holes=(technic_holes=="yes"),
        vertical_axle_holes=(vertical_axle_holes=="yes"),
        reinforcement=(use_reinforcement=="yes"),
        wing_type=wing_type,
        wing_end_width=wing_end_width,
        wing_base_length=wing_base_length,
        stud_notches=(wing_stud_notches=="yes"),
        slope_stud_rows=slope_stud_rows,
        slope_end_height=slope_end_height,
        curve_stud_rows=curve_stud_rows,
        curve_type=curve_type,
        curve_end_height=curve_end_height,
        roadway_width=roadway_width,
        roadway_length=roadway_length,
        roadway_x=roadway_x,
        roadway_y=roadway_y,
        stud_rescale=stud_rescale,
        dual_sided=(dual_sided=="yes"),
        dual_bottom=(dual_bottom=="yes")
    );
}



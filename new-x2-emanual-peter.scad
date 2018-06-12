use <LEGO.scad>;

arm_length = 10; // studs counting from the controller plate
arm_studs = 4; // studs keep have at end of arm
x_length = 2 * arm_length + 5; // including the 5 of the controller plate
x_width = 3 ;

// we 'fill' in the bottom of the bricks
fill_height = 2.2 ; // we seem to need 2.2mm
x_fill_length = x_length * 8; // each stud is 8mm
x_fill_width = x_width * 8 - 1; // just enough to merge with walls
controller_fill = 5 * 8; // 5 controller studs

// lego block module settings
plate = 1/3; // Plate height ratio
stud_type = "hollow"; // Prints better
stud_rescale = 1.05; // fits better on our Prusa printer

// 5x5 Controller Plate
block(
    width=5,
    length=5,
    height=plate,
    stud_type=stud_type,
    stud_rescale=stud_rescale
);

// Easier to print a flat bottom
// We do this by placing a cube same size
// as the controller directly on the 'floor'
translate([0,0,fill_height/2]){
    cube(size=[controller_fill,controller_fill, fill_height], center=true);
}

// The X (removing any studs that interfere w/ controller plate)
difference(){
    union(){
        // the X w/ fill
        rotate([0,0,45]) // left / right
        {
            block(
                length=x_length,
                width=x_width,
                height=plate,
                stud_type=stud_type,
                stud_rescale=stud_rescale
            );
            // fill the underneath with a block
            translate([0,0,fill_height/2]){
                cube([x_fill_length,x_fill_width,fill_height],center=true);
            }
        }
        rotate([0,0,-45]) // front right / rear left
        {
            block(
                length=x_length,
                width=x_width,
                height=plate,
                stud_type=stud_type,
                stud_rescale=stud_rescale
            );
            // fill the underneath with a block
            translate([0,0,fill_height/2]){
                cube([x_fill_length,x_fill_width,fill_height],center=true);
            }
        }
    }
    // removing the studs within a certain diameter
    translate([0,0,3.2]){
        clear = (arm_length-arm_studs+2.5)*8;
        cylinder(5,clear,clear);
    }
}

// ring
//difference () {
//    outer=116;
//    inner=111;
//    cylinder(3,outer,outer);
//    cylinder(3,inner,inner);
//}

// place this on top of our drone arms
f="Comic Sans MS:style=Bold";
// f="Latin Modern Sans Demo Cond:style=Bold";
//f="Latin Modern Sans Quotation:style=Bold";

s=4;
translate([0,0,3]){
    linear_extrude(height=0.8){
        rotate([0,0,45]){
        translate([-45,0,0])
        text("Emanuel",valign="center",halign="center",size=s,font=f);
        translate([45,0,0])
        text("New X2",valign="center",halign="center",size=s,font=f);
        }
        rotate([0,0,-45]){
        translate([-45,0,0])
        text("iimaginarium",valign="center",halign="center",size=s,font=f);
        translate([45,0,0])
        text("Peter",valign="center",halign="center",size=s,font=f);
        }
    }
}

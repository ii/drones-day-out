use <LEGO.scad>;

// seems my printer can only handle 33 studs (264mm) in an x
// may have to print separate parts to get bigger than this
arm_length = 12; // studs counting from the controller plate
x_length = 2 * arm_length + 5; // including the 5 of the controller plate

// we 'fill' in the bottom of the bricks
fill_height = 2.2 ; // we seem to need 2.2mm
x_fill = x_length * 8; // each stud is 8mm
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
        rotate([0,0,60]) // left /
        {
            block(
                length=x_length,
                width=1,
                height=plate,
                stud_type=stud_type,
                stud_rescale=stud_rescale
            );
            // fill the underneath with a block
            translate([0,0,fill_height/2]){
                cube([x_fill,7,fill_height],center=true);
            }
        }
        rotate([0,0,120]) // right \
        {
            block(
                length=x_length,
                width=1,
                height=plate,
                stud_type=stud_type,
                stud_rescale=stud_rescale
            );
            // fill the underneath with a block
            translate([0,0,fill_height/2]){
                cube([x_fill,7,fill_height],center=true);
            }
            
        }
        rotate([0,0,180]) // right \
        {
            block(
                length=x_length,
                width=1,
                height=plate,
                stud_type=stud_type,
                stud_rescale=stud_rescale
            );
            // fill the underneath with a block
            translate([0,0,fill_height/2]){
                cube([x_fill,7,fill_height],center=true);
            }
            
        }
    }
    // removing the studs within a certain diameter
    translate([0,0,3.2]){
        cylinder(5,105);
    }
}

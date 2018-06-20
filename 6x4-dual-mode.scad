use <LEGO.scad>;

// seems my printer can only handle 33 studs (264mm) in an x
// may have to print separate parts to get bigger than this
arm_length = 10; // studs counting from the controller plate
arm_studs = 3; // studs keep have at end of arm
x_length = 2 * arm_length + 5; // including the 5 of the controller plate
x_width = 1. ;

// we 'fill' in the bottom of the bricks
fill_height = 2.2 ; // we seem to need 2.2mm
/* x_fill_length = x_length * 8; // each stud is 8mm */
/* x_fill_width = x_width * 8 - 1; // just enough to merge with walls */
/* controller_fill = 5 * 8; // 5 controller studs */

// lego block module settings
plate = 1/3; // Plate height ratio
stud_type = "hollow"; // Prints better
stud_rescale = 1.05; // fits better on our Prusa printer

module filled_block(b_length, b_width) {
     block(length=b_length, width=b_width,
           height=plate, stud_type=stud_type,
           stud_rescale=stud_rescale
          );
     // fill the underneath with a block
     translate([0,0,fill_height/2]){
          cube([b_length*8,b_width*8-1,fill_height],center=true);
     }
}

module drone_controller_mount(){
     difference() {
          // 5x5 Controller Plate
          filled_block(5,5) 
          translate([0,0,fill_height/2]){cube([3*8,3*8,8],center=true);}
          translate([0,8,4.21]){cube([5*8,1*8,2],center=true);}
          translate([0,-8,4.21]){cube([5*8,1*8,2],center=true);}
          translate([8,0,4.21]){cube([1*8,5*8,2],center=true);}
          translate([-8,0,4.21]){cube([1*8,5*8,2],center=true);}
          translate([0,0,4.21]){cube([1*8,1*8,2],center=true);} // center stud
     }
}

module star_struts(){
     base=45;
     nudge=20;
     rotate([0,0,base*1+nudge]) {translate([-2.5,0,0]){cube([x_width*4,x_length*4, 3]);}}
     rotate([0,0,base*2+nudge]) {translate([-2.5,0,0]){cube([x_width*4,x_length*4, 3]);}}
     rotate([0,0,base*3+nudge]) {translate([-2.5,0,0]){cube([x_width*4,x_length*4, 3]);}}
     rotate([0,0,base*4+nudge]) {translate([-2.5,0,0]){cube([x_width*4,x_length*4, 3]);}}
     rotate([0,0,base*5+nudge]) {translate([-2.5,0,0]){cube([x_width*4,x_length*4, 3]);}}
     rotate([0,0,base*6+nudge]) {translate([-2.5,0,0]){cube([x_width*4,x_length*4, 3]);}}
     rotate([0,0,base*7+nudge]) {translate([-2.5,0,0]){cube([x_width*4,x_length*4, 3]);}}
     rotate([0,0,base*8+nudge]) {translate([-2.5,0,0]){cube([x_width*4,x_length*4, 3]);}}
}

difference() {
     union() {
          drone_controller_mount();
          rotate([0,0,45]){ drone_controller_mount(); }
          star_struts();
     }
     translate([0,0,4.21]){cylinder(9,1.65*8,1.65*8,2,center=true);} // center stud
}

// The X (removing any studs that interfere w/ controller plate)
difference(){
    union(){
         // left / right
         rotate([0,0,0]) {filled_block(x_length, x_width);}
         // front right / rear left
         rotate([0,0,90]) {filled_block(x_length, x_width);}
         // left / right
         rotate([0,0,45]) {filled_block(x_length, x_width);}
         // front right / rear left
         rotate([0,0,-45]) {filled_block(x_length, x_width);}
    }
    // removing the studs within a certain diameter
    /* translate([0,0,3.2]){ */
    /*     clear = (arm_length-arm_studs+2.5)*8; */
    /*     cylinder(5,clear,clear); */
    /* } */
    // removing the center!
    difference () {
         outer=77;
         inner=0;
         cylinder(12,outer,outer,center=true);
         cylinder(12,inner,inner,center=true);
    }
}

difference () {
    outer=100;
    inner=97;
    cylinder(3,outer,outer);
    cylinder(3,inner,inner);
}
// place this on top of our hex bars
f="Comic Sans MS:style=Bold";
// f="Latin Modern Sans Demo Cond:style=Bold";
//f="Latin Modern Sans Quotation:style=Bold";
//f="Metal:style=Bold";
//f="TeX Gyre Chorus:style=Bold";
//f="URW Chancery L:style=Bold";
//f="URW Gothec L:style=Bold";

/* s=4; */
/* translate([0,0,3]){ */
/*     linear_extrude(height=1.5){ */
/*         rotate([0,0,90]){ */
/*         translate([-45,0,0]) */
/*         text("BL - iimaginarium",valign="center",halign="center",size=s,font=f); */
/*         translate([45,0,0]) */
/*         text("Papa FR",valign="center",halign="center",size=s,font=f); */
/*         } */
/*         rotate([0,0,0]){ */
/*         translate([-45,0,0]) */
/*         text("FL - Asher",valign="center",halign="center",size=s,font=f); */
/*         translate([45,0,0]) */
/*         text("June 2018 - BR",valign="center",halign="center",size=s,font=f); */
/*         } */
/*     } */
/* } */
/* / */
//        rotate([0,0,-60]){
//        translate([-45,0,0])
//        text("Hippie",valign="center",halign="center",size=s,font=f);
//        translate([45,0,0])
//        text("2018",valign="center",halign="center",size=s,font=f);
//        }
//rotate([0,0,60])
//rotate([0,0,120])
//rotate([0,0,180])
//}

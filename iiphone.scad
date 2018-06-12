
difference(){
     // https://www.thingiverse.com/thing:2819844/files
     import("Iphone_X.stl");
     // remove iphone X
     translate([104.7,22,9.15]) {
          cube([8,32,1.5]);
     }
}

// Add iiphone X
rotate([0,0,90])
translate([0,0,3]){
     linear_extrude(height=7.0){
          translate([37,-70,10])
               text("Asher",valign="center",halign="center",size=8,font=f);
          translate([37,-90,10])
               text("Benjamin",valign="center",halign="center",size=8,font=f);
          translate([37,-110,10])
               text("and Poppa",valign="center",halign="center",size=8,font=f);
     }
}

module prism(l, w, h){
       polyhedron(
               points=[[0,0,0], [l,0,0], [l,w,0], [0,w,0], [0,w,h], [l,w,h]],
               faces=[[0,1,2,3],[5,4,3,2],[0,4,5,1],[0,3,4],[5,2,1]]
               );
       }
// Base
difference() {
    union() {
        // Front lip
        translate([5,7,1.5]) {
            cube([10,5,3],true);    
        }
        
        // Laptop lip contact
        translate([5,10,.75]) {
            cube([10,5,1.5],true);    
        }
        
        // Fan case
        translate([5,19,5]) {
            cube([10,5,10],true);    
        }
        
        // Front ramp
        translate([0,1.5,0]) {
            prism(10, 3, 3);
        }
        
        // Laptop contact ramp
        translate([0,11.5,0]) {
            prism(10, 5, 10);
        }
    }
        // Fan case hole
        translate([5,21,5]) {
            cube([9,8,9],true);    
        }
        // Cooling duct
        translate([5,20,2]) {
            cube([9,15,1],true);    
        }
}
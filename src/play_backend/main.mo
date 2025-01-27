import Debug "mo:base/Debug";
import Nat "mo:base/Nat";
actor {
  let x : Nat = 12;
  Debug.print(debug_show (x));
  // x:=23; No

  var y : Nat = 23;
  Debug.print(debug_show (y));

  y := 100;
  Debug.print(debug_show (y));

};

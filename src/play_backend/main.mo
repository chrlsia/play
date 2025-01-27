import Debug "mo:base/Debug";

actor {

  var ar : [Nat] = [1, 2, 3];
  Debug.print(debug_show (ar));

  ar := [4, 5, 6]; //Yes
  // ar[0] := 10; // No

  Debug.print(debug_show (ar[0]));

};

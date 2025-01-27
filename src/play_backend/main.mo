import Debug "mo:base/Debug";

actor {

  var ar = [var 1, 2, 3];
  Debug.print(debug_show (ar));

  ar := [var 4, 5, 6]; //Yes
  Debug.print(debug_show (ar));

  ar[0] := 10; // Yes

  Debug.print(debug_show (ar[0]));

};

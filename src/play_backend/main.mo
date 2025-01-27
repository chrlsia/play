import Debug "mo:base/Debug";

actor {

  let ar : [var Nat] = [var 1, 2, 3];
  Debug.print(debug_show (ar));

  // ar:=[4,5,6]; No
  ar[0] := 4; // Yes

  Debug.print(debug_show (ar[0]));

};

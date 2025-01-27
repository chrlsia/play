import Debug "mo:base/Debug";

actor {

  let ar : [Nat] = [1, 2, 3];
  Debug.print(debug_show (ar));

  // ar:=[4,5,6]; No
  // ar[0]:=4; No

};

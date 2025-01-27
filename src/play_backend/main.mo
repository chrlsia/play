import Buffer "mo:base/Buffer";
import Debug "mo:base/Debug";

actor {
  // public func run() : async () {
  // Create a buffer of natural numbers
  let buffer = Buffer.Buffer<Nat>(5);

  // Add elements
  buffer.add(10);
  buffer.add(20);
  buffer.add(30);

  // Access elements
  let firstElement = buffer.get(0); // 10
  Debug.print("First element: " # debug_show (firstElement));

  // Update an element
  buffer.put(1, 50); // Update second element to 50

  // Remove the last element
  let lastElement = buffer.removeLast(); // 30
  Debug.print("Removed element: " # debug_show (lastElement));

  // Get the size
  let bufferSize = buffer.size(); // 2
  Debug.print("Buffer size: " # debug_show (bufferSize));

  // Iterate over elements
  for (element in buffer.vals()) {
    Debug.print("Element: " # debug_show (element));
  };
  // };
};

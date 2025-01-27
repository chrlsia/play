import Debug "mo:base/Debug";
import Nat "mo:base/Nat";

actor {
  // Step 1: Define a record type
  type Person = {
    name : Text;
    age : Nat;
    email : Text;
  };

  // Step 2: Create a record
  let alice : Person = {
    name = "Alice";
    age = 25;
    email = "alice@example.com";
  };

  // Step 3: Access record fields
  let aliceName = alice.name;
  let aliceAge = alice.age;
  let aliceEmail = alice.email;

  Debug.print("aliceName" #debug_show (aliceName));
  Debug.print("aliceAge" #debug_show (aliceAge));
  Debug.print("aliceEmail" #debug_show (aliceEmail));

  // Step 4: Update a record
  let aliceUpdated = {
    name = alice.name;
    age = alice.age + 1;
    email = alice.email;
  };

  Debug.print("aliceUpdated" #debug_show (aliceUpdated));

  // Step 5: Use records in functions
  func birthday(person : Person) : Person {
    return {
      name = person.name;
      age = person.age + 1;
      email = person.email;
    };
  };

  let aliceAfterBirthday = birthday(alice);
  Debug.print("aliceAfterBirthday" #debug_show (aliceAfterBirthday));

  // Step 6: Nested records
  type Address = {
    street : Text;
    city : Text;
    zip : Text;
  };

  type PersonWithAddress = {
    name : Text;
    age : Nat;
    email : Text;
    address : Address;
  };

  let bob : PersonWithAddress = {
    name = "Bob";
    age = 30;
    email = "bob@example.com";
    address = {
      street = "123 Main St";
      city = "Wonderland";
      zip = "12345";
    };
  };

  Debug.print("bob" #debug_show (bob));

  // Step 7: Pattern matching
  let { name; age; email } = alice;
  Debug.print("Name: " # name); // "Name: Alice"
  Debug.print("Age: " # Nat.toText(age)); // "Age: 25"
  Debug.print("Email: " # email); // "Email: alice@example.com"
};

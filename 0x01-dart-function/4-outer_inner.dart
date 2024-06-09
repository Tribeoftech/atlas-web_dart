/// Defines an outer function that takes a name and an ID, and calls an inner function
/// that constructs a greeting message using the provided name and ID.
void outer(String name, String id) {
  String inner(String name, String id) {
    String firstName = name.split(" ")[0];
    String lastNameFirstChar = name.split(" ")[1].split("")[0];
    return "Hello Agent $lastNameFirstChar.${firstName} your id is $id";
  }
  print(inner(name, id));
}

// Function that returns a complex record for employee data
({
  ({String name, int age, String gender}) personalInfo,
  ({String position, String department, double salary}) jobDetails,
  ({String email, String phone}) contactInfo
}) getEmployeeData() {
  return (
    personalInfo: (name: "John Doe", age: 35, gender: "Male"),
    jobDetails: (
      position: "Software Engineer",
      department: "R&D",
      salary: 75000.0
    ),
    contactInfo: (email: "john.doe@example.com", phone: "+1234567890")
  );
}

// class DestructureExample {
//   void getData() {
//     // Destructure the returned complex record
//     var (personalInfo, jobDetails, contactInfo) = getEmployeeData();

//     // Further destructure the nested records
//     var (name, age, gender) = personalInfo; // Destructure personalInfo
//     var (position, department, salary) = jobDetails; // Destructure jobDetails
//     var (email, phone) = contactInfo; // Destructure contactInfo

//     // Print out the values
//     print("Name: $name, Age: $age, Gender: $gender");
//     print(
//         "Position: $position, Department: $department, Salary: \$${salary.toStringAsFixed(2)}");
//     print("Email: $email, Phone: $phone");
//   }
// }

// Medium published

class Person {
  String name;
  int age;
  Person({this.name = 'John', this.age = 30});
}

(double lat, double lon) geoLocation(String name) => (222.22, 33.3333);

class DestructureExample2 {
  void examplesOfDestructure() {
    // Records
    final (lat, lon) = geoLocation('Nairobi');
    // Class
    final Person person = Person(name: 'John', age: 30);
    final Person(:name, :age) = person;
    print('Name $name, age $age');
    print('Name $lat, age $lon');
    // Lists
    var numList = [1, 2, 3];
    var [a, b, c] = numList;
  }
}

// Usage from video

class DestructureFromVideo {
  ({int first,int second}) goRecord(){
    return (first: 1,second: 2);
  }
}

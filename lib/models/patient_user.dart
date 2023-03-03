class PatientUser {
  int? id;
  String? userName;
  String? phoneNumber;
  String? email;
  String? address;
  String? dateOfBirth;
  String? job;
  String? diseaseLevel;
  String? password;
  String? avatar;
  int? age;

  PatientUser(
      {this.id,
      this.userName,
      this.phoneNumber,
      this.email,
      this.address,
      this.dateOfBirth,
      this.job,
      this.diseaseLevel,
      this.password,
      this.avatar,
      this.age});

  PatientUser.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userName = json['user_name'];
    phoneNumber = json['phone_number'];
    email = json['email'];
    address = json['address'];
    dateOfBirth = json['date_of_birth'];
    job = json['job'];
    diseaseLevel = json['disease_level'];
    password = json['password'];
    avatar = json['avatar'];
    age = json['age'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['user_name'] = userName;
    data['phone_number'] = phoneNumber;
    data['email'] = email;
    data['address'] = address;
    data['date_of_birth'] = dateOfBirth;
    data['job'] = job;
    data['disease_level'] = diseaseLevel;
    data['password'] = password;
    data['avatar'] = avatar;
    data['age'] = age;
    return data;
  }
}

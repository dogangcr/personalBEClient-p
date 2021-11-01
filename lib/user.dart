/*class User {
int id;
String question;
String questionType;



User(this.id, this.question, this.questionType );

User.fromJson(Map json)
: id = json['id'], question = json['question'],
      questionType = json['questionType'];

Map toJson() {
  return {'id': id, 'question': question, 'questionType': questionType};
}
}*/

class User {
  late int id;
  late String question;
  late String questionType;
  late String categoryId;
  late  List<Options> options;

  User(this.id,
        this.question,
        this.questionType,
        this.categoryId,
        this.options);

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    question = json['question'];
    questionType = json['questionType'];
    categoryId = json['categoryId'];
    if (json['options'] != null) {
      options = <Options>[];
      json['options'].forEach((v) {
        options.add(new Options.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['question'] = this.question;
    data['questionType'] = this.questionType;
    data['categoryId'] = this.categoryId;
    if (this.options != null) {
      data['options'] = this.options.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Options {
  late  int id;
  late String options;
  late  String dquestionID;

  Options(this.id, this.options, this.dquestionID);

  Options.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    options = json['options'];
    dquestionID = json['dquestionID'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['options'] = this.options;
    data['dquestionID'] = this.dquestionID;
    return data;
  }
}
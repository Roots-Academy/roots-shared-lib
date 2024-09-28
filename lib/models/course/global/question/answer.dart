class Answer {
  String number;
  String text;
  Answer({
    required this.number,
    required this.text,
  });

  Answer copyWith({
    String? number,
    String? text,
  }) {
    return Answer(
      number: number ?? this.number,
      text: text ?? this.text,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'number': number,
      'text': text,
    };
  }

  factory Answer.fromMap(Map<String, dynamic> map) {
    return Answer(
      number: map['number'] as String,
      text: map['text'] as String,
    );
  }


  @override
  String toString() => 'Answer(number: $number, text: $text)';

  @override
  bool operator ==(covariant Answer other) {
    if (identical(this, other)) return true;
  
    return 
      other.number == number &&
      other.text == text;
  }

  @override
  int get hashCode => number.hashCode ^ text.hashCode;
}
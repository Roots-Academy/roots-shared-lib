class Choice {
  String number;
  String text;
  Choice({
    required this.number,
    required this.text,
  });

  Choice copyWith({
    String? number,
    String? text,
  }) {
    return Choice(
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

  factory Choice.fromMap(Map<String, dynamic> map) {
    return Choice(
      number: map['number'] as String,
      text: map['text'] as String,
    );
  }


  @override
  String toString() => 'Choice(number: $number, text: $text)';

  @override
  bool operator ==(covariant Choice other) {
    if (identical(this, other)) return true;
  
    return 
      other.number == number &&
      other.text == text;
  }

  @override
  int get hashCode => number.hashCode ^ text.hashCode;
}
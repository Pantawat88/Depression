class Question {
  final String questionText;
  final List<Answer> answersList;

  Question(this.questionText, this.answersList);
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);
}

List<Question> getQuestions() {
  List<Question> list = [];
  //ADD questions and answer here

  list.add(Question(
    "เบื่อ ไม่สนใจอยากทำอะไร",
    [
      Answer("ไม่มีเลย", false),
      Answer("เป็นบางวัน 1-7 วัน", false),
      Answer("เป็นบ่อย > 7 วัน", false),
      Answer("เป็นทุกวัน", false),
    ],
  ));

  list.add(Question(
    "ไม่สบายใจ ซึมเศร้า ท้อแท้",
    [
      Answer("ไม่มีเลย", false),
      Answer("เป็นบางวัน 1-7 วัน", false),
      Answer("เป็นบ่อย > 7 วัน", false),
      Answer("เป็นทุกวัน", false),
    ],
  ));

  list.add(Question(
    "หลับยาก หรือ หลับๆ ตื่นๆ \nหรือ หลับมากไป",
    [
      Answer("ไม่มีเลย", false),
      Answer("เป็นบางวัน 1-7 วัน", false),
      Answer("เป็นบ่อย > 7 วัน", false),
      Answer("เป็นทุกวัน", false),
    ],
  ));

  list.add(Question(
    "เหนื่อยง่าย หรือ ไม่ค่อยมีแรง",
    [
      Answer("ไม่มีเลย", false),
      Answer("เป็นบางวัน 1-7 วัน", false),
      Answer("เป็นบ่อย > 7 วัน", false),
      Answer("เป็นทุกวัน", false),
    ],
  ));

  list.add(Question(
    " เบื่ออาหาร หรือ กินมากเกินไป",
    [
      Answer("ไม่มีเลย", false),
      Answer("เป็นบางวัน 1-7 วัน", false),
      Answer("เป็นบ่อย > 7 วัน", false),
      Answer("เป็นทุกวัน", false),
    ],
  ));

  list.add(Question(
    "รู้สึกไม่ดีกับตัวเอง คิดว่าตัวเองล้มเหลว หรือ เป็นคนทำให้ตัวเอง หรือ ครอบครัวผิดหวัง",
    [
      Answer("ไม่มีเลย", false),
      Answer("เป็นบางวัน 1-7 วัน", false),
      Answer("เป็นบ่อย > 7 วัน", false),
      Answer("เป็นทุกวัน", false),
    ],
  ));

  list.add(Question(
    " สมาธิไม่ดี เวลาทำอะไร เช่น ดูโทรทัศน์ ฟังวิทยุ หรือ ทำงานที่ต้องใช้ ความตั้งใจ",
    [
      Answer("ไม่มีเลย", false),
      Answer("เป็นบางวัน 1-7 วัน", false),
      Answer("เป็นบ่อย > 7 วัน", false),
      Answer("เป็นทุกวัน", false),
    ],
  ));

  list.add(Question(
    "พูดช้า ทำอะไรช้าลง จนคนอื่นสังเกตเห็นได้ หรือกระสับกระส่ายไม่สามารถอยู่นิ่งได้เหมือนที่เคยเป็น",
    [
      Answer("ไม่มีเลย", false),
      Answer("เป็นบางวัน 1-7 วัน", false),
      Answer("เป็นบ่อย > 7 วัน", false),
      Answer("เป็นทุกวัน", false),
    ],
  ));

  list.add(Question(
    "คิดทำร้ายตนเอง หรือคิดว่า ถ้าตายๆไปเสียคงจะดี",
    [
      Answer("ไม่มีเลย", false),
      Answer("เป็นบางวัน 1-7 วัน", false),
      Answer("เป็นบ่อย > 7 วัน", false),
      Answer("เป็นทุกวัน", false),
    ],
  ));

  return list;
}

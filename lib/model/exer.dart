class category{
  String name;
  String imageUrl;
  String des;
  String lessons;
  category(this.name,this.imageUrl,this.des,this.lessons);

  static List<category> programforyou(){
    return [
      category('LIFESTYLE','assets/img1.png','A complete guide for your new born baby','16 lessons'),
      category('WORKING PARTNER','assets/img1.png','Understanding the human behaviour','12 lessons'),
      category('LIFESTYLE','assets/img1.png','A complete guide for your new born baby','16 lessons'),
      category('LIFESTYLE','assets/img1.png','A complete guide for your new born baby','16 lessons'),
      category('LIFESTYLE','assets/img1.png','A complete guide for your new born baby','16 lessons'),
    ];
  }

  static List<category>eventsandexperiences() {
    return [
      category('BABYCARE','assets/exer.png', 'Understanding of human behaviour', '13 feb,Sunday'),
      category('BABYCARE','assets/exer.png', 'Understanding of human behaviour', '13 feb,Sunday'),
      category('BABYCARE','assets/exer.png', 'Understanding of human behaviour', '13 feb,Sunday'),
      category('BABYCARE','assets/exer.png', 'Understanding of human behaviour', '13 feb,Sunday'),
      category('BABYCARE','assets/exer.png', 'Understanding of human behaviour', '13 feb,Sunday')
    ];
  }
  static List<category>lessonsforyou() {
    return [
      category('BABYCARE','assets/exer.png', 'Understanding of human behaviour', '3 min'),
      category('BABYCARE','assets/exer.png', 'Understanding of human behaviour', '3 min'),
      category('BABYCARE','assets/exer.png', 'Understanding of human behaviour', '3 min'),
      category('BABYCARE','assets/exer.png', 'Understanding of human behaviour', '3 min'),
      category('BABYCARE','assets/exer.png', 'Understanding of human behaviour', '3 min')
    ];
  }
}
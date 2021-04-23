class User{
  String name;
  int score = 0;
  List<bool>answers;

  @override
  void initState(){
    this.name = " ";
    this.score = 0;
    answers =[false,false,false,false];
  }
  void setName(String Name) {
    this.name = Name;
  }

  void setScore (int number){
    this.score = number;
  }

  void EnterAnswer(bool answer , int index){
    this.answers[index] = answer;
  }

  get Name => name;
  get Answers => answers;
  get Score=> score;
}
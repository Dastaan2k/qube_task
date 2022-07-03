enum FeelingTypeEnum {
  energetic, sad, happy, angry, calm, bored, love
}


const Map<FeelingTypeEnum, String> feelingIconUriMap = {
  FeelingTypeEnum.energetic : 'assets/energetic.png',
  FeelingTypeEnum.sad : 'assets/sad.png',
  FeelingTypeEnum.happy : 'assets/happy.png',
  FeelingTypeEnum.angry : 'assets/angry.png',
  FeelingTypeEnum.calm : 'assets/calm.png',
  FeelingTypeEnum.bored : 'assets/bored.png',
  FeelingTypeEnum.love: 'assets/love.png'
};


const Map<FeelingTypeEnum, String> feelingTitleMap = {
  FeelingTypeEnum.energetic : 'Energetic',
  FeelingTypeEnum.sad : 'Sad',
  FeelingTypeEnum.happy : 'Happy',
  FeelingTypeEnum.angry : 'Angry',
  FeelingTypeEnum.calm : 'Calm',
  FeelingTypeEnum.bored : 'Bored',
  FeelingTypeEnum.love: 'Love'
};


enum ConnectionStateEnum {
  waiting, done, error
}

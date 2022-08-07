void main(List<String> args) {
  var isRaining = false;

  print('prepare before going to office');

  if (isRaining) {
    print('oh. it.s raining, bring an umbrella');
  }
  print('going to office');
  print('-----------------------------');
  
  var openHours = 8;
  var closeHours = 21;
  var now = 17;
  
  if (now > openHours && now < closeHours) {
    print('Hello . we are open');
  } else {
    print('sorry , we have closed');
  }
  
  print('----------------------------');
  print('Inputkan nilai anda (1-100) :');

  num score = 90;
  print('Nilai anda ');
  calculateScore(score);
}

// ignore: missing_return
num calculateScore(num score) {
  if (score > 90) {
    print('A');
  } else if (score > 80) {
    print('B');
  } else if (score > 70) {
    print('C');
  } else if (score > 60) {
    print('D');
  } else {
    print('E');
  }
}

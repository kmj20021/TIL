## 컴퓨팅 사고
- 문제 분해(Decomposition) 큰 문제를 작은 단위로 나누기
- 패턴 인식(Pattern Recognition) 반복되는 구조나 규칙 찾기
- 추상화(Abstraction) 핵심만 남기고 불필요한 정보 제거
- 알고리즘적 사고(Algorithmic Thinking) 문제 해결을 위한 단계적 절차 만들기

구구단을 출력해 주는 프로그램을 컴퓨팅 사고로 해결해 보자
- 2단 먼저 만들어보자 (문제 분해)
- 3단을 만들고 반복되는 것이 무엇인지 찾아보자 (패턴 인식)
- 한쪽의 숫자만 10번씩 같고 다른쪽은 1부터 9까지 계속 반복 (추상화)
- for문을 2개 사용해 프로그램을 만들어보자

논리적, 물리적
모델링 : 코드 구현

## 다트에서의 for 문

[] => List
{} => Set
{key:value} => Map

var lottoNums = {1,5,9,35,55};
  
  for(var i =0; i < lottoNums.length; i++){
    print(lottoNums.elementAt(i));
  }
  
  for (var num in lottoNums){
    print(num);
  }
  
  lottoNums.forEach((num)=>print(num));
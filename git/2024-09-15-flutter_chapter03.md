# 변수
// null이 될 수 있는 변수
String? name;

//null이면 오류가 아닌 null출력
name?.length; 

//이 값은 절대 null이면 안 된다. => error
name!.length

# final과 const
final : 변수 선언 후 한 번만 값을 할당할 수 있다.
const : 컴파일 시점에 값이 결정됨.(이후 변경 불가)

# 형변환
toDouble()
toInt()

# 리스트
var v1 = <int>[1,2,3];
var v2 = [1,3,5];
var v3 = List.empty(growable:true); //growable:true이기에 가변 리스트로 생성
var v4 = List<int>.filled(3,0,growable:true); 3칸을 0으로 초기화한 가변 리스트 생성
var v5 = List<int>.filled(3,0); 3칸을 0으로 초기화한 불변 리스트 생성 -> 추가, 삭제 불가
var v6 = [1, "안녕", 3.14, true]; 가변 리스트기에 가능

var valuList = List.generate(100,(index)=>'sample$index'); //람다 함수 사용
    => [sample0,sample1,sample2,sample3, ... sample99];

var isString ="문자";
var sampleList = [1,2,3,if(isString is! String) isString,9,10];
    => [ 1,2,3,9,10 ]

//리스트 결합
var listOne = [1,2,3];
var listTwo = ['one','two','three'];
var margeList = [...listOne, ...listTwo];

//리스트 접근 방법
var odd [1,3,5,7,9];
odd[0];
odd.first;
odd.last;

//원소 추가
odd.add(11);
odd.addAll([13,15,17]);

//원소 삽입
odd.insert(5, 99);
odd.insertAll(3, [23,25,27]);

//원소 삭제
numbers.remove(11);
numbers.removeWhere((index)=>index%2==0);
numbers.removeLast();
numbers.removeAt(4);
numbers.removeRange(3,6);
numbers.clear();

//리스트 원소 검색
var odds = numbers.where((index)=>index%2==1).toList();

//리스트 가공 처리
var mixList = [1,'2',3,'4','5',6,7,8];
var number = mixList.map<int>((index)=>int.parse(index.toString())).toList();

    => [1,2,3,4,5,6,7,8]
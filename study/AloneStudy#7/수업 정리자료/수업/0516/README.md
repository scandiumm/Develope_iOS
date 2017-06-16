#5월 16일
##Collection Type

>Array

- index와 index에 대응하는 데이터들로 이루어진 자료구조

```
표현
var someInts:Array<Int> = Array<Int>()
var someInts:[Int] = [Int]()
```
```
array 리터럴
var someInts:[Int] = [1,2,3,4]
someInts = []
```
- index를 통해 배열의 값을 가져올 수 있다.
- index는 0부터 시작한다.



>Set

- 같은 타입의 데이터가 순서없이 모여있는 자료구조
- 항목의 순서가 중요하지 않거나 한번만 표시해야하는 경우 배열대신 사용된다.

```
표현
var someInts:Set<Int> = Set<Int>()
array와 다르게 축약문법이 없다.
```
```
set 리터럴
var someInts:Set<Int> = [1,2,3,4,]
someInts = []
var SomeString:Set = "lee","jaeseong"]
```
- set는 순서가 정해져 있지 않기 때문에 for-in 구문을 통해서 데이터를 가져와야 한다.
- 하지만 정렬을 통해 데이터를 원하는 순서대로 가져올 수 있다.


>Dictionary

- dictionary는 순서가 정해져 있지 않은 데이터에 키값을 통해 구분할수 있는 자료구조
- 항목의 순서가 중요하지 않고 key값을 통해서 데이터를 접근할때 사용한다.

```
표현
var someInts:[String:Int] = [String:Int]()
var someInts:Dictionary<String,Int> = [:]
```
```
dictionary 리터럴
var airport:[String:String] = ["ICH" : "인천공항", "HKG":"홍콩공항"]

```
- key 값을 통해 value값을 가져올수 있다

##반복문
>while문

- 반복적으로 실행되는 코드를 만드는 구문

```
예제
var index = 0;while index < 10{print("현재 횟수는 \(index)입니다.") index += 1;}
```
```
구구단실습
func googoodan(goo:Int){
    var gob = 1
    while gob <= 9 {
        print("\(goo) * \(gob) = \(goo*gob)")
        gob += 1
    }
}
googoodan(goo: 128)
```

>for-in문

- 배열의 항목, 숫자의 범위 또는 문자열의 문자와 같은 시퀀스를 반복할때 사용

```
예제
let numbers = [1,2,3,4,5]for number in numbers{    print("\(number)")}
```
```
구구단 실습
func googoodan1(goo:Int){
    var gob = 1
    for _ in 1...9{
        print("\(goo) * \(gob) = \(goo*gob)")
        gob += 1
    }
}
googoodan1(goo: 3)
```
```
약수구하기
//약수구하기
    func ally(of number:Int){
        var result:[Int] = []
        
        for input in 1...number{
            if number % input == 0{
                result.append(input)
            }
        }
        print("\(number)의 약수는 \(result) 입니다")        
    }

```
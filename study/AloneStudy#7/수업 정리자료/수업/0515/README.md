#5월 15일 월요일

##수업내용
###조교
```
프로젝트 파일 관리하기
- 프로젝트 폴터는 건들지 않는다.
```
###오전 수업시간
```
- 객제지향 프로그래밍이란?
- 클래스와 객체의 차이점
- 변수 : 문법, 변수의 타입
- 함수 : if ~ else문
- 
```

###오후 수업시간
>Switch문

- 문법

```
switch som value to consider {
caee value 1:
	respind to value 1
case value 2:
	 value 3:
	 respong to value 2 or 3
default:
	otherwise, do something else
}
```

- 예제

```
func sampleSwitch(someCharacter:Character)
{
	switch someCharacter {
	case "a":
		print("The first letter of the alpahber")
	case "z":
		print(The lase letter of the alphaber")
	default:
		print("Some other character")
	}
}
```

>연습문제

```
//시험점수를 입력 받아 등급을 반환해주는 함수
//Grade A+, A, B+, B
func grade(fromPoint point:UInt) -> String{
    
    var gradeValue:String = "F"
    
    
    switch point{
    case 95...100:
        gradeValue = "A+"
    case 90..<95:
        gradeValue = "A"
    default:
        gradeValue = "F"
    }
    return gradeValue
    
}
print(grade(fromPoint: 94))

//결과값  A
```

```

//등급을 입력 받아 포인트를 반환해주는 함수
//포인트 4,5, 4.0, 3.5.....
func point(fromGrade grade:String) -> Double{
    
    var gradeValue:Double = 4.5
    
    
    switch grade{
    case "A+":
        gradeValue = 4.5
    case "A":
        gradeValue = 4.0
    case "B+":
        gradeValue = 3.5
    default:
        gradeValue = 0.0
    }
    return gradeValue
    
}
print(point(fromGrade: "B+"))

//결과값   3.5
```




>Interval Matching

-  예제

```

```

>튜플매칭

- 예제

```
func getPoint(somePoint:(Int,Int)){
	switch somepoint{
	case (0, 0):
		print("\(somePoint) is at the origin")
	case (_, 0):
		print("\(somePoint) is at the x-axis")
	case (0, _):
		print("\(somePoint) is at the y-axis")
	case (-2...2, -2...2):
		print("\(somePoint) is inside the box")
	default:
		print("\(somePoint) is outside of the box")
	}
}
```

>값 바인딩

- 예제

```
```


>where 문

- 예제

```
```




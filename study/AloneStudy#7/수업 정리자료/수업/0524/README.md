# 5월 24일
## 오전 알고리즘 문제 (콜라츠)
```
//
//  ViewController.swift
//  morningAl
//
//  Created by jaeseong on 2017. 5. 24..
//  Copyright © 2017년 jaeseong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /*콜라츠 추측*/
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBAction func caculateButtonTouched(_ sender: UIButton) {
        
        let inputNumber: Int? = Int(inputTextField.text!)
        
        if let number = inputNumber{
            let result: Int = self.collA(conge: number)
        self.resultLabel.text = "정답은 \(result)입니다"
        }
    }
    
    
    var collatz:Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //collA(conge: 271493)
        //print(recur)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collA(conge number1:Int) -> Int{
        var recur:Int = 0
        collatz = number1
        
        while collatz != 1{
            if collatz % 2 == 0{
                collatz = collatz / 2
            }else{
                collatz = (collatz * 3) + 1
            }
            recur += 1
        }
        return recur
    }
}


```

- 재귀함수
 메모리를 많이 차지하지만, 빠르다
 
```
**recursive 사용**
func collatz(n:Int) -> Int{
	if n == 1{
		return 0
	}else  {
		if n % 2 == 0 {
			return 1 + collatz(n: (n * 3) +1)
		}
	}
}
```


## Recursive (예외)

[재귀함수링크](https://ko.wikipedia.org/wiki/재귀함수)

## Class & Structures
**공통점**
- 프로그램 코드 블럭의 기본구조이다.
- 단일 파일에 정의 되며 다른 코드에서 자동으로 사용가능(기본Internal 접근자
- 기본 구현된 내용에 기능을 더 추가해서 확장할수 있다.
- 프로토콜을 채택 할수 있다.
- 두 구조의 문법이 동일하다.

**기본구조**

```
class SomeClass {
	//
}
```
```
struct SomeStruct {
	//
}
```

- 클래스는 스트럭쳐의 프로퍼티를 만들수 있으나 스트럭쳐는 클래스의 프로퍼티를 만들수 없다.

**인스턴스**

```
let SomeClass = 
let SomeStruct =  
```



**properties접근**

**초기화**

- 인스턴스에 설정된 속성의 초기값을 설정과 초기화하는데 목적이 있다.
- 모든 스트럭쳐


**Custom Initializers**


**차이점**

- 클래스는 참조타입이며 스트럭쳐는 값 타입이다.
- 클래스는 상속을 통해 부모클래스의 특성을 상속받을 수 있다.
- 클래스는 type Casting을 사용할 수 있다.
- 스트럭쳐의 프로퍼티는 인스턴스가 var 를 통해 만들어야 수정이 가능하다.
 
**Reference Countiong**

- 



##값(Value) 타입 VS 참조(Reference) 타입
**Memory 구조**

- CODE ---> 프로그램 Code저장
- DATA ---> 전역변수, 정적변수가 저장
- HEAP ---> 동적할당을 위한 영역
- STACK ---> 지역변수, 매개변수 등

**Pointer**

```
 //스트럭쳐
        var b1:Book = Book(name: "책이름1", cost: 1000, isbn: 1)
        var b2 = b1
        b2.name = "톰소여의 모험"
        
        print(b1.name)
        print(b2.name)
        
        //클래스
        let bs1:BookStore = BookStore(name: "신사점", address: "신사동 어딘가")
        let bs2 = bs1
        bs2.name = "강남점"
        
        print(bs1.name)
        print(bs2.name)
        
        //값
        책이름1
        톰소여의 모험
        강남점
        강남점
        
```


**Deinit**

- Class만 가능함


**어떤걸 사용해야 할까? Class VS Structure**

(Apple Guideline) - Structure사용..

- 연관된 간단한 값의 집합을 캡슐화하는 것만이 목적일 때
- 캡슐화된 값이 참조되는 것보다 복사되는 것이 합당할 때
- 구조체에 저장된 프로퍼티가 값타입이며 참조되는 것보다는 복사되는것이 합당할때
- 다른 타입으로부터 상속받거나 자신이 상속될 필요가 없을때

 




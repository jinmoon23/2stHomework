//
//  baseballGame.swift
//  Lv.2 many func
//
//  Created by 최진문 on 2024/03/15.
//
import Foundation

class BaseballGame {
    func start() -> Int {
        let answer = makeAnswer() // 정답을 만드는 함수
        return answer
    
    }
    
    func makeAnswer() -> Int {
        var makeRandomNum: Int = 0
        makeRandomNum = Int.random(in: 100...999)
        return makeRandomNum        // 정답 생성
    }
    func userInput() -> String {
        let input = readLine()!
        return input        // 옵셔널 string 타입 사용자 입력 생성
    }
    func InputToInt() -> Int {
        let IntInput = Int(userInput()) // 사용자 입력값을 정수로 변환
        let IntInput100 = IntInput! / 100
        let IntInput10 = (IntInput! / 10) % 10
        let IntInput1 = IntInput! % 10
        while true {
            if IntInput100 != IntInput10 && IntInput100 != IntInput1 && IntInput10 != IntInput1 && (IntInput100 != 0), (IntInput10 != 0), (IntInput1 != 0) {
                return IntInput!       // 0이 포함되지 않고 서로 다르면 그 정수 값을 리턴함
            }
            if IntInput! < 100 && IntInput! > 999 {
                continue     // 사용자 입력 정수를 세 자리수로 한정함.이외의 경우 루프의 처음으로 이동
            }
            
        }
    }
    func makeArrayOfAnswer() -> [Int] {
        var ArrayOfAnswer = [Int]()
        let ranNum100 = makeAnswer() / 100
        let ranNum10 = (makeAnswer() / 10) % 10
        let ranNum1 = makeAnswer() % 10
        ArrayOfAnswer.append(ranNum100)
        ArrayOfAnswer.append(ranNum10)
        ArrayOfAnswer.append(ranNum1)
        return ArrayOfAnswer       // 정답을 각 자리수에 맞게 배열로 생성
    }
    func makeArrayOfInput() -> [Int] {
        let IntInput = InputToInt() // 정수로 변환된 입력값을 참조
        var ArrayOfInput = [Int]()
        let IntInput100 = IntInput / 100
        let IntInput10 = (IntInput / 10) % 10
        let IntInput1 = IntInput % 10
        ArrayOfInput.append(IntInput100)
        ArrayOfInput.append(IntInput10)
        ArrayOfInput.append(IntInput1)
        return ArrayOfInput     // 사용자 입력값을 각 자리수에 맞게 배열로 생성
    }
    
    func errorMessage(n: String) -> String {
        return n            // 에러 메세지 리턴하는 함수
    }
}

// 랜덤하게 생성된 정답과 사용자 입력값을 배열로 리턴하여 비교 후 스트라이크와 볼을 리턴하기 이전에
// 사용자가 값을 입력했을 때 미리 오류 메세지와 함께 한 번 걸러내고 싶었으나
// 제 실력의 한계는 여기까지인가 봅니다...

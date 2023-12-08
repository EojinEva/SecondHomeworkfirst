//
//  main.swift
//  SecondHomework
//
//  Created by t2023-m0099 on 12/8/23.
//

import Foundation

//필요한 클래스들을 설계해요
class Burger{
    var name: String
    var price: Double
    
    init(name: String, price: Double) {
        self.name = name
        self.price = price
    }
}

class FrozenCustard{
    var name: String
    var price: Double
    
    init(name: String, price: Double) {
        self.name = name
        self.price = price
    }
}

class Drinks{
    var name: String
    var price: Double
    
    init(name: String, price: Double) {
        self.name = name
        self.price = price
    }
}

class Beer{
    var name: String
    var price: Double
    
    init(name: String, price: Double) {
        self.name = name
        self.price = price
    }
}

class Order{
    var order = 0
}

func order(burgerOrder: Int) {
    var burgers = Burger(name: "", price: 0.0)
    if burgerOrder == 1 {
        burgers.name = "ShackBurger"
        burgers.price = 6.9
    }else if burgerOrder == 2 {
        burgers.name = "SmokeShack"
        burgers.price = 8.9
    }else if burgerOrder == 3 {
        burgers.name = "Shroom Burger"
        burgers.price = 9.4
    }else if burgerOrder == 4 {
        burgers.name = "Cheeseburger"
        burgers.price = 6.9
    }else if burgerOrder == 5 {
        burgers.name = "Hamburger"
        burgers.price = 5.4
    } else {
        print("잘못된 선택입니다. 다시 입력해주세요.")
    }
}


//메인 메뉴판
func printMainMenu() {
    print("""
    [ SHAKESHACK MENU ]
    1. Burgers         | 앵거스 비프 통살을 다져만든 버거
    2. Frozen Custard  | 매장에서 신선하게 만드는 아이스크림
    3. Drinks          | 매장에서 직접 만드는 음료
    4. Beer            | 뉴욕 브루클린 브루어리에서 양조한 맥주
    0. 종료            | 프로그램 종료
    """)
    
    if let input = readLine() {
        
        switch input {
        case "1":
            printBurgursMenu()

        case "2":
            printCustardMenu()
            
        case "3":
            printDrinksMenu()
            
        case "0":
            print("프로그램을 종료합니다.")
            exit(0)
            
        default:
            print("잘못된 입력입니다.")
            return
        }
    }
}


//버거 메뉴판
func printBurgursMenu() {
    print("""
    [ Burgers MENU ]
    1. ShackBurger   | W 6.9 | 토마토, 양상추, 쉑소스가 토핑된 치즈버거
    2. SmokeShack    | W 8.9 | 베이컨, 체리 페퍼에 쉑소스가 토핑된 치즈버거
    3. Shroom Burger | W 9.4 | 몬스터 치즈와 체다 치즈로 속을 채운 베지테리안 버거
    4. Cheeseburger  | W 6.9 | 포테이토 번과 비프패티, 치즈가 토핑된 치즈버거
    5. Hamburger     | W 5.4 | 비프패티를 기반으로 야채가 들어간 기본버거
    0. 뒤로가기       | 뒤로가기
    """)
    
    if let input = readLine() {
        if input == "0" {
            return
        }
    }
}
            
//아이스크림 메뉴판
func printCustardMenu() {
    print("""
    [ Frozen Custard ]
    1. Floats      | W 6.5 | 부드러운 바닐라 커스터드와 톡톡 터지는 탄산이 만나 탄생한 색다른 음료(루트 비어/퍼플 카우/크림시클)
    2. Cup & Cones | W 5.4 | 매일 점포에서 신선하게 제조하는 쫀득하고 진한 아이스크림 (바닐라/초콜릿)
    0. 뒤로가기     | 뒤로가기
    """)
}

func printDrinksMenu() {
    print("""
    [ Burgers MENU ]
    1. Hot Tea          | W 3.4 | 보성 유기농 찻잎을 우려낸 녹차, 홍차, 페퍼민트 & 레몬그라스
    2. Fountain Soda    | W 2.9 | 코카콜라, 코카콜라 제로, 스프라이트, 환타 오렌지, 환타 그레이프, 환타 파인애플
    3. Abita Root Beer  | W 4.8 | 청량감 있는 독특한 미국식 무알콜 탄산음료
    0. 뒤로가기          | 뒤로가기
""")
}


printMainMenu()


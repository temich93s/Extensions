//
//  main.swift
//  Extensions
//
//  Created by 2lup on 09.10.2021.
//

import Foundation

print("Hello, World!")


//MARK: Вычисляемые свойства в расширениях
print("\n//Вычисляемые свойства в расширениях")

extension Double {
    var km: Double { self * 1000 }
    var  m: Double { self }
    var cm: Double { self / 100.0 }
    var mm: Double { self / 1_000.0 }
    var ft: Double { self / 3.28084 }
}

let oneInch = 25.4.mm
print("Один дюйм - это \(oneInch) метра")
// Выведет "Один дюйм- это 0.0254 метра"

let threeFeet = 3.ft
print("Три фута - это \(threeFeet) метра")
// Выведет "Три фута - это 0.914399970739201 метра"


//MARK: Инициализаторы в расширениях
print("\n//Инициализаторы в расширениях")

struct Size {
    var width = 0.0, height = 0.0
}
struct Point {
    var x = 0.0, y = 0.0
}
struct Rect {
    var origin = Point()
    var size = Size()
}

let defaultRect = Rect()
let memberwiseRect = Rect(origin: Point(x: 2.0, y: 2.0), size: Size(width: 5.0, height: 5.0))
print(defaultRect)
print(memberwiseRect)

extension Rect {
    init(center: Point, size: Size) {
        let originX = center.x - (size.width / 2)
        let originY = center.y - (size.height / 2)
        self.init(origin: Point(x: originX, y: originY), size: size)
    }
}

let centerRect = Rect(center: Point(x: 4.0, y: 4.0), size: Size(width: 3.0, height: 3.0))
// исходная точка centerRect (2.5, 2.5) и его размер (3.0, 3.0)
print(centerRect)


//MARK: Методы в расширениях
print("\n//Методы в расширениях")

extension Int {
    func repetitions(task: () -> Void) {
        for _ in 0..<self {
            task()
        }
    }
}

3.repetitions {
    print("Hello!")
}

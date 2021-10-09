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


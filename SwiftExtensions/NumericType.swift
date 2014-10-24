//
//  NumericType.swift
//  SwiftExtensions
//
//  Created by Daniel Love on 24/10/2014.
//  Copyright (c) 2014 Daniel Love. All rights reserved.
//

import Foundation

// http://natecook.com/blog/2014/08/generic-functions-for-incompatible-types/

protocol NumericType
{
	func +(lhs: Self, rhs: Self) -> Self
	func -(lhs: Self, rhs: Self) -> Self
	func *(lhs: Self, rhs: Self) -> Self
	func /(lhs: Self, rhs: Self) -> Self
	func %(lhs: Self, rhs: Self) -> Self
	init(_ v: Int)
}

extension Double : NumericType {}
extension Float  : NumericType {}
extension Int    : NumericType {}
extension Int8   : NumericType {}
extension Int16  : NumericType {}
extension Int32  : NumericType {}
extension Int64  : NumericType {}
extension UInt   : NumericType {}
extension UInt8  : NumericType {}
extension UInt16 : NumericType {}
extension UInt32 : NumericType {}
extension UInt64 : NumericType {}

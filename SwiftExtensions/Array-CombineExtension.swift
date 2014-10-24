//
//  Array-CombineExtension.swift
//  SwiftExtensions
//
//  Created by Daniel Love on 24/10/2014.
//  Copyright (c) 2014 Daniel Love. All rights reserved.
//

import Foundation

extension Array
{
	/**
	Combines the values of two arrays.
	
	[1,2].combineValues([1,4]) = [2,6]
    
    :param: additionArray The array to combine values with
    :param: offset Adds an offset to additionArray. An offset of 2 would cause additionArray[0] to become additionArray[2]
	*/
    func combineValues<T: NumericType> (additionArray: [T], offset: NSInteger = 0) -> [T]
	{
		var result: [T] = []
        
        let arrayCount = additionArray.count + offset
		let count = max(self.count, arrayCount)
        let isOffset = offset != 0
        
		for i in 0..<count
		{
			var toAdd1: T = T(0)
			var toAdd2: T = T(0)
			
			if self.count > i {
				toAdd1 = self[i] as T
			}
			
            // Offset the new array
            if isOffset
            {
                if i >= offset
                {
                    var iOffset = i - offset
                    if arrayCount > iOffset {
                        toAdd2 = additionArray[iOffset]
                    }
                }
            }
            else
            {
                toAdd2 = additionArray[i]
			}
			
			result.append(toAdd1 + toAdd2)
		}
		
		return result
	}
}

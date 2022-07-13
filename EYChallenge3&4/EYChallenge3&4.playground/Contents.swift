import UIKit

// MARK: EY Challenge 3

/*
 Create a method that will take in string and return the same string without any spaces.  For example “EY is the best place to work.” would be returned as “EYisthebestplacetowork.”  Do this without the use of string methods like replacingOccurrences.  We want to see you manipulate the string directly.
 */

func replaceSpaces(in str: String) -> String {
    
    var newStr = ""
    for element in str {
        if element != " " {
            newStr.append(element)
        }
    }
    
    return newStr
}

print(replaceSpaces(in: "EY is the best place to work."))


func replaceSpacesWithFilter(in str: String) -> String {
    
    return str.filter { $0 != " " }
    
}

print(replaceSpacesWithFilter(in: "EY is the best place to work."))


// MARK: EY Challenge 4

/*
 Use the best pattern to return the following array string as an array of uppercase strings. [“alpha”, “beta”, “gamma”]  There is a way to accomplish this with one line of code.
 */


func convertToUpperCase(arr: [String]) -> [String] {
    
    return arr.map { $0.uppercased() }
    
}

print(convertToUpperCase(arr: ["alpha", "beta", "gamma"]))

// Converted for Conditional Conformance

extension Array where Element: StringProtocol {
    
    func convertToUpperCase() -> [String] {
        return self.map { $0.uppercased() }
    }
    
}

print(["alpha", "beta", "gamma"].convertToUpperCase())

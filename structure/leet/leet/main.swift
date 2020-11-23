//
//  main.swift
//  leet
//
//  Created by MBP2 on 2020/11/17.
//

import Foundation

//two sum

//class Solution {
//    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
//        var dict = [Int:Int]()
//        for index in nums.indices {
//            let num = nums[index]
//            let remain = target - nums[index]
//
//            if let previousIndex = dict[remain], previousIndex != index {
//                return [previousIndex, index]
//            }
//
//            dict[nums[index]] = index
//        }
//        return []
//    }
//}

//


//  Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}
//
//class Solution {
//    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
//        var l1 = l1
//        var l2 = l2
//        var preview = ListNode(0)
//        var carry = 0
//        let head = preview
//
//        while l1 != nil || l2 != nil || carry != 0 {
//            let current = ListNode(0)
//            let sum = (l2 == nil ? 0 : l2!.val) + (l1 == nil ? 0 : l1!.val) + carry
//            current.val = sum % 10
//            carry = sum / 10
//            preview.next = current
//            preview = current
//            l1 = l1 == nil ? l1 : l1?.next
//            l2 = l2 == nil ? l2 : l2?.next
//        }
//
//        return head.next
//
//    }
//}

//class Solution {
//    func lengthOfLongestSubstring(_ s: String) -> Int {
//
//        if s.count == 0 {
//            return 0
//        } else if s.count == 1 {
//            return 1
//        }
//
//        var maxLength = 0
//        var temp = [Character]()
//        let charArray = Array(s)
//        temp.append(charArray[0])
//
//        for i in 1...charArray.count-1 {
//            if let index = temp.firstIndex(of: charArray[i]) {
//                temp.removeFirst(index+1)
//            }
//            temp.append(charArray[i])
//            maxLength = max(maxLength, temp.count)
//        }
//
//        return maxLength
//
//    }
//}

//class Solution {
//    func lengthOfLongestSubstring(_ s: String) -> Int {
//
//        if s.count == 0 {
//            return 0
//        } else if s.count == 1 {
//            return 1
//        }
//
//        var maxLength = 0
//        var temp = [Character]()
//
//        for c in s {
//            if let index = temp.firstIndex(of:c) {
//                maxLength = max(maxLength, temp.count)
//                temp.removeSubrange(0...index)
//            }
//            temp.append(c)
//        }
//
//        return max(maxLength, temp.count)
//
//    }
//}

//class Solution {
//    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
//        
//        var tempArray = nums1
//        tempArray.append(contentsOf: nums2)
//        tempArray = tempArray.sorted()
//
//        let count = tempArray.count
//
//        if count % 2 == 1{
//            return Double(tempArray[count/2])
//        }else{
//            return Double(tempArray[count-1] + tempArray[count+2]) / 2.0
//        }
//    }
//}


//class Solution {
//    func reverse(_ x: Int) -> Int {
//        var number = x
//        var revNumber:Int = 0
//
//        while number != 0 {
//            let pop = number % 10
//            number = number / 10
//
//            if revNumber > Int32.max / 10 || (revNumber == Int32.max / 10  && pop > 7) {
//                return 0
//            }
//
//            if revNumber < Int32.min / 10 || (revNumber == Int32.min / 10 && pop < -8) {
//                return 0
//            }
//
//            let temp = revNumber * 10 + pop
//            revNumber = temp
//
//        }
//
//        return revNumber
//
//
//    }
//
//}


//class Solution {
//    func myAtoi(_ s: String) -> Int {
//
//        guard s.count > 0 else {
//            return 0
//        }
//
//        var chars = s.trimmingCharacters(in: .whitespaces)
//
//        var isNegative = false
//
//        if chars.first == Character("+") || chars.first == Character("-") {
//            if chars.first == Character("-") {
//                isNegative = true
//            }
//
//            chars.removeFirst()
//        }
//
//        var totalNumber : Double = 0
//
//        while let char = chars.first, let number = Double(String(char)) {
//
//            totalNumber *= 10
//
//            chars.removeFirst()
//
//            totalNumber += number
//        }
//
//        if totalNumber > Double(Int32.max) || totalNumber < Double(Int32.min) {
//            return isNegative ? Int(Int32.min) : Int(Int32.max)
//        } else {
//            let num = Int(totalNumber)
//            return isNegative ? num * -1 : num
//
//        }
//
//
//    }
//}
//
//
//class Solution {
//    func isPalindrome(_ x: Int) -> Bool {
//        if x < 0 {
//            return false
//        }
//
//
//        var num = x
//        var reverse:Int = 0
//
//        while num != 0 {
//            let pop = num % 10
//            num = num / 10
//
//            let temp = reverse * 10 + pop
//            reverse = temp
//        }
//
//        if reverse == x {
//            return true
//        } else {
//            return false
//        }
//
//
//    }
//}

//class Solution {
//    func threeSum(_ nums: [Int]) -> [[Int]] {
//        var result = [[Int]]()
//
//        let nums = nums.sorted()
//        var index = 0
//
//        while index < (nums.count - 2) {
//
//            var start = index + 1
//            var end = nums.count - 1
//
//            while start < end {
//                let sum = nums[index] + nums[start] + nums[end]
//
//                if sum == 0 {
//                    result.append([nums[index], nums[start], nums[end]])
//                }
//
//                if sum < 0 {
//                    let currentStart = start
//                    while start < end && nums[start] == nums[currentStart] {
//                        start += 1
//                    }
//                } else {
//                    let currentEnd = end
//                    while start < end && nums[end] == nums[currentEnd]{
//                        end -= 1
//                    }
//                }
//            }
//
//            let currentIndex = index
//            while index < (nums.count - 2) && nums[index] == nums[currentIndex] {
//                index += 1
//            }
//
//        }
//
//        return result
//    }
//}

//class Solution {
//    func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
//        guard nums.count >= 3 else { return 0 }
//        var result:Int = 0
//        var nums = nums.sorted()
//        
//        
//        var start = 1
//        var end = nums.count - 1
//        
//        var closest = nums[0] + nums[start] + nums[end]
//        
//      for index in 0..<nums.count - 2 {
//            start = index + 1
//            end = nums.count - 1
//            while start < end {
//                let sum = nums[index] + nums[start] + nums[end]
//                
//                if sum == target {
//                    return sum
//                } else if sum < target {
//                    start += 1
//                } else if sum > target {
//                    end -= 1
//                }
//                
//                if abs(target-sum) < abs(target-closest) {
//                    closest = sum
//                }
//                
//            }
//            
//        }
//        
//        
//        
//        return closest
//        
//        
//    }
//}

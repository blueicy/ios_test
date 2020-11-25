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

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
//class Solution {
//    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
//        guard let head = head else {
//            return nil
//        }
//
//        var newHead = ListNode(0)
//        var slow:ListNode? = newHead
//        var fast:ListNode? = newHead
//
//        newHead.next = head
//
//        for i in 0...n {
//            fast = fast?.next
//        }
//
//        while fast != nil {
//            slow = slow?.next
//            fast = fast?.next
//        }
//
//        slow?.next = slow?.next?.next
//
//        return newHead.next
//
//    }
//}

//class Solution {
//    func isValid(_ s: String) -> Bool {
//        var stack:[Character] = Array()
//        if s.count % 2 == 1 {
//            return false
//        }
//
//        var answer:Bool = true
//
//        for char in Array(s) {
//            switch char{
//                case "(":
//                    stack.append(char)
//                case "[":
//                    stack.append(char)
//                case "{":
//                    stack.append(char)
//                case ")":
//                    if let last = stack.last, last == "("{
//                        stack.removeLast()
//                    }else{
//                        answer = false
//                    }
//                case "]":
//                    if let last = stack.last, last == "["{
//                        stack.removeLast()
//                    }else{
//                        answer = false
//                    }
//                case "}":
//                    if let last = stack.last, last == "{"{
//                        stack.removeLast()
//                    }else{
//                        answer = false
//                    }
//                default:
//                    answer = false
//            }
//
//        }
//
//        if stack.count != 0 {
//            return false
//        }
//
//        return answer
//
//
//    }
//}


//class Solution {
//    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
//        if l1 == nil { return l2 }
//        if l2 == nil { return l1 }
//        var result:ListNode? = nil
//
//        if(l1!.val <= l2!.val) {
//            result = l1
//            result!.next = mergeTwoLists(l1!.next, l2)
//        } else {
//            result = l2
//            result!.next = mergeTwoLists(l1, l2!.next)
//        }
//
//        return result
//
//    }
//}


//class Solution {
//    func generateParenthesis(_ n: Int) -> [String] {
//        var results = [String]()
//
//        generateParenthesis(&results, n, "", 0, 0, 0)
//
//        return results
//    }
//
//    private func generateParenthesis(_ results: inout [String],_ n:Int,_ str:String,_ strLen:Int,_ opened:Int,_ closed:Int) {
//
//        if strLen == n * 2 {
//            results.append(str)
//        } else {
//            if opened < n {
//                generateParenthesis(&results, n, "\(str)(",strLen+1 , opened+1, closed)
//            }
//            if closed < opened {
//                generateParenthesis(&results, n, "\(str))",strLen+1, opened, closed+1)
//            }
//
//        }
//
//
//    }
//}


/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
//class Solution {
//    func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
//        if lists.count == 0  { return nil }
//        if lists.count == 1  { return lists[0]}
//
//        var input = lists
//
//        return partition(lists,0,input.count - 1)
//    }
//
//    func partition(_ list:[ListNode?], _ start:Int, _ end:Int) ->ListNode? {
//        guard start != end else { return list[start] }
//
//        if(start < end) {
//            let middle = (start + end)/2
//            let l1 = partition(list,start,middle)
//            let l2 = partition(list,middle+1,end)
//            return mergeTwoList(l1,l2)
//        }
//        return nil
//    }
//
//    func mergeTwoList(_ l1:ListNode?, _ l2:ListNode?) -> ListNode? {
//        if(l1 == nil) {return l2}
//        if(l2 == nil) {return l1}
//        var result:ListNode?
//
//        if(l1!.val <= l2!.val) {
//            result = l1
//            result!.next = mergeTwoList(l1!.next,l2)
//        } else {
//            result = l2
//            result!.next = mergeTwoList(l1,l2!.next)
//        }
//        return result
//
//
//    }
//}


/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
//class Solution {
//    func swapPairs(_ head: ListNode?) -> ListNode? {
//        let dummy = ListNode(0)
//        var head = head
//
//        dummy.next = head
//        head = dummy
//        while head?.next?.next != nil {
//            let n1 = head?.next
//            let n2 = head?.next?.next
//            head?.next = n2
//            n1?.next = n2?.next
//            n2?.next = n1
//            head = n1
//        }
//        return dummy.next
//    }
//
//    func swapPairs_Rec(_ head: ListNode?) -> ListNode? {
//        if  head?.next == nil {
//            return head
//        }
//
//        let next = head?.next
//
//        head?.next = swapPairs_Rec(head?.next?.next)
//        next?.next = head
//
//        return next
//    }
//}

//class Solution {
//    func reverseKGroup(_ head: ListNode?, _ k: Int) -> ListNode? {
//        if k <= 1 { return head }
//
//        var tail: ListNode? = head
//        for _ in 1...(k-1) {
//            tail = tail?.next
//            if tail == nil { return head }
//        }
//
//        let nextHead = reverseKGroup(tail?.next, k)
//
//        var current = head
//        var prev:ListNode?
//        for _ in 1...k {
//            let tmp = current?.next
//            current?.next = prev
//            prev = current
//            current = tmp
//        }
//
//        head?.next = nextHead
//        return tail
//
//    }
//}


//class Solution {
//    func removeDuplicates(_ nums: inout [Int]) -> Int {
//
//        var index = 0
//        var endOfIndex = nums.count
//
//        while index < endOfIndex - 1 {
//            if nums[index] == nums[index+1] {
//                nums.remove(at:index)
//                endOfIndex -= 1
//                continue
//            }
//            index += 1
//        }
//
//        return nums.count
//    }
//}


class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        if haystack.isEmpty {
            if needle.isEmpty { return 0 }
            return -1
        }
        
        if needle.isEmpty { return 0 }
        
        let needleCount = needle.count
        var start = 0
        var end = needleCount - 1
        
        while end < haystack.count {
            let startIndex = haystack.index(haystack.startIndex, offsetBy:start)
            let endIndex = haystack.index(haystack.startIndex, offsetBy:end)
            let substring = haystack[startIndex...endIndex]
            
            if substring == needle {
                return start
            }
            
            start += 1
            end += 1
            
        }
        
        return -1
        
        
        
    }
}

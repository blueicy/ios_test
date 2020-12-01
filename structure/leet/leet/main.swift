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


//class Solution {
//    func strStr(_ haystack: String, _ needle: String) -> Int {
//        if haystack.isEmpty {
//            if needle.isEmpty { return 0 }
//            return -1
//        }
//
//        if needle.isEmpty { return 0 }
//
//        let needleCount = needle.count
//        var start = 0
//        var end = needleCount - 1
//
//        while end < haystack.count {
//            let startIndex = haystack.index(haystack.startIndex, offsetBy:start)
//            let endIndex = haystack.index(haystack.startIndex, offsetBy:end)
//            let substring = haystack[startIndex...endIndex]
//
//            if substring == needle {
//                return start
//            }
//
//            start += 1
//            end += 1
//
//        }
//
//        return -1
//
//
//
//    }
//}


//class Solution {
//    class TrieNode {
//        var word: String?
//        var children = [Character: TrieNode]()
//    }
//
//    func findSubstring(_ s: String, _ words: [String]) -> [Int] {
//        guard words.count > 0 && words[0].count > 0 else { return [] }
//        let count = words.count, len = words[0].count
//
//        // build trie
//        let trieRoot = TrieNode()
//        for word in words {
//            var node = trieRoot
//            for char in word {
//                if node.children[char] == nil {
//                    node.children[char] = TrieNode()
//                }
//                node = node.children[char]!
//            }
//            node.word = word
//        }
//
//        // build counter
//        var counter = [String: Int]()
//        for word in words {
//            counter[word, default: 0] += 1
//        }
//
//        // search
//        var result = [Int]()
//        let s = Array(s)
//        iLoop: for i in 0..<s.count where i + len * count <= s.count {
//            var j = i
//            var counter = counter
//            while j < i + len * count {
//                var node = trieRoot, k = j
//                while k < j + len {
//                    guard let next = node.children[s[k]] else { continue iLoop }
//                    node = next
//                    k += 1
//                }
//
//                let word = node.word!
//                guard counter[word, default: 0] > 0 else { continue iLoop }
//                counter[word, default: 0] -= 1
//
//                j = k
//            }
//            result.append(i)
//        }
//
//        return result
//    }
//}


//class Solution {
//    func nextPermutation(_ nums: inout [Int]) {
//        let k = findLargestK(&nums)
//        if k >= 0 {
//            let l = findLargestL(&nums, k)
//            swap(&nums,k , l)
//        }
//        reverse(&nums, k+1)
//
//    }
//
//    private func findLargestK(_ nums: inout [Int]) -> Int {
//        var k = nums.count - 2
//
//        while k >= 0 && nums[k] >= nums[k+1] {
//            k -= 1
//        }
//
//        return k
//    }
//
//    private func findLargestL(_ nums: inout [Int], _ k:Int) -> Int {
//        var l = nums.count - 1
//
//        while l >= 0 && nums[k] >= nums[l] {
//            l -= 1
//        }
//
//        return l
//    }
//
//    private func swap(_ nums: inout [Int], _ a: Int, _ b:Int) {
//        let temp = nums[a]
//        nums[a] = nums[b]
//        nums[b] = temp
//    }
//
//    private func reverse(_ nums: inout [Int],_ start: Int) {
//        var lower = start
//        var upper = nums.count - 1
//
//        while lower < upper {
//            swap(&nums, lower, upper)
//            lower += 1
//            upper -= 1
//        }
//    }
//
//}


//class Solution {
//    func longestValidParentheses(_ s: String) -> Int {
//        if s.count == 0 { return 0 }
//
//        var stack = [Int]()
//        stack.append(-1)
//        var arr = Array(s)
//        var res = 0
//        for i in 0..<arr.count {
//            if arr[i] == ")" {
//                if stack.count > 1 && arr[stack.last!] == "(" {
//                    stack.removeLast()
//                    res = max(res, i - stack.last!)
//                } else {
//                    stack.append(i)
//                }
//            } else {
//                stack.append(i)
//            }
//        }
//        return res
//    }
//}

//class Solution {
//    func search(_ nums: [Int], _ target: Int) -> Int {
//        return binarySearch(nums, target, 0, nums.count-1)
//    }
//
//    func binarySearch(_ nums: [Int], _ target: Int, _ left: Int, _ right: Int) -> Int{
//
//        if left > right {
//            return -1
//        }
//
//        let middle = (left+right)/2
//        var leftVal = nums[left]
//        var rightVal = nums[right]
//        var middleVal = nums[middle]
//
//
//        if middleVal == target  {
//            return middle
//        } else if leftVal <= middleVal {
//            // if we get here, the left half of the array isnt rotated, we will test on that side
//            // ie 56789123
//            if leftVal <= target && target < middleVal {
//                // if we get here, the target is in the left half of the array
//                return binarySearch(nums, target, left, middle-1)
//            } else {
//                // if we get here, the target is in the right half of the array
//                return binarySearch(nums, target, middle+1, right)
//            }
//
//        } else {
//            // if we get here, the left half of the array is rotated, we will test on that side
//            // ie 891234567
//            if middleVal < target && target <= rightVal {
//                // if we get here, the target is in the right half of the array
//                return binarySearch(nums, target, middle+1, right)
//            } else {
//                // if we get here, the target is in the left half of the array
//                return binarySearch(nums, target, left, middle-1)
//            }
//        }
//    }
//
//}


//class Solution {
//    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
//        let start = binarySearch(nums, target)
//
//        if start == nums.count || nums[start] != target {
//            return [-1,-1]
//        }
//
//        let end = binarySearch(nums, target + 1) - 1
//
//        return [start, end]
//
//    }
//
//
//    private func binarySearch(_ nums:[Int],_ target:Int) -> Int {
//        var left = 0
//        var right = nums.count
//        var middle = 0
//
//        while left < right {
//            middle = (left + right) / 2
//            if nums[middle] < target {
//                left = middle + 1
//            } else {
//                right = middle
//            }
//
//        }
//
//        return left
//    }
//
//}

//class Solution {
//    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
//        if target == 0 { return 0 }
//
//        var start = binarySearch(nums, target)
//
//        return start
//    }
//
//    private func binarySearch(_ nums:[Int],_ target:Int) -> Int {
//        var left = 0
//        var middle = 0
//        var right = nums.count
//
//        while left < right {
//            middle = ( left + right ) / 2
//            if nums[middle] < target {
//                left = middle + 1
//            } else {
//                right = middle
//            }
//        }
//
//        return left
//    }
//
//
//}

//class Solution {
//    func isValidSudoku(_ board: [[Character]]) -> Bool {
//        var rows = [Int:[Character]]()
//        var cols = [Int:[Character]]()
//        var subBoard = [Int:[Character]]()
//        
//        for (i,row) in board.enumerated(){
//            for (j,_) in row.enumerated(){
//                let val = board[i][j]
//                if val == "." {
//                    continue
//                }
//                
//                //Rows
//                if let row = rows[i]{
//                    if row.contains(val){
//                        return false
//                    }else{
//                        var newRow = row
//                        newRow.append(val)
//                        rows[i] = newRow
//                    }
//                }else{
//                    var newRow = [Character]()
//                        newRow.append(val)
//                        rows[i] = newRow
//                }
//                
//                //Cols
//                if let col = cols[j]{
//                    if col.contains(val){
//                        return false
//                    }else{
//                        var newCol = col
//                        newCol.append(val)
//                        cols[j] = newCol
//                    }
//                }else{
//                    var newCol = [Character]()
//                    newCol.append(val)
//                    cols[j] = newCol
//                }
//                
//                //SubBoard
//                let index = (3*(i/3)) + (j/3)
//                if let sb = subBoard[index]{
//                    if sb.contains(val){
//                        return false
//                    }else{
//                        var newSubBoard = sb
//                        newSubBoard.append(val)
//                        subBoard[index] = newSubBoard
//                    }
//                }else{
//                    var newSubBoard = [Character]()
//                    newSubBoard.append(val)
//                    subBoard[index] = newSubBoard
//                }
//                
//            }
//        }
//        return true
//    }
//    
//    
//}



//class Solution {
//    struct Point {
//        let x:Int
//        let y:Int
//        var vals:Set<Character>
//    }
//    
//    func solveSudoku(_ board: inout [[Character]]) {
//        let n = board.count
//        var todo = [Point]()
//        
//        for i in 0..<n {
//            for j in 0..<n {
//                if board[i][j] == "." {
//                    let sols = solutions(i, j, board)
//                    todo.append(sols)
//                }
//            }
//        }
//        
//        todo.sort { $0.vals.count < $1.vals.count }
//        
//        func checkValid(_ board:[[Character]],_ row:Int,_ col:Int, val: Character) -> Bool {
//            for i in 0..<n {
//                if ((i != col && board[row][i] == val) || (i != row && board[i][col] == val)) {
//                    return false
//                }
//            }
//            
//            let rm = row/3
//            let cm = col/3
//            
//            let rlb = rm*3
//            let rub = rm*3 + 3
//            
//            let clb = cm*3
//            let cub = cm*3 + 3
//            
//            for i in rlb..<rub {
//                for j in clb..<cub {
//                    if i== row && j == col { continue }
//                    let c = board[i][j]
//                    if c == val {
//                        return false
//                    }
//                }
//            }
//            
//            return true
//        }
//        
//        func dfs(_ b: [[Character]],_ todo: [Point]) {
//            guard todo.count > 0 else {
//                board = b
//                return
//            }
//            
//            var copyToDo = todo
//            var copyBoard = b
//            var point = copyToDo.removeFirst()
//            
//            guard board[point.x][point.y] == "." else { return }
//            
//            for v in point.vals {
//                if checkValid(copyBoard, point.x, point,y, val: v) {
//                    copyBoard[point.x][point.y] = v
//                    dfs(copyBoard, copyTodo)
//                }
//            }
//        }
//        
//        var copy = todo
//        for p in todo {
//            if p.vals.count == 1 {
//                copy
//            }
//        }
//        
//    }
//    
//    
//
//}




class Solution {
    func countAndSay(_ n: Int) -> String {
        if n == 1 { return "1"}
        
        var result = "1"
        for _ in 1..<n {
            let nums = Array(result)
            var temp = ""
            var count = 1
            for j in 0..<result.count {
                if j == nums.count - 1 {
                    temp.append("\(count)\(nums[j])")
                } else {
                    if nums[j] == nums[j+1] {
                        count += 1
                    } else {
                        temp.append("\(count)\(nums[j])")
                        count = 1
                    }
                }
            }
            
            result = temp
        }
        
        return result
        
    }
}

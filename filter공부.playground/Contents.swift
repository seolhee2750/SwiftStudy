import UIKit

var arr = [1, 2, 3, 3, 4, 5]
arr.filter({$0 != arr[1]})
print(arr)

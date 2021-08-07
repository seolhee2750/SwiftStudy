var str = "apple grape cherry peach "

// omittingEmptySubsequences는 빈 시퀀스를 포함하느냐 안하느냐의 유무를 결정.
// true가 기본!
print(str.split(separator: " ", omittingEmptySubsequences: false))
print(str.split(separator: " ", omittingEmptySubsequences: true))


// maxSplit은 Int 입력받고, 0보다 크거나 같아야하며 Int.max가 기본값.
//print(str.split(separator: " ", maxSplits: 1))
//print(str.split(separator: " ", maxSplits: 2))


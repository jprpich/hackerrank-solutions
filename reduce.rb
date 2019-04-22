def sum_terms(n)
    arr = [*1..n]
    arr.reduce(0) {|sum, n| sum + (n*n+1)}
end













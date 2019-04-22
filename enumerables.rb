# arr = [1, 2, 3, 4, 5, 6]
#
# h = {"a" => 1, "b" => 2, "c" => 3}
#
# puts arr.any? {|a| a % 2 == 0}
# puts h.any? {|key, value| value.is_a? String}
# puts arr.all? {|a| a.is_a? Integer}
# puts h.all? {|key, value| key.is_a? String}
# puts arr.none? {|a| a.nil?}
# puts h.none? {|key, value| value < 3}
# puts arr.find {|a| a > 5}
# p h.find {|key, value| key == "b"}


def func_find(hash)
    # Check and return the first object that satisfies either of the following properties:
    #   1. There is a [key, value] pair where the key and value are both Integers and the value is < 20
    #   2. There is a [key, value] pair where the key and value are both Strings and the value starts with `a`.
    hash.find {|key, val| ((key.is_a? Integer) && (val.is_a? Integer) && val < 20) || ((key.is_a? String) && (val.is_a? String) && val[0] == 'a')}
end

p func_find({"a" => 1, "b" => 2, 1 => 3})

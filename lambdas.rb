# hash = {:first_name => "josh", :last_name => "prpich"}
# p arr = hash.map.with_index {|key, val| val}

values_only = -> (hash) {hash.map {|key, val| val}}

p values_only.call({:first_name => "josh", :last_name => "prpich"})

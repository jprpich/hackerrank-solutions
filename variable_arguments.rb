def full_name(first, *rest)
    result = first
    rest.each do |name|
        result+=" "+name
    end
    result
end

p full_name("joshua", "mark","prpich")

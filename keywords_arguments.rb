
#conversion formulas!
def c_to_f(c)
  f = (c.to_f * 9 / 5) + 32
end

def f_to_c(f)
  (f.to_f - 32) * 5.0 / 9.0
end

def c_to_k(c)
  c.to_f + 273.15
end

def k_to_c(k)
  k.to_f - 273.15
end

def f_to_k(f)
  c_val = f_to_c(f)
  c_to_k(c_val)
end

def k_to_f(k)
  c_val = k_to_c(k)
  c_to_f(c_val)
end


def convert_temp(num, input_scale: 'fahrenheit', output_scale: "celsius")
  if input_scale == 'fahrenheit' && output_scale == "celsius"
    puts f_to_c(num)
  elsif input_scale == 'celsius' && output_scale == "fahrenheit"
    puts c_to_f(num)
  elsif input_scale == 'celsius' && output_scale == 'kelvin'
    puts c_to_k(num)
  elsif input_scale == 'kelvin' && output_scale == 'celsius'
    puts k_to_c(num)
  elsif input_scale == 'fahrenheit' && output_scale == 'kelvin'
    puts f_to_k(num)
  elsif input_scale == 'kelvin' && output_scale == ' fahrenheit'
    puts k_to_f(num)
  else
    puts 'wrong conversion try again'
  end
end

convert_temp(32, input_scale: 'fahrenheit')




def serial_average(str)
  arr = str.split('-')
  ser = arr[0]
  average = ((arr[1].to_f + arr[2].to_f)/2).round(2)
  str = "#{ser}-#{average}"
end



p serial_average('002-10.00-20.00')

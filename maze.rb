require "csv"
data = CSV.read("prices.csv")

data.each do |price|
  price[1] = price[1].delete("$").to_f
end

target_price = data[0][1]
data.delete_at(0)

i = 0
while i < data.length
  j = 0
  k = 0
  all = false
  sum = data[i][1]
  while all == false
    while j < data.length
      if sum + data[j][1] == target_price
        p "yippy!"
      else
        p "oof"
      end
      j += 1
    end
  end
  i += 1
end
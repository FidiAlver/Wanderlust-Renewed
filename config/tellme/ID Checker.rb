mods = Hash.new(0)
total = 0
$stdin.each do |line|
    itemName = line.split(/,+/)[1]
    # puts itemName
    modName = itemName[1..itemName.index(':')-1]
    mods[modName] += 1
    total += 1
end
mods.sort_by.reverse {|key, value| value}.each do |key, value|
    puts "#{key} : #{value}, #{((value.to_f/total)*100.0).round(2)}%"
end
puts "#{total} IDs used"

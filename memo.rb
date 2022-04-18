require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type=gets.to_s.chomp


if memo_type == "1"
  puts "拡張子を除いたファイルを入力してください。"
  
  file_name=gets.to_s.chomp
  
  puts "メモしたい内容を記入してください。"
  puts "終了後、Ctrl+Dを押します"
  
  memo=STDIN.read.chomp
  
  CSV.open("#{file_name}.csv","w")do|file_name|
    file_name<<["#{memo}"]
    
  end
elsif memo_type == "2"
  puts "拡張子を除いたファイル名を入力してください。"
  
  file_name=gets.to_s.chomp
  puts "メモしたい内容を記入してください。"
  puts "終了後、Ctrl+Dを押します。"
  
  
  memo=STDIN.read.chomp
  
  CSV.open("#{file_name}.csv","a")do|file_name|
  file_name<<["#{memo}"]
end
else
  puts"1か2を入力して下さい。"

end
require "csv" # CSVファイルを扱うためのライブラリを読み込んでいます

puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"

memo_type = gets.to_i # ユーザーの入力値を取得し、数字へ変換しています

# if文を使用して続きを作成していきましょう。
# 「memo_type」の値（1 or 2）によって処理を分岐させていきましょう。
if memo_type == 1
  puts "拡張子を除いたファイルを入力してください。"
  memo_name = gets.chomp
  
  puts "メモしたい内容を記入してください"
  puts "完了したら Ctrl+D を押します"
  
  file1 = File.open("#{memo_name}.csv","w")
  memo_content = readlines
  file1.puts("#{memo_content}")
  
elsif memo_type == 2
  puts "編集したいcsvファイルを、拡張子を除いたファイル名で入力してください。"
  edit_name = gets.chomp
  
  puts "メモに追加したい内容を記入してください"
  puts "完了したら Ctrl+D を押します"
  
  file2 = File.open("#{edit_name}.csv","a")
  edit_content = readlines
  file2.puts("#{edit_content}")
else
  puts "指定された以外の番号が入力されました。"
  
end
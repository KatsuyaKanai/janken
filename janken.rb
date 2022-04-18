#ジャンケンで自分が出す手を123で選ぶ
#相手の手をランダムで決める
#ジャンケンで買った側があっち向いてホイの指の指す方向を決める
#ジャンケンで負けた方があっち向いてホイの顔の向く方を決める
#勝負がついた時勝者がわかるように文字列を出力する
#if case分を使う
def janken
  puts "最初はグー、じゃんけん..."
  puts "[0]グー,[1]チョキ,[2]パー,[3]勝負しない"
  
  player_hand=gets.to_i
  puts "ホイ!"
  program_hand=rand(3)
  
  if player_hand>2
    puts "じゃんけんをやめます"
    return false
  end
  jankens=["グー","チョキ","パー"]
  
  puts "あなたの手:#{jankens[player_hand]},プログラムの手:#{jankens[program_hand]}"
  
 if player_hand==program_hand
    puts "あいこで"
    return true
  elsif (player_hand ==0 && program_hand ==1)||(player_hand ==1 && program_hand ==2) || (player_hand ==2 && program_hand ==0)
    puts "あっち向いて(プログラムが向くと思う方向を指してください。)"
    puts "[0]上,[1]右,[2]下,[3]左"
    
    player_hands_direction=gets.to_i
    puts "ホイ!"
    program_face_direction=rand(4)
    directions=["上","右","下","左"]
    
    puts "あなたの指した向き:#{directions[player_hands_direction]},プログラムの顔の向き:#{directions[program_face_direction]}"
     if player_hands_direction==program_face_direction
       puts "あなたの勝ちです"
       return false
     else 
       return true
     end
  else
    puts "あっち向いて(プログラムに刺されない方向に向いてください)"
    puts "[0]上,[1]右,[2]下,[3]左"
    
    player_face_direction=gets.to_i
    puts "ホイ!"
    program_hands_direction=rand(4)
    directions=["上","右","下","左"]
    
    puts "あなたの顔の向き:#{directions[player_face_direction]},プログラムの指した向き:#{directions[program_hands_direction]}"
     if player_face_direction==program_hands_direction
       puts "あなたの負けです"
       return false
     else
       return true
     end
  end
end

next_game=true

while next_game
  next_game=janken
end

def game1 #じゃんけん
  puts "0:グー　1:チョキ　2:パー"
  $your_hand = gets.to_i
  $enemy_hand = rand(3)
  puts "ぽーん！"
  puts "------------------------------------------"
end

def game1_result  #じゃんけんの結果表示
  case $your_hand
   when 0
     puts "あなたはグーを出しました。"
   when 1
     puts "あなたはチョキを出しました。"
   when 2
     puts "あなたはパーを出しました。"
  else
    puts "じゃんけん失敗！もう一度やり直してね！"
  end
  
  case $enemy_hand
   when 0
     puts "敵はグーを出しました。"
   when 1
     puts "敵はチョキを出しました。"
   when 2
     puts "敵はパーを出しました。"
  end
  puts "------------------------------------------"
end

def game2 #あっち向いてホイ
  puts "あっち向いてー"
  puts "0:↑　1:→　2:↓　3:←"
  $your_direction = gets.to_i
  $enemy_direction = rand(4)
  puts "ホイ!"
  puts "------------------------------------------"
end

def game2_result #あっち向いてホイの結果表示
  case $your_direction
   when 0
     puts "あなたはを上を選びました。"
   when 1
     puts "あなたは右を選びました。"
   when 2
     puts "あなたは下を選びました。"
   when 3
     puts "あなたは左を選びました。"
  else
    puts "あっち向いてほい失敗！もう一度やり直してね！"
  end
  
  case $enemy_direction
    when 0
      puts "敵は上を選びました。"
    when 1
      puts "敵は右を選びました。"
    when 2
      puts "敵は下を選びました。"
    when 3
      puts "敵は左を選びました。"
  end
  puts "------------------------------------------"
end

$your_direction = 0 #あっち向いてホイの初期値を仮置き
$enemy_direction = 1

while $your_direction != $enemy_direction #あっち向いてホイが終わるまで繰り返す
  puts "じゃーんけーん"
  game1
  game1_result
  
  while $your_hand == $enemy_hand #あいこが続く限り、じゃんけんを繰り返す
    puts "あーいこーで"
    game1
    game1_result
  end
  
  if $your_hand != 0 && $your_hand != 1 && $your_hand != 2 #じゃんけん失敗で処理終了
    break
  end

  
  game2
  game2_result
  if $your_direction != 0 && $your_direction != 1 && $your_direction != 2 && $your_direction != 3 #あっち向いてホイ失敗で処理終了
    break
  end

  
  if $your_direction == $enemy_direction #選んだ方向が一致したら、勝敗を表示
    if $your_hand==0&&$enemy_hand==1 || $your_hand==1&&$enemy_hand==2 || $your_hand==2&&$enemy_hand==0
      puts "あなたの勝ちです！"
    else
      puts "あなたの負けです…"
    end
  end
end
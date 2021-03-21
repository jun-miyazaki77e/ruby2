def replace_your_finger(your_finger)
  case your_finger
  when 0
    your_finger = "上"
  when 1
    your_finger = "下"
  when 2
    your_finger = "左"
  when 3
    your_finger = "右"
  end
end
def replace_enemy_finger(enemy_finger)
  case enemy_finger
  when 0
    enemy_finger = "上"
  when 1
    enemy_finger = "下"
  when 2
    enemy_finger = "左"
  when 3
    enemy_finger = "右"
  end
end
catch (:escape) do
  loop do
    loop do
    puts "じゃんけん..."
    puts "0（グー）1（チョキ）2（パー）3（たたかわない）"
    your_hand = gets.to_i
    enemy_hand = rand(3)
    result = your_hand * 10 + enemy_hand * 1
    puts
    puts "ポイ！"
    puts
      case result
        when 30..32
          puts
          puts "あいて：たたかわなければかてませんよ？"
          puts
          puts "あなたのまけです"
          puts
          throw (:escape)
      #グーを出したパターン
        when 0
          puts "----------------------"
          puts "あなた：グーをだしました"
          puts "あいて：グーをだしました"
          puts "----------------------"
          puts
          puts "あいこです"
          puts
        when 1
          puts "----------------------"
          puts "あなた：グーをだしました"
          puts "あいて：チョキをだしました"
          puts "----------------------"
          puts
          puts "あなたのかちです"
          puts
          @result = "win"
          break
        when 2
          puts "----------------------"
          puts "あなた：グーをだしました"
          puts "あいて：パーをだしました"
          puts "----------------------"
          puts
          puts "あなたのまけです"
          puts
          @result = "lose"
          break
      #チョキを出したパターン
        when 10
          puts "----------------------"
          puts "あなた：チョキをだしました"
          puts "あいて：グーをだしました"
          puts "----------------------"
          puts
          puts "あなたのまけです"
          puts
          @result = "lose"
          break
        when 11
          puts "----------------------"
          puts "あなた：チョキをだしました"
          puts "あいて：チョキをだしました"
          puts "----------------------"
          puts
          puts "あいこです"
          puts
        when 12
          puts "----------------------"
          puts "あなた：チョキをだしました"
          puts "あいて：パーをだしました"
          puts "----------------------"
          puts
          puts "あなたのかちです"
          puts
          @result = "win"
          break
      #パーを出したパターン
        when 20
          puts "----------------------"
          puts "あなた：パーをだしました"
          puts "あいて：グーをだしました"
          puts "----------------------"
          puts
          puts "あなたのかちです"
          puts
          @result = "win"
          break
        when 21
          puts "----------------------"
          puts "あなた：パーをだしました"
          puts "あいて：チョキをだしました"
          puts "----------------------"
          puts
          puts "あなたのまけです"
          puts
          @result = "lose"
          break
        when 22
          puts "----------------------"
          puts "あなた：パーをだしました"
          puts "あいて：パーをだしました"
          puts "----------------------"
          puts
          puts "あいこです"
          puts
      end
    end
    if @result == "win"
      puts "あっちむいて〜"
      puts
      puts "0(上)1(下)2(左)3(右)"
      your_finger = gets.to_i
      enemy_finger = rand(4)
      dir_your_finger = replace_your_finger(your_finger)
      dir_enemy_finger = replace_enemy_finger(enemy_finger)
      puts "あなた：#{dir_your_finger}をさしました"
      puts "あいて：#{dir_enemy_finger}をむきました"
      if your_finger == enemy_finger
        puts
        puts "あなたのしょうりです！"
        puts
        break
      else
        puts
        puts "かてませんでした"
        puts
        puts "あいて：こんどはまけませんよ"
        puts
      end
    elsif @result == "lose"
      puts "あっちむいて〜"
      puts
      puts "0(上)1(下)2(左)3(右)"
      your_finger = gets.to_i
      enemy_finger = rand(4)
      dir_your_finger = replace_your_finger(your_finger)
      dir_enemy_finger = replace_enemy_finger(enemy_finger)
      puts "あなた：#{dir_your_finger}をむきました"
      puts "あいて：#{dir_enemy_finger}をさしました"
      if your_finger == enemy_finger
        puts
        puts "あいて：やった！ぼくのかちだ！"
        puts
        puts "あなたのまけです"
        puts
        break
      else
        puts
        puts "あいて：あ〜、おしい！"
        puts
        puts "あいて：こんどはかちますよ"
        puts
      end
    end
  end
end

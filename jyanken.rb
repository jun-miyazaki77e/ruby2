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
          break
        when 2
          puts "----------------------"
          puts "あなた：グーをだしました"
          puts "あいて：パーをだしました"
          puts "----------------------"
          puts
          puts "あなたのまけです"
          puts
      #チョキを出したパターン
        when 10
          puts "----------------------"
          puts "あなた：チョキをだしました"
          puts "あいて：グーをだしました"
          puts "----------------------"
          puts
          puts "あなたのまけです"
          puts
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
          break
        when 21
          puts "----------------------"
          puts "あなた：パーをだしました"
          puts "あいて：チョキをだしました"
          puts "----------------------"
          puts
          puts "あなたのまけです"
          puts
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
    puts "あっちむいて〜"
    puts
    puts "0(上)1(下)2(左)3(右)"
    your_finger = gets.to_i
    enemy_finger = rand(4)
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
  end
end

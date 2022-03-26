puts "じゃんけん..."
puts "0(グー)1(チョキ)2(パー)3(戦わない)"
result = ""
you_janken = gets.to_i 
your_janken = rand(3)
you_hoi = ""
your_hoi = ""


##自分と相手の出したじゃんけんの手のメッセージを表示する
def hand_message(you_janken,your_janken)
puts "------------------------------------"
puts "あなた:" + you_janken + "を出しました"
puts "相手:" + your_janken + "を出しました"
puts "------------------------------------"
end

##自分と相手の向きのメッセージを表示する
def hoi_message(you_hoi,your_hoi)
puts "------------------------------------"
puts "あなた:" + you_hoi + "を出しました"
puts "相手:" + your_hoi + "を出しました"
puts "------------------------------------"
end


##自分の出した手
if you_janken == 0
    you_janken = "グー"
elsif you_janken == 1
    you_janken = "チョキ"
elsif you_janken == 2
    you_janken = "パー"
end

##相手の出した手
    if your_janken == 0
    your_janken = "グー"
elsif your_janken == 1
    your_janken = "チョキ"
elsif your_janken == 2
    your_janken = "パー"
end

##戦いをやめる
if you_janken == 3
puts "戦うのをやめた"
exit
end

puts "ポン！！"

while result == "" || result == "draw" 

##自分の出した手
if you_janken == 0
    you_janken = "グー"
elsif you_janken == 1
    you_janken = "チョキ"
elsif you_janken == 2
    you_janken = "パー"
end

##相手の出した手
    if your_janken == 0
    your_janken = "グー"
elsif your_janken == 1
    your_janken = "チョキ"
elsif your_janken == 2
    your_janken = "パー"
end

##あいこの処理

if you_janken == your_janken

hand_message(you_janken,your_janken)

puts "あいこで..."
puts "0(グー)1(チョキ)2(パー)3(戦わない)"
result = "draw"
you_janken = gets.to_i 
your_janken = rand(3)
if you_janken == 3
puts "戦うのをやめた"
exit
end
puts "しょ！"
end

##勝った時の処理
if (you_janken == "グー" && your_janken == "チョキ") || (you_janken == "チョキ" && your_janken == "パー") || 
(you_janken == "パー" && your_janken == "グー") 

hand_message(you_janken,your_janken)
puts "あっち向いて〜"
puts "上(0)下(1)左(2)右(3)"

you_hoi = gets.to_i 
your_hoi = rand(3)
if you_janken == 3
puts "戦うのをやめた"
exit
end
puts "ホイ!"

if you_hoi == 0
you_hoi = "上"
elsif you_hoi == 1
you_hoi = "下"
elsif you_hoi == 2
you_hoi = "左"
elsif you_hoi == 3
you_hoi = "右"
end

if your_hoi == 0
your_hoi = "上"
elsif your_hoi == 1
your_hoi = "下"
elsif your_hoi == 2
your_hoi = "左"
elsif your_hoi == 3
your_hoi = "右"
end

if you_hoi == your_hoi
hoi_message(you_hoi,your_hoi)
puts "あなたの勝ちです！"
result = "win"

puts "もう一回やる？"
puts "1(やる) 2(やらない)"
you_retry = gets.to_i
if you_retry == 1
result = "draw"
puts "じゃんけん..."
puts "0(グー)1(チョキ)2(パー)3(戦わない)"
you_janken = gets.to_i 
your_janken = rand(3)
##自分の出した手
if you_janken == 0
    you_janken = "グー"
elsif you_janken == 1
    you_janken = "チョキ"
elsif you_janken == 2
    you_janken = "パー"
end

##相手の出した手
    if your_janken == 0
    your_janken = "グー"
elsif your_janken == 1
    your_janken = "チョキ"
elsif your_janken == 2
    your_janken = "パー"
end

hand_message(you_janken,your_janken)
if you_janken == 3
puts "戦うのをやめた"
exit
end
elsif you_retry == 2
exit
end


else
result = "draw"
hoi_message(you_hoi,your_hoi)
puts "じゃんけん..."
puts "0(グー)1(チョキ)2(パー)3(戦わない)"
you_janken = gets.to_i 
your_janken = rand(3)
if you_janken == 3
puts "戦うのをやめた"
exit
end
hoi_message(you_hoi,your_hoi)
puts "ポン！！"
end
end ##じゃんけんで勝った時


##負けた時の処理
if (you_janken == "グー" && your_janken == "パー") || (you_janken == "チョキ" && your_janken == "グー") || 
(you_janken == "パー" && your_janken == "チョキ") 

hand_message(you_janken,your_janken)
 puts "あっち向いて〜"
 puts "上(0)下(1)左(2)右(3)"
you_hoi = gets.to_i 
your_hoi = rand(3)
puts "ホイ!"

if you_hoi == 0
you_hoi = "上"
elsif you_hoi == 1
you_hoi = "下"
elsif you_hoi == 2
you_hoi = "左"
elsif you_hoi == 3
you_hoi = "右"
end

if your_hoi == 0
your_hoi = "上"
elsif your_hoi == 1
your_hoi = "下"
elsif your_hoi == 2
your_hoi = "左"
elsif your_hoi == 3
your_hoi = "右"
end

if you_hoi == your_hoi
hoi_message(you_hoi,your_hoi)
puts "あなたの負けです！"
result = "lose"
puts "もう一回やる？"
puts "1(やる) 2(やらない)"
you_retry = gets.to_i

if you_retry == 1
result = "draw"
puts "じゃんけん..."
puts "0(グー)1(チョキ)2(パー)3(戦わない)"
you_janken = gets.to_i 
your_janken = rand(3)
##自分の出した手
if you_janken == 0
    you_janken = "グー"
elsif you_janken == 1
    you_janken = "チョキ"
elsif you_janken == 2
    you_janken = "パー"
end

##相手の出した手
    if your_janken == 0
    your_janken = "グー"
elsif your_janken == 1
    your_janken = "チョキ"
elsif your_janken == 2
    your_janken = "パー"
end

hand_message(you_janken,your_janken)
end


else
result = "draw"
hoi_message(you_hoi,your_hoi)
puts "じゃんけん..."
puts "0(グー)1(チョキ)2(パー)3(戦わない)"
you_janken = gets.to_i 
your_janken = rand(3)
if you_janken == 3
puts "戦うのをやめた"
exit
end
puts "ポン！！"
end
end ##じゃんけん負けの時

end ##while



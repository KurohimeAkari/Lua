-------------------------------------------------
-- TRPG用 ダイス自動化スプリクト
-------------------------------------------------
-- Setup
-------------------------------------------------

-- ダイスの数
Dice = 2
Dmax = 10

-- 配列定義
DiceT = {}
	for i = 1, Dice , 1 do

	math.randomseed(os.time()^i)
	DiceT[i] = math.random(Dmax)
	print(i.."個目のダイスの数字は "..DiceT[i])
	
	end

-- ファンブル・クリティカル
	if DiceT[1] == DiceT[2] and DiceT[1] == 1 then
		print("ファンブル(´・ω・｀)")
	end
	if DiceT[1] == DiceT[2] and DiceT[1] == Dmax then
		print("クリティカル！！(・∀・)")
	end
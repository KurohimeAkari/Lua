bpm = io.read() 

-- あなたの適正速度(もし全体的に知りたい場合は　0　って入力してください)
prop = 720

-- それから目指できるある程度の速度　(もし全体的に知りたい場合は　0　って入力してください)
pras = 100

HS = {0.75,0.8,1.0,1.2,1.25,1.5,1.75,2,2.25,2.4,2.5,2.75,3,3.5,4,4.5,4.8,5.0,5.5,6.0,7.0,8.0,9.0,10,11,12}
Nhs = {"HS1.5強制ハーフスピード","NS強制ロースピード","強制","NS","H2.5強制ハーフスピード","HS1.5","HS3.5 強制ハーフスピード","HS2.0","HS4.5 強制ハーフスピード","NS Hi-SPEED(×2)","HS2.5","HS5.5 強制ハーフスピード","HS3.0","HS3.5","HS4.0","HS4.5","NS Hi-SPEED(×4)","HS5.0","HS5.5","HS6.0","HS3.5×2","HS4×2","HS4.5×2","HS5×2","HS5.5×2","HS6×2"}

Chs = #HS

for i = 1, Chs, 1 do
	if prop == 0 and pras == 0 then
		print(bpm*HS[i] .. " " ..Nhs[i])
	elseif bpm*HS[i] >= prop-pras and bpm*HS[i] <= prop+pras then
		print(bpm*HS[i] .. " " ..Nhs[i])
	end
	-- これ以上上がんない時は
	if bpm*HS[i] >= 1400 then
		break
	end
end


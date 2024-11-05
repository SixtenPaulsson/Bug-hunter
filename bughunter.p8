pico-8 cartridge // http://www.pico-8.com
version 42
__lua__
print("hello world")
spr(1,1,1)

function _init()
 frame = 0
 game = {
  tiles = 25,
  
  c = 0
 } 
 
 player = {
 x =  3
 }
 box = 17
 
end


function startgame()

end


function _update()


asaad = {16,17,18,19,20}
	if(btnp(0)) then
		game.c = (game.c-1)%8
	end
	
	if(btnp(1)) then
	game.c = (game.c+1)%8
	end
	
	
		if(btnp(0)) then
	 box = box -1
	end
	
	if(btnp(1)) then
	 box = box +1
	end
	
	if(box<asaad[1]) then
	 box = asaad[1]
	end
		if(box>asaad[#asaad]) then
	 box = asaad[#asaad]
	end
	side = 1
end

function _draw()
	cls(0)

	--box prints
	for n=0,3 do
		
		--rectfill((side+box)*n+side,(side+box)*n+side+4,(side+box)*n+box+side,10,2)
		--rectfill((side+box)*n+side,(side+box)*n+side+5,(side+box)*n+box+side,(side+box)*n+box+side+4,1)
		--rectfill((side+box)*n+1,(side+box)*n+4,10,2)
		--line(0,(box*n+n+5+side*n),box*5+5,(box*n+n+5),1)
		line((box*n+n),5,(box*n+n+side*n),box*5+10,1)
	end
	
	--store
	rect(box*5+7,0,127,127,7)
	line(box*5+7,21,127,21,7)
	
	--skills
	rect(0,box*5+12,box*5+7,127,7)
	line(1,112,box*5+7,112,7)
	
	--map
	line(box*5+7,box*5+12,127,box*5+12,7)
	
	--skill printing
	for y=0,6 do
		--spr(6,12*y+4,116)
		--rect(3+y*11,115,3+y*11+9,115+9,11)
		rect(2+y*12,115,2+y*12+10,115+10,12)
	end
	
	--skip turn skill
	--rect(87,114,94,115+9,8)
	--spr(9,10*game.c+3,116)
	
	
	---spr(1,40,40)
	
	
	print(box)
	
	
	
	
	
	
	
	
	--print("12345678912345678912345",3,105)
	
	--rect(box*5,1,125,125,7)
	
	
	
	--print("moveer",box*5+10,100,2)
	--rect(box*5,1,125,127,7)
	
	
	
	print("k:00/10",box*5+14,2,8)
	print("e:00/30",10)
	print("d:0/10",1)	
	
end
__gfx__
00000000111111114444444444440000000000000000000000bbbb000000000000bbbb0000888800800880080cccccc000000000000000000000000000000000
000000001111111111111111411100000111111000000000000bb000000bb000000bb00000000000080880800cccccc000000000000000000000000000000000
007007001111111116111111411100000111111000000000b00bb00b00000000b00bb00b80000008008888000cccccc000cccc00000000000000000000000000
000770001111111111111111411100000111111000000000bbbbbbbb0b0bb0b0bbbbbbbb80088008888888880cccccc000c00c00000000000000000000000000
000770001111111100000000000000000111111000000000bbbbb0bb0b0bb0b0bbbbb0bb80088008888888880cccccc000c00c00000000000000000000000000
007007001111111100000000000000000111111000000000b00bb00b00000000b00bb00b80000008008888000cccccc000cccc00000000000000000000000000
000000001111111100000000000000000111111000000000000bb000000bb000000bb00000000000080880800cccccc000000000000000000000000000000000
00000000111111110000000000000000000000000000000000bbbb000000000000bbbb0000888800800880080cccccc000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000b0bbbb0b00000000000000000000000000000000bbb00bbb000000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b00bb00b000000000000000000000000
00000000000000000000000000000000000000000000000000000000b0b00b0b00000000000000000000000000000000b000000b000000000000000000000000
00000000000000000000000000000000000000000000000000000000b00bb00b000000000000000000000000000000000b0bb0b0000000000000000000000000
00000000000000000000000000000000000000000000000000000000b00bb00b000000000000000000000000000000000b0bb0b0000000000000000000000000
00000000000000000000000000000000000000000000000000000000b0b00b0b00000000000000000000000000000000b000000b000000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b00bb00b000000000000000000000000
00000000000000000000000000000000000000000000000000000000b0bbbb0b00000000000000000000000bbbbbbbbbbbb00bbb000000000000000000000000
00000000000000001111111100000000000000000000000000000000cccccccc00000000000000000000000b00000000b0000000000000000000000000000000
00000000000000001111111100000000000000000000000000000000c0cc0ccc00000000000000000000000b000bb000b0000000011111101111111000000000
00000000000000001111111100000000000000000000000000000000c0c00c0c000000bb000000000000000b00000000b0000000010011111100011000000000
00000000000000001111111100000000000000000000000000000000cccccccc000000bb0bb000000000000b0b0bb0b0b0000000010000111110110000000000
00000000000000001111111100000000000000000000000000000000c000000c000000bb0bb000000000000b0b0bb0b0b0000000011111111111111000000000
00000000000000001111111100000000000000000000000000000000cccc0ccc000000bb000000000000000b00000000b0000000001111111111111000000000
00000000000000001111111100000000000000000000000000000000c00c000c00000000000000000000000b000bb000b0000000000111000011111000000000
00000000000000001111111100000000000000000000000000000000cccccccc00000000000000000000000b00000000b0000000001111100110111000000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bbbbbbbbbb0000000000111111111111000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011110111111111000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011110011100110000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100011100011000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000111100011000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011011011111111000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011100110111111000000000
00000000000000000000000000000000000000000000000000bbbbbbbbbbb0000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000b000000000b0000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000b000000000b0000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000b000000000b0000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000b000000000b0000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000b000000000b0000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000b000000000b0000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000b000000000b0000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000b000000000b0000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000b000000000b000dddddddddddddddd000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000bbbbbbbbbbb000dd000000000000dd0111111011111110dddddddddddddddd0000000000000000
0000000000000000000000000000000000000000000000000000000000000000d00222161111612d0100111111000110dddddddddddddddd0000000000000000
0000000000000000000000000000000000000000000000000000000000000000d00222161111612d0100001111101100dddddddddddddddd0000000000000000
0000000000000000000000000000000000000000000000000000000000000000d00000666666660d0111111111111110dddddddddddddddd0000000000000000
0000000000000000000000000000000000000000000000000000000000000000d22220111161112d0011111111111110dddddddddddddddd0000000000000000
0000000000000000000000000000000000000000000000000000000000000000d00000000000000d0001110000111110dddddddddddddddd0000000000000000
0000000000000000000000000000000000000000000000000000000000000000d00200020000020d001111100110111000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000d00000000000000d000111111111111000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000d00002000020020d011110111111111000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000d00000000000000d011110011100110000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000d00000000000000d000100011100011000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000d00000000000000d001000111100011000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000d00000000000000d011011011111111000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000dd000000000000dd011100110111111000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000dddddddddddddddd000000000000000000000000000000000000000000000000

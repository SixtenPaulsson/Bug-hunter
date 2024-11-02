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
end


function startgame()

end


function _update()
	frame = (frame + 1)%60
	if(btnp(0)) then
		game.c = (game.c-1)%8
	end
	
	if(btnp(1)) then
	game.c = (game.c+1)%8
	end
end

function _draw()

	
	cls(0)
	
	
	box = 18
	
	
	
	for n=0,5 do
		line(1,(box*n+n+5),box*5+6,(box*n+n+5),1)
		line((box*n+n+1),5,(box*n+n+1),box*5+10,1)
	end
	
	
	for y=0,6 do
	
		
		--rect(y*12+3,3,y*10+12,124,3)
		--rect(10*y+3,116,110*y+10,116,7)
		spr(6,11*y+4,116)
	
		
		rect(3+y*11,115,3+y*11+9,115+9,4)
		
	end
	rect(80,115,94,115+9,8)
	--spr(9,10*game.c+3,116)
	
	
	---spr(1,40,40)
	
	
	
	--spr(2,35,30,1,1,false,false)
	--spr(2,20,40,1,1,false,true)
	--spr(2,30,40,1,1,true,false)
	--spr(2,50,40,1,1,true,true)
	
	--spr(3,40,40,1,1,0,0)
	--spr(3,40,40,1,1,0,1)
	--spr(3,40,40,1,1,1,0)
	--spr(3,40,40,1,1,1,1)
	
	print(frame,1,1,8)
	
	
	
	
	
	
	rect(1,102,96,126,7)
end
__gfx__
00000000111111114444444444440000000000000000000000333300003333000033330000888800800880080000000000000000000000000000000000000000
00000000111111111111111141110000011111100000000000033000000000000003300000000000080880800000000000000000000000000000000000000000
00700700111111111611111141110000011111100000000030033003300000033003300380000008008888000000000000000000000000000000000000000000
00077000111111111111111141110000011111100000000033333333300330033333333380088008888888880000000000000000000000000000000000000000
00077000111111110000000000000000011111100000000033333033300330033333303380088008888888880000000000000000000000000000000000000000
00700700111111110000000000000000011111100000000030033003300000033003300380000008008888000000000000000000000000000000000000000000
00000000111111110000000000000000011111100000000000033000000000000003300000000000080880800000000000000000000000000000000000000000
00000000111111110000000000000000000000000000000000333300003333000033330000888800800880080000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000303333030000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000303003030000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000300330030000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000300330030000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000303003030000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000303333030000000000000000000000000000000000000000000000000000000000000000
00000000000000001111111100000000000000000000000000000000cccccccc0000000000000000000000000000000000000000000000000000000000000000
00000000000000001111111100000000000000000000000000000000c0cc0ccc0000000000000000000000000000000000000000000000000000000000000000
00000000000000001111111100000000000000000000000000000000c0c00c0c0000000000000000000000000000000000000000000000000000000000000000
00000000000000001111111100000000000000000000000000000000cccccccc0000000000000000000000000000000000000000000000000000000000000000
00000000000000001111111100000000000000000000000000000000c000000c0000000000000000000000000000000000000000000000000000000000000000
00000000000000001111111100000000000000000000000000000000cccc0ccc0000000000000000000000000000000000000000000000000000000000000000
00000000000000001111111100000000000000000000000000000000c00c000c0000000000000000000000000000000000000000000000000000000000000000
00000000000000001111111100000000000000000000000000000000cccccccc0000000000000000000000000000000000000000000000000000000000000000

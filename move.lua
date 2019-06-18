local dump={a}

function dump.set()

ss = io.read()
sl = "m 0 0 r"

if ss=="exit" then
   print("Game over")
   a[1][1] = '0'

else
   if ss.len==sl.len and
      string.sub(ss, 1, 1) == 'm' and
      string.sub(ss, 2, 2) == ' ' and
      (string.sub(ss, 3, 3) == '0' or string.sub(ss, 3, 3) == '1' or string.sub(ss, 3, 3) == '2' or 
      string.sub(ss, 3, 3) == '3' or string.sub(ss, 3, 3) == '4' or string.sub(ss, 3, 3) == '5' or 
      string.sub(ss, 3, 3) == '6' or string.sub(ss, 3, 3) == '7' or string.sub(ss, 3, 3) == '8' or 
      string.sub(ss, 3, 3) == '9') and
      string.sub(ss, 4, 4) == ' ' and
      (string.sub(ss, 5, 5) == '0' or string.sub(ss, 5, 5) == '1' or string.sub(ss, 5, 5) == '2' or 
      string.sub(ss, 5, 5) == '3' or string.sub(ss, 5, 5) == '4' or string.sub(ss, 5, 5) == '5' or 
      string.sub(ss, 5, 5) == '6' or string.sub(ss, 5, 5) == '7' or string.sub(ss, 5, 5) == '8' or 
      string.sub(ss, 5, 5) == '9') and
      string.sub(ss, 6, 6) == ' ' and
      (string.sub(ss, 7, 7) == 'l' or string.sub(ss, 7, 7) == 'r' or 
      string.sub(ss, 7, 7) == 'u' or string.sub(ss, 7, 7) == 'd') then
	x = tonumber(string.sub(ss, 3, 3)) + 3
	y = tonumber(string.sub(ss, 5, 5)) + 3

	if string.sub(ss, 7, 7)=='l' then
	   if (x>=3 and x<=12 and y>=6 and y<= 12 and a[x][y]==a[x][y-2] and a[x][y]==a[x][y-3]) or
	      (x>=5 and x<=12 and y>=4 and y<= 12 and a[x][y]==a[x-1][y-1] and a[x][y]==a[x-2][y-1]) or
	      (x>=3 and x<=10 and y>=4 and y<= 12 and a[x][y]==a[x+1][y-1] and a[x][y]==a[x+2][y-1]) or
	      (x>=4 and x<=11 and y>=4 and y<= 12 and a[x][y]==a[x-1][y-1] and a[x][y]==a[x+1][y-1]) then
		t = a[x][y]
		a[x][y] = a[x][y-1]
		a[x][y-1] = t
	   else
		print("No such move")
	   end


	elseif string.sub(ss, 7, 7)=='r' then
	   if (x>=3 and x<=12 and y>=3 and y<= 9 and a[x][y]==a[x][y+2] and a[x][y]==a[x][y+3]) or
	      (x>=5 and x<=12 and y>=3 and y<= 11 and a[x][y]==a[x-1][y+1] and a[x][y]==a[x-2][y+1]) or
	      (x>=3 and x<=10 and y>=3 and y<= 11 and a[x][y]==a[x+1][y+1] and a[x][y]==a[x+2][y+1]) or
	      (x>=4 and x<=11 and y>=3 and y<= 11 and a[x][y]==a[x-1][y+1] and a[x][y]==a[x+1][y+1]) then
		t = a[x][y]
		a[x][y] = a[x][y+1]
		a[x][y+1] = t
	   else
		print("No such move")
	   end

	elseif string.sub(ss, 7, 7)=='u' then
	   if (x>=6 and x<=12 and y>=3 and y<= 12 and a[x][y]==a[x-2][y] and a[x][y]==a[x-3][y]) or
	      (x>=4 and x<=12 and y>=3 and y<= 10 and a[x][y]==a[x-1][y+1] and a[x][y]==a[x-1][y+2]) or
	      (x>=4 and x<=12 and y>=5 and y<= 12 and a[x][y]==a[x-1][y-1] and a[x][y]==a[x-1][y-2]) or
	      (x>=4 and x<=12 and y>=4 and y<= 11 and a[x][y]==a[x-1][y-1] and a[x][y]==a[x-1][y+1]) then
		t = a[x][y]
		a[x][y] = a[x-1][y]
		a[x-1][y] = t
	   else
		print("No such move")
	   end

	elseif string.sub(ss, 7, 7)=='d' then
	   if (x>=3 and x<=9 and y>=3 and y<= 12 and a[x][y]==a[x+2][y] and a[x][y]==a[x+3][y]) or
	      (x>=3 and x<=11 and y>=3 and y<= 10 and a[x][y]==a[x+1][y+1] and a[x][y]==a[x+1][y+2]) or
	      (x>=3 and x<=11 and y>=5 and y<= 12 and a[x][y]==a[x+1][y-1] and a[x][y]==a[x+1][y-2]) or
	      (x>=3 and x<=11 and y>=4 and y<= 11 and a[x][y]==a[x+1][y-1] and a[x][y]==a[x+1][y+1]) then
		t = a[x][y]
		a[x][y] = a[x+1][y]
		a[x+1][y] = t
	   else
		print("No such move")
	   end
	end
	require("dump").set() 
   else
	print("Please write the correct command")
   end

end

end

return dump
local tick={a}

function tick.set()
	

raz = 0
izm = false

for i = 3, 12 do
   for j = 4, 11 do
	if a[i][j - 1] == a[i][j] and a[i][j] == a[i][j + 1] then
	   if (i<11 and a[i+1][j]==a[i][j] and a[i][j]== a[i+2][j]) or
	      (i<12 and j>3 and a[i+1][j]==a[i][j] and a[i][j]==a[i-1][j]) or
	      (i>3 and a[i-1][j]==a[i][j] and a[i][j]==a[i-2][j]) then
		j1 = j1 + 1
		while j1 <= 12 and a[i][j1] == a[i][j] do
		   a[i][j1] = '0'
		   j1 = j1 + 1
		end
		j1 = j -1
		while a[i][j1]==a[i][j] and j1>2 do
		   a[i][j1] = '0'
		   j1 = j1 - 1
		end
		i1 = i + 1
		while (i1 <=12 and a[i1][j]==a[i][j]) do
		   a[i1][j] = '0'
		   i1 = i1 + 1
		end
		i1 = i - 1
		while a[i1][j] == a[i][j] and i1 > 2 do
		   a[i1][j] = '0'
		   i1 = i1 - 1
		end
		a[i][j] = '0'
		raz = raz + 1
		izm = true
	    
	    elseif (i<11 and a[i+1][j+1]==a[i][j] and a[i][j]==a[i+2][j+1]) or
	       (i<12 and j>3 and a[i+1][j+1]==a[i][j] and a[i][j]==a[i-1][j+1]) or
	       (i>3 and a[i-1][j+1]==a[i][j] and a[i][j]==a[i-2][j+1]) then
		j1 = j + 1
		while j1< 13 and a[i][j1]==a[i][j] do
		   a[i][j1] = '0'
		   j1 = j1 + 1
		end
		j1 = j - 1
		while a[i][j1]==a[i][j] and j1>2 do
		   a[i][j1] = '0'
		   j1 = j1 - 1
		end
		i1 = i + 1
		while (j1<12 and a[i1][j+1]==a[i][j]) do
		   a[i1][j+1] = '0'
		   i1 = i1 + 1
		end
		i1 = i - 1
		while a[i1][j+1]==a[i][j] and i1+1>2 do
		   a[i1][j+1] = '0'
		   i1 = i1 -1
		end
		a[i][j] = '0'
		raz = raz + 1
		izm = true

	    elseif (i<11 and a[i+1][j-1]==a[i][j] and a[i][j]==a[i+2][j-1]) or
		   (i<12 and j>3 and a[i+1][j-1]==a[i][j] and a[i][j]==a[i-1][j-1]) or
		   (i>3 and a[i-1][j-1]==a[i][j] and a[i][j]==a[i-2][j-1]) then
		j1 = j + 1
		while j1<=12 and a[i][j1]==a[i][j] do
		   a[i][j1] = '0'
		   j1 = j1 + 1
		end
		j1 = j - 1
		while a[i][j1]==a[i][j] and j1>2 do
		   a[i][j1] = '0'
		   j1 = j1 - 1
		end
		i1 = i + 1
		while i1<=12 and a[i1][j-1]==a[i][j] do
		   a[i1][j-1] = '0'
		   i1 = i1 + 1
		end
		i1 = i - 1
		while (a[i1][j-1]==a[i][j] and i1+1>2) do
		   a[i1][j-1] = '0'
		   i1 = i1 - 1
		end
		a[i][j] = '0'
		raz = raz + 1
		izm = true
	    
	    else
		j1 = j + 1
		while (j1<=12 and a[i][j1]==a[i][j]) do
		   a[i][j1] = '0'
		   j1 = j1 + 1
		end
		j1 = j - 1
		while a[i][j1] == a[i][j] do
		   a[i][j1] = '0'
		   j1 = j1 - 1
		end
		a[i][j] = '0'
		raz = raz + 1
		izm = true
	    end
	 end
     end
 end


for i=4, 11 do
   for j=3, 12 do
      if a[i-1][j]==a[i][j] and a[i][j]==a[i+1][j] then
	i1 = i + 1
	while i1<=12 and a[i1][j]==a[i][j] do
	   a[i1][j] = '0'
	   i1 = i1 + 1
	end
	i1 = i - 1
	while a[i1][j]==a[i][j] and i1>2 do
	   a[i1][j] = '0'
	   i1 = i1 - 1
	end
	a[i][j] = '0'
	raz = raz + 1
	izm = true
       end

   end
end

if izm == true then
   require("dump").set() 
end

while raz~= 0 do
   for i = 12, 4, -1 do
      for j = 3, 12 do
	if a[i1][j]== '0' then
	   t = '0'
	   a[i][j] = a[i-1][j]
	   a[i-1][j] = t
	end
      end
   end
   raz = raz - 1
end

for i = 3, 12 do
   for j = 3, 12 do
	if a[i][j] == '0' then
	   k = math.random(1,6)
	      if k == 1 then
		   a[i][j] = 'A'
	      elseif k ==  2 then
		   a[i][j] = 'B'
	      elseif k == 3 then
		   a[i][j] = 'C'
	      elseif k == 4 then
		   a[i][j] = 'D'
	      elseif k == 5 then
		   a[i][j] = 'E'
	      elseif k == 6 then
		   a[i][j] = 'F'
	      end
	end
   end
end

if izm == true then
   require("dump").set() 
   require("tick").set() 
end

end

return tick
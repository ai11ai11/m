require("dump").set() 


a = {}
for i=1,12 do
   a[i] = {}
      for j=1,12 do
	if i == 1 and j > 2 then
	   a[i][j] = j - 3
	elseif j == 1 and i > 2 then
	   a[i][j] = i - 3
	elseif i == 2 or i == 1 and j <=2 then
	   a[i][j] = '-'
	elseif j == 2 and i >= 2 then
	   a[i][j] = '|'
	else
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

str = ""

for i=1,12 do
   for j=1,12 do
      str = str .. a[i][j] .. " "
   end
   print(str)
   str = ""
end

local bb = io.read()




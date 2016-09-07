def prime?(num)
  return false if num <= 1
  i=0
  tempArray=[]
  finalAnswer = false
    while i<num-1 #creates array with all values 1 through num, except for num itself
    tempArray[i]=i+1
    i+=1
  end

  tempArray.each do |j|
    if (j==1)
      finalAnswer = true
    elsif (num%j==0) #if num itself is in the array, this will create a false positive. Better to ensure while loop never put it in
      finalAnswer = false
    else
      #just do nothing
    end
  end
  return finalAnswer
end

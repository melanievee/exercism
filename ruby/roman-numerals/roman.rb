class Fixnum
  def to_roman
    roman = ""

    number = self
    roman << "M"*(number/1000)
    number = number%1000
    roman << "CM"*(number/900)
    number = number%900
    roman << "D"*(number/500)
    number = number%500
    roman << "CD"*(number/400)
    number = number%400
    roman << "C"*(number/100)
    number = number%100
    roman << "XC"*(number/90)
    number = number%90
    roman << "L"*(number/50)
    number = number%50
    roman << "XL"*(number/40)
    number = number%40
    roman << "X"*(number/10)
    number = number%10
    roman << "IX"*(number/9)
    number = number%9
    roman << "V"*(number/5)
    number = number%5
    roman << "IV"*(number/4)
    number = number%4
    roman << "I"*(number)
  end
end
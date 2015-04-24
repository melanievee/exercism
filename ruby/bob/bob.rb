class Bob
  def hey(remark)
    if remark =~ /[a-zA-Z]/ && remark == remark.upcase
      "Whoa, chill out!"
    elsif remark.end_with?("?")
      "Sure."
    elsif remark.strip.empty?
      "Fine. Be that way!"
    else
      "Whatever."
    end
  end
end

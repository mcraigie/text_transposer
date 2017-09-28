def transpose_text(text)
  text = text.split("\n")
  max_line_length = text.map(&:size).max
  text.map! { |line| line.ljust(max_line_length).chars }
  text.transpose.map(&:join).join("\n")
end
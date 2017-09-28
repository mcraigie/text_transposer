def transpose_text(text)
  text = text.split("\n")
  max_line_length = text.map(&:size).max + 1
  text.map! { |line| line.ljust(max_line_length).chars }
  text.transpose.map { |line| line.join }.join("\n")
end
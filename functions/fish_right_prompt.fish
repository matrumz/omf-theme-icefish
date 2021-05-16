function fish_right_prompt
  # Move cursor up 1 line, print "info right"
  echo -e '\e[1Ainfo right'
  # Move cursor down 1 line (now accepting user input)
  echo -e '\e[1B'
end

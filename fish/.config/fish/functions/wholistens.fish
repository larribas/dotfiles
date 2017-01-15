function wholistens -d "check who is listening on a port in mac"
  sudo lsof -n -i4TCP:$argv[1]
end

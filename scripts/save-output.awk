BEGIN {
  env_file = sprintf("%s/_env.txt", target)
}
{
  close(file)
  file = sprintf("%s/%s", target, $1)
  print $3 >  file
  print $1"="$3 >> env_file
}

set positional-arguments

local:
  docker compose up --build

dig *args='':
  dig -p 8053 @localhost "$@"


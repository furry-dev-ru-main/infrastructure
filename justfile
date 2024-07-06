set positional-arguments

up *args:
  docker compose --profile development up --build "$@"

down *args:
  docker compose down "$@"

dig *args:
  dig -p 53 @localhost "$@"


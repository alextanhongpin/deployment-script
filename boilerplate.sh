HELLO=something

function usage {
  echo "Usage: bash $0	[OPTIONS]
  
  Create and init a swarm cluster.
Options:
  -d, --driver                                virtual machine provider or cloud provider (default virtualbox)
  -m, --manager                               number of managers to create (default 1)
  -w, --worker                                number of workers to create (default 2)
  -v, --version                               boot2docker github url (default version 1.13.0)
  -ds, --disksize                             hard disk size for docker-machine (default 20GB)
  -r, --memory                                memory ram size for docker-machine (default 2GB)"
  exit 1
}

function greet {
    echo "$HELLO"
}

echo '···························'
echo '·· setting up the swarm  >>>> ··'
echo '···························'

# get parameters
while [ "$#" -gt 0 ]; do
  case "$1" in
  -h|--help)
    usage
    ;;
  -o|--output)
    echo "config" >> $2
    exit 1
    ;;
  *)
    echo "Invalid option"
    exit 1
    ;;
  esac
done

greet

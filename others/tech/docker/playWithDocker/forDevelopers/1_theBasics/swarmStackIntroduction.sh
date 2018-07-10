# Swarm stack introduction

# Init your swarm
# on Swarm manager
docker swarm init --advertise-addr $(hostname -i)

# on Swarm worker
docker swarm join --token \
SWMTKN-1-526aeqp172dd7ebvyc8bol5b1l0doqr6vsra9z516a0r0tyd6w-2g4251991tsrxa4gsaa56rc8w 192.168.0.58:2377

# Show members of swarm
docker node ls

# Clone the voting-app
git clone https://github.com/docker/example-voting-app
cd example-voting-app

# Deploy a stack
docker stack deploy --compose-file=docker-stack.yml voting_stack
docker stack ls
docker stack services voting_stack
docker service ps voting_stack_vote

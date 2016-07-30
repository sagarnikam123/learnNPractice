# comparison by usage

# RUN
  # - buildtime
  # - add layers to images
  # - install apps

# CMD - runtime
  # - runs commands in containers at launch time
  # - equivalent of "docker run <args> <commands>"  e.g "docker run <args> /bin/bash"
  # - only 1 CMD instruction per dockerfile
  # - CMD instruction are overriden at runtime with normal commands e.g. docker run <commands>

################################################################################
# CMD uses 2 forms (Shell & Exec)

# Shell form
    # - commands are expressed the same way as shell commands
    # - commands gets prepended by "/bin/sh -c"
    # - variable expansion etc...

# Exec form
    # - JSON array style ["command", "args1"]
    # - useful for containers which don't have shell
    # - avoid string munging by the shell
    # No shell features, no variable expansion, no special characters (&&, ||, >)

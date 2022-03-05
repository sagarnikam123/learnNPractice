# 1_Task Dependencies
gradle tasks --all  # view all tasks
gradle taskA    # executes taskA & its related dependent tasks
gradle -q taskA # perform in quite mode
###############################################################################
# 2_Using mustRunAfter and shouldRunAfter
gradle -q taskA
gradle -q task1
gradle -q task2
gradle -q task1 task2
gradle -q task2 task1
###############################################################################
# 3_Using finalizedBy
gradle -q taskA
gradle --help
gradle -i taskA # log level to info
###############################################################################

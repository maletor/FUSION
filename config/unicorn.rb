worker_processes 2
working_directory "/home/prod/fusion/current"

# This loads the application in the master process before forking
# worker processes
# Read more about it here:
# http://unicorn.bogomips.org/Unicorn/Configurator.html

timeout 30

# This is where we specify the socket.
# We will point the upstream Nginx module to this socket later on
listen "/tmp/fusion.sock", :backlog => 64

pid "/home/prod/fusion/shared/pids/unicorn.pid"

# Set the path of the log files inside the log folder of the testapp
stderr_path "/home/prod/fusion/shared/log/unicorn.stderr.log"
stdout_path "/home/prod/fusion/shared/log/unicorn.stdout.log"

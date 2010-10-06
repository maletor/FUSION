worker_processes 2
working_directory "/home/prod/fusion/current"
listen "/tmp/fusion.sock", :backlog => 64
timeout 30
user 'prod', 'staff'
shared_path = "/home/prod/fusion/shared"
pid = "#{shared_path}/pids/unicorn.pid"
stderr_path = "#{shared_path}/log/unicorn.stderr.log"
stdout_path = "#{shared_path}/log/unicorn.stdout.log"

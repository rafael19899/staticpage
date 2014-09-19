set  :domain,  'myserver.com'
    set  :user,  'myuser'
    task :down do
      invoke :restart
      invoke :logs
    end

    task :restart do
      queue 'sudo service nginx restart'
    end

    task :logs do
      queue 'tail -f /var/log/nginx/error.log'
    end

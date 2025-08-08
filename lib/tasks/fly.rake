namespace :fly do
  task :server do
    sh "bin/rails server"
  end
end

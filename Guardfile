clearing :on
guard 'puma', :port => 4000 do
  watch('Gemfile.lock')
  watch(%r{^config|lib|app\/api\app\/models|\.\.caminio-accounts\/app/.*})
end

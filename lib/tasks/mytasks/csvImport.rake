# csv importer
require 'activerecord-import'
require 'csv'

namespace :mine do
  desc "This task imports a csv file into the database via activeRecord"
  task :import, [:file, :model] => :environment do |t, args|
    items=[]
    path=File.join(Rails.root, 'public', args[:file])

    mod1=Object.const_get(args[:model].to_s)
    puts "Update on model: #{mod1}."
    puts "Loading..."

    count=0
    CSV.foreach(path, headers: true, encoding: 'iso-8859-1:utf-8') do |row|
      puts row.inspect
      items << mod1.new(row.to_h)
      count+=1
    end
  
    mod2=Object.const_get(args[:model].to_s)
    mod2.import(items)

    puts "#{count} rows affected."
  
  end
end

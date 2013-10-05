ENV['ELASTICSEARCH_URL'] = ENV['BONSAI_URL'] if Rails.env == 'production'

Tire.configure { logger 'log/elasticsearch.log', :level => 'debug' }

Tire::Model::Search.index_prefix "#{Rails.application.class.parent_name.downcase}_#{Rails.env.to_s.downcase}" unless Rails.env == 'production'

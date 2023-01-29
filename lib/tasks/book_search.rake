# frozen_string_literal: true

namespace :book_search do
  desc 'Search libraries that have searching book'
  task :search, %w[pref city limit] => :environment do |task, args|
    args.with_defaults(pref: '東京都', city: '港区', limit: 100)
    BookSearchJob.perform_now(args.pref, args.city, args.limit)
  end
end

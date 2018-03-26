namespace :sync do
  task feeds: [:environment] do
    

    Feed.all.each do |feed|
      Feedjira::Feed.add_common_feed_entry_element('enclosure', { value: :length, as: :enclosure_length })
      Feedjira::Feed.add_common_feed_entry_element('enclosure', { value: :type, as: :enclosure_type })
      Feedjira::Feed.add_common_feed_entry_element('enclosure', { value: :url, as: :enclosure_url })
      Feedjira::Feed.add_common_feed_entry_element('content', { value: :description, as: :description })

      content = Feedjira::Feed.fetch_and_parse feed.url
      content.entries.each do |entry|
        local_entry = feed.entries.where(title: entry.title).first_or_initialize
        local_entry.update_attributes(enclosure_length: entry.enclosure_length, enclosure_type: entry.enclosure_type, enclosure_url: entry.enclosure_url, description: entry.content, author: entry.author, url: entry.url, published: entry.published)
        p "Synced Entry - #{entry.title}"
      end
      p "Synced Feed - #{feed.name}"
    end
  end
end
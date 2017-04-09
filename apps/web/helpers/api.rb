class API
  def self.attributes_work(hash)
    episodes = []
    hash.episodes.each do |e|
      episodes.push({
                        number: e.number,
                        title: e.title,
                        title_ja: e.title_ja,
                        created_at: e.created_at,
                        updated_at: e.updated_at,
                    })
    end

    {
        id: 1,
        title: hash.title,
        title_ja: hash.title_ja,
        official_site_url: hash.official_site_url,
        episode: hash.episode,
        weekly: hash.weekly,
        copyright: hash.copyright,
        released_at: hash.released_at,
        created_at: hash.created_at,
        updated_at: hash.updated_at,
        episodes: episodes
    }
  end
end
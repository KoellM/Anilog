class WorkRepository < Hanami::Repository
  associations do
    has_many :episodes
  end

  def add_episode(work, data)
    assoc(:episodes, work).add(data)
  end

  def find_with_episodes(id)
    aggregate(:episodes).where(id: id).as(Work).one
  end

end

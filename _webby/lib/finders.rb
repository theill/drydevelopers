def find_cases(developer, limit = 4)
  @pages.find(limit, :in_directory => 'cases').select { |c| 
    (c.developers || []).include?(developer)
  }
end
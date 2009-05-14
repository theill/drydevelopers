# Creates an image link to a case
def link_to_case(key)
  # Find the case
  @case = @pages.find(:key => 'lokalebasen', :in_directory => 'cases')
  image_tag ="<img src=\"/images/cases/#{@case.key}.jpg\" alt=\"#{@case.title}\" width=\"180\" height=\"240\" />"
  link_to(image_tag, @case.url)
end
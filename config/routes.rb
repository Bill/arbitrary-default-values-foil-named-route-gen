ActionController::Routing::Routes.draw do |map|
  map.home_index '', :controller => 'home',
    :extra_stuff => 'the_stuff'
  map.somewhere_with_same_extra_stuff '/somewhere_with_same_extra_stuff', 
    :controller => 'home',
    :action => 'somewhere_with_same_extra_stuff',
    :extra_stuff => 'the_stuff'
  map.somewhere_with_different_extra_stuff '/somewhere_with_different_extra_stuff',
    :controller => 'home',
    :action => 'somewhere_with_different_extra_stuff',
    :extra_stuff => 'different_stuff'
end

i_am_pea = true
i_eat_corpses = false
i_hoop = true
i_rise_early = false
puts

puts i_am_pea && i_hoop
puts i_am_pea && i_rise_early
puts i_rise_early && i_hoop
puts i_eat_corpses && i_rise_early
puts

puts i_am_pea || i_hoop
puts i_am_pea || i_rise_early
puts i_rise_early || i_hoop
puts i_eat_corpses || i_rise_early
puts

puts !i_rise_early
puts !i_am_pea


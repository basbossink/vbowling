module main

fn test_gutter_game() {
	assert score([]int{len: 20, init: 0}) == 0
}

fn test_ones_game() {
	assert score([]int{len: 20, init: 1}) == 20
}

fn test_spare_should_count_next_as_bonus() {
	mut rolls := [5, 5]
	rolls  << []int{len: 18, init: 1}
	assert score(rolls) == 29
}

module main

fn test_gutter_game() {
	assert score([]int{len: 20, init: 0}) == 0
}

fn test_ones_game() {
	assert score([]int{len: 20, init: 1}) == 20
}

fn test_spare_should_count_next_as_bonus() {
	mut rolls := [5, 5]
	rolls << []int{len: 18, init: 1}
	assert score(rolls) == 29
}

fn test_spare_should_count_next_as_bonus_in_last_frame() {
	mut rolls := []int{len: 19, init: 1}
	rolls << [9, 1]
	assert score(rolls) == 29
}

fn test_strike_should_count_next_as_bonus() {
	mut rolls := [10]
	rolls << []int{len: 18, init: 1}
	assert score(rolls) == 30
}

fn test_strike_should_count_next_as_bonus_in_last_frame() {
	mut rolls := []int{len: 18, init: 1}
	rolls << [10, 1, 1]
	assert score(rolls) == 30
}

fn test_perfect_game_should_score_300() {
	assert score([]int{len: 12, init: 10}) == 300
}

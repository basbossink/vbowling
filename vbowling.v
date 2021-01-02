module main

fn score(rolls []int) int {
	number_of_pins := 10
	mut score := 0
	for i := 0; i < rolls.len - 1; i += 2 {
		if rolls[i] + rolls[i+1] == number_of_pins {
			score += rolls[i+2]
		} 
		score += rolls[i] + rolls[i+1]
	}
	return score
}

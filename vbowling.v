module main

fn score(rolls []int) int {
	number_of_pins := 10
	mut score := 0
	for i := 0; i < rolls.len - 1; {
		if rolls[i] == number_of_pins {
			score += number_of_pins
			score += rolls[i + 1] + rolls[i + 2]
			if i == rolls.len - 3 {
				return score
			}
			i++
			continue
		}
		if rolls[i] + rolls[i + 1] == number_of_pins {
			score += rolls[i + 2]
		}
		score += rolls[i] + rolls[i + 1]
		i += 2
	}
	return score
}

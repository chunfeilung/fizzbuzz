package fizzbuzz;

import java.util.ArrayList;

public class FizzBuzzGame {
	private int number = 1;
	private int maxNumber;
	private ArrayList<FizzBuzzPlayer> players = new ArrayList<FizzBuzzPlayer>();
	private FizzBuzzPlayer currentPlayer;
	
	public FizzBuzzGame(int maxNumber) {
		this.maxNumber = maxNumber;
	}
	
	public void addPlayer(FizzBuzzPlayer player) {
		this.players.add(player);
	}
	
	public void start() {
		currentPlayer = players.get(0);
		while(!isGameFinished()) {
			currentPlayer.sayNumber(number);
			advanceToNextTurn();
		}
	}

	private void advanceToNextTurn() {
		int playerNumber = players.indexOf(currentPlayer);
		currentPlayer = players.get((playerNumber + 1) % players.size());
		number++;
	}

	private boolean isGameFinished() {
		return number > maxNumber;
	}
}

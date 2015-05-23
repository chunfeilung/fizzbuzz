package fizzbuzz;

public class FizzBuzz {
	public static void main (String[] args) {
		FizzBuzzGame game = new FizzBuzzGame(100);
		
		String[] playerNames = {"Henk", "Piet", "Kees", "Bert"};
		
		for (String playerName : playerNames) {
			game.addPlayer(new FizzBuzzPlayer(playerName));
		}
		
		game.start();
	}
}

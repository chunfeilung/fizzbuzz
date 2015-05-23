package fizzbuzz;

public class FizzBuzzPlayer {
	private String name;

	public FizzBuzzPlayer(String name) {
		this.setName(name);
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getName() {
		return this.name;
	}

	public void sayNumber(int number) {
		if (number % 15 == 0) {
			saySomething("FizzBuzz");
		} else if (number % 5 == 0) {
			saySomething("Buzz");
		} else if (number % 3 == 0) {
			saySomething("Fizz");
		} else {
			saySomething(number);
		}
	}
	
	private void saySomething(String something) {
		System.out.println(this.getName() + ": " + something);
	}
	
	private void saySomething(int something) {
		this.saySomething("" + something);
	}
}

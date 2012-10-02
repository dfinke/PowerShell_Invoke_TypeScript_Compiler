class Greeter {

	greeting: string;

	constructor (message: string) {
		this.greeting = message;
	}

	greet() {
		return "Hello, " + this.greeting + ". From the greet method in the Greeter class.";
	}
}   

var greeter = new Greeter("world");

WScript.Echo(greeter.greet());
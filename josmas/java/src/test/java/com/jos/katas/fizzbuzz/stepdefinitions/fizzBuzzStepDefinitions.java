package com.jos.katas.fizzbuzz.stepdefinitions;

import com.jos.katas.fizzbuzz.FizzBuzz;
import static org.junit.Assert.*;
import cuke4duke.annotation.I18n.EN.Given;
import cuke4duke.annotation.I18n.EN.Then;

public class fizzBuzzStepDefinitions {
	private FizzBuzz fb;
	private int number;
	
	@Given("^My turn is on number 99$")
	public void myTurnIsOnNumber99() {
		fb = new FizzBuzz();
		this.number = 99;
	}
	
	@Then("^I need to say fizz instead of the number$")
	public void iNeedToSayFizzInsteadOfTheNumber() {
		assertEquals("fizz", fb.say(this.number));
	}
	
	@Given("^My turn is on number 55$")
	public void myTurnIsOnNumber55() {
		fb = new FizzBuzz(); //TODO refactor: how to before?
		this.number = 55;
	}
	
	@Then("^I need to say buzz instead of the number$")
	public void iNeedToSayBuzzInsteadOfTheNumber() {
		assertEquals("buzz", fb.say(this.number));
	}
	
	@Given("^My turn is on number 15$")
	public void myTurnIsOnNumber15() {
		fb = new FizzBuzz(); //TODO refactor: how to before?
		this.number = 15;
	}
	
	@Then("^I need to say fizzbuzz instead of the number$")
	public void iNeedToSayFizzbuzzInsteadOfTheNumber() {
		assertEquals("fizzbuzz", fb.say(this.number));
	}
	
	@Given("^My turn is on number 37$")
	public void myTurnIsOnNumber37() {
		fb = new FizzBuzz(); //TODO refactor: how to before?
		this.number = 37;
	}
	
	@Given("^My turn is on number 58$")
	public void myTurnIsOnNumber58() {
		fb = new FizzBuzz(); //TODO refactor: how to before?
		this.number = 58;
	}
	
	@Given("^My turn is on number 51$")
	public void myTurnIsOnNumber51() {
		fb = new FizzBuzz(); //TODO refactor: how to before?
		this.number = 51;
	}

}

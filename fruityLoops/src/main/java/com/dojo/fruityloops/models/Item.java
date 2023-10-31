package com.dojo.fruityloops.models;


public class Item {
	
    // MEMBER VARIABLES
    private String name;
    private double price;
    
    // CONSTRUCTOR
    public Item(String name, double price) {
        this.name = name;
        this.price = price;
    }
    
    //OVERLOADED CONSTRUCTOR
    public Item() {
        this.name = "orange";
        this.price = 14.50;
    }
    
    // As always, don't forget to generate Getters and Setters!
   
	public String getName() {
		return name;
	}

	public double getPrice() {
		return price;
	}

	
	public void setName(String name) {
		this.name = name;
	}

	public void setPrice(double price) {
		this.price = price;
	}
	
	// OTHER METHOD
}


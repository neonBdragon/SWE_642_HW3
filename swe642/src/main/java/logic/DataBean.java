package logic;

/*
Modified by: Brandon Mack
Created by: Qingyan Dai
*/

/**
 * 
 * 
 * DataBean has two attributes to hold the mean and standard deviation. 
 *
 */
public class DataBean {
	private float mean;
	private double stdDev;
	
	public float getMean() {return this.mean;}
	public void setMean(float num) {this.mean = num;}
	
	public double getSTDDev() {return this.stdDev;}
	public void setSTDDev(double num) {this.stdDev = num;}
}

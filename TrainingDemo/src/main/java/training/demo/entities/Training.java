package training.demo.entities;

import java.time.LocalDate;

public class Training {
   private int trainingId;
   private int courseId;
   private int trainerId;
   private LocalDate start_date;
   private LocalDate end_date;
   private double fees;
   private double discount;
   private int batchSize;
   private double discountedPrice;
public Training() {
	super();
	// TODO Auto-generated constructor stub
}
public Training(int trainingId, int courseId, int trainerId, LocalDate start_date, LocalDate end_date, double fees,
		double discount, int batchSize) {
	super();
	this.trainingId = trainingId;
	this.courseId = courseId;
	this.trainerId = trainerId;
	this.start_date = start_date;
	this.end_date = end_date;
	this.fees = fees;
	this.discount = discount;
	this.batchSize = batchSize;
	this.discountedPrice=discountedPrice;
}
public int getTrainingId() {
	return trainingId;
}
public void setTrainingId(int trainingId) {
	this.trainingId = trainingId;
}
public int getCourseId() {
	return courseId;
}
public void setCourseId(int courseId) {
	this.courseId = courseId;
}
public int getTrainerId() {
	return trainerId;
}
public void setTrainerId(int trainerId) {
	this.trainerId = trainerId;
}
public LocalDate getStart_date() {
	return start_date;
}
public void setStart_date(LocalDate start_date) {
	this.start_date = start_date;
}
public LocalDate getEnd_date() {
	return end_date;
}
public void setEnd_date(LocalDate end_date) {
	this.end_date = end_date;
}
public double getFees() {
	return fees;
}
public void setFees(double fees) {
	this.fees = fees;
}
public double getDiscount() {
	return discount;
}
public void setDiscount(double discount) {
	this.discount = discount;
}
public int getBatchSize() {
	return batchSize;
}
public void setBatchSize(int batchSize) {
	this.batchSize = batchSize;
}

public double getDiscountedPrice() {
	return discountedPrice;
}
public void setDiscountedPrice(double discountedPrice) {
	this.discountedPrice = discountedPrice;
}
@Override
public String toString() {
	return "Training [trainingId=" + trainingId + ", courseId=" + courseId + ", trainerId=" + trainerId
			+ ", start_date=" + start_date + ", end_date=" + end_date + ", fees=" + fees + ", discount=" + discount
			+ ", batchSize=" + batchSize + ", discountedPrize=" + discountedPrice + "]";
}



   
   
   
   
}

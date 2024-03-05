package training.demo.entities;

public class Course {
 private int courseId;
 private String courseName;
 private String description;
 private String category;
 private String intendedAudience;
 private String benefits;
public Course() {
	super();
	// TODO Auto-generated constructor stub
}
public Course(int courseId, String courseName, String description, String category, String intendedAudience,
		String benefits) {
	super();
	this.courseId = courseId;
	this.courseName = courseName;
	this.description = description;
	this.category = category;
	this.intendedAudience = intendedAudience;
	this.benefits = benefits;
}
public int getCourseId() {
	return courseId;
}
public void setCourseId(int courseId) {
	this.courseId = courseId;
}
public String getCourseName() {
	return courseName;
}
public void setCourseName(String courseName) {
	this.courseName = courseName;
}
public String getDescription() {
	return description;
}
public void setDescription(String description) {
	this.description = description;
}
public String getCategory() {
	return category;
}
public void setCategory(String category) {
	this.category = category;
}
public String getIntendedAudience() {
	return intendedAudience;
}
public void setIntendedAudience(String intendedAudience) {
	this.intendedAudience = intendedAudience;
}
public String getBenefits() {
	return benefits;
}
public void setBenefits(String benefits) {
	this.benefits = benefits;
}
@Override
public String toString() {
	return "Course [courseId=" + courseId + ", courseName=" + courseName + ", description=" + description
			+ ", category=" + category + ", intendedAudience=" + intendedAudience + ", benefits=" + benefits + "]";
}
 

 
 
 
}

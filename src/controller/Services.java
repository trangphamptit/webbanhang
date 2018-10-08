package controller;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Services {
	public static final Pattern VALID_EMAIL_ADDRESS_REGEX = Pattern.compile("^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$",
			Pattern.CASE_INSENSITIVE);

	public static final Pattern VALID_PHONE_NUM_REGEX = Pattern.compile("^[0-9]{10}|{11}$");
	
	public static boolean validateEmail(String emailStr) {
		Matcher matcher = VALID_EMAIL_ADDRESS_REGEX.matcher(emailStr);
		return matcher.find();
	}
	
	public static boolean validatePhoneNum(String phoneNum) {
		Matcher matcher = VALID_PHONE_NUM_REGEX.matcher(phoneNum);
		return matcher.find();
	}
	
	public static void main(String[] args) {
		
	}
}

package com.simpleprogrammer.proteintracker;

import java.io.IOException;

import com.techventus.server.voice.Voice;

public class SMSNotifier implements Notifier{

	// google-voice-java - https://code.google.com/archive/p/google-voice-java/

	private String userName;
	private String password;
	private String numberTomessage;

	public SMSNotifier(String userName, String password, String numberToMessage){
		this.userName = userName;
		this.password = password;
		this.numberTomessage = numberToMessage;
	}

	@Override
	public boolean send(String message) {
		try{
		Voice voice = new Voice(userName, password);
		voice.sendSMS(numberTomessage, message);
		} catch(IOException e){
			return false;
		}
		return true;
	}

}

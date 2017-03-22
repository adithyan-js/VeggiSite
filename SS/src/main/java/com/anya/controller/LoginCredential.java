package com.anya.controller;

public class LoginCredential 
{
  private String uname,passwd;

public String getUname() 
{
	return uname;
}

public void setUname(String uname)
{
	this.uname = uname;
}

public String getPasswd()
{
	return passwd;
}

public void setPasswd(String passwd) 
{
	this.passwd = passwd;
}
public boolean checkLogin()
{
	 if(uname.equals("Adi")&&passwd.equals("1234"))
			 return true;
	 else
		 return false;
}
}

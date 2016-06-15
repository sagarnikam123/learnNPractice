package com.practice.ldap;

import java.util.List;

import com.practice.ldap.constants.LdapConstants;
import com.practice.ldap.ldapimpl.LdapUserImpl;
import com.practice.ldap.user.UserInfo;
import com.practice.ldap.user.UserLogin;
import com.practice.ldap.user.UserModifiedDetails;

public class Ldap
{

    public boolean authenticateUser(LdapUserImpl ldap, UserLogin userlogin)
    {
        // to authenticate below parameters are required
        // username ,email,password (password is optional)

        return ldap.authenticateUser(userlogin);
    }

    public List<UserInfo> listUser(LdapUserImpl ldap)
    {
        ldap.listUser();
        return null;
    }

    public List<UserInfo> getUserDetails(LdapUserImpl ldap, UserLogin userlogin)
    {
        return ldap.getUserDetails(userlogin);
    }

    public boolean createUser(LdapUserImpl ldap, UserInfo userinfo)
    {
        return ldap.createUser(userinfo);
    }

    public boolean deleteUser(LdapUserImpl ldap, UserLogin userlogin)
    {

        return ldap.deleteUser(userlogin);
    }

    public boolean updateUserDetails(LdapUserImpl ldap, UserModifiedDetails modifiedUserDetails)
    {
        return ldap.updateUserDetails(ldap, modifiedUserDetails);
    }

    public static void main(String args[])
    {

        // define user details - create user
        UserInfo userinfo = new UserInfo();
        userinfo.setUserName("ashinde");
        userinfo.setPassword("amol123");
        userinfo.setEmail("amol.shinde@azadparinda.com");
        userinfo.setFirstName("Amol");
        userinfo.setLastName("Shinde");
        userinfo.setAddressLine1("khau galli"); // street
        userinfo.setCity("Pune");
        userinfo.setState("Maharashtra");
        userinfo.setCountry("Inadia");
        userinfo.setZipCode("444303");
        userinfo.setPhoneNumber("12233445");

        // getUser details
        UserLogin userlogin = new UserLogin();
        userlogin.setUserName("ashinde");
        userlogin.setEmail("amol.shinde@azadparinda.com");
        userlogin.setPassword("amol123");

        // modify user details
        UserModifiedDetails modifiedUserDetails = new UserModifiedDetails();
        modifiedUserDetails.setUserName("ashinde");
        modifiedUserDetails.setEmail("amol.shinde@azadparinda.com");
        modifiedUserDetails.setCity("Mumbai");

        // authenticate user
        LdapUserImpl ldapImpl = new LdapUserImpl(userinfo, LdapConstants.ldapUrl);

        Ldap ldapThis = new Ldap();

        // ldapThis.createUser(ldapImpl,userinfo);
        // ldapThis.listUser(ldapImpl);
        //ldapThis.authenticateUser(ldapImpl,userlogin);
        // ldapThis.getUserDetails(ldapImpl, userlogin);
        // ldapThis.deleteUser(ldapImpl, userlogin);
        // ldapThis.updateUserDetails(ldapImpl,modifiedUserDetails);

    }
}

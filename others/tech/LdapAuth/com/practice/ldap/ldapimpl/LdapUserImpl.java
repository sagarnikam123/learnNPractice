package com.practice.ldap.ldapimpl;

import java.util.ArrayList;
import java.util.Hashtable;
import java.util.List;
import java.util.Random;
import java.util.UUID;

import javax.naming.Context;
import javax.naming.NamingEnumeration;
import javax.naming.NamingException;
import javax.naming.directory.Attribute;
import javax.naming.directory.Attributes;
import javax.naming.directory.BasicAttribute;
import javax.naming.directory.BasicAttributes;
import javax.naming.directory.DirContext;
import javax.naming.directory.InitialDirContext;
import javax.naming.directory.ModificationItem;
import javax.naming.directory.SearchControls;
import javax.naming.directory.SearchResult;

import com.practice.ldap.constants.LdapConstants;
import com.practice.ldap.user.UserInfo;
import com.practice.ldap.user.UserLogin;
import com.practice.ldap.user.UserModifiedDetails;

public class LdapUserImpl
{

    DirContext ctx;

    @SuppressWarnings(
    { "unchecked", "rawtypes" })
    public LdapUserImpl(UserInfo userinfo, String ldapUrl)
    {

        Hashtable env = new Hashtable();
        env.put(Context.INITIAL_CONTEXT_FACTORY, "com.sun.jndi.ldap.LdapCtxFactory");
        env.put(Context.PROVIDER_URL, "ldap://" + LdapConstants.ldapUrl);
        env.put(Context.SECURITY_PRINCIPAL, "cn=" + LdapConstants.ldapAdminUsername + ",dc=azadparinda,dc=com");
        env.put(Context.SECURITY_CREDENTIALS, LdapConstants.ldapAdminPassword);

        /*
         * -- conflict - authenticate user / create user
         *
         * if(userinfo.getUserName().equalsIgnoreCase("admin")){ env.put(Context.SECURITY_PRINCIPAL,
         * "cn="+userinfo.getUserName() +",dc=azadparinda,dc=com");
         * env.put(Context.SECURITY_CREDENTIALS, userinfo.getPassword()); }else{
         * env.put(Context.SECURITY_PRINCIPAL, "cn="+
         * userinfo.getFirstName()+" "+userinfo.getLastName()
         * +",cn=azadparindaUsersGroup,ou=azadparindaOrg,dc=azadparinda,dc=com");
         * env.put(Context.SECURITY_CREDENTIALS, userinfo.getPassword()); }
         */

        try
        {
            ctx = new InitialDirContext(env);
        }
        catch (NamingException e)
        {
            throw new RuntimeException(e);
        }
    }

    public List<UserInfo> listUser()
    {

        SearchControls searchControls = new SearchControls();
        searchControls.setSearchScope(SearchControls.SUBTREE_SCOPE);
        String[] attrIDs =
        { "cn", "givenname", "sn", "uid", "userpassword", "mail", "street", "l", "st", "postalcode", "mobile" };
        searchControls.setReturningAttributes(attrIDs);

        List<UserInfo> useinfoList = new ArrayList<UserInfo>();
        NamingEnumeration answer;
        try
        {
            answer = ctx.search("ou=azadparindaOrg,dc=azadparinda,dc=com", "(objectclass=inetOrgPerson)", searchControls);

            while (answer.hasMore())
            {
                Attributes attrs = ((SearchResult) answer.next()).getAttributes();

                // set user info for sending
                UserInfo userinfo = new UserInfo();
                userinfo.setUserName(attrs.get("sn").get().toString());
                userinfo.setPassword(attrs.get("userpassword").get().toString());
                userinfo.setEmail(attrs.get("mail").toString());
                userinfo.setFirstName(attrs.get("givenName").toString());
                userinfo.setLastName(attrs.get("sn").get().toString());
                userinfo.setAddressLine1(attrs.get("street").get().toString()); // street
                userinfo.setCity(attrs.get("l").get().toString());
                userinfo.setState(attrs.get("st").get().toString());
                userinfo.setZipCode(attrs.get("postalcode").get().toString());
                userinfo.setPhoneNumber(attrs.get("mobile").get().toString());
                // adding to user object
                useinfoList.add(userinfo);

                System.out.println("distinguishedName/Common Name -  " + attrs.get("cn"));
                System.out.println("First Name - " + attrs.get("givenName"));
                System.out.println("Surname - " + attrs.get("sn").get());
                System.out.println("User Name - " + attrs.get("uid").get());
                System.out.println("UserPassword - " + attrs.get("userpassword").get());
                System.out.println("Email - " + attrs.get("mail").get());
                System.out.println("AddressLine1 - " + attrs.get("street").get());
                System.out.println("City - " + attrs.get("l").get());
                System.out.println("State - " + attrs.get("st").get());
                System.out.println("Postal Code - " + attrs.get("postalcode").get());
                System.out.println("Mobile - " + attrs.get("mobile").get());
                System.out.println();

            }
        }
        catch (NamingException e)
        {
            e.printStackTrace();
        }
        return useinfoList;
    }

    /***
     *
     * @param name
     * @param cd
     * @return
     */
    public List<UserInfo> getUserDetails(UserLogin userlogin)
    {

        List<UserInfo> useinfoList = new ArrayList<UserInfo>();
        try
        {

            SearchControls searchControls = new SearchControls();
            searchControls.setSearchScope(SearchControls.SUBTREE_SCOPE);

            // cn=Sachin
            // Warke,cn=azadparindaUsersGroup,ou=azadparindaOrg,dc=azadparinda,dc=com
            if (userlogin.getUserName().equalsIgnoreCase("admin"))
            {
                NamingEnumeration answer;
                String[] attrIDs =
                { "cn", "dc" };
                searchControls.setReturningAttributes(attrIDs);
                Attributes attributes = ctx.getAttributes("dc=azadparinda,dc=com");

                System.out.println("DC - " + attributes.get("dc").get().toString());

            }
            else
            {

                String[] attrIDs =
                { "cn", "givenName", "sn", "uid", "userpassword", "mail", "street", "l", "st", "postalcode", "mobile" };
                searchControls.setReturningAttributes(attrIDs);

                NamingEnumeration answer;

                answer = ctx.search("ou=azadparindaOrg,dc=azadparinda,dc=com", "(objectclass=inetOrgPerson)", searchControls);

                while (answer.hasMore())
                {
                    Attributes attrs = ((SearchResult) answer.next()).getAttributes();
                    System.out.println(attrs.get("uid").get().toString());

                    if (attrs.get("uid").get().toString().equalsIgnoreCase(userlogin.getUserName())
                            || attrs.get("mail").toString().equalsIgnoreCase(userlogin.getEmail()))
                    {

                        // set user info for sending
                        UserInfo userinfo = new UserInfo();
                        userinfo.setUserName(attrs.get("uid").get().toString());
                        userinfo.setPassword(attrs.get("userpassword").get().toString());
                        userinfo.setEmail(attrs.get("mail").toString());
                        userinfo.setFirstName(attrs.get("givenName").toString());
                        userinfo.setLastName(attrs.get("sn").get().toString());
                        userinfo.setAddressLine1(attrs.get("street").get().toString()); // street
                        userinfo.setCity(attrs.get("l").get().toString());
                        userinfo.setState(attrs.get("st").get().toString());
                        userinfo.setZipCode(attrs.get("postalcode").get().toString());
                        userinfo.setPhoneNumber(attrs.get("mobile").get().toString());
                        // adding to user object
                        useinfoList.add(userinfo);

                        System.out.println("distinguishedName/Common Name -  " + attrs.get("cn"));
                        System.out.println("First Name - " + attrs.get("givenName"));
                        System.out.println("Surname - " + attrs.get("sn").get());
                        System.out.println("User Name - " + attrs.get("uid").get());
                        System.out.println("UserPassword - " + attrs.get("userpassword").get());
                        System.out.println("Email - " + attrs.get("mail").get());
                        System.out.println("AddressLine1 - " + attrs.get("street").get());
                        System.out.println("City - " + attrs.get("l").get());
                        System.out.println("State - " + attrs.get("st").get());
                        System.out.println("Postal Code - " + attrs.get("postalcode").get());
                        System.out.println("Mobile - " + attrs.get("mobile").get());
                        System.out.println();

                    }

                }
            }

        }
        catch (NamingException e)
        {
            e.printStackTrace();
            return null;
        }
        finally
        {
            closeConnection();
        }
        return useinfoList;
    }

    public boolean createUser(UserInfo userinfo)
    {

        // Random no for uid
        Random rand = new Random();
        int max = 100000;
        int min = 1000;
        int randomNumber = rand.nextInt((max - min) + 1) + min;
        String randomUidNumber = Integer.toString(randomNumber);
        // UUID.randomUUID().toString().subSequence(0, 10);

        String commonName = userinfo.getFirstName() + " " + userinfo.getLastName();
        // create attribute entry
        Attribute cn = new BasicAttribute("cn", commonName); // user full
                                                             // name/Common
                                                             // Name
        Attribute givenName = new BasicAttribute("givenName", userinfo.getFirstName()); // first
                                                                                        // name
        Attribute sn = new BasicAttribute("sn", userinfo.getLastName());// Sur
                                                                        // name
        Attribute uid = new BasicAttribute("uid", userinfo.getUserName()); // userName
        Attribute userpassword = new BasicAttribute("userpassword", userinfo.getPassword()); // Password
        Attribute email = new BasicAttribute("mail", userinfo.getEmail()); // email
                                                                           // id
        Attribute addressLine1 = new BasicAttribute("street", userinfo.getAddressLine1());
        Attribute city = new BasicAttribute("l", userinfo.getCity()); // city
        Attribute state = new BasicAttribute("st", userinfo.getState());
        Attribute postalcode = new BasicAttribute("postalcode", userinfo.getZipCode());
        Attribute mobile = new BasicAttribute("mobile", userinfo.getPhoneNumber());

        // add attribute entry
        Attributes entry = new BasicAttributes(true);
        entry.put(cn);
        entry.put(givenName);
        entry.put(sn);
        entry.put(uid);
        entry.put(userpassword);
        entry.put(email);
        entry.put(addressLine1);
        entry.put(city);
        entry.put(state);
        entry.put(postalcode);
        entry.put(mobile);

        // add object classes
        Attribute oc = new BasicAttribute("objectClass");
        oc.add("inetOrgPerson");
        oc.add("top");

        // add object classes in entry
        entry.put(oc);
        try
        {
            // Add the entry
            String entryDN = "cn =" + commonName + ",cn=azadparindaUsersGroup,ou=azadparindaOrg,dc=azadparinda,dc=com"; // distinguished
                                                                                                            // Name
            // creating sub entry
            ctx.createSubcontext(entryDN, entry);
            System.out.println("AddUser: added entry " + entryDN + ".");

        }
        catch (NamingException e)
        {
            e.printStackTrace();
            System.err.println("AddUser: error adding entry." + e);
            return false;
        }

        return true;
    }

    public boolean deleteUser(UserLogin userlogin)
    {
        // get users all details
        List<UserInfo> useinfoList = getUserDetails(userlogin);

        // Attribute oc = new BasicAttribute("objectClass");
        // oc.add("inetOrgPerson");
        // oc.add("top");
        System.out.println(useinfoList.get(0).getFirstName().toString());
        System.out.println(useinfoList.get(0).getLastName());

        String commonName = useinfoList.get(0).getFirstName() + " " + useinfoList.get(0).getLastName();
        String entryDN = "cn =" + commonName + ",cn=azadparindaUsersGroup,ou=azadparindaOrg,dc=azadparinda,dc=com"; // distinguished
                                                                                                        // Name

        try
        {
            ctx.destroySubcontext(entryDN);
            System.out.println("deleteUser : deleted entry." + entryDN);
        }
        catch (NamingException e)
        {
            e.printStackTrace();
            System.err.println("deleteUser: error deleting entry." + e);
            return false;
        }
        return true;
    }

    public boolean updateUserDetails(LdapUserImpl ldap, UserModifiedDetails modifiedUserDetails)
    {
        SearchControls searchControls = new SearchControls();
        searchControls.setSearchScope(SearchControls.SUBTREE_SCOPE);
        String[] attrIDs =
        { "cn", "uid", "sn", "givenName", "mail" };
        searchControls.setReturningAttributes(attrIDs);

        NamingEnumeration answer;
        String commonName = null;

        try
        {
            answer = ctx.search("ou=azadparindaOrg,dc=azadparinda,dc=com", "(objectclass=inetOrgPerson)", searchControls);
            while (answer.hasMore())
            {
                Attributes attrs = ((SearchResult) answer.next()).getAttributes();
                if (attrs.get("uid").get().toString().equalsIgnoreCase(modifiedUserDetails.getUserName())
                        || attrs.get("mail").toString().equalsIgnoreCase(modifiedUserDetails.getEmail()))
                {
                    // set common name
                    commonName = attrs.get("cn").get().toString();
                    modifiedUserDetails.setLastName(attrs.get("sn").get().toString());
                }

            }
        }
        catch (NamingException e)
        {
            e.printStackTrace();
            return false;
        }

        Attribute givenName = new BasicAttribute("givenName", modifiedUserDetails.getFirstName()); // first
        Attribute sn = new BasicAttribute("sn", modifiedUserDetails.getLastName());// Sur
        Attribute addressLine1 = new BasicAttribute("street", modifiedUserDetails.getAddressLine1());
        Attribute city = new BasicAttribute("l", modifiedUserDetails.getCity()); // city
        Attribute state = new BasicAttribute("st", modifiedUserDetails.getState());
        Attribute postalcode = new BasicAttribute("postalcode", modifiedUserDetails.getZipCode());
        Attribute mobile = new BasicAttribute("mobile", modifiedUserDetails.getPhoneNumber());

        // add attribute entry
        Attributes entry = new BasicAttributes(true);
        entry.put(givenName);
        entry.put(sn);
        entry.put(addressLine1);
        entry.put(city);
        entry.put(state);
        entry.put(postalcode);
        entry.put(mobile);

        try
        {
            String entryDN = "cn =" + commonName + ",cn=azadparindaUsersGroup,ou=azadparindaOrg,dc=azadparinda,dc=com";
            ctx.modifyAttributes(entryDN, DirContext.REPLACE_ATTRIBUTE, entry);
            System.out.println("Modified content for - " + entryDN);
        }
        catch (NamingException e)
        {
            e.printStackTrace();
        }

        return true;
    }

    public boolean authenticateUser(UserLogin userlogin)
    {

        SearchControls searchControls = new SearchControls();
        searchControls.setSearchScope(SearchControls.SUBTREE_SCOPE);
        String[] attrIDs =
        { "cn", "uid", "userpassword", "mail" };
        searchControls.setReturningAttributes(attrIDs);

        NamingEnumeration answer;

        try
        {
            answer = ctx.search("ou=azadparindaOrg,dc=azadparinda,dc=com", "(objectclass=inetOrgPerson)", searchControls);
            while (answer.hasMore())
            {
                Attributes attrs = ((SearchResult) answer.next()).getAttributes();
                if (attrs.get("uid").get().toString().equalsIgnoreCase(userlogin.getUserName())
                        || attrs.get("mail").toString().equalsIgnoreCase(userlogin.getEmail()))
                {
                    System.out.println(userlogin.getUserName() + " is a valid LDAP server user");
                }

            }
        }
        catch (NamingException e)
        {
            e.printStackTrace();
            return false;
        }
        return true;
    }

    private void closeConnection()
    {
        try
        {
            ctx.close();
        }
        catch (NamingException e)
        {
            e.printStackTrace();
        }
    }

} // class

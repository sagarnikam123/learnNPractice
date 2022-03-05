package com.practice.ldap.ldaptest;

import java.util.Hashtable;

import javax.naming.Context;
import javax.naming.NamingEnumeration;
import javax.naming.NamingException;
import javax.naming.directory.Attributes;
import javax.naming.directory.DirContext;
import javax.naming.directory.InitialDirContext;
import javax.naming.directory.SearchControls;
import javax.naming.directory.SearchResult;
import javax.naming.ldap.InitialLdapContext;
import javax.naming.ldap.LdapContext;

import com.practice.ldap.constants.LdapConstants;

/**
 * Example code for retrieving a Users Primary Group from Microsoft Active Directory via. its LDAP
 * API
 *
 * @author Adam Retter <adam.retter@googlemail.com>
 */
public class LDAPTest
{

    /**
     * @param args
     *            the command line arguments
     * @throws Exception
     */
    public static void main(String[] args) throws Exception
    {

        // final String ldapAdServer = "ldap://ad.your-server.com:389";
        // final String ldapSearchBase = "dc=ad,dc=my-domain,dc=com";
        // final String ldapUsername = "myLdapUsername";
        // final String ldapPassword = "myLdapPassword";
        // final String ldapAccountToLookup = "myOtherLdapUsername";

        final String ldapAdServer = "ldap://" + LdapConstants.ldapUrl;
        final String ldapSearchBase = "cn=azadparindaUsersGroup,ou=azadparindaDev,dc=clogov,dc=com";
        final String ldapUsername = LdapConstants.ldapAdminUsername;
        final String ldapPassword = LdapConstants.ldapAdminPassword;
        final String ldapAccountToLookup = "apicha";

        Hashtable<String, Object> env = new Hashtable<String, Object>();
        env.put(Context.SECURITY_AUTHENTICATION, "simple");
        if (ldapUsername != null)
        {
            env.put(Context.SECURITY_PRINCIPAL, "cn=" + ldapUsername + ",dc=clogov,dc=com");
        }
        if (ldapPassword != null)
        {
            env.put(Context.SECURITY_CREDENTIALS, ldapPassword);
        }
        env.put(Context.INITIAL_CONTEXT_FACTORY, "com.sun.jndi.ldap.LdapCtxFactory");
        env.put(Context.PROVIDER_URL, ldapAdServer);

        InitialDirContext ctx = new InitialDirContext(env);

        SearchControls searchControls = new SearchControls();
        searchControls.setSearchScope(SearchControls.SUBTREE_SCOPE);
        String[] attrIDs =
        { "cn", "sn", "mail", "telephonenumber" };
        searchControls.setReturningAttributes(attrIDs);
        // First input parameter is search bas, it can be "CN=Users,DC=YourDomain,DC=com"
        // Second Attribute can be uid=username
        NamingEnumeration answer = ctx.search("ou=azadparindaDev,dc=clogov,dc=com", "(objectclass=inetOrgPerson)", searchControls);

        while (answer.hasMore())
        {
            Attributes attrs = ((SearchResult) answer.next()).getAttributes();
            System.out.println("distinguishedName " + attrs.get("cn"));
            // System.out.println("givenname "+ attrs.get("givenname"));
            System.out.println("sn " + attrs.get("sn"));
            System.out.println("mail " + attrs.get("mail"));
            System.out.println("telephonenumber " + attrs.get("telephonenumber"));
        }

        // o) find user-search

        // 1) lookup the ldap account
        // SearchResult srLdapUser = ldap.findAccountByAccountName(ctx, ldapSearchBase,
        // ldapAccountToLookup);
        // System.out.println(srLdapUser.getName());

        // 2) get the SID of the users primary group
        // String primaryGroupSID = ldap.getPrimaryGroupSID(srLdapUser);

        // 3) get the users Primary Group
        // String primaryGroupName = ldap.findGroupBySID(ctx, ldapSearchBase, primaryGroupSID);
    }

    public static void getUserBasicAttributes(String username, LdapContext ctx)
    {

        try
        {

            SearchControls constraints = new SearchControls();
            constraints.setSearchScope(SearchControls.SUBTREE_SCOPE);
            String[] attrIDs =
            { "distinguishedName", "sn", "givenname", "mail", "telephonenumber" };
            constraints.setReturningAttributes(attrIDs);
            // First input parameter is search bas, it can be "CN=Users,DC=YourDomain,DC=com"
            // Second Attribute can be uid=username
            NamingEnumeration answer = ctx.search("DC=YourDomain,DC=com", "sAMAccountName=" + username, constraints);
            if (answer.hasMore())
            {
                Attributes attrs = ((SearchResult) answer.next()).getAttributes();
                System.out.println("distinguishedName " + attrs.get("distinguishedName"));
                System.out.println("givenname " + attrs.get("givenname"));
                System.out.println("sn " + attrs.get("sn"));
                System.out.println("mail " + attrs.get("mail"));
                System.out.println("telephonenumber " + attrs.get("telephonenumber"));
            }
            else
            {
                throw new Exception("Invalid User");
            }

        }
        catch (Exception ex)
        {
            ex.printStackTrace();
        }

    }

    public SearchResult findAccountByAccountName(DirContext ctx, String ldapSearchBase, String accountName)
                                                                                                           throws NamingException
    {

        String searchFilter = "(&(objectClass=user)(sAMAccountName=" + accountName + "))";

        SearchControls searchControls = new SearchControls();
        searchControls.setSearchScope(SearchControls.SUBTREE_SCOPE);

        NamingEnumeration<SearchResult> results = ctx.search(ldapSearchBase, searchFilter, searchControls);

        SearchResult searchResult = null;
        if (results.hasMoreElements())
        {
            searchResult = (SearchResult) results.nextElement();

            // make sure there is not another item available, there should be only 1 match
            if (results.hasMoreElements())
            {
                System.err.println("Matched multiple users for the accountName: " + accountName);
                return null;
            }
        }

        return searchResult;
    }

    public String findGroupBySID(DirContext ctx, String ldapSearchBase, String sid) throws NamingException
    {

        String searchFilter = "(&(objectClass=group)(objectSid=" + sid + "))";

        SearchControls searchControls = new SearchControls();
        searchControls.setSearchScope(SearchControls.SUBTREE_SCOPE);

        NamingEnumeration<SearchResult> results = ctx.search(ldapSearchBase, searchFilter, searchControls);

        if (results.hasMoreElements())
        {
            SearchResult searchResult = (SearchResult) results.nextElement();

            // make sure there is not another item available, there should be only 1 match
            if (results.hasMoreElements())
            {
                System.err.println("Matched multiple groups for the group with SID: " + sid);
                return null;
            }
            else
            {
                return (String) searchResult.getAttributes().get("sAMAccountName").get();
            }
        }
        return null;
    }

    public String getPrimaryGroupSID(SearchResult srLdapUser) throws NamingException
    {
        byte[] objectSID = (byte[]) srLdapUser.getAttributes().get("objectSid").get();
        String strPrimaryGroupID = (String) srLdapUser.getAttributes().get("primaryGroupID").get();

        String strObjectSid = decodeSID(objectSID);

        return strObjectSid.substring(0, strObjectSid.lastIndexOf('-') + 1) + strPrimaryGroupID;
    }

    /**
     * The binary data is in the form: byte[0] - revision level byte[1] - count of sub-authorities
     * byte[2-7] - 48 bit authority (big-endian) and then count x 32 bit sub authorities
     * (little-endian)
     *
     * The String value is: S-Revision-Authority-SubAuthority[n]...
     *
     * Based on code from here -
     * http://forums.oracle.com/forums/thread.jspa?threadID=1155740&tstart=0
     */
    public static String decodeSID(byte[] sid)
    {

        final StringBuilder strSid = new StringBuilder("S-");

        // get version
        final int revision = sid[0];
        strSid.append(Integer.toString(revision));

        // next byte is the count of sub-authorities
        final int countSubAuths = sid[1] & 0xFF;

        // get the authority
        long authority = 0;
        // String rid = "";
        for (int i = 2; i <= 7; i++)
        {
            authority |= ((long) sid[i]) << (8 * (5 - (i - 2)));
        }
        strSid.append("-");
        strSid.append(Long.toHexString(authority));

        // iterate all the sub-auths
        int offset = 8;
        int size = 4; // 4 bytes for each sub auth
        for (int j = 0; j < countSubAuths; j++)
        {
            long subAuthority = 0;
            for (int k = 0; k < size; k++)
            {
                subAuthority |= (long) (sid[offset + k] & 0xFF) << (8 * k);
            }

            strSid.append("-");
            strSid.append(subAuthority);

            offset += size;
        }

        return strSid.toString();
    }
}

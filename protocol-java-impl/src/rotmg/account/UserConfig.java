/*
The MIT License (MIT)

Copyright (c) 2013 bobcodes

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
 */
package rotmg.account;

/**
 * TODO: fill this in with user information
 * TODO: when multiple user configs are need, migrate to a user object 
 * 
 * @author bobcodes
 */
public class UserConfig {

    /**
     * Visit http://realmofthemadgod.appspot.com/ to determine this
     * 
     * If you do not plan on using a guest account, keep this null;
     */
    public static String GUEST_GUID = "<guid>";
    
    public static String USERNAME = "<username>";
    
    public static String PASSWORD = "<pw>";
    
    /**
     * Determined from https://realmofthemadgod.appspot.com/char/list
     * use FireFox's HttpFox to sniff this HTTP request
     */
    public static int CHAR_ID = 1;
}

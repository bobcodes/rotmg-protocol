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
package rotmg.actions.incoming;

import java.io.DataInputStream;
import java.io.IOException;
import java.util.List;

import rotmg.actions.IncomingAction;
import rotmg.util.BitsAndBytes;

public class AccountListAction implements IncomingAction {

    private final int accountListId;
    private final List<Integer> accountIds;
    
    public AccountListAction() {
        this(-1,null);
    }
    
    public AccountListAction(int accountListId, List<Integer> accountIds) {
        super();
        this.accountListId = accountListId;
        this.accountIds = accountIds;
    }

    public int getAccountListId() {
        return accountListId;
    }

    public List<Integer> getAccountIds() {
        return accountIds;
    }

    @Override
    public IncomingAction fromBytes(DataInputStream din) throws IOException {
        int accountListId = din.readInt();
        List<Integer> accountIds = BitsAndBytes.readIntList(din);
        return new AccountListAction(accountListId, accountIds);
    }

    /**
     * public static const ACCOUNTLIST:int = 46;
     */
    @Override
    public int getMessageId() {
        return 46;
    }

}

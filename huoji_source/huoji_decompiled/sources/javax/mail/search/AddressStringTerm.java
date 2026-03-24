package javax.mail.search;

import javax.mail.Address;
import javax.mail.internet.InternetAddress;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AddressStringTerm extends StringTerm {
    private static final long serialVersionUID = 3086821234204980368L;

    public AddressStringTerm(String str) {
        super(str, true);
    }

    @Override // javax.mail.search.StringTerm
    public boolean equals(Object obj) {
        if (obj instanceof AddressStringTerm) {
            return super.equals(obj);
        }
        return false;
    }

    public boolean match(Address address) {
        return super.match(address instanceof InternetAddress ? ((InternetAddress) address).toUnicodeString() : address.toString());
    }
}

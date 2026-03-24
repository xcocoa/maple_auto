package javax.mail.search;

import javax.mail.Address;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AddressTerm extends SearchTerm {
    private static final long serialVersionUID = 2005405551929769980L;
    public Address address;

    public AddressTerm(Address address) {
        this.address = address;
    }

    public boolean equals(Object obj) {
        if (obj instanceof AddressTerm) {
            return ((AddressTerm) obj).address.equals(this.address);
        }
        return false;
    }

    public Address getAddress() {
        return this.address;
    }

    public int hashCode() {
        return this.address.hashCode();
    }

    public boolean match(Address address) {
        return address.equals(this.address);
    }
}

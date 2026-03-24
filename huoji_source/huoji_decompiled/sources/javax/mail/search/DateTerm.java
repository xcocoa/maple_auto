package javax.mail.search;

import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public abstract class DateTerm extends ComparisonTerm {
    private static final long serialVersionUID = 4818873430063720043L;
    public Date date;

    public DateTerm(int i, Date date) {
        this.comparison = i;
        this.date = date;
    }

    @Override // javax.mail.search.ComparisonTerm
    public boolean equals(Object obj) {
        return (obj instanceof DateTerm) && ((DateTerm) obj).date.equals(this.date) && super.equals(obj);
    }

    public int getComparison() {
        return this.comparison;
    }

    public Date getDate() {
        return new Date(this.date.getTime());
    }

    @Override // javax.mail.search.ComparisonTerm
    public int hashCode() {
        return this.date.hashCode() + super.hashCode();
    }

    public boolean match(Date date) {
        switch (this.comparison) {
            case 1:
                if (date.before(this.date) || date.equals(this.date)) {
                }
                break;
            case 4:
                if (!date.equals(this.date)) {
                }
                break;
            case 6:
                if (date.after(this.date) || date.equals(this.date)) {
                }
                break;
        }
        return false;
    }
}

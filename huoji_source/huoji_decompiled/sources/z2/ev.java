package z2;

import com.yanzhenjie.zbar.Symbol;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes2.dex */
public class ev implements Iterator<Symbol> {
    private Symbol OoooOoO;

    public ev(Symbol symbol) {
        this.OoooOoO = symbol;
    }

    @Override // java.util.Iterator
    /* JADX INFO: renamed from: OooO00o, reason: merged with bridge method [inline-methods] */
    public Symbol next() {
        Symbol symbol = this.OoooOoO;
        if (symbol == null) {
            throw new NoSuchElementException("access past end of SymbolIterator");
        }
        long next = symbol.next();
        if (next != 0) {
            this.OoooOoO = new Symbol(next);
        } else {
            this.OoooOoO = null;
        }
        return symbol;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.OoooOoO != null;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("SymbolIterator is immutable");
    }
}

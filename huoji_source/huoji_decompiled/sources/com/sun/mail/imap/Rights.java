package com.sun.mail.imap;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class Rights implements Cloneable {
    private boolean[] rights;

    public static final class Right {
        public char right;
        private static Right[] cache = new Right[128];
        public static final Right LOOKUP = getInstance('l');
        public static final Right READ = getInstance('r');
        public static final Right KEEP_SEEN = getInstance('s');
        public static final Right WRITE = getInstance('w');
        public static final Right INSERT = getInstance('i');
        public static final Right POST = getInstance('p');
        public static final Right CREATE = getInstance('c');
        public static final Right DELETE = getInstance('d');
        public static final Right ADMINISTER = getInstance('a');

        private Right(char c) {
            if (c >= 128) {
                throw new IllegalArgumentException("Right must be ASCII");
            }
            this.right = c;
        }

        public static synchronized Right getInstance(char c) {
            if (c >= 128) {
                throw new IllegalArgumentException("Right must be ASCII");
            }
            Right[] rightArr = cache;
            if (rightArr[c] == null) {
                rightArr[c] = new Right(c);
            }
            return cache[c];
        }

        public final String toString() {
            return String.valueOf(this.right);
        }
    }

    public Rights() {
        this.rights = new boolean[128];
    }

    public Rights(Right right) {
        boolean[] zArr = new boolean[128];
        this.rights = zArr;
        zArr[right.right] = true;
    }

    public Rights(Rights rights) {
        boolean[] zArr = new boolean[128];
        this.rights = zArr;
        System.arraycopy(rights.rights, 0, zArr, 0, zArr.length);
    }

    public Rights(String str) {
        this.rights = new boolean[128];
        for (int i = 0; i < str.length(); i++) {
            add(Right.getInstance(str.charAt(i)));
        }
    }

    public void add(Right right) {
        this.rights[right.right] = true;
    }

    public void add(Rights rights) {
        int i = 0;
        while (true) {
            boolean[] zArr = rights.rights;
            if (i >= zArr.length) {
                return;
            }
            if (zArr[i]) {
                this.rights[i] = true;
            }
            i++;
        }
    }

    public Object clone() {
        try {
            Rights rights = (Rights) super.clone();
            try {
                boolean[] zArr = new boolean[128];
                rights.rights = zArr;
                boolean[] zArr2 = this.rights;
                System.arraycopy(zArr2, 0, zArr, 0, zArr2.length);
                return rights;
            } catch (CloneNotSupportedException unused) {
                return rights;
            }
        } catch (CloneNotSupportedException unused2) {
            return null;
        }
    }

    public boolean contains(Right right) {
        return this.rights[right.right];
    }

    public boolean contains(Rights rights) {
        int i = 0;
        while (true) {
            boolean[] zArr = rights.rights;
            if (i >= zArr.length) {
                return true;
            }
            if (zArr[i] && !this.rights[i]) {
                return false;
            }
            i++;
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Rights)) {
            return false;
        }
        Rights rights = (Rights) obj;
        int i = 0;
        while (true) {
            boolean[] zArr = rights.rights;
            if (i >= zArr.length) {
                return true;
            }
            if (zArr[i] != this.rights[i]) {
                return false;
            }
            i++;
        }
    }

    public Right[] getRights() {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (true) {
            boolean[] zArr = this.rights;
            if (i >= zArr.length) {
                return (Right[]) arrayList.toArray(new Right[arrayList.size()]);
            }
            if (zArr[i]) {
                arrayList.add(Right.getInstance((char) i));
            }
            i++;
        }
    }

    public int hashCode() {
        int i = 0;
        int i2 = 0;
        while (true) {
            boolean[] zArr = this.rights;
            if (i >= zArr.length) {
                return i2;
            }
            if (zArr[i]) {
                i2++;
            }
            i++;
        }
    }

    public void remove(Right right) {
        this.rights[right.right] = false;
    }

    public void remove(Rights rights) {
        int i = 0;
        while (true) {
            boolean[] zArr = rights.rights;
            if (i >= zArr.length) {
                return;
            }
            if (zArr[i]) {
                this.rights[i] = false;
            }
            i++;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (true) {
            boolean[] zArr = this.rights;
            if (i >= zArr.length) {
                return sb.toString();
            }
            if (zArr[i]) {
                sb.append((char) i);
            }
            i++;
        }
    }
}

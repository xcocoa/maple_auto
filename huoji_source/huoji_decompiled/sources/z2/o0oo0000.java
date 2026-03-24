package z2;

import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.EncodeStrategy;

/* JADX INFO: loaded from: classes.dex */
public abstract class o0oo0000 {
    public static final o0oo0000 OooO00o = new OooO00o();
    public static final o0oo0000 OooO0O0 = new OooO0O0();
    public static final o0oo0000 OooO0OO = new OooO0OO();
    public static final o0oo0000 OooO0Oo = new OooO0o();
    public static final o0oo0000 OooO0o0 = new OooO();

    public class OooO extends o0oo0000 {
        @Override // z2.o0oo0000
        public boolean OooO00o() {
            return true;
        }

        @Override // z2.o0oo0000
        public boolean OooO0O0() {
            return true;
        }

        @Override // z2.o0oo0000
        public boolean OooO0OO(DataSource dataSource) {
            return dataSource == DataSource.REMOTE;
        }

        @Override // z2.o0oo0000
        public boolean OooO0Oo(boolean z, DataSource dataSource, EncodeStrategy encodeStrategy) {
            return ((z && dataSource == DataSource.DATA_DISK_CACHE) || dataSource == DataSource.LOCAL) && encodeStrategy == EncodeStrategy.TRANSFORMED;
        }
    }

    public class OooO00o extends o0oo0000 {
        @Override // z2.o0oo0000
        public boolean OooO00o() {
            return true;
        }

        @Override // z2.o0oo0000
        public boolean OooO0O0() {
            return true;
        }

        @Override // z2.o0oo0000
        public boolean OooO0OO(DataSource dataSource) {
            return dataSource == DataSource.REMOTE;
        }

        @Override // z2.o0oo0000
        public boolean OooO0Oo(boolean z, DataSource dataSource, EncodeStrategy encodeStrategy) {
            return (dataSource == DataSource.RESOURCE_DISK_CACHE || dataSource == DataSource.MEMORY_CACHE) ? false : true;
        }
    }

    public class OooO0O0 extends o0oo0000 {
        @Override // z2.o0oo0000
        public boolean OooO00o() {
            return false;
        }

        @Override // z2.o0oo0000
        public boolean OooO0O0() {
            return false;
        }

        @Override // z2.o0oo0000
        public boolean OooO0OO(DataSource dataSource) {
            return false;
        }

        @Override // z2.o0oo0000
        public boolean OooO0Oo(boolean z, DataSource dataSource, EncodeStrategy encodeStrategy) {
            return false;
        }
    }

    public class OooO0OO extends o0oo0000 {
        @Override // z2.o0oo0000
        public boolean OooO00o() {
            return true;
        }

        @Override // z2.o0oo0000
        public boolean OooO0O0() {
            return false;
        }

        @Override // z2.o0oo0000
        public boolean OooO0OO(DataSource dataSource) {
            return (dataSource == DataSource.DATA_DISK_CACHE || dataSource == DataSource.MEMORY_CACHE) ? false : true;
        }

        @Override // z2.o0oo0000
        public boolean OooO0Oo(boolean z, DataSource dataSource, EncodeStrategy encodeStrategy) {
            return false;
        }
    }

    public class OooO0o extends o0oo0000 {
        @Override // z2.o0oo0000
        public boolean OooO00o() {
            return false;
        }

        @Override // z2.o0oo0000
        public boolean OooO0O0() {
            return true;
        }

        @Override // z2.o0oo0000
        public boolean OooO0OO(DataSource dataSource) {
            return false;
        }

        @Override // z2.o0oo0000
        public boolean OooO0Oo(boolean z, DataSource dataSource, EncodeStrategy encodeStrategy) {
            return (dataSource == DataSource.RESOURCE_DISK_CACHE || dataSource == DataSource.MEMORY_CACHE) ? false : true;
        }
    }

    public abstract boolean OooO00o();

    public abstract boolean OooO0O0();

    public abstract boolean OooO0OO(DataSource dataSource);

    public abstract boolean OooO0Oo(boolean z, DataSource dataSource, EncodeStrategy encodeStrategy);
}

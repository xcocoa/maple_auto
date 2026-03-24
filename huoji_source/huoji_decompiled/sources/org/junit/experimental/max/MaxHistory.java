package org.junit.experimental.max;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import org.junit.runner.Description;
import org.junit.runner.Result;
import org.junit.runner.notification.Failure;
import z2.g90;

/* JADX INFO: loaded from: classes2.dex */
public class MaxHistory implements Serializable {
    private static final long serialVersionUID = 1;
    private final Map<String, Long> fDurations = new HashMap();
    private final Map<String, Long> fFailureTimestamps = new HashMap();
    private final File fHistoryStore;

    public final class OooO0O0 extends g90 {
        private long OooO00o;
        private Map<Description, Long> OooO0O0;

        private OooO0O0() {
            this.OooO00o = System.currentTimeMillis();
            this.OooO0O0 = new HashMap();
        }

        @Override // z2.g90
        public void OooO0O0(Failure failure) throws Exception {
            MaxHistory.this.putTestFailureTimestamp(failure.getDescription(), this.OooO00o);
        }

        @Override // z2.g90
        public void OooO0OO(Description description) throws Exception {
            MaxHistory.this.putTestDuration(description, System.nanoTime() - this.OooO0O0.get(description).longValue());
        }

        @Override // z2.g90
        public void OooO0o0(Result result) throws Exception {
            MaxHistory.this.save();
        }

        @Override // z2.g90
        public void OooO0oO(Description description) throws Exception {
            this.OooO0O0.put(description, Long.valueOf(System.nanoTime()));
        }
    }

    public class OooO0OO implements Comparator<Description> {
        private OooO0OO() {
        }

        private Long OooO0O0(Description description) {
            Long failureTimestamp = MaxHistory.this.getFailureTimestamp(description);
            if (failureTimestamp == null) {
                return 0L;
            }
            return failureTimestamp;
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: OooO00o, reason: merged with bridge method [inline-methods] */
        public int compare(Description description, Description description2) {
            if (MaxHistory.this.isNewTest(description)) {
                return -1;
            }
            if (MaxHistory.this.isNewTest(description2)) {
                return 1;
            }
            int iCompareTo = OooO0O0(description2).compareTo(OooO0O0(description));
            return iCompareTo != 0 ? iCompareTo : MaxHistory.this.getTestDuration(description).compareTo(MaxHistory.this.getTestDuration(description2));
        }
    }

    private MaxHistory(File file) {
        this.fHistoryStore = file;
    }

    public static MaxHistory forFolder(File file) {
        if (file.exists()) {
            try {
                return readHistory(file);
            } catch (CouldNotReadCoreException e) {
                e.printStackTrace();
                file.delete();
            }
        }
        return new MaxHistory(file);
    }

    private static MaxHistory readHistory(File file) throws CouldNotReadCoreException {
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                ObjectInputStream objectInputStream = new ObjectInputStream(fileInputStream);
                try {
                    return (MaxHistory) objectInputStream.readObject();
                } finally {
                    objectInputStream.close();
                }
            } finally {
                fileInputStream.close();
            }
        } catch (Exception e) {
            throw new CouldNotReadCoreException(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void save() throws IOException {
        ObjectOutputStream objectOutputStream = new ObjectOutputStream(new FileOutputStream(this.fHistoryStore));
        objectOutputStream.writeObject(this);
        objectOutputStream.close();
    }

    public Long getFailureTimestamp(Description description) {
        return this.fFailureTimestamps.get(description.toString());
    }

    public Long getTestDuration(Description description) {
        return this.fDurations.get(description.toString());
    }

    public boolean isNewTest(Description description) {
        return !this.fDurations.containsKey(description.toString());
    }

    public g90 listener() {
        return new OooO0O0();
    }

    public void putTestDuration(Description description, long j) {
        this.fDurations.put(description.toString(), Long.valueOf(j));
    }

    public void putTestFailureTimestamp(Description description, long j) {
        this.fFailureTimestamps.put(description.toString(), Long.valueOf(j));
    }

    public Comparator<Description> testComparator() {
        return new OooO0OO();
    }
}

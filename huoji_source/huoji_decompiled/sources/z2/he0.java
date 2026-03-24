package z2;

import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import javax.mail.UIDFolder;
import z2.ee0;

/* JADX INFO: loaded from: classes2.dex */
public class he0 implements Closeable, ee0 {
    private final int OoooOoO = 1179403647;
    private final FileChannel OoooOoo;

    public he0(File file) throws FileNotFoundException {
        if (file == null || !file.exists()) {
            throw new IllegalArgumentException("File is null or does not exist");
        }
        this.OoooOoo = new FileInputStream(file).getChannel();
    }

    private long OooOO0(ee0.OooO0O0 oooO0O0, long j, long j2) throws IOException {
        for (long j3 = 0; j3 < j; j3++) {
            ee0.OooO0OO oooO0OOOooO0O0 = oooO0O0.OooO0O0(j3);
            if (oooO0OOOooO0O0.OooO00o == 1) {
                long j4 = oooO0OOOooO0O0.OooO0OO;
                if (j4 <= j2 && j2 <= oooO0OOOooO0O0.OooO0Oo + j4) {
                    return (j2 - j4) + oooO0OOOooO0O0.OooO0O0;
                }
            }
        }
        throw new IllegalStateException("Could not map vma to file offset!");
    }

    public ee0.OooO0O0 OooooOo() throws IOException {
        this.OoooOoo.position(0L);
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        if (o00O0O(byteBufferAllocate, 0L) != 1179403647) {
            throw new IllegalArgumentException("Invalid ELF Magic!");
        }
        short sOoooooO = OoooooO(byteBufferAllocate, 4L);
        boolean z = OoooooO(byteBufferAllocate, 5L) == 2;
        if (sOoooooO == 1) {
            return new fe0(z, this);
        }
        if (sOoooooO == 2) {
            return new ge0(z, this);
        }
        throw new IllegalStateException("Invalid class type!");
    }

    public void Oooooo(ByteBuffer byteBuffer, long j, int i) throws IOException {
        byteBuffer.position(0);
        byteBuffer.limit(i);
        long j2 = 0;
        while (j2 < i) {
            int i2 = this.OoooOoo.read(byteBuffer, j + j2);
            if (i2 == -1) {
                throw new EOFException();
            }
            j2 += (long) i2;
        }
        byteBuffer.position(0);
    }

    public List<String> Oooooo0() throws IOException {
        long j;
        this.OoooOoo.position(0L);
        ArrayList arrayList = new ArrayList();
        ee0.OooO0O0 oooO0O0OooooOo = OooooOo();
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        byteBufferAllocate.order(oooO0O0OooooOo.OooO00o ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        long j2 = oooO0O0OooooOo.OooO0o;
        int i = 0;
        if (j2 == d00.OooOOoo) {
            j2 = oooO0O0OooooOo.OooO0OO(0).OooO00o;
        }
        long j3 = 0;
        while (true) {
            if (j3 >= j2) {
                j = 0;
                break;
            }
            ee0.OooO0OO oooO0OOOooO0O0 = oooO0O0OooooOo.OooO0O0(j3);
            if (oooO0OOOooO0O0.OooO00o == 2) {
                j = oooO0OOOooO0O0.OooO0O0;
                break;
            }
            j3++;
        }
        if (j == 0) {
            return Collections.unmodifiableList(arrayList);
        }
        ArrayList arrayList2 = new ArrayList();
        long j4 = 0;
        while (true) {
            ee0.OooO00o OooO00o = oooO0O0OooooOo.OooO00o(j, i);
            long j5 = j;
            long j6 = OooO00o.OooO00o;
            if (j6 == 1) {
                arrayList2.add(Long.valueOf(OooO00o.OooO0O0));
            } else if (j6 == 5) {
                j4 = OooO00o.OooO0O0;
            }
            i++;
            if (OooO00o.OooO00o == 0) {
                break;
            }
            j = j5;
        }
        if (j4 == 0) {
            throw new IllegalStateException("String table offset not found!");
        }
        long jOooOO0 = OooOO0(oooO0O0OooooOo, j2, j4);
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            arrayList.add(ooOO(byteBufferAllocate, ((Long) it.next()).longValue() + jOooOO0));
        }
        return arrayList;
    }

    public short OoooooO(ByteBuffer byteBuffer, long j) throws IOException {
        Oooooo(byteBuffer, j, 1);
        return (short) (byteBuffer.get() & 255);
    }

    public int Ooooooo(ByteBuffer byteBuffer, long j) throws IOException {
        Oooooo(byteBuffer, j, 2);
        return byteBuffer.getShort() & 65535;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.OoooOoo.close();
    }

    public long o00O0O(ByteBuffer byteBuffer, long j) throws IOException {
        Oooooo(byteBuffer, j, 4);
        return ((long) byteBuffer.getInt()) & UIDFolder.MAXUID;
    }

    public long o0OoOo0(ByteBuffer byteBuffer, long j) throws IOException {
        Oooooo(byteBuffer, j, 8);
        return byteBuffer.getLong();
    }

    public String ooOO(ByteBuffer byteBuffer, long j) throws IOException {
        StringBuilder sb = new StringBuilder();
        while (true) {
            long j2 = 1 + j;
            short sOoooooO = OoooooO(byteBuffer, j);
            if (sOoooooO == 0) {
                return sb.toString();
            }
            sb.append((char) sOoooooO);
            j = j2;
        }
    }
}

package z2;

import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public interface dm {
    em OooO00o(vl vlVar, Map<DecodeHintType, ?> map) throws NotFoundException, ChecksumException, FormatException;

    em OooO0O0(vl vlVar) throws NotFoundException, ChecksumException, FormatException;

    void reset();
}

package com.umeng.commonsdk.statistics.proto;

import com.umeng.commonsdk.proguard.aa;
import com.umeng.commonsdk.proguard.ag;
import com.umeng.commonsdk.proguard.ah;
import com.umeng.commonsdk.proguard.am;
import com.umeng.commonsdk.proguard.an;
import com.umeng.commonsdk.proguard.ar;
import com.umeng.commonsdk.proguard.at;
import com.umeng.commonsdk.proguard.au;
import com.umeng.commonsdk.proguard.az;
import com.umeng.commonsdk.proguard.ba;
import com.umeng.commonsdk.proguard.bc;
import com.umeng.commonsdk.proguard.be;
import com.umeng.commonsdk.proguard.bf;
import com.umeng.commonsdk.proguard.bh;
import com.umeng.commonsdk.proguard.bi;
import com.umeng.commonsdk.proguard.bj;
import com.umeng.commonsdk.proguard.bk;
import com.umeng.commonsdk.proguard.bl;
import com.umeng.commonsdk.proguard.v;
import com.umeng.commonsdk.proguard.x;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class Response implements aa<Response, e>, Serializable, Cloneable {
    private static final int __RESP_CODE_ISSET_ID = 0;
    public static final Map<e, am> metaDataMap;
    private static final Map<Class<? extends bh>, bi> schemes;
    private static final long serialVersionUID = -4549277923241195391L;
    private byte __isset_bitfield;
    public com.umeng.commonsdk.statistics.proto.d imprint;
    public String msg;
    private e[] optionals;
    public int resp_code;
    private static final be STRUCT_DESC = new be("Response");
    private static final au RESP_CODE_FIELD_DESC = new au("resp_code", (byte) 8, 1);
    private static final au MSG_FIELD_DESC = new au("msg", (byte) 11, 2);
    private static final au IMPRINT_FIELD_DESC = new au(v.Q, (byte) 12, 3);

    public static class a extends bj<Response> {
        private a() {
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x003e  */
        @Override // com.umeng.commonsdk.proguard.bh
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void b(az azVar, Response response) throws ag {
            azVar.j();
            while (true) {
                au auVarL = azVar.l();
                byte b = auVarL.b;
                if (b == 0) {
                    break;
                }
                short s = auVarL.c;
                if (s != 1) {
                    if (s != 2) {
                        if (s == 3 && b == 12) {
                            com.umeng.commonsdk.statistics.proto.d dVar = new com.umeng.commonsdk.statistics.proto.d();
                            response.imprint = dVar;
                            dVar.read(azVar);
                            response.setImprintIsSet(true);
                        } else {
                            bc.a(azVar, b);
                        }
                    } else if (b == 11) {
                        response.msg = azVar.z();
                        response.setMsgIsSet(true);
                    }
                } else if (b == 8) {
                    response.resp_code = azVar.w();
                    response.setResp_codeIsSet(true);
                }
                azVar.m();
            }
            azVar.k();
            if (response.isSetResp_code()) {
                response.validate();
                return;
            }
            throw new ba("Required field 'resp_code' was not found in serialized data! Struct: " + toString());
        }

        @Override // com.umeng.commonsdk.proguard.bh
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(az azVar, Response response) throws ag {
            response.validate();
            azVar.a(Response.STRUCT_DESC);
            azVar.a(Response.RESP_CODE_FIELD_DESC);
            azVar.a(response.resp_code);
            azVar.c();
            if (response.msg != null && response.isSetMsg()) {
                azVar.a(Response.MSG_FIELD_DESC);
                azVar.a(response.msg);
                azVar.c();
            }
            if (response.imprint != null && response.isSetImprint()) {
                azVar.a(Response.IMPRINT_FIELD_DESC);
                response.imprint.write(azVar);
                azVar.c();
            }
            azVar.d();
            azVar.b();
        }
    }

    public static class b implements bi {
        private b() {
        }

        @Override // com.umeng.commonsdk.proguard.bi
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public a b() {
            return new a();
        }
    }

    public static class c extends bk<Response> {
        private c() {
        }

        @Override // com.umeng.commonsdk.proguard.bh
        public void a(az azVar, Response response) throws ag {
            bf bfVar = (bf) azVar;
            bfVar.a(response.resp_code);
            BitSet bitSet = new BitSet();
            if (response.isSetMsg()) {
                bitSet.set(0);
            }
            if (response.isSetImprint()) {
                bitSet.set(1);
            }
            bfVar.a(bitSet, 2);
            if (response.isSetMsg()) {
                bfVar.a(response.msg);
            }
            if (response.isSetImprint()) {
                response.imprint.write(bfVar);
            }
        }

        @Override // com.umeng.commonsdk.proguard.bh
        public void b(az azVar, Response response) throws ag {
            bf bfVar = (bf) azVar;
            response.resp_code = bfVar.w();
            response.setResp_codeIsSet(true);
            BitSet bitSetB = bfVar.b(2);
            if (bitSetB.get(0)) {
                response.msg = bfVar.z();
                response.setMsgIsSet(true);
            }
            if (bitSetB.get(1)) {
                com.umeng.commonsdk.statistics.proto.d dVar = new com.umeng.commonsdk.statistics.proto.d();
                response.imprint = dVar;
                dVar.read(bfVar);
                response.setImprintIsSet(true);
            }
        }
    }

    public static class d implements bi {
        private d() {
        }

        @Override // com.umeng.commonsdk.proguard.bi
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public c b() {
            return new c();
        }
    }

    public enum e implements ah {
        RESP_CODE(1, "resp_code"),
        MSG(2, "msg"),
        IMPRINT(3, v.Q);

        private static final Map<String, e> d = new HashMap();
        private final short e;
        private final String f;

        static {
            for (e eVar : EnumSet.allOf(e.class)) {
                d.put(eVar.b(), eVar);
            }
        }

        e(short s, String str) {
            this.e = s;
            this.f = str;
        }

        public static e a(int i) {
            if (i == 1) {
                return RESP_CODE;
            }
            if (i == 2) {
                return MSG;
            }
            if (i != 3) {
                return null;
            }
            return IMPRINT;
        }

        public static e a(String str) {
            return d.get(str);
        }

        public static e b(int i) {
            e eVarA = a(i);
            if (eVarA != null) {
                return eVarA;
            }
            throw new IllegalArgumentException("Field " + i + " doesn't exist!");
        }

        @Override // com.umeng.commonsdk.proguard.ah
        public short a() {
            return this.e;
        }

        @Override // com.umeng.commonsdk.proguard.ah
        public String b() {
            return this.f;
        }
    }

    static {
        HashMap map = new HashMap();
        schemes = map;
        map.put(bj.class, new b());
        map.put(bk.class, new d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put(e.RESP_CODE, new am("resp_code", (byte) 1, new an((byte) 8)));
        enumMap.put(e.MSG, new am("msg", (byte) 2, new an((byte) 11)));
        enumMap.put(e.IMPRINT, new am(v.Q, (byte) 2, new ar((byte) 12, com.umeng.commonsdk.statistics.proto.d.class)));
        Map<e, am> mapUnmodifiableMap = Collections.unmodifiableMap(enumMap);
        metaDataMap = mapUnmodifiableMap;
        am.a(Response.class, mapUnmodifiableMap);
    }

    public Response() {
        this.__isset_bitfield = (byte) 0;
        this.optionals = new e[]{e.MSG, e.IMPRINT};
    }

    public Response(int i) {
        this();
        this.resp_code = i;
        setResp_codeIsSet(true);
    }

    public Response(Response response) {
        this.__isset_bitfield = (byte) 0;
        this.optionals = new e[]{e.MSG, e.IMPRINT};
        this.__isset_bitfield = response.__isset_bitfield;
        this.resp_code = response.resp_code;
        if (response.isSetMsg()) {
            this.msg = response.msg;
        }
        if (response.isSetImprint()) {
            this.imprint = new com.umeng.commonsdk.statistics.proto.d(response.imprint);
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        try {
            this.__isset_bitfield = (byte) 0;
            read(new at(new bl(objectInputStream)));
        } catch (ag e2) {
            throw new IOException(e2.getMessage());
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        try {
            write(new at(new bl(objectOutputStream)));
        } catch (ag e2) {
            throw new IOException(e2.getMessage());
        }
    }

    @Override // com.umeng.commonsdk.proguard.aa
    public void clear() {
        setResp_codeIsSet(false);
        this.resp_code = 0;
        this.msg = null;
        this.imprint = null;
    }

    @Override // com.umeng.commonsdk.proguard.aa
    public Response deepCopy() {
        return new Response(this);
    }

    @Override // com.umeng.commonsdk.proguard.aa
    public e fieldForId(int i) {
        return e.a(i);
    }

    public com.umeng.commonsdk.statistics.proto.d getImprint() {
        return this.imprint;
    }

    public String getMsg() {
        return this.msg;
    }

    public int getResp_code() {
        return this.resp_code;
    }

    public boolean isSetImprint() {
        return this.imprint != null;
    }

    public boolean isSetMsg() {
        return this.msg != null;
    }

    public boolean isSetResp_code() {
        return x.a(this.__isset_bitfield, 0);
    }

    @Override // com.umeng.commonsdk.proguard.aa
    public void read(az azVar) throws ag {
        schemes.get(azVar.D()).b().b(azVar, this);
    }

    public Response setImprint(com.umeng.commonsdk.statistics.proto.d dVar) {
        this.imprint = dVar;
        return this;
    }

    public void setImprintIsSet(boolean z) {
        if (z) {
            return;
        }
        this.imprint = null;
    }

    public Response setMsg(String str) {
        this.msg = str;
        return this;
    }

    public void setMsgIsSet(boolean z) {
        if (z) {
            return;
        }
        this.msg = null;
    }

    public Response setResp_code(int i) {
        this.resp_code = i;
        setResp_codeIsSet(true);
        return this;
    }

    public void setResp_codeIsSet(boolean z) {
        this.__isset_bitfield = x.a(this.__isset_bitfield, 0, z);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Response(");
        sb.append("resp_code:");
        sb.append(this.resp_code);
        if (isSetMsg()) {
            sb.append(", ");
            sb.append("msg:");
            String str = this.msg;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
        }
        if (isSetImprint()) {
            sb.append(", ");
            sb.append("imprint:");
            com.umeng.commonsdk.statistics.proto.d dVar = this.imprint;
            if (dVar == null) {
                sb.append("null");
            } else {
                sb.append(dVar);
            }
        }
        sb.append(")");
        return sb.toString();
    }

    public void unsetImprint() {
        this.imprint = null;
    }

    public void unsetMsg() {
        this.msg = null;
    }

    public void unsetResp_code() {
        this.__isset_bitfield = x.b(this.__isset_bitfield, 0);
    }

    public void validate() throws ag {
        com.umeng.commonsdk.statistics.proto.d dVar = this.imprint;
        if (dVar != null) {
            dVar.l();
        }
    }

    @Override // com.umeng.commonsdk.proguard.aa
    public void write(az azVar) throws ag {
        schemes.get(azVar.D()).b().a(azVar, this);
    }
}

package z2;

/* JADX INFO: loaded from: classes2.dex */
public final class np extends ep {
    @Override // z2.ep, z2.ip
    public final int OooO00o() {
        return 2;
    }

    @Override // z2.ep
    public final int OooO0Oo(char c, StringBuilder sb) {
        int i;
        int i2;
        char c2;
        if (c == ' ') {
            c2 = 3;
        } else {
            if (c >= '0' && c <= '9') {
                i2 = (c - '0') + 4;
            } else {
                if (c < 'a' || c > 'z') {
                    if (c < ' ') {
                        sb.append((char) 0);
                    } else {
                        char c3 = '!';
                        if (c < '!' || c > '/') {
                            if (c >= ':' && c <= '@') {
                                sb.append((char) 1);
                                i = (c - ':') + 15;
                            } else if (c < '[' || c > '_') {
                                c3 = '`';
                                if (c == '`') {
                                    sb.append((char) 2);
                                } else if (c >= 'A' && c <= 'Z') {
                                    sb.append((char) 2);
                                    i = (c - 'A') + 1;
                                } else {
                                    if (c < '{' || c > 127) {
                                        sb.append("\u0001\u001e");
                                        return OooO0Oo((char) (c - 128), sb) + 2;
                                    }
                                    sb.append((char) 2);
                                    i = (c - com.anythink.expressad.video.module.a.a.N) + 27;
                                }
                            } else {
                                sb.append((char) 1);
                                i = (c - '[') + 22;
                            }
                            c = (char) i;
                        } else {
                            sb.append((char) 1);
                        }
                        i = c - c3;
                        c = (char) i;
                    }
                    sb.append(c);
                    return 2;
                }
                i2 = (c - 'a') + 14;
            }
            c2 = (char) i2;
        }
        sb.append(c2);
        return 1;
    }
}

package org.apache.commons.io.serialization;

import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public final class RegexpClassNameMatcher implements ClassNameMatcher {
    private final Pattern pattern;

    public RegexpClassNameMatcher(String str) {
        this(Pattern.compile(str));
    }

    public RegexpClassNameMatcher(Pattern pattern) {
        if (pattern == null) {
            throw new IllegalArgumentException("Null pattern");
        }
        this.pattern = pattern;
    }

    @Override // org.apache.commons.io.serialization.ClassNameMatcher
    public final boolean matches(String str) {
        return this.pattern.matcher(str).matches();
    }
}

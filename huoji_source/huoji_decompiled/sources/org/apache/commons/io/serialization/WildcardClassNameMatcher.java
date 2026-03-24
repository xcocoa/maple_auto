package org.apache.commons.io.serialization;

import org.apache.commons.io.FilenameUtils;

/* JADX INFO: loaded from: classes2.dex */
public final class WildcardClassNameMatcher implements ClassNameMatcher {
    private final String pattern;

    public WildcardClassNameMatcher(String str) {
        this.pattern = str;
    }

    @Override // org.apache.commons.io.serialization.ClassNameMatcher
    public final boolean matches(String str) {
        return FilenameUtils.wildcardMatch(str, this.pattern);
    }
}

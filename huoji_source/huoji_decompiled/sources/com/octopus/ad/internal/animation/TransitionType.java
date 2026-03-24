package com.octopus.ad.internal.animation;

/* JADX INFO: loaded from: classes2.dex */
public enum TransitionType {
    NONE,
    RANDOM,
    FADE,
    PUSH,
    MOVEIN,
    REVEAL;

    public static TransitionType getTypeForInt(int i) {
        for (TransitionType transitionType : values()) {
            if (transitionType.ordinal() == i) {
                return transitionType;
            }
        }
        return NONE;
    }
}

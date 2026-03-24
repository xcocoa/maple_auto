package com.octopus.ad.internal.animation;

import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: loaded from: classes2.dex */
public class AnimationFactory {

    /* JADX INFO: renamed from: com.octopus.ad.internal.animation.AnimationFactory$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$octopus$ad$internal$animation$TransitionType;

        static {
            int[] iArr = new int[TransitionType.values().length];
            $SwitchMap$com$octopus$ad$internal$animation$TransitionType = iArr;
            try {
                iArr[TransitionType.FADE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$octopus$ad$internal$animation$TransitionType[TransitionType.PUSH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$octopus$ad$internal$animation$TransitionType[TransitionType.MOVEIN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$octopus$ad$internal$animation$TransitionType[TransitionType.REVEAL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static Transition create(TransitionType transitionType, long j, TransitionDirection transitionDirection) {
        TransitionType transitionType2 = TransitionType.RANDOM;
        if (transitionType == transitionType2) {
            ArrayList arrayList = new ArrayList();
            Collections.addAll(arrayList, TransitionType.values());
            arrayList.remove(TransitionType.NONE);
            arrayList.remove(transitionType2);
            Collections.shuffle(arrayList);
            transitionType = (TransitionType) arrayList.get(0);
        }
        int i = AnonymousClass1.$SwitchMap$com$octopus$ad$internal$animation$TransitionType[transitionType.ordinal()];
        if (i == 1) {
            return new Fade(j);
        }
        if (i == 2) {
            return new Push(j, transitionDirection);
        }
        if (i == 3) {
            return new MoveIn(j, transitionDirection);
        }
        if (i != 4) {
            return null;
        }
        return new Reveal(j, transitionDirection);
    }
}

package com.octopus.ad.internal.animation;

import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.TranslateAnimation;

/* JADX INFO: loaded from: classes2.dex */
public class MoveIn implements Transition {
    private Animation inAnimation;
    private Animation outAnimation;
    private static final float[] up_coordinates = {0.0f, 0.0f, 1.0f, 0.0f};
    private static final float[] down_coordinates = {0.0f, 0.0f, -1.0f, 0.0f};
    private static final float[] right_coordinates = {-1.0f, 0.0f, 0.0f, 0.0f};
    private static final float[] left_coordinates = {1.0f, 0.0f, 0.0f, 0.0f};

    /* JADX INFO: renamed from: com.octopus.ad.internal.animation.MoveIn$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$octopus$ad$internal$animation$TransitionDirection;

        static {
            int[] iArr = new int[TransitionDirection.values().length];
            $SwitchMap$com$octopus$ad$internal$animation$TransitionDirection = iArr;
            try {
                iArr[TransitionDirection.UP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$octopus$ad$internal$animation$TransitionDirection[TransitionDirection.DOWN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$octopus$ad$internal$animation$TransitionDirection[TransitionDirection.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$octopus$ad$internal$animation$TransitionDirection[TransitionDirection.LEFT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public MoveIn(long j, TransitionDirection transitionDirection) {
        LinearInterpolator linearInterpolator = new LinearInterpolator();
        setInAnimation(getDirection(transitionDirection), linearInterpolator, j);
        setOutAnimation(getDirection(transitionDirection), linearInterpolator, j);
    }

    private float[] getDirection(TransitionDirection transitionDirection) {
        int i = AnonymousClass1.$SwitchMap$com$octopus$ad$internal$animation$TransitionDirection[transitionDirection.ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? up_coordinates : left_coordinates : right_coordinates : down_coordinates : up_coordinates;
    }

    private void setInAnimation(float[] fArr, Interpolator interpolator, long j) {
        TranslateAnimation translateAnimation = new TranslateAnimation(2, fArr[0], 2, fArr[1], 2, fArr[2], 2, fArr[3]);
        this.inAnimation = translateAnimation;
        translateAnimation.setInterpolator(interpolator);
        this.inAnimation.setFillAfter(true);
        this.inAnimation.setDuration(j);
    }

    private void setOutAnimation(float[] fArr, Interpolator interpolator, long j) {
        TranslateAnimation translateAnimation = new TranslateAnimation(2, 0.0f, 2, -1.0f, 2, 0.0f, 2, 0.0f);
        this.outAnimation = translateAnimation;
        translateAnimation.setFillAfter(true);
        this.outAnimation.setDuration(j);
        this.outAnimation.setInterpolator(interpolator);
    }

    @Override // com.octopus.ad.internal.animation.Transition
    public Animation getInAnimation() {
        return this.inAnimation;
    }

    @Override // com.octopus.ad.internal.animation.Transition
    public Animation getOutAnimation() {
        return this.outAnimation;
    }
}

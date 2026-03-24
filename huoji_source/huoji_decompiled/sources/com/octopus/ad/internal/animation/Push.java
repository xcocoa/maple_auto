package com.octopus.ad.internal.animation;

import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.TranslateAnimation;

/* JADX INFO: loaded from: classes2.dex */
public class Push implements Transition {
    private Animation inAnimation;
    private Animation outAnimation;
    private static final float[] in_up_coordinates = {0.0f, 0.0f, 1.0f, 0.0f};
    private static final float[] in_down_coordinates = {0.0f, 0.0f, -1.0f, 0.0f};
    private static final float[] in_right_coordinates = {-1.0f, 0.0f, 0.0f, 0.0f};
    private static final float[] in_left_coordinates = {1.0f, 0.0f, 0.0f, 0.0f};
    private static final float[] out_up_coordinates = {0.0f, 0.0f, 0.0f, -1.0f};
    private static final float[] out_down_coordinates = {0.0f, 0.0f, 0.0f, 1.0f};
    private static final float[] out_right_coordinates = {0.0f, 1.0f, 0.0f, 0.0f};
    private static final float[] out_left_coordinates = {0.0f, -1.0f, 0.0f, 0.0f};

    /* JADX INFO: renamed from: com.octopus.ad.internal.animation.Push$1, reason: invalid class name */
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

    public Push(long j, TransitionDirection transitionDirection) {
        AccelerateInterpolator accelerateInterpolator = new AccelerateInterpolator();
        this.inAnimation = getAnimation(getInDirection(transitionDirection), accelerateInterpolator, j);
        this.outAnimation = getAnimation(getOutDirection(transitionDirection), accelerateInterpolator, j);
    }

    private Animation getAnimation(float[] fArr, Interpolator interpolator, long j) {
        TranslateAnimation translateAnimation = new TranslateAnimation(2, fArr[0], 2, fArr[1], 2, fArr[2], 2, fArr[3]);
        translateAnimation.setInterpolator(interpolator);
        translateAnimation.setDuration(j);
        return translateAnimation;
    }

    private float[] getInDirection(TransitionDirection transitionDirection) {
        int i = AnonymousClass1.$SwitchMap$com$octopus$ad$internal$animation$TransitionDirection[transitionDirection.ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? in_up_coordinates : in_left_coordinates : in_right_coordinates : in_down_coordinates : in_up_coordinates;
    }

    private float[] getOutDirection(TransitionDirection transitionDirection) {
        int i = AnonymousClass1.$SwitchMap$com$octopus$ad$internal$animation$TransitionDirection[transitionDirection.ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? out_up_coordinates : out_left_coordinates : out_right_coordinates : out_down_coordinates : out_up_coordinates;
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

package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.LinearSystem;
import androidx.constraintlayout.solver.Metrics;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;

/* JADX INFO: loaded from: classes.dex */
public class Optimizer {
    public static final int FLAG_CHAIN_DANGLING = 1;
    public static final int FLAG_RECOMPUTE_BOUNDS = 2;
    public static final int FLAG_USE_OPTIMIZE = 0;
    public static final int OPTIMIZATION_BARRIER = 2;
    public static final int OPTIMIZATION_CHAIN = 4;
    public static final int OPTIMIZATION_DIMENSIONS = 8;
    public static final int OPTIMIZATION_DIRECT = 1;
    public static final int OPTIMIZATION_GROUPS = 32;
    public static final int OPTIMIZATION_NONE = 0;
    public static final int OPTIMIZATION_RATIO = 16;
    public static final int OPTIMIZATION_STANDARD = 7;
    public static boolean[] flags = new boolean[3];

    /* JADX WARN: Code restructure failed: missing block: B:100:0x01ac, code lost:
    
        r4.dependsOn(r2, 1, r17.getResolutionHeight());
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x01b5, code lost:
    
        r4.dependsOn(r2, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x01c2, code lost:
    
        if (r6 != false) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00dd, code lost:
    
        if (r6 != false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00e8, code lost:
    
        r7 = r17.getWidth();
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00ff, code lost:
    
        if (r6 != false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x01aa, code lost:
    
        if (r6 != false) goto L100;
     */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00ec A[PHI: r7
      0x00ec: PHI (r7v26 int) = (r7v21 int), (r7v27 int), (r7v27 int) binds: [B:55:0x00e8, B:32:0x007b, B:27:0x006f] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void analyze(int i, ConstraintWidget constraintWidget) {
        int width;
        constraintWidget.updateResolutionNodes();
        ResolutionAnchor resolutionNode = constraintWidget.mLeft.getResolutionNode();
        ResolutionAnchor resolutionNode2 = constraintWidget.mTop.getResolutionNode();
        ResolutionAnchor resolutionNode3 = constraintWidget.mRight.getResolutionNode();
        ResolutionAnchor resolutionNode4 = constraintWidget.mBottom.getResolutionNode();
        boolean z = (i & 8) == 8;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = constraintWidget.mListDimensionBehaviors[0];
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        boolean z3 = dimensionBehaviour == dimensionBehaviour2 && optimizableMatchConstraint(constraintWidget, 0);
        if (resolutionNode.type != 4 && resolutionNode3.type != 4) {
            if (constraintWidget.mListDimensionBehaviors[0] == ConstraintWidget.DimensionBehaviour.FIXED || (z3 && constraintWidget.getVisibility() == 8)) {
                ConstraintAnchor constraintAnchor = constraintWidget.mLeft.mTarget;
                if (constraintAnchor == null && constraintWidget.mRight.mTarget == null) {
                    resolutionNode.setType(1);
                    resolutionNode3.setType(1);
                } else if (constraintAnchor != null && constraintWidget.mRight.mTarget == null) {
                    resolutionNode.setType(1);
                    resolutionNode3.setType(1);
                } else if (constraintAnchor == null && constraintWidget.mRight.mTarget != null) {
                    resolutionNode.setType(1);
                    resolutionNode3.setType(1);
                    resolutionNode.dependsOn(resolutionNode3, -constraintWidget.getWidth());
                    if (!z) {
                        width = constraintWidget.getWidth();
                        resolutionNode.dependsOn(resolutionNode3, -width);
                    }
                    resolutionNode.dependsOn(resolutionNode3, -1, constraintWidget.getResolutionWidth());
                } else if (constraintAnchor != null && constraintWidget.mRight.mTarget != null) {
                    resolutionNode.setType(2);
                    resolutionNode3.setType(2);
                    if (z) {
                        constraintWidget.getResolutionWidth().addDependent(resolutionNode);
                        constraintWidget.getResolutionWidth().addDependent(resolutionNode3);
                        resolutionNode.setOpposite(resolutionNode3, -1, constraintWidget.getResolutionWidth());
                        resolutionNode3.setOpposite(resolutionNode, 1, constraintWidget.getResolutionWidth());
                    } else {
                        resolutionNode.setOpposite(resolutionNode3, -constraintWidget.getWidth());
                        resolutionNode3.setOpposite(resolutionNode, constraintWidget.getWidth());
                    }
                }
            } else if (z3) {
                width = constraintWidget.getWidth();
                resolutionNode.setType(1);
                resolutionNode3.setType(1);
                ConstraintAnchor constraintAnchor2 = constraintWidget.mLeft.mTarget;
                if (constraintAnchor2 == null && constraintWidget.mRight.mTarget == null) {
                    if (z) {
                    }
                } else if (constraintAnchor2 == null || constraintWidget.mRight.mTarget != null) {
                    if (constraintAnchor2 != null || constraintWidget.mRight.mTarget == null) {
                        if (constraintAnchor2 != null && constraintWidget.mRight.mTarget != null) {
                            if (z) {
                                constraintWidget.getResolutionWidth().addDependent(resolutionNode);
                                constraintWidget.getResolutionWidth().addDependent(resolutionNode3);
                            }
                            if (constraintWidget.mDimensionRatio == 0.0f) {
                                resolutionNode.setType(3);
                                resolutionNode3.setType(3);
                                resolutionNode.setOpposite(resolutionNode3, 0.0f);
                                resolutionNode3.setOpposite(resolutionNode, 0.0f);
                            } else {
                                resolutionNode.setType(2);
                                resolutionNode3.setType(2);
                                resolutionNode.setOpposite(resolutionNode3, -width);
                                resolutionNode3.setOpposite(resolutionNode, width);
                                constraintWidget.setWidth(width);
                            }
                        }
                    } else if (z) {
                        resolutionNode.dependsOn(resolutionNode3, -1, constraintWidget.getResolutionWidth());
                    } else {
                        resolutionNode.dependsOn(resolutionNode3, -width);
                    }
                } else if (z) {
                    resolutionNode3.dependsOn(resolutionNode, 1, constraintWidget.getResolutionWidth());
                } else {
                    resolutionNode3.dependsOn(resolutionNode, width);
                }
            }
        }
        boolean z4 = constraintWidget.mListDimensionBehaviors[1] == dimensionBehaviour2 && optimizableMatchConstraint(constraintWidget, 1);
        if (resolutionNode2.type == 4 || resolutionNode4.type == 4) {
            return;
        }
        if (constraintWidget.mListDimensionBehaviors[1] == ConstraintWidget.DimensionBehaviour.FIXED || (z4 && constraintWidget.getVisibility() == 8)) {
            ConstraintAnchor constraintAnchor3 = constraintWidget.mTop.mTarget;
            if (constraintAnchor3 == null && constraintWidget.mBottom.mTarget == null) {
                resolutionNode2.setType(1);
                resolutionNode4.setType(1);
                if (z) {
                    resolutionNode4.dependsOn(resolutionNode2, 1, constraintWidget.getResolutionHeight());
                } else {
                    resolutionNode4.dependsOn(resolutionNode2, constraintWidget.getHeight());
                }
                ConstraintAnchor constraintAnchor4 = constraintWidget.mBaseline;
                if (constraintAnchor4.mTarget != null) {
                    constraintAnchor4.getResolutionNode().setType(1);
                    resolutionNode2.dependsOn(1, constraintWidget.mBaseline.getResolutionNode(), -constraintWidget.mBaselineDistance);
                    return;
                }
                return;
            }
            if (constraintAnchor3 != null && constraintWidget.mBottom.mTarget == null) {
                resolutionNode2.setType(1);
                resolutionNode4.setType(1);
                if (z) {
                    resolutionNode4.dependsOn(resolutionNode2, 1, constraintWidget.getResolutionHeight());
                } else {
                    resolutionNode4.dependsOn(resolutionNode2, constraintWidget.getHeight());
                }
                if (constraintWidget.mBaselineDistance <= 0) {
                    return;
                }
            } else if (constraintAnchor3 == null && constraintWidget.mBottom.mTarget != null) {
                resolutionNode2.setType(1);
                resolutionNode4.setType(1);
                if (z) {
                    resolutionNode2.dependsOn(resolutionNode4, -1, constraintWidget.getResolutionHeight());
                } else {
                    resolutionNode2.dependsOn(resolutionNode4, -constraintWidget.getHeight());
                }
                if (constraintWidget.mBaselineDistance <= 0) {
                    return;
                }
            } else {
                if (constraintAnchor3 == null || constraintWidget.mBottom.mTarget == null) {
                    return;
                }
                resolutionNode2.setType(2);
                resolutionNode4.setType(2);
                if (z) {
                    resolutionNode2.setOpposite(resolutionNode4, -1, constraintWidget.getResolutionHeight());
                    resolutionNode4.setOpposite(resolutionNode2, 1, constraintWidget.getResolutionHeight());
                    constraintWidget.getResolutionHeight().addDependent(resolutionNode2);
                    constraintWidget.getResolutionWidth().addDependent(resolutionNode4);
                } else {
                    resolutionNode2.setOpposite(resolutionNode4, -constraintWidget.getHeight());
                    resolutionNode4.setOpposite(resolutionNode2, constraintWidget.getHeight());
                }
                if (constraintWidget.mBaselineDistance <= 0) {
                    return;
                }
            }
        } else {
            if (!z4) {
                return;
            }
            int height = constraintWidget.getHeight();
            resolutionNode2.setType(1);
            resolutionNode4.setType(1);
            ConstraintAnchor constraintAnchor5 = constraintWidget.mTop.mTarget;
            if (constraintAnchor5 != null || constraintWidget.mBottom.mTarget != null) {
                if (constraintAnchor5 == null || constraintWidget.mBottom.mTarget != null) {
                    if (constraintAnchor5 == null && constraintWidget.mBottom.mTarget != null) {
                        if (z) {
                            resolutionNode2.dependsOn(resolutionNode4, -1, constraintWidget.getResolutionHeight());
                            return;
                        } else {
                            resolutionNode2.dependsOn(resolutionNode4, -height);
                            return;
                        }
                    }
                    if (constraintAnchor5 == null || constraintWidget.mBottom.mTarget == null) {
                        return;
                    }
                    if (z) {
                        constraintWidget.getResolutionHeight().addDependent(resolutionNode2);
                        constraintWidget.getResolutionWidth().addDependent(resolutionNode4);
                    }
                    if (constraintWidget.mDimensionRatio == 0.0f) {
                        resolutionNode2.setType(3);
                        resolutionNode4.setType(3);
                        resolutionNode2.setOpposite(resolutionNode4, 0.0f);
                        resolutionNode4.setOpposite(resolutionNode2, 0.0f);
                        return;
                    }
                    resolutionNode2.setType(2);
                    resolutionNode4.setType(2);
                    resolutionNode2.setOpposite(resolutionNode4, -height);
                    resolutionNode4.setOpposite(resolutionNode2, height);
                    constraintWidget.setHeight(height);
                    if (constraintWidget.mBaselineDistance <= 0) {
                        return;
                    }
                }
            }
        }
        constraintWidget.mBaseline.getResolutionNode().dependsOn(1, resolutionNode2, constraintWidget.mBaselineDistance);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0030 A[PHI: r11 r12
      0x0030: PHI (r11v17 boolean) = (r11v1 boolean), (r11v19 boolean) binds: [B:21:0x0040, B:11:0x002e] A[DONT_GENERATE, DONT_INLINE]
      0x0030: PHI (r12v8 boolean) = (r12v1 boolean), (r12v10 boolean) binds: [B:21:0x0040, B:11:0x002e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:132:0x01ce  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0032 A[PHI: r11 r12
      0x0032: PHI (r11v3 boolean) = (r11v1 boolean), (r11v19 boolean) binds: [B:21:0x0040, B:11:0x002e] A[DONT_GENERATE, DONT_INLINE]
      0x0032: PHI (r12v3 boolean) = (r12v1 boolean), (r12v10 boolean) binds: [B:21:0x0040, B:11:0x002e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00f9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean applyChainOptimized(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, int i, int i2, ChainHead chainHead) {
        boolean z;
        boolean z3;
        boolean z4;
        ResolutionAnchor resolutionAnchor;
        float margin;
        float f;
        ConstraintWidget constraintWidget;
        boolean z5;
        ConstraintWidget constraintWidget2 = chainHead.mFirst;
        ConstraintWidget constraintWidget3 = chainHead.mLast;
        ConstraintWidget constraintWidget4 = chainHead.mFirstVisibleWidget;
        ConstraintWidget constraintWidget5 = chainHead.mLastVisibleWidget;
        ConstraintWidget constraintWidget6 = chainHead.mHead;
        float f2 = chainHead.mTotalWeight;
        ConstraintWidget constraintWidget7 = chainHead.mFirstMatchConstraintWidget;
        ConstraintWidget constraintWidget8 = chainHead.mLastMatchConstraintWidget;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = constraintWidgetContainer.mListDimensionBehaviors[i];
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if (i == 0) {
            int i3 = constraintWidget6.mHorizontalChainStyle;
            z = i3 == 0;
            z3 = i3 == 1;
            z4 = i3 == 2;
        } else {
            int i4 = constraintWidget6.mVerticalChainStyle;
            z = i4 == 0;
            z3 = i4 == 1;
            if (i4 == 2) {
            }
        }
        ConstraintWidget constraintWidget9 = constraintWidget2;
        int i5 = 0;
        boolean z6 = false;
        int i6 = 0;
        float width = 0.0f;
        float margin2 = 0.0f;
        while (!z6) {
            if (constraintWidget9.getVisibility() != 8) {
                i6++;
                width += i == 0 ? constraintWidget9.getWidth() : constraintWidget9.getHeight();
                if (constraintWidget9 != constraintWidget4) {
                    width += constraintWidget9.mListAnchors[i2].getMargin();
                }
                if (constraintWidget9 != constraintWidget5) {
                    width += constraintWidget9.mListAnchors[i2 + 1].getMargin();
                }
                margin2 = margin2 + constraintWidget9.mListAnchors[i2].getMargin() + constraintWidget9.mListAnchors[i2 + 1].getMargin();
            }
            ConstraintAnchor constraintAnchor = constraintWidget9.mListAnchors[i2];
            if (constraintWidget9.getVisibility() != 8 && constraintWidget9.mListDimensionBehaviors[i] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                i5++;
                if (i != 0) {
                    z5 = false;
                    if (constraintWidget9.mMatchConstraintDefaultHeight != 0) {
                        return false;
                    }
                    if (constraintWidget9.mMatchConstraintMinHeight != 0 || constraintWidget9.mMatchConstraintMaxHeight != 0) {
                    }
                    return z5;
                }
                if (constraintWidget9.mMatchConstraintDefaultWidth != 0) {
                    return false;
                }
                z5 = false;
                if (constraintWidget9.mMatchConstraintMinWidth != 0 || constraintWidget9.mMatchConstraintMaxWidth != 0) {
                    return false;
                }
                if (constraintWidget9.mDimensionRatio != 0.0f) {
                    return z5;
                }
            }
            ConstraintAnchor constraintAnchor2 = constraintWidget9.mListAnchors[i2 + 1].mTarget;
            if (constraintAnchor2 != null) {
                ConstraintWidget constraintWidget10 = constraintAnchor2.mOwner;
                ConstraintAnchor[] constraintAnchorArr = constraintWidget10.mListAnchors;
                constraintWidget = (constraintAnchorArr[i2].mTarget == null || constraintAnchorArr[i2].mTarget.mOwner != constraintWidget9) ? null : constraintWidget10;
            }
            if (constraintWidget != null) {
                constraintWidget9 = constraintWidget;
            } else {
                z6 = true;
            }
        }
        ResolutionAnchor resolutionNode = constraintWidget2.mListAnchors[i2].getResolutionNode();
        int i7 = i2 + 1;
        ResolutionAnchor resolutionNode2 = constraintWidget3.mListAnchors[i7].getResolutionNode();
        ResolutionAnchor resolutionAnchor2 = resolutionNode.target;
        if (resolutionAnchor2 == null || (resolutionAnchor = resolutionNode2.target) == null || resolutionAnchor2.state != 1 || resolutionAnchor.state != 1) {
            return false;
        }
        if (i5 > 0 && i5 != i6) {
            return false;
        }
        if (z4 || z || z3) {
            margin = constraintWidget4 != null ? constraintWidget4.mListAnchors[i2].getMargin() : 0.0f;
            if (constraintWidget5 != null) {
                margin += constraintWidget5.mListAnchors[i7].getMargin();
            }
        } else {
            margin = 0.0f;
        }
        float f3 = resolutionNode.target.resolvedOffset;
        float f4 = resolutionNode2.target.resolvedOffset;
        float f5 = (f3 < f4 ? f4 - f3 : f3 - f4) - width;
        if (i5 > 0 && i5 == i6) {
            if (constraintWidget9.getParent() != null && constraintWidget9.getParent().mListDimensionBehaviors[i] == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                return false;
            }
            float f6 = (f5 + width) - margin2;
            float margin3 = f3;
            ConstraintWidget constraintWidget11 = constraintWidget2;
            while (constraintWidget11 != null) {
                Metrics metrics = LinearSystem.sMetrics;
                if (metrics != null) {
                    metrics.nonresolvedWidgets--;
                    metrics.resolvedWidgets++;
                    metrics.chainConnectionResolved++;
                }
                ConstraintWidget constraintWidget12 = constraintWidget11.mNextChainWidget[i];
                if (constraintWidget12 != null || constraintWidget11 == constraintWidget3) {
                    float f7 = f6 / i5;
                    if (f2 > 0.0f) {
                        float[] fArr = constraintWidget11.mWeight;
                        if (fArr[i] == -1.0f) {
                            f = 0.0f;
                            if (constraintWidget11.getVisibility() == 8) {
                                f = 0.0f;
                            }
                            float margin4 = margin3 + constraintWidget11.mListAnchors[i2].getMargin();
                            constraintWidget11.mListAnchors[i2].getResolutionNode().resolve(resolutionNode.resolvedTarget, margin4);
                            float f8 = margin4 + f;
                            constraintWidget11.mListAnchors[i7].getResolutionNode().resolve(resolutionNode.resolvedTarget, f8);
                            constraintWidget11.mListAnchors[i2].getResolutionNode().addResolvedValue(linearSystem);
                            constraintWidget11.mListAnchors[i7].getResolutionNode().addResolvedValue(linearSystem);
                            margin3 = f8 + constraintWidget11.mListAnchors[i7].getMargin();
                        } else {
                            f7 = (fArr[i] * f6) / f2;
                            f = f7;
                            if (constraintWidget11.getVisibility() == 8) {
                            }
                            float margin42 = margin3 + constraintWidget11.mListAnchors[i2].getMargin();
                            constraintWidget11.mListAnchors[i2].getResolutionNode().resolve(resolutionNode.resolvedTarget, margin42);
                            float f82 = margin42 + f;
                            constraintWidget11.mListAnchors[i7].getResolutionNode().resolve(resolutionNode.resolvedTarget, f82);
                            constraintWidget11.mListAnchors[i2].getResolutionNode().addResolvedValue(linearSystem);
                            constraintWidget11.mListAnchors[i7].getResolutionNode().addResolvedValue(linearSystem);
                            margin3 = f82 + constraintWidget11.mListAnchors[i7].getMargin();
                        }
                    } else {
                        f = f7;
                        if (constraintWidget11.getVisibility() == 8) {
                        }
                        float margin422 = margin3 + constraintWidget11.mListAnchors[i2].getMargin();
                        constraintWidget11.mListAnchors[i2].getResolutionNode().resolve(resolutionNode.resolvedTarget, margin422);
                        float f822 = margin422 + f;
                        constraintWidget11.mListAnchors[i7].getResolutionNode().resolve(resolutionNode.resolvedTarget, f822);
                        constraintWidget11.mListAnchors[i2].getResolutionNode().addResolvedValue(linearSystem);
                        constraintWidget11.mListAnchors[i7].getResolutionNode().addResolvedValue(linearSystem);
                        margin3 = f822 + constraintWidget11.mListAnchors[i7].getMargin();
                    }
                }
                constraintWidget11 = constraintWidget12;
            }
            return true;
        }
        if (f5 < 0.0f) {
            z4 = true;
            z = false;
            z3 = false;
        }
        if (z4) {
            ConstraintWidget constraintWidget13 = constraintWidget2;
            float biasPercent = f3 + ((f5 - margin) * constraintWidget13.getBiasPercent(i));
            while (true) {
                ConstraintWidget constraintWidget14 = constraintWidget13;
                if (constraintWidget14 == null) {
                    return true;
                }
                Metrics metrics2 = LinearSystem.sMetrics;
                if (metrics2 != null) {
                    metrics2.nonresolvedWidgets--;
                    metrics2.resolvedWidgets++;
                    metrics2.chainConnectionResolved++;
                }
                constraintWidget13 = constraintWidget14.mNextChainWidget[i];
                if (constraintWidget13 != null || constraintWidget14 == constraintWidget3) {
                    int width2 = i == 0 ? constraintWidget14.getWidth() : constraintWidget14.getHeight();
                    float margin5 = biasPercent + constraintWidget14.mListAnchors[i2].getMargin();
                    constraintWidget14.mListAnchors[i2].getResolutionNode().resolve(resolutionNode.resolvedTarget, margin5);
                    float f9 = margin5 + width2;
                    constraintWidget14.mListAnchors[i7].getResolutionNode().resolve(resolutionNode.resolvedTarget, f9);
                    constraintWidget14.mListAnchors[i2].getResolutionNode().addResolvedValue(linearSystem);
                    constraintWidget14.mListAnchors[i7].getResolutionNode().addResolvedValue(linearSystem);
                    biasPercent = f9 + constraintWidget14.mListAnchors[i7].getMargin();
                }
            }
        } else {
            ConstraintWidget constraintWidget15 = constraintWidget2;
            if (!z && !z3) {
                return true;
            }
            if (z || z3) {
                f5 -= margin;
            }
            float f10 = f5 / (i6 + 1);
            if (z3) {
                f10 = f5 / (i6 > 1 ? i6 - 1 : 2.0f);
            }
            float margin6 = constraintWidget15.getVisibility() != 8 ? f3 + f10 : f3;
            if (z3 && i6 > 1) {
                margin6 = constraintWidget4.mListAnchors[i2].getMargin() + f3;
            }
            if (z && constraintWidget4 != null) {
                margin6 += constraintWidget4.mListAnchors[i2].getMargin();
            }
            while (true) {
                ConstraintWidget constraintWidget16 = constraintWidget15;
                if (constraintWidget16 == null) {
                    return true;
                }
                Metrics metrics3 = LinearSystem.sMetrics;
                if (metrics3 != null) {
                    metrics3.nonresolvedWidgets--;
                    metrics3.resolvedWidgets++;
                    metrics3.chainConnectionResolved++;
                }
                constraintWidget15 = constraintWidget16.mNextChainWidget[i];
                if (constraintWidget15 != null || constraintWidget16 == constraintWidget3) {
                    float width3 = i == 0 ? constraintWidget16.getWidth() : constraintWidget16.getHeight();
                    if (constraintWidget16 != constraintWidget4) {
                        margin6 += constraintWidget16.mListAnchors[i2].getMargin();
                    }
                    constraintWidget16.mListAnchors[i2].getResolutionNode().resolve(resolutionNode.resolvedTarget, margin6);
                    constraintWidget16.mListAnchors[i7].getResolutionNode().resolve(resolutionNode.resolvedTarget, margin6 + width3);
                    constraintWidget16.mListAnchors[i2].getResolutionNode().addResolvedValue(linearSystem);
                    constraintWidget16.mListAnchors[i7].getResolutionNode().addResolvedValue(linearSystem);
                    margin6 += width3 + constraintWidget16.mListAnchors[i7].getMargin();
                    if (constraintWidget15 != null) {
                        if (constraintWidget15.getVisibility() != 8) {
                            margin6 += f10;
                        }
                    }
                }
            }
        }
    }

    public static void checkMatchParent(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, ConstraintWidget constraintWidget) {
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = constraintWidgetContainer.mListDimensionBehaviors[0];
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if (dimensionBehaviour != dimensionBehaviour2 && constraintWidget.mListDimensionBehaviors[0] == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
            int i = constraintWidget.mLeft.mMargin;
            int width = constraintWidgetContainer.getWidth() - constraintWidget.mRight.mMargin;
            ConstraintAnchor constraintAnchor = constraintWidget.mLeft;
            constraintAnchor.mSolverVariable = linearSystem.createObjectVariable(constraintAnchor);
            ConstraintAnchor constraintAnchor2 = constraintWidget.mRight;
            constraintAnchor2.mSolverVariable = linearSystem.createObjectVariable(constraintAnchor2);
            linearSystem.addEquality(constraintWidget.mLeft.mSolverVariable, i);
            linearSystem.addEquality(constraintWidget.mRight.mSolverVariable, width);
            constraintWidget.mHorizontalResolution = 2;
            constraintWidget.setHorizontalDimension(i, width);
        }
        if (constraintWidgetContainer.mListDimensionBehaviors[1] == dimensionBehaviour2 || constraintWidget.mListDimensionBehaviors[1] != ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
            return;
        }
        int i2 = constraintWidget.mTop.mMargin;
        int height = constraintWidgetContainer.getHeight() - constraintWidget.mBottom.mMargin;
        ConstraintAnchor constraintAnchor3 = constraintWidget.mTop;
        constraintAnchor3.mSolverVariable = linearSystem.createObjectVariable(constraintAnchor3);
        ConstraintAnchor constraintAnchor4 = constraintWidget.mBottom;
        constraintAnchor4.mSolverVariable = linearSystem.createObjectVariable(constraintAnchor4);
        linearSystem.addEquality(constraintWidget.mTop.mSolverVariable, i2);
        linearSystem.addEquality(constraintWidget.mBottom.mSolverVariable, height);
        if (constraintWidget.mBaselineDistance > 0 || constraintWidget.getVisibility() == 8) {
            ConstraintAnchor constraintAnchor5 = constraintWidget.mBaseline;
            constraintAnchor5.mSolverVariable = linearSystem.createObjectVariable(constraintAnchor5);
            linearSystem.addEquality(constraintWidget.mBaseline.mSolverVariable, constraintWidget.mBaselineDistance + i2);
        }
        constraintWidget.mVerticalResolution = 2;
        constraintWidget.setVerticalDimension(i2, height);
    }

    private static boolean optimizableMatchConstraint(ConstraintWidget constraintWidget, int i) {
        ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget.mListDimensionBehaviors;
        if (dimensionBehaviourArr[i] != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            return false;
        }
        if (constraintWidget.mDimensionRatio != 0.0f) {
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[i != 0 ? (char) 0 : (char) 1];
            return false;
        }
        if (i == 0) {
            if (constraintWidget.mMatchConstraintDefaultWidth != 0 || constraintWidget.mMatchConstraintMinWidth != 0 || constraintWidget.mMatchConstraintMaxWidth != 0) {
                return false;
            }
        } else if (constraintWidget.mMatchConstraintDefaultHeight != 0 || constraintWidget.mMatchConstraintMinHeight != 0 || constraintWidget.mMatchConstraintMaxHeight != 0) {
            return false;
        }
        return true;
    }

    public static void setOptimizedWidget(ConstraintWidget constraintWidget, int i, int i2) {
        int i3 = i * 2;
        int i4 = i3 + 1;
        constraintWidget.mListAnchors[i3].getResolutionNode().resolvedTarget = constraintWidget.getParent().mLeft.getResolutionNode();
        constraintWidget.mListAnchors[i3].getResolutionNode().resolvedOffset = i2;
        constraintWidget.mListAnchors[i3].getResolutionNode().state = 1;
        constraintWidget.mListAnchors[i4].getResolutionNode().resolvedTarget = constraintWidget.mListAnchors[i3].getResolutionNode();
        constraintWidget.mListAnchors[i4].getResolutionNode().resolvedOffset = constraintWidget.getLength(i);
        constraintWidget.mListAnchors[i4].getResolutionNode().state = 1;
    }
}

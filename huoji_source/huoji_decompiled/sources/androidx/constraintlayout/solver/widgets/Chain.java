package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.ArrayRow;
import androidx.constraintlayout.solver.LinearSystem;
import androidx.constraintlayout.solver.SolverVariable;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class Chain {
    private static final boolean DEBUG = false;

    public static void applyChainConstraints(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, int i) {
        int i2;
        int i3;
        ChainHead[] chainHeadArr;
        if (i == 0) {
            int i4 = constraintWidgetContainer.mHorizontalChainsSize;
            chainHeadArr = constraintWidgetContainer.mHorizontalChainsArray;
            i3 = i4;
            i2 = 0;
        } else {
            i2 = 2;
            i3 = constraintWidgetContainer.mVerticalChainsSize;
            chainHeadArr = constraintWidgetContainer.mVerticalChainsArray;
        }
        for (int i5 = 0; i5 < i3; i5++) {
            ChainHead chainHead = chainHeadArr[i5];
            chainHead.define();
            if (!constraintWidgetContainer.optimizeFor(4) || !Optimizer.applyChainOptimized(constraintWidgetContainer, linearSystem, i, i2, chainHead)) {
                applyChainConstraints(constraintWidgetContainer, linearSystem, i, i2, chainHead);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:152:0x02a0  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x02e5  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x02f7  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x030c  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0313  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0042 A[PHI: r14 r15
      0x0042: PHI (r14v3 boolean) = (r14v1 boolean), (r14v28 boolean) binds: [B:24:0x0040, B:15:0x0031] A[DONT_GENERATE, DONT_INLINE]
      0x0042: PHI (r15v3 boolean) = (r15v1 boolean), (r15v36 boolean) binds: [B:24:0x0040, B:15:0x0031] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0044 A[PHI: r14 r15
      0x0044: PHI (r14v26 boolean) = (r14v1 boolean), (r14v28 boolean) binds: [B:24:0x0040, B:15:0x0031] A[DONT_GENERATE, DONT_INLINE]
      0x0044: PHI (r15v34 boolean) = (r15v1 boolean), (r15v36 boolean) binds: [B:24:0x0040, B:15:0x0031] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0146  */
    /* JADX WARN: Type inference failed for: r38v0, types: [androidx.constraintlayout.solver.LinearSystem] */
    /* JADX WARN: Type inference failed for: r5v28 */
    /* JADX WARN: Type inference failed for: r5v29 */
    /* JADX WARN: Type inference failed for: r5v30, types: [androidx.constraintlayout.solver.SolverVariable] */
    /* JADX WARN: Type inference failed for: r5v34 */
    /* JADX WARN: Type inference failed for: r5v44 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2, types: [androidx.constraintlayout.solver.widgets.ConstraintWidget] */
    /* JADX WARN: Type inference failed for: r7v32 */
    /* JADX WARN: Type inference failed for: r7v33 */
    /* JADX WARN: Type inference failed for: r7v34 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void applyChainConstraints(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, int i, int i2, ChainHead chainHead) {
        boolean z;
        boolean z3;
        boolean z4;
        int i3;
        ConstraintWidget constraintWidget;
        int i4;
        SolverVariable solverVariable;
        ConstraintAnchor constraintAnchor;
        SolverVariable solverVariable2;
        ConstraintWidget constraintWidget2;
        ConstraintAnchor constraintAnchor2;
        ConstraintAnchor constraintAnchor3;
        SolverVariable solverVariable3;
        SolverVariable solverVariable4;
        ConstraintWidget constraintWidget3;
        int size;
        ArrayList<ConstraintWidget> arrayList;
        int i5;
        boolean z5;
        int i6;
        boolean z6;
        ConstraintWidget constraintWidget4;
        boolean z7;
        int i7;
        ConstraintWidget constraintWidget5 = chainHead.mFirst;
        ConstraintWidget constraintWidget6 = chainHead.mLast;
        ConstraintWidget constraintWidget7 = chainHead.mFirstVisibleWidget;
        ConstraintWidget constraintWidget8 = chainHead.mLastVisibleWidget;
        ConstraintWidget constraintWidget9 = chainHead.mHead;
        float f = chainHead.mTotalWeight;
        ConstraintWidget constraintWidget10 = chainHead.mFirstMatchConstraintWidget;
        ConstraintWidget constraintWidget11 = chainHead.mLastMatchConstraintWidget;
        boolean z8 = constraintWidgetContainer.mListDimensionBehaviors[i] == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if (i == 0) {
            int i8 = constraintWidget9.mHorizontalChainStyle;
            z = i8 == 0;
            z3 = i8 == 1;
            z4 = i8 == 2;
        } else {
            int i9 = constraintWidget9.mVerticalChainStyle;
            z = i9 == 0;
            z3 = i9 == 1;
            if (i9 == 2) {
            }
        }
        ?? r7 = constraintWidget5;
        boolean z9 = false;
        while (true) {
            if (z9) {
                break;
            }
            ConstraintAnchor constraintAnchor4 = r7.mListAnchors[i2];
            int i10 = (z8 || z4) ? 1 : 4;
            int margin = constraintAnchor4.getMargin();
            float f2 = f;
            ConstraintAnchor constraintAnchor5 = constraintAnchor4.mTarget;
            if (constraintAnchor5 != null && r7 != constraintWidget5) {
                margin += constraintAnchor5.getMargin();
            }
            int i11 = margin;
            if (z4 && r7 != constraintWidget5 && r7 != constraintWidget7) {
                z5 = z9;
                z6 = z3;
                i6 = 6;
            } else if (z && z8) {
                z5 = z9;
                z6 = z3;
                i6 = 4;
            } else {
                z5 = z9;
                i6 = i10;
                z6 = z3;
            }
            ConstraintAnchor constraintAnchor6 = constraintAnchor4.mTarget;
            if (constraintAnchor6 != null) {
                if (r7 == constraintWidget7) {
                    z7 = z;
                    constraintWidget4 = constraintWidget9;
                    linearSystem.addGreaterThan(constraintAnchor4.mSolverVariable, constraintAnchor6.mSolverVariable, i11, 5);
                } else {
                    constraintWidget4 = constraintWidget9;
                    z7 = z;
                    linearSystem.addGreaterThan(constraintAnchor4.mSolverVariable, constraintAnchor6.mSolverVariable, i11, 6);
                }
                linearSystem.addEquality(constraintAnchor4.mSolverVariable, constraintAnchor4.mTarget.mSolverVariable, i11, i6);
            } else {
                constraintWidget4 = constraintWidget9;
                z7 = z;
            }
            if (z8) {
                if (r7.getVisibility() == 8 || r7.mListDimensionBehaviors[i] != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    i7 = 0;
                } else {
                    ConstraintAnchor[] constraintAnchorArr = r7.mListAnchors;
                    i7 = 0;
                    linearSystem.addGreaterThan(constraintAnchorArr[i2 + 1].mSolverVariable, constraintAnchorArr[i2].mSolverVariable, 0, 5);
                }
                linearSystem.addGreaterThan(r7.mListAnchors[i2].mSolverVariable, constraintWidgetContainer.mListAnchors[i2].mSolverVariable, i7, 6);
            }
            ConstraintAnchor constraintAnchor7 = r7.mListAnchors[i2 + 1].mTarget;
            if (constraintAnchor7 != null) {
                ConstraintWidget constraintWidget12 = constraintAnchor7.mOwner;
                ConstraintAnchor[] constraintAnchorArr2 = constraintWidget12.mListAnchors;
                if (constraintAnchorArr2[i2].mTarget != null && constraintAnchorArr2[i2].mTarget.mOwner == r7) {
                    obj = constraintWidget12;
                }
            }
            if (obj != null) {
                r7 = obj;
                z9 = z5;
            } else {
                z9 = true;
            }
            z3 = z6;
            f = f2;
            z = z7;
            constraintWidget9 = constraintWidget4;
            r7 = r7;
        }
        ConstraintWidget constraintWidget13 = constraintWidget9;
        float f3 = f;
        boolean z10 = z;
        boolean z11 = z3;
        if (constraintWidget8 != null) {
            ConstraintAnchor[] constraintAnchorArr3 = constraintWidget6.mListAnchors;
            int i12 = i2 + 1;
            if (constraintAnchorArr3[i12].mTarget != null) {
                ConstraintAnchor constraintAnchor8 = constraintWidget8.mListAnchors[i12];
                linearSystem.addLowerThan(constraintAnchor8.mSolverVariable, constraintAnchorArr3[i12].mTarget.mSolverVariable, -constraintAnchor8.getMargin(), 5);
            }
        }
        if (z8) {
            int i13 = i2 + 1;
            SolverVariable solverVariable5 = constraintWidgetContainer.mListAnchors[i13].mSolverVariable;
            ConstraintAnchor[] constraintAnchorArr4 = constraintWidget6.mListAnchors;
            linearSystem.addGreaterThan(solverVariable5, constraintAnchorArr4[i13].mSolverVariable, constraintAnchorArr4[i13].getMargin(), 6);
        }
        ArrayList<ConstraintWidget> arrayList2 = chainHead.mWeightedMatchConstraintsWidgets;
        if (arrayList2 != null && (size = arrayList2.size()) > 1) {
            float f4 = (!chainHead.mHasUndefinedWeights || chainHead.mHasComplexMatchWeights) ? f3 : chainHead.mWidgetsMatchCount;
            float f5 = 0.0f;
            ConstraintWidget constraintWidget14 = null;
            int i14 = 0;
            float f6 = 0.0f;
            while (i14 < size) {
                ConstraintWidget constraintWidget15 = arrayList2.get(i14);
                float f7 = constraintWidget15.mWeight[i];
                if (f7 < f5) {
                    if (chainHead.mHasComplexMatchWeights) {
                        ConstraintAnchor[] constraintAnchorArr5 = constraintWidget15.mListAnchors;
                        linearSystem.addEquality(constraintAnchorArr5[i2 + 1].mSolverVariable, constraintAnchorArr5[i2].mSolverVariable, 0, 4);
                        arrayList = arrayList2;
                        i5 = size;
                        i14++;
                        size = i5;
                        arrayList2 = arrayList;
                        f5 = 0.0f;
                    } else {
                        f7 = 1.0f;
                        f5 = 0.0f;
                    }
                }
                if (f7 == f5) {
                    ConstraintAnchor[] constraintAnchorArr6 = constraintWidget15.mListAnchors;
                    linearSystem.addEquality(constraintAnchorArr6[i2 + 1].mSolverVariable, constraintAnchorArr6[i2].mSolverVariable, 0, 6);
                    arrayList = arrayList2;
                    i5 = size;
                    i14++;
                    size = i5;
                    arrayList2 = arrayList;
                    f5 = 0.0f;
                } else {
                    if (constraintWidget14 != null) {
                        ConstraintAnchor[] constraintAnchorArr7 = constraintWidget14.mListAnchors;
                        SolverVariable solverVariable6 = constraintAnchorArr7[i2].mSolverVariable;
                        int i15 = i2 + 1;
                        SolverVariable solverVariable7 = constraintAnchorArr7[i15].mSolverVariable;
                        ConstraintAnchor[] constraintAnchorArr8 = constraintWidget15.mListAnchors;
                        arrayList = arrayList2;
                        SolverVariable solverVariable8 = constraintAnchorArr8[i2].mSolverVariable;
                        SolverVariable solverVariable9 = constraintAnchorArr8[i15].mSolverVariable;
                        i5 = size;
                        ArrayRow arrayRowCreateRow = linearSystem.createRow();
                        arrayRowCreateRow.createRowEqualMatchDimensions(f6, f4, f7, solverVariable6, solverVariable7, solverVariable8, solverVariable9);
                        linearSystem.addConstraint(arrayRowCreateRow);
                    } else {
                        arrayList = arrayList2;
                        i5 = size;
                    }
                    f6 = f7;
                    constraintWidget14 = constraintWidget15;
                    i14++;
                    size = i5;
                    arrayList2 = arrayList;
                    f5 = 0.0f;
                }
            }
        }
        if (constraintWidget7 != null && (constraintWidget7 == constraintWidget8 || z4)) {
            ConstraintAnchor[] constraintAnchorArr9 = constraintWidget5.mListAnchors;
            ConstraintAnchor constraintAnchor9 = constraintAnchorArr9[i2];
            ConstraintAnchor[] constraintAnchorArr10 = constraintWidget6.mListAnchors;
            int i16 = i2 + 1;
            ConstraintAnchor constraintAnchor10 = constraintAnchorArr10[i16];
            SolverVariable solverVariable10 = constraintAnchorArr9[i2].mTarget != null ? constraintAnchorArr9[i2].mTarget.mSolverVariable : null;
            SolverVariable solverVariable11 = constraintAnchorArr10[i16].mTarget != null ? constraintAnchorArr10[i16].mTarget.mSolverVariable : null;
            if (constraintWidget7 == constraintWidget8) {
                ConstraintAnchor[] constraintAnchorArr11 = constraintWidget7.mListAnchors;
                constraintAnchor9 = constraintAnchorArr11[i2];
                constraintAnchor10 = constraintAnchorArr11[i16];
            }
            if (solverVariable10 != null && solverVariable11 != null) {
                linearSystem.addCentering(constraintAnchor9.mSolverVariable, solverVariable10, constraintAnchor9.getMargin(), i == 0 ? constraintWidget13.mHorizontalBiasPercent : constraintWidget13.mVerticalBiasPercent, solverVariable11, constraintAnchor10.mSolverVariable, constraintAnchor10.getMargin(), 5);
            }
        } else if (!z10 || constraintWidget7 == null) {
            int i17 = 8;
            if (z11 && constraintWidget7 != null) {
                int i18 = chainHead.mWidgetsMatchCount;
                boolean z12 = i18 > 0 && chainHead.mWidgetsCount == i18;
                ConstraintWidget constraintWidget16 = constraintWidget7;
                ConstraintWidget constraintWidget17 = constraintWidget16;
                while (constraintWidget16 != null) {
                    ConstraintWidget constraintWidget18 = constraintWidget16.mNextChainWidget[i];
                    while (constraintWidget18 != null && constraintWidget18.getVisibility() == i17) {
                        constraintWidget18 = constraintWidget18.mNextChainWidget[i];
                    }
                    if (constraintWidget16 == constraintWidget7 || constraintWidget16 == constraintWidget8 || constraintWidget18 == null) {
                        constraintWidget = constraintWidget17;
                        i4 = 8;
                    } else {
                        ConstraintWidget constraintWidget19 = constraintWidget18 == constraintWidget8 ? null : constraintWidget18;
                        ConstraintAnchor constraintAnchor11 = constraintWidget16.mListAnchors[i2];
                        SolverVariable solverVariable12 = constraintAnchor11.mSolverVariable;
                        ConstraintAnchor constraintAnchor12 = constraintAnchor11.mTarget;
                        if (constraintAnchor12 != null) {
                            SolverVariable solverVariable13 = constraintAnchor12.mSolverVariable;
                        }
                        int i19 = i2 + 1;
                        SolverVariable solverVariable14 = constraintWidget17.mListAnchors[i19].mSolverVariable;
                        int margin2 = constraintAnchor11.getMargin();
                        int margin3 = constraintWidget16.mListAnchors[i19].getMargin();
                        if (constraintWidget19 != null) {
                            constraintAnchor = constraintWidget19.mListAnchors[i2];
                            solverVariable2 = constraintAnchor.mSolverVariable;
                            ConstraintAnchor constraintAnchor13 = constraintAnchor.mTarget;
                            solverVariable = constraintAnchor13 != null ? constraintAnchor13.mSolverVariable : null;
                        } else {
                            ConstraintAnchor[] constraintAnchorArr12 = constraintWidget16.mListAnchors;
                            ConstraintAnchor constraintAnchor14 = constraintAnchorArr12[i19].mTarget;
                            SolverVariable solverVariable15 = constraintAnchor14 != null ? constraintAnchor14.mSolverVariable : null;
                            solverVariable = constraintAnchorArr12[i19].mSolverVariable;
                            constraintAnchor = constraintAnchor14;
                            solverVariable2 = solverVariable15;
                        }
                        if (constraintAnchor != null) {
                            margin3 += constraintAnchor.getMargin();
                        }
                        int i20 = margin3;
                        if (constraintWidget17 != null) {
                            margin2 += constraintWidget17.mListAnchors[i19].getMargin();
                        }
                        int i21 = margin2;
                        int i22 = z12 ? 6 : 4;
                        if (solverVariable12 == null || solverVariable14 == null || solverVariable2 == null || solverVariable == null) {
                            constraintWidget2 = constraintWidget19;
                            constraintWidget = constraintWidget17;
                            i4 = 8;
                        } else {
                            constraintWidget2 = constraintWidget19;
                            constraintWidget = constraintWidget17;
                            i4 = 8;
                            linearSystem.addCentering(solverVariable12, solverVariable14, i21, 0.5f, solverVariable2, solverVariable, i20, i22);
                        }
                        constraintWidget18 = constraintWidget2;
                    }
                    if (constraintWidget16.getVisibility() == i4) {
                        constraintWidget16 = constraintWidget;
                    }
                    constraintWidget17 = constraintWidget16;
                    i17 = 8;
                    constraintWidget16 = constraintWidget18;
                }
                ConstraintAnchor constraintAnchor15 = constraintWidget7.mListAnchors[i2];
                ConstraintAnchor constraintAnchor16 = constraintWidget5.mListAnchors[i2].mTarget;
                int i23 = i2 + 1;
                ConstraintAnchor constraintAnchor17 = constraintWidget8.mListAnchors[i23];
                ConstraintAnchor constraintAnchor18 = constraintWidget6.mListAnchors[i23].mTarget;
                if (constraintAnchor16 == null) {
                    i3 = 5;
                } else if (constraintWidget7 != constraintWidget8) {
                    i3 = 5;
                    linearSystem.addEquality(constraintAnchor15.mSolverVariable, constraintAnchor16.mSolverVariable, constraintAnchor15.getMargin(), 5);
                } else {
                    i3 = 5;
                    if (constraintAnchor18 != null) {
                        linearSystem.addCentering(constraintAnchor15.mSolverVariable, constraintAnchor16.mSolverVariable, constraintAnchor15.getMargin(), 0.5f, constraintAnchor17.mSolverVariable, constraintAnchor18.mSolverVariable, constraintAnchor17.getMargin(), 5);
                    }
                }
                if (constraintAnchor18 != null && constraintWidget7 != constraintWidget8) {
                    linearSystem.addEquality(constraintAnchor17.mSolverVariable, constraintAnchor18.mSolverVariable, -constraintAnchor17.getMargin(), i3);
                }
            }
        } else {
            int i24 = chainHead.mWidgetsMatchCount;
            boolean z13 = i24 > 0 && chainHead.mWidgetsCount == i24;
            ConstraintWidget constraintWidget20 = constraintWidget7;
            ConstraintWidget constraintWidget21 = constraintWidget20;
            while (constraintWidget20 != null) {
                ConstraintWidget constraintWidget22 = constraintWidget20.mNextChainWidget[i];
                while (constraintWidget22 != null && constraintWidget22.getVisibility() == 8) {
                    constraintWidget22 = constraintWidget22.mNextChainWidget[i];
                }
                if (constraintWidget22 != null || constraintWidget20 == constraintWidget8) {
                    ConstraintAnchor constraintAnchor19 = constraintWidget20.mListAnchors[i2];
                    SolverVariable solverVariable16 = constraintAnchor19.mSolverVariable;
                    ConstraintAnchor constraintAnchor20 = constraintAnchor19.mTarget;
                    SolverVariable solverVariable17 = constraintAnchor20 != null ? constraintAnchor20.mSolverVariable : null;
                    if (constraintWidget21 != constraintWidget20) {
                        constraintAnchor2 = constraintWidget21.mListAnchors[i2 + 1];
                    } else {
                        if (constraintWidget20 == constraintWidget7 && constraintWidget21 == constraintWidget20) {
                            ConstraintAnchor[] constraintAnchorArr13 = constraintWidget5.mListAnchors;
                            if (constraintAnchorArr13[i2].mTarget != null) {
                                constraintAnchor2 = constraintAnchorArr13[i2].mTarget;
                            } else {
                                solverVariable17 = null;
                            }
                        }
                        int margin4 = constraintAnchor19.getMargin();
                        int i25 = i2 + 1;
                        int margin5 = constraintWidget20.mListAnchors[i25].getMargin();
                        if (constraintWidget22 == null) {
                            constraintAnchor3 = constraintWidget22.mListAnchors[i2];
                            SolverVariable solverVariable18 = constraintAnchor3.mSolverVariable;
                            solverVariable4 = constraintWidget20.mListAnchors[i25].mSolverVariable;
                            solverVariable3 = solverVariable18;
                        } else {
                            constraintAnchor3 = constraintWidget6.mListAnchors[i25].mTarget;
                            solverVariable3 = constraintAnchor3 != null ? constraintAnchor3.mSolverVariable : null;
                            solverVariable4 = constraintWidget20.mListAnchors[i25].mSolverVariable;
                        }
                        if (constraintAnchor3 != null) {
                            margin5 += constraintAnchor3.getMargin();
                        }
                        if (constraintWidget21 != null) {
                            margin4 += constraintWidget21.mListAnchors[i25].getMargin();
                        }
                        if (solverVariable16 != null || solverVariable17 == null || solverVariable3 == null || solverVariable4 == null) {
                            constraintWidget3 = constraintWidget22;
                        } else {
                            if (constraintWidget20 == constraintWidget7) {
                                margin4 = constraintWidget7.mListAnchors[i2].getMargin();
                            }
                            int i26 = margin4;
                            constraintWidget3 = constraintWidget22;
                            linearSystem.addCentering(solverVariable16, solverVariable17, i26, 0.5f, solverVariable3, solverVariable4, constraintWidget20 == constraintWidget8 ? constraintWidget8.mListAnchors[i25].getMargin() : margin5, z13 ? 6 : 4);
                        }
                    }
                    solverVariable17 = constraintAnchor2.mSolverVariable;
                    int margin42 = constraintAnchor19.getMargin();
                    int i252 = i2 + 1;
                    int margin52 = constraintWidget20.mListAnchors[i252].getMargin();
                    if (constraintWidget22 == null) {
                    }
                    if (constraintAnchor3 != null) {
                    }
                    if (constraintWidget21 != null) {
                    }
                    if (solverVariable16 != null) {
                        constraintWidget3 = constraintWidget22;
                    }
                }
                if (constraintWidget20.getVisibility() != 8) {
                    constraintWidget21 = constraintWidget20;
                }
                constraintWidget20 = constraintWidget3;
            }
        }
        if ((z10 || z11) && constraintWidget7 != null) {
            ConstraintAnchor[] constraintAnchorArr14 = constraintWidget7.mListAnchors;
            ConstraintAnchor constraintAnchor21 = constraintAnchorArr14[i2];
            int i27 = i2 + 1;
            ConstraintAnchor constraintAnchor22 = constraintWidget8.mListAnchors[i27];
            ConstraintAnchor constraintAnchor23 = constraintAnchor21.mTarget;
            SolverVariable solverVariable19 = constraintAnchor23 != null ? constraintAnchor23.mSolverVariable : null;
            ConstraintAnchor constraintAnchor24 = constraintAnchor22.mTarget;
            ?? r5 = constraintAnchor24 != null ? constraintAnchor24.mSolverVariable : 0;
            if (constraintWidget6 != constraintWidget8) {
                ConstraintAnchor constraintAnchor25 = constraintWidget6.mListAnchors[i27].mTarget;
                r5 = constraintAnchor25 != null ? constraintAnchor25.mSolverVariable : null;
            }
            if (constraintWidget7 == constraintWidget8) {
                constraintAnchor21 = constraintAnchorArr14[i2];
                constraintAnchor22 = constraintAnchorArr14[i27];
            }
            if (solverVariable19 == null || r5 == 0) {
                return;
            }
            int margin6 = constraintAnchor21.getMargin();
            if (constraintWidget8 != null) {
                constraintWidget6 = constraintWidget8;
            }
            linearSystem.addCentering(constraintAnchor21.mSolverVariable, solverVariable19, margin6, 0.5f, r5, constraintAnchor22.mSolverVariable, constraintWidget6.mListAnchors[i27].getMargin(), 5);
        }
    }
}

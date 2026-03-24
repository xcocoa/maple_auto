package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.LinearSystem;
import androidx.constraintlayout.solver.SolverVariable;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class Barrier extends Helper {
    public static final int BOTTOM = 3;
    public static final int LEFT = 0;
    public static final int RIGHT = 1;
    public static final int TOP = 2;
    private int mBarrierType = 0;
    private ArrayList<ResolutionAnchor> mNodes = new ArrayList<>(4);
    private boolean mAllowsGoneWidget = true;

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    public void addToSolver(LinearSystem linearSystem) {
        ConstraintAnchor[] constraintAnchorArr;
        boolean z;
        SolverVariable solverVariable;
        ConstraintAnchor constraintAnchor;
        int i;
        int i2;
        ConstraintAnchor[] constraintAnchorArr2 = this.mListAnchors;
        constraintAnchorArr2[0] = this.mLeft;
        constraintAnchorArr2[2] = this.mTop;
        constraintAnchorArr2[1] = this.mRight;
        constraintAnchorArr2[3] = this.mBottom;
        int i3 = 0;
        while (true) {
            constraintAnchorArr = this.mListAnchors;
            if (i3 >= constraintAnchorArr.length) {
                break;
            }
            constraintAnchorArr[i3].mSolverVariable = linearSystem.createObjectVariable(constraintAnchorArr[i3]);
            i3++;
        }
        int i4 = this.mBarrierType;
        if (i4 < 0 || i4 >= 4) {
            return;
        }
        ConstraintAnchor constraintAnchor2 = constraintAnchorArr[i4];
        for (int i5 = 0; i5 < this.mWidgetsCount; i5++) {
            ConstraintWidget constraintWidget = this.mWidgets[i5];
            if ((this.mAllowsGoneWidget || constraintWidget.allowedInBarrier()) && ((((i = this.mBarrierType) == 0 || i == 1) && constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) || (((i2 = this.mBarrierType) == 2 || i2 == 3) && constraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT))) {
                z = true;
                break;
            }
        }
        z = false;
        int i6 = this.mBarrierType;
        if (i6 == 0 || i6 == 1 ? getParent().getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT : getParent().getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
            z = false;
        }
        for (int i7 = 0; i7 < this.mWidgetsCount; i7++) {
            ConstraintWidget constraintWidget2 = this.mWidgets[i7];
            if (this.mAllowsGoneWidget || constraintWidget2.allowedInBarrier()) {
                SolverVariable solverVariableCreateObjectVariable = linearSystem.createObjectVariable(constraintWidget2.mListAnchors[this.mBarrierType]);
                ConstraintAnchor[] constraintAnchorArr3 = constraintWidget2.mListAnchors;
                int i8 = this.mBarrierType;
                constraintAnchorArr3[i8].mSolverVariable = solverVariableCreateObjectVariable;
                if (i8 == 0 || i8 == 2) {
                    linearSystem.addLowerBarrier(constraintAnchor2.mSolverVariable, solverVariableCreateObjectVariable, z);
                } else {
                    linearSystem.addGreaterBarrier(constraintAnchor2.mSolverVariable, solverVariableCreateObjectVariable, z);
                }
            }
        }
        int i9 = this.mBarrierType;
        if (i9 == 0) {
            linearSystem.addEquality(this.mRight.mSolverVariable, this.mLeft.mSolverVariable, 0, 6);
            if (z) {
                return;
            }
            solverVariable = this.mLeft.mSolverVariable;
            constraintAnchor = this.mParent.mRight;
        } else if (i9 == 1) {
            linearSystem.addEquality(this.mLeft.mSolverVariable, this.mRight.mSolverVariable, 0, 6);
            if (z) {
                return;
            }
            solverVariable = this.mLeft.mSolverVariable;
            constraintAnchor = this.mParent.mLeft;
        } else if (i9 == 2) {
            linearSystem.addEquality(this.mBottom.mSolverVariable, this.mTop.mSolverVariable, 0, 6);
            if (z) {
                return;
            }
            solverVariable = this.mTop.mSolverVariable;
            constraintAnchor = this.mParent.mBottom;
        } else {
            if (i9 != 3) {
                return;
            }
            linearSystem.addEquality(this.mTop.mSolverVariable, this.mBottom.mSolverVariable, 0, 6);
            if (z) {
                return;
            }
            solverVariable = this.mTop.mSolverVariable;
            constraintAnchor = this.mParent.mTop;
        }
        linearSystem.addEquality(solverVariable, constraintAnchor.mSolverVariable, 0, 5);
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    public boolean allowedInBarrier() {
        return true;
    }

    public boolean allowsGoneWidget() {
        return this.mAllowsGoneWidget;
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0094 A[SYNTHETIC] */
    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void analyze(int i) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        ConstraintAnchor constraintAnchor3;
        ResolutionAnchor resolutionNode;
        ConstraintWidget constraintWidget = this.mParent;
        if (constraintWidget != null && ((ConstraintWidgetContainer) constraintWidget).optimizeFor(2)) {
            int i2 = this.mBarrierType;
            if (i2 == 0) {
                constraintAnchor = this.mLeft;
            } else if (i2 == 1) {
                constraintAnchor = this.mRight;
            } else if (i2 == 2) {
                constraintAnchor = this.mTop;
            } else if (i2 != 3) {
                return;
            } else {
                constraintAnchor = this.mBottom;
            }
            ResolutionAnchor resolutionNode2 = constraintAnchor.getResolutionNode();
            resolutionNode2.setType(5);
            int i3 = this.mBarrierType;
            if (i3 == 0 || i3 == 1) {
                this.mTop.getResolutionNode().resolve(null, 0.0f);
                constraintAnchor2 = this.mBottom;
            } else {
                this.mLeft.getResolutionNode().resolve(null, 0.0f);
                constraintAnchor2 = this.mRight;
            }
            constraintAnchor2.getResolutionNode().resolve(null, 0.0f);
            this.mNodes.clear();
            for (int i4 = 0; i4 < this.mWidgetsCount; i4++) {
                ConstraintWidget constraintWidget2 = this.mWidgets[i4];
                if (this.mAllowsGoneWidget || constraintWidget2.allowedInBarrier()) {
                    int i5 = this.mBarrierType;
                    if (i5 == 0) {
                        constraintAnchor3 = constraintWidget2.mLeft;
                    } else if (i5 == 1) {
                        constraintAnchor3 = constraintWidget2.mRight;
                    } else if (i5 == 2) {
                        constraintAnchor3 = constraintWidget2.mTop;
                    } else if (i5 != 3) {
                        resolutionNode = null;
                        if (resolutionNode == null) {
                            this.mNodes.add(resolutionNode);
                            resolutionNode.addDependent(resolutionNode2);
                        }
                    } else {
                        constraintAnchor3 = constraintWidget2.mBottom;
                    }
                    resolutionNode = constraintAnchor3.getResolutionNode();
                    if (resolutionNode == null) {
                    }
                }
            }
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    public void resetResolutionNodes() {
        super.resetResolutionNodes();
        this.mNodes.clear();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0051 A[PHI: r9
      0x0051: PHI (r9v4 float) = (r9v3 float), (r9v5 float) binds: [B:27:0x004f, B:24:0x0048] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0084  */
    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void resolve() {
        ConstraintAnchor constraintAnchor;
        ResolutionAnchor resolutionNode;
        int size;
        int i;
        int i2;
        ConstraintAnchor constraintAnchor2;
        float f;
        ConstraintAnchor constraintAnchor3;
        int i3 = this.mBarrierType;
        float f2 = Float.MAX_VALUE;
        if (i3 != 0) {
            if (i3 == 1) {
                constraintAnchor3 = this.mRight;
            } else if (i3 == 2) {
                constraintAnchor = this.mTop;
            } else if (i3 != 3) {
                return;
            } else {
                constraintAnchor3 = this.mBottom;
            }
            resolutionNode = constraintAnchor3.getResolutionNode();
            f2 = 0.0f;
            size = this.mNodes.size();
            ResolutionAnchor resolutionAnchor = null;
            for (i = 0; i < size; i++) {
                ResolutionAnchor resolutionAnchor2 = this.mNodes.get(i);
                if (resolutionAnchor2.state != 1) {
                    return;
                }
                int i4 = this.mBarrierType;
                if (i4 == 0 || i4 == 2) {
                    f = resolutionAnchor2.resolvedOffset;
                    if (f < f2) {
                        resolutionAnchor = resolutionAnchor2.resolvedTarget;
                        f2 = f;
                    }
                } else {
                    f = resolutionAnchor2.resolvedOffset;
                    if (f > f2) {
                    }
                }
            }
            if (LinearSystem.getMetrics() != null) {
                LinearSystem.getMetrics().barrierConnectionResolved++;
            }
            resolutionNode.resolvedTarget = resolutionAnchor;
            resolutionNode.resolvedOffset = f2;
            resolutionNode.didResolve();
            i2 = this.mBarrierType;
            if (i2 != 0) {
                constraintAnchor2 = this.mRight;
            } else if (i2 == 1) {
                constraintAnchor2 = this.mLeft;
            } else if (i2 == 2) {
                constraintAnchor2 = this.mBottom;
            } else if (i2 != 3) {
                return;
            } else {
                constraintAnchor2 = this.mTop;
            }
            constraintAnchor2.getResolutionNode().resolve(resolutionAnchor, f2);
        }
        constraintAnchor = this.mLeft;
        resolutionNode = constraintAnchor.getResolutionNode();
        size = this.mNodes.size();
        ResolutionAnchor resolutionAnchor3 = null;
        while (i < size) {
        }
        if (LinearSystem.getMetrics() != null) {
        }
        resolutionNode.resolvedTarget = resolutionAnchor3;
        resolutionNode.resolvedOffset = f2;
        resolutionNode.didResolve();
        i2 = this.mBarrierType;
        if (i2 != 0) {
        }
        constraintAnchor2.getResolutionNode().resolve(resolutionAnchor3, f2);
    }

    public void setAllowsGoneWidget(boolean z) {
        this.mAllowsGoneWidget = z;
    }

    public void setBarrierType(int i) {
        this.mBarrierType = i;
    }
}

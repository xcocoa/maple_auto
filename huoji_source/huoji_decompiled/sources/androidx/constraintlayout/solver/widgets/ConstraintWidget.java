package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.ArrayRow;
import androidx.constraintlayout.solver.Cache;
import androidx.constraintlayout.solver.LinearSystem;
import androidx.constraintlayout.solver.SolverVariable;
import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import java.util.ArrayList;
import z2.o4;

/* JADX INFO: loaded from: classes.dex */
public class ConstraintWidget {
    public static final int ANCHOR_BASELINE = 4;
    public static final int ANCHOR_BOTTOM = 3;
    public static final int ANCHOR_LEFT = 0;
    public static final int ANCHOR_RIGHT = 1;
    public static final int ANCHOR_TOP = 2;
    private static final boolean AUTOTAG_CENTER = false;
    public static final int CHAIN_PACKED = 2;
    public static final int CHAIN_SPREAD = 0;
    public static final int CHAIN_SPREAD_INSIDE = 1;
    public static float DEFAULT_BIAS = 0.5f;
    public static final int DIMENSION_HORIZONTAL = 0;
    public static final int DIMENSION_VERTICAL = 1;
    public static final int DIRECT = 2;
    public static final int GONE = 8;
    public static final int HORIZONTAL = 0;
    public static final int INVISIBLE = 4;
    public static final int MATCH_CONSTRAINT_PERCENT = 2;
    public static final int MATCH_CONSTRAINT_RATIO = 3;
    public static final int MATCH_CONSTRAINT_RATIO_RESOLVED = 4;
    public static final int MATCH_CONSTRAINT_SPREAD = 0;
    public static final int MATCH_CONSTRAINT_WRAP = 1;
    public static final int SOLVER = 1;
    public static final int UNKNOWN = -1;
    public static final int VERTICAL = 1;
    public static final int VISIBLE = 0;
    private static final int WRAP = -2;
    public ArrayList<ConstraintAnchor> mAnchors;
    public ConstraintAnchor mBaseline;
    public int mBaselineDistance;
    public ConstraintWidgetGroup mBelongingGroup;
    public ConstraintAnchor mBottom;
    public boolean mBottomHasCentered;
    public ConstraintAnchor mCenter;
    public ConstraintAnchor mCenterX;
    public ConstraintAnchor mCenterY;
    private float mCircleConstraintAngle;
    private Object mCompanionWidget;
    private int mContainerItemSkip;
    private String mDebugName;
    public float mDimensionRatio;
    public int mDimensionRatioSide;
    public int mDistToBottom;
    public int mDistToLeft;
    public int mDistToRight;
    public int mDistToTop;
    private int mDrawHeight;
    private int mDrawWidth;
    private int mDrawX;
    private int mDrawY;
    public boolean mGroupsToSolver;
    public int mHeight;
    public float mHorizontalBiasPercent;
    public boolean mHorizontalChainFixedPosition;
    public int mHorizontalChainStyle;
    public ConstraintWidget mHorizontalNextWidget;
    public int mHorizontalResolution;
    public boolean mHorizontalWrapVisited;
    public boolean mIsHeightWrapContent;
    public boolean mIsWidthWrapContent;
    public ConstraintAnchor mLeft;
    public boolean mLeftHasCentered;
    public ConstraintAnchor[] mListAnchors;
    public DimensionBehaviour[] mListDimensionBehaviors;
    public ConstraintWidget[] mListNextMatchConstraintsWidget;
    public int mMatchConstraintDefaultHeight;
    public int mMatchConstraintDefaultWidth;
    public int mMatchConstraintMaxHeight;
    public int mMatchConstraintMaxWidth;
    public int mMatchConstraintMinHeight;
    public int mMatchConstraintMinWidth;
    public float mMatchConstraintPercentHeight;
    public float mMatchConstraintPercentWidth;
    private int[] mMaxDimension;
    public int mMinHeight;
    public int mMinWidth;
    public ConstraintWidget[] mNextChainWidget;
    public int mOffsetX;
    public int mOffsetY;
    public boolean mOptimizerMeasurable;
    public boolean mOptimizerMeasured;
    public ConstraintWidget mParent;
    public int mRelX;
    public int mRelY;
    public ResolutionDimension mResolutionHeight;
    public ResolutionDimension mResolutionWidth;
    public float mResolvedDimensionRatio;
    public int mResolvedDimensionRatioSide;
    public int[] mResolvedMatchConstraintDefault;
    public ConstraintAnchor mRight;
    public boolean mRightHasCentered;
    public ConstraintAnchor mTop;
    public boolean mTopHasCentered;
    private String mType;
    public float mVerticalBiasPercent;
    public boolean mVerticalChainFixedPosition;
    public int mVerticalChainStyle;
    public ConstraintWidget mVerticalNextWidget;
    public int mVerticalResolution;
    public boolean mVerticalWrapVisited;
    private int mVisibility;
    public float[] mWeight;
    public int mWidth;
    private int mWrapHeight;
    private int mWrapWidth;
    public int mX;
    public int mY;

    /* JADX INFO: renamed from: androidx.constraintlayout.solver.widgets.ConstraintWidget$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type;
        public static final /* synthetic */ int[] $SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintWidget$DimensionBehaviour;

        static {
            int[] iArr = new int[DimensionBehaviour.values().length];
            $SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintWidget$DimensionBehaviour = iArr;
            try {
                iArr[DimensionBehaviour.FIXED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintWidget$DimensionBehaviour[DimensionBehaviour.WRAP_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintWidget$DimensionBehaviour[DimensionBehaviour.MATCH_PARENT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintWidget$DimensionBehaviour[DimensionBehaviour.MATCH_CONSTRAINT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[ConstraintAnchor.Type.values().length];
            $SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type = iArr2;
            try {
                iArr2[ConstraintAnchor.Type.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.TOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.BASELINE.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.CENTER.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError unused13) {
            }
        }
    }

    public enum ContentAlignment {
        BEGIN,
        MIDDLE,
        END,
        TOP,
        VERTICAL_MIDDLE,
        BOTTOM,
        LEFT,
        RIGHT
    }

    public enum DimensionBehaviour {
        FIXED,
        WRAP_CONTENT,
        MATCH_CONSTRAINT,
        MATCH_PARENT
    }

    public ConstraintWidget() {
        this.mHorizontalResolution = -1;
        this.mVerticalResolution = -1;
        this.mMatchConstraintDefaultWidth = 0;
        this.mMatchConstraintDefaultHeight = 0;
        this.mResolvedMatchConstraintDefault = new int[2];
        this.mMatchConstraintMinWidth = 0;
        this.mMatchConstraintMaxWidth = 0;
        this.mMatchConstraintPercentWidth = 1.0f;
        this.mMatchConstraintMinHeight = 0;
        this.mMatchConstraintMaxHeight = 0;
        this.mMatchConstraintPercentHeight = 1.0f;
        this.mResolvedDimensionRatioSide = -1;
        this.mResolvedDimensionRatio = 1.0f;
        this.mBelongingGroup = null;
        this.mMaxDimension = new int[]{Integer.MAX_VALUE, Integer.MAX_VALUE};
        this.mCircleConstraintAngle = 0.0f;
        this.mLeft = new ConstraintAnchor(this, ConstraintAnchor.Type.LEFT);
        this.mTop = new ConstraintAnchor(this, ConstraintAnchor.Type.TOP);
        this.mRight = new ConstraintAnchor(this, ConstraintAnchor.Type.RIGHT);
        this.mBottom = new ConstraintAnchor(this, ConstraintAnchor.Type.BOTTOM);
        this.mBaseline = new ConstraintAnchor(this, ConstraintAnchor.Type.BASELINE);
        this.mCenterX = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_X);
        this.mCenterY = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_Y);
        ConstraintAnchor constraintAnchor = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER);
        this.mCenter = constraintAnchor;
        this.mListAnchors = new ConstraintAnchor[]{this.mLeft, this.mRight, this.mTop, this.mBottom, this.mBaseline, constraintAnchor};
        this.mAnchors = new ArrayList<>();
        DimensionBehaviour dimensionBehaviour = DimensionBehaviour.FIXED;
        this.mListDimensionBehaviors = new DimensionBehaviour[]{dimensionBehaviour, dimensionBehaviour};
        this.mParent = null;
        this.mWidth = 0;
        this.mHeight = 0;
        this.mDimensionRatio = 0.0f;
        this.mDimensionRatioSide = -1;
        this.mX = 0;
        this.mY = 0;
        this.mRelX = 0;
        this.mRelY = 0;
        this.mDrawX = 0;
        this.mDrawY = 0;
        this.mDrawWidth = 0;
        this.mDrawHeight = 0;
        this.mOffsetX = 0;
        this.mOffsetY = 0;
        this.mBaselineDistance = 0;
        float f = DEFAULT_BIAS;
        this.mHorizontalBiasPercent = f;
        this.mVerticalBiasPercent = f;
        this.mContainerItemSkip = 0;
        this.mVisibility = 0;
        this.mDebugName = null;
        this.mType = null;
        this.mOptimizerMeasurable = false;
        this.mOptimizerMeasured = false;
        this.mGroupsToSolver = false;
        this.mHorizontalChainStyle = 0;
        this.mVerticalChainStyle = 0;
        this.mWeight = new float[]{-1.0f, -1.0f};
        this.mListNextMatchConstraintsWidget = new ConstraintWidget[]{null, null};
        this.mNextChainWidget = new ConstraintWidget[]{null, null};
        this.mHorizontalNextWidget = null;
        this.mVerticalNextWidget = null;
        addAnchors();
    }

    public ConstraintWidget(int i, int i2) {
        this(0, 0, i, i2);
    }

    public ConstraintWidget(int i, int i2, int i3, int i4) {
        this.mHorizontalResolution = -1;
        this.mVerticalResolution = -1;
        this.mMatchConstraintDefaultWidth = 0;
        this.mMatchConstraintDefaultHeight = 0;
        this.mResolvedMatchConstraintDefault = new int[2];
        this.mMatchConstraintMinWidth = 0;
        this.mMatchConstraintMaxWidth = 0;
        this.mMatchConstraintPercentWidth = 1.0f;
        this.mMatchConstraintMinHeight = 0;
        this.mMatchConstraintMaxHeight = 0;
        this.mMatchConstraintPercentHeight = 1.0f;
        this.mResolvedDimensionRatioSide = -1;
        this.mResolvedDimensionRatio = 1.0f;
        this.mBelongingGroup = null;
        this.mMaxDimension = new int[]{Integer.MAX_VALUE, Integer.MAX_VALUE};
        this.mCircleConstraintAngle = 0.0f;
        this.mLeft = new ConstraintAnchor(this, ConstraintAnchor.Type.LEFT);
        this.mTop = new ConstraintAnchor(this, ConstraintAnchor.Type.TOP);
        this.mRight = new ConstraintAnchor(this, ConstraintAnchor.Type.RIGHT);
        this.mBottom = new ConstraintAnchor(this, ConstraintAnchor.Type.BOTTOM);
        this.mBaseline = new ConstraintAnchor(this, ConstraintAnchor.Type.BASELINE);
        this.mCenterX = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_X);
        this.mCenterY = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_Y);
        ConstraintAnchor constraintAnchor = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER);
        this.mCenter = constraintAnchor;
        this.mListAnchors = new ConstraintAnchor[]{this.mLeft, this.mRight, this.mTop, this.mBottom, this.mBaseline, constraintAnchor};
        this.mAnchors = new ArrayList<>();
        DimensionBehaviour dimensionBehaviour = DimensionBehaviour.FIXED;
        this.mListDimensionBehaviors = new DimensionBehaviour[]{dimensionBehaviour, dimensionBehaviour};
        this.mParent = null;
        this.mWidth = 0;
        this.mHeight = 0;
        this.mDimensionRatio = 0.0f;
        this.mDimensionRatioSide = -1;
        this.mX = 0;
        this.mY = 0;
        this.mRelX = 0;
        this.mRelY = 0;
        this.mDrawX = 0;
        this.mDrawY = 0;
        this.mDrawWidth = 0;
        this.mDrawHeight = 0;
        this.mOffsetX = 0;
        this.mOffsetY = 0;
        this.mBaselineDistance = 0;
        float f = DEFAULT_BIAS;
        this.mHorizontalBiasPercent = f;
        this.mVerticalBiasPercent = f;
        this.mContainerItemSkip = 0;
        this.mVisibility = 0;
        this.mDebugName = null;
        this.mType = null;
        this.mOptimizerMeasurable = false;
        this.mOptimizerMeasured = false;
        this.mGroupsToSolver = false;
        this.mHorizontalChainStyle = 0;
        this.mVerticalChainStyle = 0;
        this.mWeight = new float[]{-1.0f, -1.0f};
        this.mListNextMatchConstraintsWidget = new ConstraintWidget[]{null, null};
        this.mNextChainWidget = new ConstraintWidget[]{null, null};
        this.mHorizontalNextWidget = null;
        this.mVerticalNextWidget = null;
        this.mX = i;
        this.mY = i2;
        this.mWidth = i3;
        this.mHeight = i4;
        addAnchors();
        forceUpdateDrawPosition();
    }

    private void addAnchors() {
        this.mAnchors.add(this.mLeft);
        this.mAnchors.add(this.mTop);
        this.mAnchors.add(this.mRight);
        this.mAnchors.add(this.mBottom);
        this.mAnchors.add(this.mCenterX);
        this.mAnchors.add(this.mCenterY);
        this.mAnchors.add(this.mCenter);
        this.mAnchors.add(this.mBaseline);
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x01d3  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x027f  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x02c4  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x02d3  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x02d7 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:174:0x02d9 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:177:0x02e4 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:178:0x02e6 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:182:0x02f4  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01be A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void applyConstraints(LinearSystem linearSystem, boolean z, SolverVariable solverVariable, SolverVariable solverVariable2, DimensionBehaviour dimensionBehaviour, boolean z3, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i, int i2, int i3, int i4, float f, boolean z4, boolean z5, int i5, int i6, int i7, float f2, boolean z6) {
        boolean z7;
        int iMin;
        int i8;
        int i9;
        boolean z8;
        int i10;
        SolverVariable solverVariableCreateObjectVariable;
        ConstraintWidget constraintWidget;
        ConstraintAnchor.Type type;
        SolverVariable solverVariable3;
        int i11;
        int i12;
        char c;
        int i13;
        SolverVariable solverVariable4;
        boolean z9;
        char c2;
        boolean z10;
        char c3;
        int i14;
        SolverVariable solverVariable5;
        SolverVariable solverVariable6;
        boolean z11;
        boolean z12;
        int i15;
        SolverVariable solverVariable7;
        SolverVariable solverVariable8;
        SolverVariable solverVariable9;
        boolean z13;
        boolean z14;
        int i16;
        int i17;
        int i18;
        int i19;
        boolean z15;
        SolverVariable solverVariableCreateObjectVariable2 = linearSystem.createObjectVariable(constraintAnchor);
        SolverVariable solverVariableCreateObjectVariable3 = linearSystem.createObjectVariable(constraintAnchor2);
        SolverVariable solverVariableCreateObjectVariable4 = linearSystem.createObjectVariable(constraintAnchor.getTarget());
        SolverVariable solverVariableCreateObjectVariable5 = linearSystem.createObjectVariable(constraintAnchor2.getTarget());
        if (linearSystem.graphOptimizer && constraintAnchor.getResolutionNode().state == 1 && constraintAnchor2.getResolutionNode().state == 1) {
            if (LinearSystem.getMetrics() != null) {
                LinearSystem.getMetrics().resolvedWidgets++;
            }
            constraintAnchor.getResolutionNode().addResolvedValue(linearSystem);
            constraintAnchor2.getResolutionNode().addResolvedValue(linearSystem);
            if (z5 || !z) {
                return;
            }
            linearSystem.addGreaterThan(solverVariable2, solverVariableCreateObjectVariable3, 0, 6);
            return;
        }
        if (LinearSystem.getMetrics() != null) {
            LinearSystem.getMetrics().nonresolvedWidgets++;
        }
        boolean zIsConnected = constraintAnchor.isConnected();
        boolean zIsConnected2 = constraintAnchor2.isConnected();
        boolean zIsConnected3 = this.mCenter.isConnected();
        int i20 = zIsConnected2 ? (zIsConnected ? 1 : 0) + 1 : zIsConnected ? 1 : 0;
        if (zIsConnected3) {
            i20++;
        }
        int i21 = i20;
        int i22 = z4 ? 3 : i5;
        int i23 = AnonymousClass1.$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintWidget$DimensionBehaviour[dimensionBehaviour.ordinal()];
        boolean z16 = (i23 == 1 || i23 == 2 || i23 == 3 || i23 != 4 || i22 == 4) ? false : true;
        if (this.mVisibility == 8) {
            iMin = 0;
            z7 = false;
        } else {
            z7 = z16;
            iMin = i2;
        }
        if (z6) {
            if (!zIsConnected && !zIsConnected2 && !zIsConnected3) {
                linearSystem.addEquality(solverVariableCreateObjectVariable2, i);
            } else if (zIsConnected && !zIsConnected2) {
                i8 = 6;
                linearSystem.addEquality(solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable4, constraintAnchor.getMargin(), 6);
            }
            i8 = 6;
        } else {
            i8 = 6;
        }
        if (z7) {
            i9 = i6;
            int i24 = i7;
            if (i9 == -2) {
                i9 = iMin;
            }
            if (i24 == -2) {
                i24 = iMin;
            }
            if (i9 > 0) {
                linearSystem.addGreaterThan(solverVariableCreateObjectVariable3, solverVariableCreateObjectVariable2, i9, 6);
                iMin = Math.max(iMin, i9);
            }
            if (i24 > 0) {
                linearSystem.addLowerThan(solverVariableCreateObjectVariable3, solverVariableCreateObjectVariable2, i24, 6);
                iMin = Math.min(iMin, i24);
            }
            if (i22 != 1) {
                z8 = z7;
                if (i22 == 2) {
                    ConstraintAnchor.Type type2 = constraintAnchor.getType();
                    ConstraintAnchor.Type type3 = ConstraintAnchor.Type.TOP;
                    if (type2 != type3) {
                        i10 = i22;
                        if (constraintAnchor.getType() != ConstraintAnchor.Type.BOTTOM) {
                            solverVariableCreateObjectVariable = linearSystem.createObjectVariable(this.mParent.getAnchor(ConstraintAnchor.Type.LEFT));
                            constraintWidget = this.mParent;
                            type = ConstraintAnchor.Type.RIGHT;
                        }
                        SolverVariable solverVariableCreateObjectVariable6 = linearSystem.createObjectVariable(constraintWidget.getAnchor(type));
                        SolverVariable solverVariable10 = solverVariableCreateObjectVariable;
                        ArrayRow arrayRowCreateRow = linearSystem.createRow();
                        int i25 = i10;
                        solverVariable3 = solverVariableCreateObjectVariable4;
                        i11 = iMin;
                        i12 = i25;
                        c = i21 == true ? 1 : 0;
                        i13 = i24;
                        solverVariable4 = solverVariableCreateObjectVariable5;
                        linearSystem.addConstraint(arrayRowCreateRow.createRowDimensionRatio(solverVariableCreateObjectVariable3, solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable6, solverVariable10, f2));
                        z9 = false;
                        if (z9) {
                            z10 = z9;
                            c3 = c;
                        }
                    } else {
                        i10 = i22;
                    }
                    solverVariableCreateObjectVariable = linearSystem.createObjectVariable(this.mParent.getAnchor(type3));
                    constraintWidget = this.mParent;
                    type = ConstraintAnchor.Type.BOTTOM;
                    SolverVariable solverVariableCreateObjectVariable62 = linearSystem.createObjectVariable(constraintWidget.getAnchor(type));
                    SolverVariable solverVariable102 = solverVariableCreateObjectVariable;
                    ArrayRow arrayRowCreateRow2 = linearSystem.createRow();
                    int i252 = i10;
                    solverVariable3 = solverVariableCreateObjectVariable4;
                    i11 = iMin;
                    i12 = i252;
                    c = i21 == true ? 1 : 0;
                    i13 = i24;
                    solverVariable4 = solverVariableCreateObjectVariable5;
                    linearSystem.addConstraint(arrayRowCreateRow2.createRowDimensionRatio(solverVariableCreateObjectVariable3, solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable62, solverVariable102, f2));
                    z9 = false;
                    if (z9) {
                    }
                }
            } else if (z) {
                linearSystem.addEquality(solverVariableCreateObjectVariable3, solverVariableCreateObjectVariable2, iMin, 6);
                i12 = i22;
                c2 = i21 == true ? 1 : 0;
                solverVariable4 = solverVariableCreateObjectVariable5;
                solverVariable3 = solverVariableCreateObjectVariable4;
                z8 = z7;
                i11 = iMin;
                i13 = i24;
                z9 = z8;
                c = c2;
                if (z9 || c == 2 || z4) {
                    z10 = z9;
                    c3 = c;
                } else {
                    int iMax = Math.max(i9, i11);
                    if (i13 > 0) {
                        iMax = Math.min(i13, iMax);
                    }
                    linearSystem.addEquality(solverVariableCreateObjectVariable3, solverVariableCreateObjectVariable2, iMax, 6);
                    z10 = false;
                    c3 = c;
                }
            } else {
                z8 = z7;
                if (z5) {
                    linearSystem.addEquality(solverVariableCreateObjectVariable3, solverVariableCreateObjectVariable2, iMin, 4);
                } else {
                    linearSystem.addEquality(solverVariableCreateObjectVariable3, solverVariableCreateObjectVariable2, iMin, 1);
                }
            }
            i12 = i22;
            c2 = i21 == true ? 1 : 0;
            i13 = i24;
            solverVariable4 = solverVariableCreateObjectVariable5;
            solverVariable3 = solverVariableCreateObjectVariable4;
            i11 = iMin;
            z9 = z8;
            c = c2;
            if (z9) {
            }
        } else {
            if (z3) {
                linearSystem.addEquality(solverVariableCreateObjectVariable3, solverVariableCreateObjectVariable2, 0, 3);
                if (i3 > 0) {
                    linearSystem.addGreaterThan(solverVariableCreateObjectVariable3, solverVariableCreateObjectVariable2, i3, 6);
                }
                if (i4 < Integer.MAX_VALUE) {
                    linearSystem.addLowerThan(solverVariableCreateObjectVariable3, solverVariableCreateObjectVariable2, i4, 6);
                }
            } else {
                linearSystem.addEquality(solverVariableCreateObjectVariable3, solverVariableCreateObjectVariable2, iMin, i8);
            }
            i9 = i6;
            i12 = i22;
            c3 = i21 == true ? 1 : 0;
            solverVariable4 = solverVariableCreateObjectVariable5;
            solverVariable3 = solverVariableCreateObjectVariable4;
            z10 = z7;
            i13 = i7;
        }
        if (!z6 || z5) {
            if (c3 >= 2 || !z) {
                return;
            }
            linearSystem.addGreaterThan(solverVariableCreateObjectVariable2, solverVariable, 0, 6);
            linearSystem.addGreaterThan(solverVariable2, solverVariableCreateObjectVariable3, 0, 6);
            return;
        }
        if (zIsConnected || zIsConnected2 || zIsConnected3) {
            i14 = 0;
            if (!zIsConnected || zIsConnected2) {
                if (!zIsConnected && zIsConnected2) {
                    linearSystem.addEquality(solverVariableCreateObjectVariable3, solverVariable4, -constraintAnchor2.getMargin(), 6);
                    if (z) {
                        linearSystem.addGreaterThan(solverVariableCreateObjectVariable2, solverVariable, 0, 5);
                    }
                } else if (zIsConnected && zIsConnected2) {
                    if (z10) {
                        solverVariable5 = solverVariable4;
                        if (z && i3 == 0) {
                            linearSystem.addGreaterThan(solverVariableCreateObjectVariable3, solverVariableCreateObjectVariable2, 0, 6);
                        }
                        if (i12 == 0) {
                            if (i13 > 0 || i9 > 0) {
                                i19 = 4;
                                z15 = true;
                            } else {
                                i19 = 6;
                                z15 = false;
                            }
                            solverVariable6 = solverVariable3;
                            linearSystem.addEquality(solverVariableCreateObjectVariable2, solverVariable6, constraintAnchor.getMargin(), i19);
                            linearSystem.addEquality(solverVariableCreateObjectVariable3, solverVariable5, -constraintAnchor2.getMargin(), i19);
                            z11 = i13 > 0 || i9 > 0;
                            z12 = z15;
                            i15 = 5;
                        } else {
                            int i26 = i12;
                            solverVariable6 = solverVariable3;
                            if (i26 == 1) {
                                z11 = true;
                                z12 = true;
                                i15 = 6;
                            } else if (i26 == 3) {
                                int i27 = (z4 || this.mResolvedDimensionRatioSide == -1 || i13 > 0) ? 4 : 6;
                                linearSystem.addEquality(solverVariableCreateObjectVariable2, solverVariable6, constraintAnchor.getMargin(), i27);
                                linearSystem.addEquality(solverVariableCreateObjectVariable3, solverVariable5, -constraintAnchor2.getMargin(), i27);
                                z11 = true;
                                z12 = true;
                                i15 = 5;
                                if (z11) {
                                    solverVariable8 = solverVariable5;
                                    solverVariable7 = solverVariable6;
                                    solverVariable9 = solverVariableCreateObjectVariable3;
                                    linearSystem.addCentering(solverVariableCreateObjectVariable2, solverVariable6, constraintAnchor.getMargin(), f, solverVariable5, solverVariableCreateObjectVariable3, constraintAnchor2.getMargin(), i15);
                                    boolean z17 = constraintAnchor.mTarget.mOwner instanceof Barrier;
                                    boolean z18 = constraintAnchor2.mTarget.mOwner instanceof Barrier;
                                    if (z17 && !z18) {
                                        z13 = z;
                                        i16 = 6;
                                        i17 = 5;
                                        z14 = true;
                                    } else if (!z17 && z18) {
                                        z14 = z;
                                        i16 = 5;
                                        i17 = 6;
                                        z13 = true;
                                    }
                                    if (z12) {
                                        i16 = 6;
                                        i17 = 6;
                                    }
                                    if ((z10 && z13) || z12) {
                                        linearSystem.addGreaterThan(solverVariableCreateObjectVariable2, solverVariable7, constraintAnchor.getMargin(), i17);
                                    }
                                    if ((z10 && z14) || z12) {
                                        linearSystem.addLowerThan(solverVariable9, solverVariable8, -constraintAnchor2.getMargin(), i16);
                                    }
                                    i18 = 0;
                                    if (z) {
                                        linearSystem.addGreaterThan(solverVariableCreateObjectVariable2, solverVariable, 0, 6);
                                    }
                                } else {
                                    solverVariable7 = solverVariable6;
                                    solverVariable8 = solverVariable5;
                                    solverVariable9 = solverVariableCreateObjectVariable3;
                                }
                                z13 = z;
                                z14 = z13;
                                i16 = 5;
                                i17 = 5;
                                if (z12) {
                                }
                                if (z10) {
                                    linearSystem.addGreaterThan(solverVariableCreateObjectVariable2, solverVariable7, constraintAnchor.getMargin(), i17);
                                    if (z10) {
                                        linearSystem.addLowerThan(solverVariable9, solverVariable8, -constraintAnchor2.getMargin(), i16);
                                        i18 = 0;
                                        if (z) {
                                        }
                                    } else {
                                        linearSystem.addLowerThan(solverVariable9, solverVariable8, -constraintAnchor2.getMargin(), i16);
                                        i18 = 0;
                                        if (z) {
                                        }
                                    }
                                } else {
                                    linearSystem.addGreaterThan(solverVariableCreateObjectVariable2, solverVariable7, constraintAnchor.getMargin(), i17);
                                    if (z10) {
                                    }
                                }
                            } else {
                                z11 = false;
                            }
                        }
                        if (z11) {
                        }
                        z13 = z;
                        z14 = z13;
                        i16 = 5;
                        i17 = 5;
                        if (z12) {
                        }
                        if (z10) {
                        }
                    } else {
                        solverVariable5 = solverVariable4;
                        solverVariable6 = solverVariable3;
                        z11 = true;
                    }
                    z12 = false;
                    i15 = 5;
                    if (z11) {
                    }
                    z13 = z;
                    z14 = z13;
                    i16 = 5;
                    i17 = 5;
                    if (z12) {
                    }
                    if (z10) {
                    }
                }
            } else if (z) {
                linearSystem.addGreaterThan(solverVariable2, solverVariableCreateObjectVariable3, i14, 5);
            }
            solverVariable9 = solverVariableCreateObjectVariable3;
            i18 = 0;
        } else {
            if (z) {
                i14 = 0;
                linearSystem.addGreaterThan(solverVariable2, solverVariableCreateObjectVariable3, i14, 5);
            }
            solverVariable9 = solverVariableCreateObjectVariable3;
            i18 = 0;
        }
        if (z) {
            linearSystem.addGreaterThan(solverVariable2, solverVariable9, i18, 6);
        }
    }

    private boolean isChainHead(int i) {
        int i2 = i * 2;
        ConstraintAnchor[] constraintAnchorArr = this.mListAnchors;
        if (constraintAnchorArr[i2].mTarget != null && constraintAnchorArr[i2].mTarget.mTarget != constraintAnchorArr[i2]) {
            int i3 = i2 + 1;
            if (constraintAnchorArr[i3].mTarget != null && constraintAnchorArr[i3].mTarget.mTarget == constraintAnchorArr[i3]) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:114:0x01a9  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0222  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0233 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0234  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0295  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x029e  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x02a4  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x02ac  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x02e3  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x0307  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0311  */
    /* JADX WARN: Removed duplicated region for block: B:174:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void addToSolver(LinearSystem linearSystem) {
        boolean z;
        boolean z3;
        boolean z4;
        boolean z5;
        int i;
        char c;
        int i2;
        int i3;
        int i4;
        boolean z6;
        DimensionBehaviour dimensionBehaviour;
        boolean z7;
        SolverVariable solverVariable;
        SolverVariable solverVariable2;
        SolverVariable solverVariable3;
        LinearSystem linearSystem2;
        boolean z8;
        SolverVariable solverVariable4;
        ConstraintWidget constraintWidget;
        LinearSystem linearSystem3;
        SolverVariable solverVariable5;
        SolverVariable solverVariable6;
        SolverVariable solverVariable7;
        SolverVariable solverVariable8;
        int i5;
        LinearSystem linearSystem4;
        SolverVariable solverVariableCreateObjectVariable;
        int i6;
        int i7;
        boolean zIsInHorizontalChain;
        boolean zIsInVerticalChain;
        SolverVariable solverVariableCreateObjectVariable2 = linearSystem.createObjectVariable(this.mLeft);
        SolverVariable solverVariableCreateObjectVariable3 = linearSystem.createObjectVariable(this.mRight);
        SolverVariable solverVariableCreateObjectVariable4 = linearSystem.createObjectVariable(this.mTop);
        SolverVariable solverVariableCreateObjectVariable5 = linearSystem.createObjectVariable(this.mBottom);
        SolverVariable solverVariableCreateObjectVariable6 = linearSystem.createObjectVariable(this.mBaseline);
        ConstraintWidget constraintWidget2 = this.mParent;
        if (constraintWidget2 != null) {
            boolean z9 = constraintWidget2 != null && constraintWidget2.mListDimensionBehaviors[0] == DimensionBehaviour.WRAP_CONTENT;
            boolean z10 = constraintWidget2 != null && constraintWidget2.mListDimensionBehaviors[1] == DimensionBehaviour.WRAP_CONTENT;
            if (isChainHead(0)) {
                ((ConstraintWidgetContainer) this.mParent).addChain(this, 0);
                zIsInHorizontalChain = true;
            } else {
                zIsInHorizontalChain = isInHorizontalChain();
            }
            if (isChainHead(1)) {
                ((ConstraintWidgetContainer) this.mParent).addChain(this, 1);
                zIsInVerticalChain = true;
            } else {
                zIsInVerticalChain = isInVerticalChain();
            }
            if (z9 && this.mVisibility != 8 && this.mLeft.mTarget == null && this.mRight.mTarget == null) {
                linearSystem.addGreaterThan(linearSystem.createObjectVariable(this.mParent.mRight), solverVariableCreateObjectVariable3, 0, 1);
            }
            if (z10 && this.mVisibility != 8 && this.mTop.mTarget == null && this.mBottom.mTarget == null && this.mBaseline == null) {
                linearSystem.addGreaterThan(linearSystem.createObjectVariable(this.mParent.mBottom), solverVariableCreateObjectVariable5, 0, 1);
            }
            z3 = z10;
            z = z9;
            z4 = zIsInHorizontalChain;
            z5 = zIsInVerticalChain;
        } else {
            z = false;
            z3 = false;
            z4 = false;
            z5 = false;
        }
        int i8 = this.mWidth;
        int i9 = this.mMinWidth;
        if (i8 >= i9) {
            i9 = i8;
        }
        int i10 = this.mHeight;
        int i11 = this.mMinHeight;
        if (i10 >= i11) {
            i11 = i10;
        }
        DimensionBehaviour[] dimensionBehaviourArr = this.mListDimensionBehaviors;
        DimensionBehaviour dimensionBehaviour2 = dimensionBehaviourArr[0];
        DimensionBehaviour dimensionBehaviour3 = DimensionBehaviour.MATCH_CONSTRAINT;
        boolean z11 = dimensionBehaviour2 != dimensionBehaviour3;
        boolean z12 = dimensionBehaviourArr[1] != dimensionBehaviour3;
        int i12 = this.mDimensionRatioSide;
        this.mResolvedDimensionRatioSide = i12;
        float f = this.mDimensionRatio;
        this.mResolvedDimensionRatio = f;
        int i13 = this.mMatchConstraintDefaultWidth;
        int i14 = i9;
        int i15 = this.mMatchConstraintDefaultHeight;
        if (f > 0.0f) {
            i = i11;
            if (this.mVisibility != 8) {
                if (dimensionBehaviourArr[0] == dimensionBehaviour3 && i13 == 0) {
                    i13 = 3;
                }
                if (dimensionBehaviourArr[1] == dimensionBehaviour3 && i15 == 0) {
                    i15 = 3;
                }
                if (dimensionBehaviourArr[0] == dimensionBehaviour3 && dimensionBehaviourArr[1] == dimensionBehaviour3) {
                    i7 = 3;
                    if (i13 == 3 && i15 == 3) {
                        setupDimensionRatio(z, z3, z11, z12);
                    }
                    c = 0;
                    i2 = i13;
                    i3 = i15;
                    i4 = i14;
                    z6 = true;
                } else {
                    i7 = 3;
                }
                if (dimensionBehaviourArr[0] == dimensionBehaviour3 && i13 == i7) {
                    this.mResolvedDimensionRatioSide = 0;
                    i4 = (int) (f * i10);
                    if (dimensionBehaviourArr[1] != dimensionBehaviour3) {
                        i3 = i15;
                        c = 0;
                        z6 = false;
                        i2 = 4;
                    } else {
                        i2 = i13;
                        i3 = i15;
                        c = 0;
                        z6 = true;
                    }
                } else {
                    if (dimensionBehaviourArr[1] == dimensionBehaviour3 && i15 == 3) {
                        this.mResolvedDimensionRatioSide = 1;
                        if (i12 == -1) {
                            this.mResolvedDimensionRatio = 1.0f / f;
                        }
                        c = 0;
                        i = (int) (this.mResolvedDimensionRatio * i8);
                        i2 = i13;
                        if (dimensionBehaviourArr[0] != dimensionBehaviour3) {
                            i4 = i14;
                            z6 = false;
                            i3 = 4;
                        }
                    } else {
                        c = 0;
                        i2 = i13;
                    }
                    i3 = i15;
                    i4 = i14;
                    z6 = true;
                }
            }
            int[] iArr = this.mResolvedMatchConstraintDefault;
            iArr[c] = i2;
            iArr[1] = i3;
            boolean z13 = !z6 && ((i6 = this.mResolvedDimensionRatioSide) == 0 || i6 == -1);
            DimensionBehaviour dimensionBehaviour4 = this.mListDimensionBehaviors[0];
            DimensionBehaviour dimensionBehaviour5 = DimensionBehaviour.WRAP_CONTENT;
            boolean z14 = dimensionBehaviour4 != dimensionBehaviour5 && (this instanceof ConstraintWidgetContainer);
            boolean z15 = !this.mCenter.isConnected();
            if (this.mHorizontalResolution == 2) {
                ConstraintWidget constraintWidget3 = this.mParent;
                if (constraintWidget3 != null) {
                    linearSystem4 = linearSystem;
                    solverVariableCreateObjectVariable = linearSystem4.createObjectVariable(constraintWidget3.mRight);
                } else {
                    linearSystem4 = linearSystem;
                    solverVariableCreateObjectVariable = null;
                }
                ConstraintWidget constraintWidget4 = this.mParent;
                z7 = z3;
                solverVariable = solverVariableCreateObjectVariable6;
                dimensionBehaviour = dimensionBehaviour5;
                solverVariable2 = solverVariableCreateObjectVariable4;
                solverVariable3 = solverVariableCreateObjectVariable3;
                applyConstraints(linearSystem, z, constraintWidget4 != null ? linearSystem4.createObjectVariable(constraintWidget4.mLeft) : null, solverVariableCreateObjectVariable, this.mListDimensionBehaviors[0], z14, this.mLeft, this.mRight, this.mX, i4, this.mMinWidth, this.mMaxDimension[0], this.mHorizontalBiasPercent, z13, z4, i2, this.mMatchConstraintMinWidth, this.mMatchConstraintMaxWidth, this.mMatchConstraintPercentWidth, z15);
            } else {
                dimensionBehaviour = dimensionBehaviour5;
                z7 = z3;
                solverVariable = solverVariableCreateObjectVariable6;
                solverVariable2 = solverVariableCreateObjectVariable4;
                solverVariable3 = solverVariableCreateObjectVariable3;
            }
            if (this.mVerticalResolution != 2) {
                return;
            }
            boolean z16 = this.mListDimensionBehaviors[1] == dimensionBehaviour && (this instanceof ConstraintWidgetContainer);
            boolean z17 = z6 && ((i5 = this.mResolvedDimensionRatioSide) == 1 || i5 == -1);
            if (this.mBaselineDistance <= 0) {
                linearSystem2 = linearSystem;
            } else {
                if (this.mBaseline.getResolutionNode().state != 1) {
                    linearSystem2 = linearSystem;
                    SolverVariable solverVariable9 = solverVariable;
                    solverVariable4 = solverVariable2;
                    linearSystem2.addEquality(solverVariable9, solverVariable4, getBaselineDistance(), 6);
                    ConstraintAnchor constraintAnchor = this.mBaseline.mTarget;
                    if (constraintAnchor != null) {
                        linearSystem2.addEquality(solverVariable9, linearSystem2.createObjectVariable(constraintAnchor), 0, 6);
                        z8 = false;
                    } else {
                        z8 = z15;
                    }
                    ConstraintWidget constraintWidget5 = this.mParent;
                    SolverVariable solverVariableCreateObjectVariable7 = constraintWidget5 == null ? linearSystem2.createObjectVariable(constraintWidget5.mBottom) : null;
                    ConstraintWidget constraintWidget6 = this.mParent;
                    SolverVariable solverVariable10 = solverVariable4;
                    applyConstraints(linearSystem, z7, constraintWidget6 == null ? linearSystem2.createObjectVariable(constraintWidget6.mTop) : null, solverVariableCreateObjectVariable7, this.mListDimensionBehaviors[1], z16, this.mTop, this.mBottom, this.mY, i, this.mMinHeight, this.mMaxDimension[1], this.mVerticalBiasPercent, z17, z5, i3, this.mMatchConstraintMinHeight, this.mMatchConstraintMaxHeight, this.mMatchConstraintPercentHeight, z8);
                    if (z6) {
                        constraintWidget = this;
                    } else {
                        int i16 = 6;
                        constraintWidget = this;
                        int i17 = constraintWidget.mResolvedDimensionRatioSide;
                        float f2 = constraintWidget.mResolvedDimensionRatio;
                        if (i17 == 1) {
                            linearSystem3 = linearSystem;
                            solverVariable5 = solverVariableCreateObjectVariable5;
                            solverVariable6 = solverVariable10;
                            solverVariable7 = solverVariable3;
                            solverVariable8 = solverVariableCreateObjectVariable2;
                        } else {
                            i16 = 6;
                            linearSystem3 = linearSystem;
                            solverVariable5 = solverVariable3;
                            solverVariable6 = solverVariableCreateObjectVariable2;
                            solverVariable7 = solverVariableCreateObjectVariable5;
                            solverVariable8 = solverVariable10;
                        }
                        linearSystem3.addRatio(solverVariable5, solverVariable6, solverVariable7, solverVariable8, f2, i16);
                    }
                    if (constraintWidget.mCenter.isConnected()) {
                        return;
                    }
                    linearSystem.addCenterPoint(constraintWidget, constraintWidget.mCenter.getTarget().getOwner(), (float) Math.toRadians(constraintWidget.mCircleConstraintAngle + 90.0f), constraintWidget.mCenter.getMargin());
                    return;
                }
                linearSystem2 = linearSystem;
                this.mBaseline.getResolutionNode().addResolvedValue(linearSystem2);
            }
            solverVariable4 = solverVariable2;
            z8 = z15;
            ConstraintWidget constraintWidget52 = this.mParent;
            if (constraintWidget52 == null) {
            }
            ConstraintWidget constraintWidget62 = this.mParent;
            SolverVariable solverVariable102 = solverVariable4;
            applyConstraints(linearSystem, z7, constraintWidget62 == null ? linearSystem2.createObjectVariable(constraintWidget62.mTop) : null, solverVariableCreateObjectVariable7, this.mListDimensionBehaviors[1], z16, this.mTop, this.mBottom, this.mY, i, this.mMinHeight, this.mMaxDimension[1], this.mVerticalBiasPercent, z17, z5, i3, this.mMatchConstraintMinHeight, this.mMatchConstraintMaxHeight, this.mMatchConstraintPercentHeight, z8);
            if (z6) {
            }
            if (constraintWidget.mCenter.isConnected()) {
            }
        } else {
            i = i11;
        }
        c = 0;
        i2 = i13;
        i3 = i15;
        i4 = i14;
        z6 = false;
        int[] iArr2 = this.mResolvedMatchConstraintDefault;
        iArr2[c] = i2;
        iArr2[1] = i3;
        if (z6) {
        }
        DimensionBehaviour dimensionBehaviour42 = this.mListDimensionBehaviors[0];
        DimensionBehaviour dimensionBehaviour52 = DimensionBehaviour.WRAP_CONTENT;
        if (dimensionBehaviour42 != dimensionBehaviour52) {
        }
        boolean z152 = !this.mCenter.isConnected();
        if (this.mHorizontalResolution == 2) {
        }
        if (this.mVerticalResolution != 2) {
        }
    }

    public boolean allowedInBarrier() {
        return this.mVisibility != 8;
    }

    public void analyze(int i) {
        Optimizer.analyze(i, this);
    }

    public void connect(ConstraintAnchor.Type type, ConstraintWidget constraintWidget, ConstraintAnchor.Type type2) {
        connect(type, constraintWidget, type2, 0, ConstraintAnchor.Strength.STRONG);
    }

    public void connect(ConstraintAnchor.Type type, ConstraintWidget constraintWidget, ConstraintAnchor.Type type2, int i) {
        connect(type, constraintWidget, type2, i, ConstraintAnchor.Strength.STRONG);
    }

    public void connect(ConstraintAnchor.Type type, ConstraintWidget constraintWidget, ConstraintAnchor.Type type2, int i, ConstraintAnchor.Strength strength) {
        connect(type, constraintWidget, type2, i, strength, 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:90:0x01db A[PHI: r0 r1
      0x01db: PHI (r0v3 androidx.constraintlayout.solver.widgets.ConstraintAnchor) = 
      (r0v2 androidx.constraintlayout.solver.widgets.ConstraintAnchor)
      (r0v5 androidx.constraintlayout.solver.widgets.ConstraintAnchor)
     binds: [B:98:0x0208, B:89:0x01d9] A[DONT_GENERATE, DONT_INLINE]
      0x01db: PHI (r1v4 androidx.constraintlayout.solver.widgets.ConstraintAnchor) = 
      (r1v3 androidx.constraintlayout.solver.widgets.ConstraintAnchor)
      (r1v5 androidx.constraintlayout.solver.widgets.ConstraintAnchor)
     binds: [B:98:0x0208, B:89:0x01d9] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void connect(ConstraintAnchor.Type type, ConstraintWidget constraintWidget, ConstraintAnchor.Type type2, int i, ConstraintAnchor.Strength strength, int i2) {
        ConstraintAnchor opposite;
        ConstraintAnchor anchor;
        ConstraintAnchor anchor2;
        ConstraintAnchor.Type type3;
        ConstraintAnchor anchor3;
        ConstraintAnchor anchor4;
        ConstraintAnchor.Type type4;
        ConstraintAnchor anchor5;
        ConstraintAnchor.Type type5;
        boolean z;
        ConstraintAnchor.Type type6;
        ConstraintAnchor.Type type7 = ConstraintAnchor.Type.CENTER;
        int i3 = 0;
        if (type != type7) {
            ConstraintAnchor.Type type8 = ConstraintAnchor.Type.CENTER_X;
            if (type == type8 && (type2 == (type4 = ConstraintAnchor.Type.LEFT) || type2 == ConstraintAnchor.Type.RIGHT)) {
                ConstraintAnchor anchor6 = getAnchor(type4);
                ConstraintAnchor anchor7 = constraintWidget.getAnchor(type2);
                ConstraintAnchor anchor8 = getAnchor(ConstraintAnchor.Type.RIGHT);
                anchor6.connect(anchor7, 0, i2);
                anchor8.connect(anchor7, 0, i2);
                getAnchor(type8).connect(anchor7, 0, i2);
                return;
            }
            ConstraintAnchor.Type type9 = ConstraintAnchor.Type.CENTER_Y;
            if (type == type9 && (type2 == (type3 = ConstraintAnchor.Type.TOP) || type2 == ConstraintAnchor.Type.BOTTOM)) {
                anchor3 = constraintWidget.getAnchor(type2);
                getAnchor(type3).connect(anchor3, 0, i2);
                getAnchor(ConstraintAnchor.Type.BOTTOM).connect(anchor3, 0, i2);
                anchor4 = getAnchor(type9);
                anchor4.connect(anchor3, 0, i2);
                return;
            }
            if (type == type8 && type2 == type8) {
                ConstraintAnchor.Type type10 = ConstraintAnchor.Type.LEFT;
                getAnchor(type10).connect(constraintWidget.getAnchor(type10), 0, i2);
                ConstraintAnchor.Type type11 = ConstraintAnchor.Type.RIGHT;
                getAnchor(type11).connect(constraintWidget.getAnchor(type11), 0, i2);
                anchor2 = getAnchor(type8);
            } else {
                if (type != type9 || type2 != type9) {
                    ConstraintAnchor anchor9 = getAnchor(type);
                    ConstraintAnchor anchor10 = constraintWidget.getAnchor(type2);
                    if (anchor9.isValidConnection(anchor10)) {
                        ConstraintAnchor.Type type12 = ConstraintAnchor.Type.BASELINE;
                        if (type == type12) {
                            ConstraintAnchor anchor11 = getAnchor(ConstraintAnchor.Type.TOP);
                            ConstraintAnchor anchor12 = getAnchor(ConstraintAnchor.Type.BOTTOM);
                            if (anchor11 != null) {
                                anchor11.reset();
                            }
                            if (anchor12 != null) {
                                anchor12.reset();
                            }
                        } else if (type == ConstraintAnchor.Type.TOP || type == ConstraintAnchor.Type.BOTTOM) {
                            ConstraintAnchor anchor13 = getAnchor(type12);
                            if (anchor13 != null) {
                                anchor13.reset();
                            }
                            ConstraintAnchor anchor14 = getAnchor(type7);
                            if (anchor14.getTarget() != anchor10) {
                                anchor14.reset();
                            }
                            opposite = getAnchor(type).getOpposite();
                            anchor = getAnchor(type9);
                            if (anchor.isConnected()) {
                                opposite.reset();
                                anchor.reset();
                            }
                            i3 = i;
                        } else {
                            if (type == ConstraintAnchor.Type.LEFT || type == ConstraintAnchor.Type.RIGHT) {
                                ConstraintAnchor anchor15 = getAnchor(type7);
                                if (anchor15.getTarget() != anchor10) {
                                    anchor15.reset();
                                }
                                opposite = getAnchor(type).getOpposite();
                                anchor = getAnchor(type8);
                                if (anchor.isConnected()) {
                                }
                            }
                            i3 = i;
                        }
                        anchor9.connect(anchor10, i3, strength, i2);
                        anchor10.getOwner().connectedTo(anchor9.getOwner());
                        return;
                    }
                    return;
                }
                ConstraintAnchor.Type type13 = ConstraintAnchor.Type.TOP;
                getAnchor(type13).connect(constraintWidget.getAnchor(type13), 0, i2);
                ConstraintAnchor.Type type14 = ConstraintAnchor.Type.BOTTOM;
                getAnchor(type14).connect(constraintWidget.getAnchor(type14), 0, i2);
                anchor2 = getAnchor(type9);
            }
            anchor5 = constraintWidget.getAnchor(type2);
        } else if (type2 == type7) {
            ConstraintAnchor.Type type15 = ConstraintAnchor.Type.LEFT;
            ConstraintAnchor anchor16 = getAnchor(type15);
            ConstraintAnchor.Type type16 = ConstraintAnchor.Type.RIGHT;
            ConstraintAnchor anchor17 = getAnchor(type16);
            ConstraintAnchor.Type type17 = ConstraintAnchor.Type.TOP;
            ConstraintAnchor anchor18 = getAnchor(type17);
            ConstraintAnchor.Type type18 = ConstraintAnchor.Type.BOTTOM;
            ConstraintAnchor anchor19 = getAnchor(type18);
            boolean z3 = true;
            if ((anchor16 == null || !anchor16.isConnected()) && (anchor17 == null || !anchor17.isConnected())) {
                type5 = type18;
                connect(type15, constraintWidget, type15, 0, strength, i2);
                connect(type16, constraintWidget, type16, 0, strength, i2);
                z = true;
            } else {
                type5 = type18;
                z = false;
            }
            if ((anchor18 == null || !anchor18.isConnected()) && (anchor19 == null || !anchor19.isConnected())) {
                connect(type17, constraintWidget, type17, 0, strength, i2);
                connect(type5, constraintWidget, type5, 0, strength, i2);
            } else {
                z3 = false;
            }
            if (!z || !z3) {
                if (z) {
                    type6 = ConstraintAnchor.Type.CENTER_X;
                } else if (!z3) {
                    return;
                } else {
                    type6 = ConstraintAnchor.Type.CENTER_Y;
                }
                anchor4 = getAnchor(type6);
                anchor3 = constraintWidget.getAnchor(type6);
                anchor4.connect(anchor3, 0, i2);
                return;
            }
            anchor2 = getAnchor(type7);
            anchor5 = constraintWidget.getAnchor(type7);
        } else {
            ConstraintAnchor.Type type19 = ConstraintAnchor.Type.LEFT;
            if (type2 == type19 || type2 == ConstraintAnchor.Type.RIGHT) {
                connect(type19, constraintWidget, type2, 0, strength, i2);
                connect(ConstraintAnchor.Type.RIGHT, constraintWidget, type2, 0, strength, i2);
            } else {
                ConstraintAnchor.Type type20 = ConstraintAnchor.Type.TOP;
                if (type2 != type20 && type2 != ConstraintAnchor.Type.BOTTOM) {
                    return;
                }
                connect(type20, constraintWidget, type2, 0, strength, i2);
                connect(ConstraintAnchor.Type.BOTTOM, constraintWidget, type2, 0, strength, i2);
            }
            anchor2 = getAnchor(type7);
            anchor5 = constraintWidget.getAnchor(type2);
        }
        anchor2.connect(anchor5, 0, i2);
    }

    public void connect(ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i) {
        connect(constraintAnchor, constraintAnchor2, i, ConstraintAnchor.Strength.STRONG, 0);
    }

    public void connect(ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i, int i2) {
        connect(constraintAnchor, constraintAnchor2, i, ConstraintAnchor.Strength.STRONG, i2);
    }

    public void connect(ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i, ConstraintAnchor.Strength strength, int i2) {
        if (constraintAnchor.getOwner() == this) {
            connect(constraintAnchor.getType(), constraintAnchor2.getOwner(), constraintAnchor2.getType(), i, strength, i2);
        }
    }

    public void connectCircularConstraint(ConstraintWidget constraintWidget, float f, int i) {
        ConstraintAnchor.Type type = ConstraintAnchor.Type.CENTER;
        immediateConnect(type, constraintWidget, type, i, 0);
        this.mCircleConstraintAngle = f;
    }

    public void connectedTo(ConstraintWidget constraintWidget) {
    }

    public void createObjectVariables(LinearSystem linearSystem) {
        linearSystem.createObjectVariable(this.mLeft);
        linearSystem.createObjectVariable(this.mTop);
        linearSystem.createObjectVariable(this.mRight);
        linearSystem.createObjectVariable(this.mBottom);
        if (this.mBaselineDistance > 0) {
            linearSystem.createObjectVariable(this.mBaseline);
        }
    }

    public void disconnectUnlockedWidget(ConstraintWidget constraintWidget) {
        ArrayList<ConstraintAnchor> anchors = getAnchors();
        int size = anchors.size();
        for (int i = 0; i < size; i++) {
            ConstraintAnchor constraintAnchor = anchors.get(i);
            if (constraintAnchor.isConnected() && constraintAnchor.getTarget().getOwner() == constraintWidget && constraintAnchor.getConnectionCreator() == 2) {
                constraintAnchor.reset();
            }
        }
    }

    public void disconnectWidget(ConstraintWidget constraintWidget) {
        ArrayList<ConstraintAnchor> anchors = getAnchors();
        int size = anchors.size();
        for (int i = 0; i < size; i++) {
            ConstraintAnchor constraintAnchor = anchors.get(i);
            if (constraintAnchor.isConnected() && constraintAnchor.getTarget().getOwner() == constraintWidget) {
                constraintAnchor.reset();
            }
        }
    }

    public void forceUpdateDrawPosition() {
        int i = this.mX;
        int i2 = this.mY;
        int i3 = this.mWidth + i;
        int i4 = this.mHeight + i2;
        this.mDrawX = i;
        this.mDrawY = i2;
        this.mDrawWidth = i3 - i;
        this.mDrawHeight = i4 - i2;
    }

    public ConstraintAnchor getAnchor(ConstraintAnchor.Type type) {
        switch (AnonymousClass1.$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type[type.ordinal()]) {
            case 1:
                return this.mLeft;
            case 2:
                return this.mTop;
            case 3:
                return this.mRight;
            case 4:
                return this.mBottom;
            case 5:
                return this.mBaseline;
            case 6:
                return this.mCenter;
            case 7:
                return this.mCenterX;
            case 8:
                return this.mCenterY;
            case 9:
                return null;
            default:
                throw new AssertionError(type.name());
        }
    }

    public ArrayList<ConstraintAnchor> getAnchors() {
        return this.mAnchors;
    }

    public int getBaselineDistance() {
        return this.mBaselineDistance;
    }

    public float getBiasPercent(int i) {
        if (i == 0) {
            return this.mHorizontalBiasPercent;
        }
        if (i == 1) {
            return this.mVerticalBiasPercent;
        }
        return -1.0f;
    }

    public int getBottom() {
        return getY() + this.mHeight;
    }

    public Object getCompanionWidget() {
        return this.mCompanionWidget;
    }

    public int getContainerItemSkip() {
        return this.mContainerItemSkip;
    }

    public String getDebugName() {
        return this.mDebugName;
    }

    public DimensionBehaviour getDimensionBehaviour(int i) {
        if (i == 0) {
            return getHorizontalDimensionBehaviour();
        }
        if (i == 1) {
            return getVerticalDimensionBehaviour();
        }
        return null;
    }

    public float getDimensionRatio() {
        return this.mDimensionRatio;
    }

    public int getDimensionRatioSide() {
        return this.mDimensionRatioSide;
    }

    public int getDrawBottom() {
        return getDrawY() + this.mDrawHeight;
    }

    public int getDrawHeight() {
        return this.mDrawHeight;
    }

    public int getDrawRight() {
        return getDrawX() + this.mDrawWidth;
    }

    public int getDrawWidth() {
        return this.mDrawWidth;
    }

    public int getDrawX() {
        return this.mDrawX + this.mOffsetX;
    }

    public int getDrawY() {
        return this.mDrawY + this.mOffsetY;
    }

    public int getHeight() {
        if (this.mVisibility == 8) {
            return 0;
        }
        return this.mHeight;
    }

    public float getHorizontalBiasPercent() {
        return this.mHorizontalBiasPercent;
    }

    public ConstraintWidget getHorizontalChainControlWidget() {
        if (!isInHorizontalChain()) {
            return null;
        }
        ConstraintWidget constraintWidget = this;
        ConstraintWidget constraintWidget2 = null;
        while (constraintWidget2 == null && constraintWidget != null) {
            ConstraintAnchor anchor = constraintWidget.getAnchor(ConstraintAnchor.Type.LEFT);
            ConstraintAnchor target = anchor == null ? null : anchor.getTarget();
            ConstraintWidget owner = target == null ? null : target.getOwner();
            if (owner == getParent()) {
                return constraintWidget;
            }
            ConstraintAnchor target2 = owner == null ? null : owner.getAnchor(ConstraintAnchor.Type.RIGHT).getTarget();
            if (target2 == null || target2.getOwner() == constraintWidget) {
                constraintWidget = owner;
            } else {
                constraintWidget2 = constraintWidget;
            }
        }
        return constraintWidget2;
    }

    public int getHorizontalChainStyle() {
        return this.mHorizontalChainStyle;
    }

    public DimensionBehaviour getHorizontalDimensionBehaviour() {
        return this.mListDimensionBehaviors[0];
    }

    public int getInternalDrawBottom() {
        return this.mDrawY + this.mDrawHeight;
    }

    public int getInternalDrawRight() {
        return this.mDrawX + this.mDrawWidth;
    }

    public int getInternalDrawX() {
        return this.mDrawX;
    }

    public int getInternalDrawY() {
        return this.mDrawY;
    }

    public int getLeft() {
        return getX();
    }

    public int getLength(int i) {
        if (i == 0) {
            return getWidth();
        }
        if (i == 1) {
            return getHeight();
        }
        return 0;
    }

    public int getMaxHeight() {
        return this.mMaxDimension[1];
    }

    public int getMaxWidth() {
        return this.mMaxDimension[0];
    }

    public int getMinHeight() {
        return this.mMinHeight;
    }

    public int getMinWidth() {
        return this.mMinWidth;
    }

    public int getOptimizerWrapHeight() {
        int iMax;
        int i = this.mHeight;
        if (this.mListDimensionBehaviors[1] != DimensionBehaviour.MATCH_CONSTRAINT) {
            return i;
        }
        if (this.mMatchConstraintDefaultHeight == 1) {
            iMax = Math.max(this.mMatchConstraintMinHeight, i);
        } else {
            iMax = this.mMatchConstraintMinHeight;
            if (iMax > 0) {
                this.mHeight = iMax;
            } else {
                iMax = 0;
            }
        }
        int i2 = this.mMatchConstraintMaxHeight;
        return (i2 <= 0 || i2 >= iMax) ? iMax : i2;
    }

    public int getOptimizerWrapWidth() {
        int iMax;
        int i = this.mWidth;
        if (this.mListDimensionBehaviors[0] != DimensionBehaviour.MATCH_CONSTRAINT) {
            return i;
        }
        if (this.mMatchConstraintDefaultWidth == 1) {
            iMax = Math.max(this.mMatchConstraintMinWidth, i);
        } else {
            iMax = this.mMatchConstraintMinWidth;
            if (iMax > 0) {
                this.mWidth = iMax;
            } else {
                iMax = 0;
            }
        }
        int i2 = this.mMatchConstraintMaxWidth;
        return (i2 <= 0 || i2 >= iMax) ? iMax : i2;
    }

    public ConstraintWidget getParent() {
        return this.mParent;
    }

    public int getRelativePositioning(int i) {
        if (i == 0) {
            return this.mRelX;
        }
        if (i == 1) {
            return this.mRelY;
        }
        return 0;
    }

    public ResolutionDimension getResolutionHeight() {
        if (this.mResolutionHeight == null) {
            this.mResolutionHeight = new ResolutionDimension();
        }
        return this.mResolutionHeight;
    }

    public ResolutionDimension getResolutionWidth() {
        if (this.mResolutionWidth == null) {
            this.mResolutionWidth = new ResolutionDimension();
        }
        return this.mResolutionWidth;
    }

    public int getRight() {
        return getX() + this.mWidth;
    }

    public WidgetContainer getRootWidgetContainer() {
        ConstraintWidget parent = this;
        while (parent.getParent() != null) {
            parent = parent.getParent();
        }
        if (parent instanceof WidgetContainer) {
            return (WidgetContainer) parent;
        }
        return null;
    }

    public int getRootX() {
        return this.mX + this.mOffsetX;
    }

    public int getRootY() {
        return this.mY + this.mOffsetY;
    }

    public int getTop() {
        return getY();
    }

    public String getType() {
        return this.mType;
    }

    public float getVerticalBiasPercent() {
        return this.mVerticalBiasPercent;
    }

    public ConstraintWidget getVerticalChainControlWidget() {
        if (!isInVerticalChain()) {
            return null;
        }
        ConstraintWidget constraintWidget = this;
        ConstraintWidget constraintWidget2 = null;
        while (constraintWidget2 == null && constraintWidget != null) {
            ConstraintAnchor anchor = constraintWidget.getAnchor(ConstraintAnchor.Type.TOP);
            ConstraintAnchor target = anchor == null ? null : anchor.getTarget();
            ConstraintWidget owner = target == null ? null : target.getOwner();
            if (owner == getParent()) {
                return constraintWidget;
            }
            ConstraintAnchor target2 = owner == null ? null : owner.getAnchor(ConstraintAnchor.Type.BOTTOM).getTarget();
            if (target2 == null || target2.getOwner() == constraintWidget) {
                constraintWidget = owner;
            } else {
                constraintWidget2 = constraintWidget;
            }
        }
        return constraintWidget2;
    }

    public int getVerticalChainStyle() {
        return this.mVerticalChainStyle;
    }

    public DimensionBehaviour getVerticalDimensionBehaviour() {
        return this.mListDimensionBehaviors[1];
    }

    public int getVisibility() {
        return this.mVisibility;
    }

    public int getWidth() {
        if (this.mVisibility == 8) {
            return 0;
        }
        return this.mWidth;
    }

    public int getWrapHeight() {
        return this.mWrapHeight;
    }

    public int getWrapWidth() {
        return this.mWrapWidth;
    }

    public int getX() {
        return this.mX;
    }

    public int getY() {
        return this.mY;
    }

    public boolean hasAncestor(ConstraintWidget constraintWidget) {
        ConstraintWidget parent = getParent();
        if (parent == constraintWidget) {
            return true;
        }
        if (parent == constraintWidget.getParent()) {
            return false;
        }
        while (parent != null) {
            if (parent == constraintWidget || parent == constraintWidget.getParent()) {
                return true;
            }
            parent = parent.getParent();
        }
        return false;
    }

    public boolean hasBaseline() {
        return this.mBaselineDistance > 0;
    }

    public void immediateConnect(ConstraintAnchor.Type type, ConstraintWidget constraintWidget, ConstraintAnchor.Type type2, int i, int i2) {
        getAnchor(type).connect(constraintWidget.getAnchor(type2), i, i2, ConstraintAnchor.Strength.STRONG, 0, true);
    }

    public boolean isFullyResolved() {
        return this.mLeft.getResolutionNode().state == 1 && this.mRight.getResolutionNode().state == 1 && this.mTop.getResolutionNode().state == 1 && this.mBottom.getResolutionNode().state == 1;
    }

    public boolean isHeightWrapContent() {
        return this.mIsHeightWrapContent;
    }

    public boolean isInHorizontalChain() {
        ConstraintAnchor constraintAnchor = this.mLeft;
        ConstraintAnchor constraintAnchor2 = constraintAnchor.mTarget;
        if (constraintAnchor2 != null && constraintAnchor2.mTarget == constraintAnchor) {
            return true;
        }
        ConstraintAnchor constraintAnchor3 = this.mRight;
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.mTarget;
        return constraintAnchor4 != null && constraintAnchor4.mTarget == constraintAnchor3;
    }

    public boolean isInVerticalChain() {
        ConstraintAnchor constraintAnchor = this.mTop;
        ConstraintAnchor constraintAnchor2 = constraintAnchor.mTarget;
        if (constraintAnchor2 != null && constraintAnchor2.mTarget == constraintAnchor) {
            return true;
        }
        ConstraintAnchor constraintAnchor3 = this.mBottom;
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.mTarget;
        return constraintAnchor4 != null && constraintAnchor4.mTarget == constraintAnchor3;
    }

    public boolean isInsideConstraintLayout() {
        ConstraintWidget parent = getParent();
        if (parent == null) {
            return false;
        }
        while (parent != null) {
            if (parent instanceof ConstraintWidgetContainer) {
                return true;
            }
            parent = parent.getParent();
        }
        return false;
    }

    public boolean isRoot() {
        return this.mParent == null;
    }

    public boolean isRootContainer() {
        ConstraintWidget constraintWidget;
        return (this instanceof ConstraintWidgetContainer) && ((constraintWidget = this.mParent) == null || !(constraintWidget instanceof ConstraintWidgetContainer));
    }

    public boolean isSpreadHeight() {
        return this.mMatchConstraintDefaultHeight == 0 && this.mDimensionRatio == 0.0f && this.mMatchConstraintMinHeight == 0 && this.mMatchConstraintMaxHeight == 0 && this.mListDimensionBehaviors[1] == DimensionBehaviour.MATCH_CONSTRAINT;
    }

    public boolean isSpreadWidth() {
        return this.mMatchConstraintDefaultWidth == 0 && this.mDimensionRatio == 0.0f && this.mMatchConstraintMinWidth == 0 && this.mMatchConstraintMaxWidth == 0 && this.mListDimensionBehaviors[0] == DimensionBehaviour.MATCH_CONSTRAINT;
    }

    public boolean isWidthWrapContent() {
        return this.mIsWidthWrapContent;
    }

    public void reset() {
        this.mLeft.reset();
        this.mTop.reset();
        this.mRight.reset();
        this.mBottom.reset();
        this.mBaseline.reset();
        this.mCenterX.reset();
        this.mCenterY.reset();
        this.mCenter.reset();
        this.mParent = null;
        this.mCircleConstraintAngle = 0.0f;
        this.mWidth = 0;
        this.mHeight = 0;
        this.mDimensionRatio = 0.0f;
        this.mDimensionRatioSide = -1;
        this.mX = 0;
        this.mY = 0;
        this.mDrawX = 0;
        this.mDrawY = 0;
        this.mDrawWidth = 0;
        this.mDrawHeight = 0;
        this.mOffsetX = 0;
        this.mOffsetY = 0;
        this.mBaselineDistance = 0;
        this.mMinWidth = 0;
        this.mMinHeight = 0;
        this.mWrapWidth = 0;
        this.mWrapHeight = 0;
        float f = DEFAULT_BIAS;
        this.mHorizontalBiasPercent = f;
        this.mVerticalBiasPercent = f;
        DimensionBehaviour[] dimensionBehaviourArr = this.mListDimensionBehaviors;
        DimensionBehaviour dimensionBehaviour = DimensionBehaviour.FIXED;
        dimensionBehaviourArr[0] = dimensionBehaviour;
        dimensionBehaviourArr[1] = dimensionBehaviour;
        this.mCompanionWidget = null;
        this.mContainerItemSkip = 0;
        this.mVisibility = 0;
        this.mType = null;
        this.mHorizontalWrapVisited = false;
        this.mVerticalWrapVisited = false;
        this.mHorizontalChainStyle = 0;
        this.mVerticalChainStyle = 0;
        this.mHorizontalChainFixedPosition = false;
        this.mVerticalChainFixedPosition = false;
        float[] fArr = this.mWeight;
        fArr[0] = -1.0f;
        fArr[1] = -1.0f;
        this.mHorizontalResolution = -1;
        this.mVerticalResolution = -1;
        int[] iArr = this.mMaxDimension;
        iArr[0] = Integer.MAX_VALUE;
        iArr[1] = Integer.MAX_VALUE;
        this.mMatchConstraintDefaultWidth = 0;
        this.mMatchConstraintDefaultHeight = 0;
        this.mMatchConstraintPercentWidth = 1.0f;
        this.mMatchConstraintPercentHeight = 1.0f;
        this.mMatchConstraintMaxWidth = Integer.MAX_VALUE;
        this.mMatchConstraintMaxHeight = Integer.MAX_VALUE;
        this.mMatchConstraintMinWidth = 0;
        this.mMatchConstraintMinHeight = 0;
        this.mResolvedDimensionRatioSide = -1;
        this.mResolvedDimensionRatio = 1.0f;
        ResolutionDimension resolutionDimension = this.mResolutionWidth;
        if (resolutionDimension != null) {
            resolutionDimension.reset();
        }
        ResolutionDimension resolutionDimension2 = this.mResolutionHeight;
        if (resolutionDimension2 != null) {
            resolutionDimension2.reset();
        }
        this.mBelongingGroup = null;
        this.mOptimizerMeasurable = false;
        this.mOptimizerMeasured = false;
        this.mGroupsToSolver = false;
    }

    public void resetAllConstraints() {
        DimensionBehaviour dimensionBehaviour;
        DimensionBehaviour dimensionBehaviour2;
        resetAnchors();
        setVerticalBiasPercent(DEFAULT_BIAS);
        setHorizontalBiasPercent(DEFAULT_BIAS);
        if (this instanceof ConstraintWidgetContainer) {
            return;
        }
        DimensionBehaviour horizontalDimensionBehaviour = getHorizontalDimensionBehaviour();
        DimensionBehaviour dimensionBehaviour3 = DimensionBehaviour.MATCH_CONSTRAINT;
        if (horizontalDimensionBehaviour == dimensionBehaviour3) {
            if (getWidth() == getWrapWidth()) {
                dimensionBehaviour2 = DimensionBehaviour.WRAP_CONTENT;
            } else if (getWidth() > getMinWidth()) {
                dimensionBehaviour2 = DimensionBehaviour.FIXED;
            }
            setHorizontalDimensionBehaviour(dimensionBehaviour2);
        }
        if (getVerticalDimensionBehaviour() == dimensionBehaviour3) {
            if (getHeight() == getWrapHeight()) {
                dimensionBehaviour = DimensionBehaviour.WRAP_CONTENT;
            } else if (getHeight() <= getMinHeight()) {
                return;
            } else {
                dimensionBehaviour = DimensionBehaviour.FIXED;
            }
            setVerticalDimensionBehaviour(dimensionBehaviour);
        }
    }

    public void resetAnchor(ConstraintAnchor constraintAnchor) {
        if (getParent() != null && (getParent() instanceof ConstraintWidgetContainer) && ((ConstraintWidgetContainer) getParent()).handlesInternalConstraints()) {
            return;
        }
        ConstraintAnchor anchor = getAnchor(ConstraintAnchor.Type.LEFT);
        ConstraintAnchor anchor2 = getAnchor(ConstraintAnchor.Type.RIGHT);
        ConstraintAnchor anchor3 = getAnchor(ConstraintAnchor.Type.TOP);
        ConstraintAnchor anchor4 = getAnchor(ConstraintAnchor.Type.BOTTOM);
        ConstraintAnchor anchor5 = getAnchor(ConstraintAnchor.Type.CENTER);
        ConstraintAnchor anchor6 = getAnchor(ConstraintAnchor.Type.CENTER_X);
        ConstraintAnchor anchor7 = getAnchor(ConstraintAnchor.Type.CENTER_Y);
        if (constraintAnchor != anchor5) {
            if (constraintAnchor == anchor6) {
                if (anchor.isConnected() && anchor2.isConnected() && anchor.getTarget().getOwner() == anchor2.getTarget().getOwner()) {
                    anchor.reset();
                    anchor2.reset();
                }
                this.mHorizontalBiasPercent = 0.5f;
            } else if (constraintAnchor == anchor7) {
                if (anchor3.isConnected() && anchor4.isConnected() && anchor3.getTarget().getOwner() == anchor4.getTarget().getOwner()) {
                    anchor3.reset();
                    anchor4.reset();
                }
            } else if (constraintAnchor == anchor || constraintAnchor == anchor2 ? !(!anchor.isConnected() || anchor.getTarget() != anchor2.getTarget()) : !((constraintAnchor != anchor3 && constraintAnchor != anchor4) || !anchor3.isConnected() || anchor3.getTarget() != anchor4.getTarget())) {
                anchor5.reset();
            }
            constraintAnchor.reset();
        }
        if (anchor.isConnected() && anchor2.isConnected() && anchor.getTarget() == anchor2.getTarget()) {
            anchor.reset();
            anchor2.reset();
        }
        if (anchor3.isConnected() && anchor4.isConnected() && anchor3.getTarget() == anchor4.getTarget()) {
            anchor3.reset();
            anchor4.reset();
        }
        this.mHorizontalBiasPercent = 0.5f;
        this.mVerticalBiasPercent = 0.5f;
        constraintAnchor.reset();
    }

    public void resetAnchors() {
        ConstraintWidget parent = getParent();
        if (parent != null && (parent instanceof ConstraintWidgetContainer) && ((ConstraintWidgetContainer) getParent()).handlesInternalConstraints()) {
            return;
        }
        int size = this.mAnchors.size();
        for (int i = 0; i < size; i++) {
            this.mAnchors.get(i).reset();
        }
    }

    public void resetAnchors(int i) {
        ConstraintWidget parent = getParent();
        if (parent != null && (parent instanceof ConstraintWidgetContainer) && ((ConstraintWidgetContainer) getParent()).handlesInternalConstraints()) {
            return;
        }
        int size = this.mAnchors.size();
        for (int i2 = 0; i2 < size; i2++) {
            ConstraintAnchor constraintAnchor = this.mAnchors.get(i2);
            if (i == constraintAnchor.getConnectionCreator()) {
                if (constraintAnchor.isVerticalAnchor()) {
                    setVerticalBiasPercent(DEFAULT_BIAS);
                } else {
                    setHorizontalBiasPercent(DEFAULT_BIAS);
                }
                constraintAnchor.reset();
            }
        }
    }

    public void resetResolutionNodes() {
        for (int i = 0; i < 6; i++) {
            this.mListAnchors[i].getResolutionNode().reset();
        }
    }

    public void resetSolverVariables(Cache cache) {
        this.mLeft.resetSolverVariable(cache);
        this.mTop.resetSolverVariable(cache);
        this.mRight.resetSolverVariable(cache);
        this.mBottom.resetSolverVariable(cache);
        this.mBaseline.resetSolverVariable(cache);
        this.mCenter.resetSolverVariable(cache);
        this.mCenterX.resetSolverVariable(cache);
        this.mCenterY.resetSolverVariable(cache);
    }

    public void resolve() {
    }

    public void setBaselineDistance(int i) {
        this.mBaselineDistance = i;
    }

    public void setCompanionWidget(Object obj) {
        this.mCompanionWidget = obj;
    }

    public void setContainerItemSkip(int i) {
        if (i < 0) {
            i = 0;
        }
        this.mContainerItemSkip = i;
    }

    public void setDebugName(String str) {
        this.mDebugName = str;
    }

    public void setDebugSolverName(LinearSystem linearSystem, String str) {
        this.mDebugName = str;
        SolverVariable solverVariableCreateObjectVariable = linearSystem.createObjectVariable(this.mLeft);
        SolverVariable solverVariableCreateObjectVariable2 = linearSystem.createObjectVariable(this.mTop);
        SolverVariable solverVariableCreateObjectVariable3 = linearSystem.createObjectVariable(this.mRight);
        SolverVariable solverVariableCreateObjectVariable4 = linearSystem.createObjectVariable(this.mBottom);
        solverVariableCreateObjectVariable.setName(str + ".left");
        solverVariableCreateObjectVariable2.setName(str + ".top");
        solverVariableCreateObjectVariable3.setName(str + ".right");
        solverVariableCreateObjectVariable4.setName(str + ".bottom");
        if (this.mBaselineDistance > 0) {
            linearSystem.createObjectVariable(this.mBaseline).setName(str + ".baseline");
        }
    }

    public void setDimension(int i, int i2) {
        this.mWidth = i;
        int i3 = this.mMinWidth;
        if (i < i3) {
            this.mWidth = i3;
        }
        this.mHeight = i2;
        int i4 = this.mMinHeight;
        if (i2 < i4) {
            this.mHeight = i4;
        }
    }

    public void setDimensionRatio(float f, int i) {
        this.mDimensionRatio = f;
        this.mDimensionRatioSide = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0084 A[PHI: r0
      0x0084: PHI (r0v2 int) = (r0v1 int), (r0v0 int), (r0v0 int), (r0v0 int), (r0v0 int), (r0v0 int) binds: [B:45:0x0084, B:35:0x007d, B:23:0x004f, B:25:0x0055, B:27:0x0061, B:29:0x0065] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x0084 -> B:39:0x0085). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setDimensionRatio(String str) {
        float fAbs;
        int i = 0;
        if (str == null || str.length() == 0) {
            this.mDimensionRatio = 0.0f;
            return;
        }
        int i2 = -1;
        int length = str.length();
        int iIndexOf = str.indexOf(44);
        int i3 = 0;
        if (iIndexOf > 0 && iIndexOf < length - 1) {
            String strSubstring = str.substring(0, iIndexOf);
            if (strSubstring.equalsIgnoreCase("W")) {
                i2 = 0;
            } else if (strSubstring.equalsIgnoreCase("H")) {
                i2 = 1;
            }
            i3 = iIndexOf + 1;
        }
        int iIndexOf2 = str.indexOf(58);
        if (iIndexOf2 < 0 || iIndexOf2 >= length - 1) {
            String strSubstring2 = str.substring(i3);
            fAbs = strSubstring2.length() > 0 ? Float.parseFloat(strSubstring2) : 0.0f;
        } else {
            String strSubstring3 = str.substring(i3, iIndexOf2);
            String strSubstring4 = str.substring(iIndexOf2 + 1);
            if (strSubstring3.length() > 0 && strSubstring4.length() > 0) {
                float f = Float.parseFloat(strSubstring3);
                float f2 = Float.parseFloat(strSubstring4);
                if (f > 0.0f && f2 > 0.0f) {
                    fAbs = i2 == 1 ? Math.abs(f2 / f) : Math.abs(f / f2);
                }
            }
        }
        i = (fAbs > i ? 1 : (fAbs == i ? 0 : -1));
        if (i > 0) {
            this.mDimensionRatio = fAbs;
            this.mDimensionRatioSide = i2;
        }
    }

    public void setDrawHeight(int i) {
        this.mDrawHeight = i;
    }

    public void setDrawOrigin(int i, int i2) {
        int i3 = i - this.mOffsetX;
        this.mDrawX = i3;
        int i4 = i2 - this.mOffsetY;
        this.mDrawY = i4;
        this.mX = i3;
        this.mY = i4;
    }

    public void setDrawWidth(int i) {
        this.mDrawWidth = i;
    }

    public void setDrawX(int i) {
        int i2 = i - this.mOffsetX;
        this.mDrawX = i2;
        this.mX = i2;
    }

    public void setDrawY(int i) {
        int i2 = i - this.mOffsetY;
        this.mDrawY = i2;
        this.mY = i2;
    }

    public void setFrame(int i, int i2, int i3) {
        if (i3 == 0) {
            setHorizontalDimension(i, i2);
        } else if (i3 == 1) {
            setVerticalDimension(i, i2);
        }
        this.mOptimizerMeasured = true;
    }

    public void setFrame(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7 = i3 - i;
        int i8 = i4 - i2;
        this.mX = i;
        this.mY = i2;
        if (this.mVisibility == 8) {
            this.mWidth = 0;
            this.mHeight = 0;
            return;
        }
        DimensionBehaviour[] dimensionBehaviourArr = this.mListDimensionBehaviors;
        DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
        DimensionBehaviour dimensionBehaviour2 = DimensionBehaviour.FIXED;
        if (dimensionBehaviour == dimensionBehaviour2 && i7 < (i6 = this.mWidth)) {
            i7 = i6;
        }
        if (dimensionBehaviourArr[1] == dimensionBehaviour2 && i8 < (i5 = this.mHeight)) {
            i8 = i5;
        }
        this.mWidth = i7;
        this.mHeight = i8;
        int i9 = this.mMinHeight;
        if (i8 < i9) {
            this.mHeight = i9;
        }
        int i10 = this.mMinWidth;
        if (i7 < i10) {
            this.mWidth = i10;
        }
        this.mOptimizerMeasured = true;
    }

    public void setGoneMargin(ConstraintAnchor.Type type, int i) {
        ConstraintAnchor constraintAnchor;
        int i2 = AnonymousClass1.$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type[type.ordinal()];
        if (i2 == 1) {
            constraintAnchor = this.mLeft;
        } else if (i2 == 2) {
            constraintAnchor = this.mTop;
        } else if (i2 == 3) {
            constraintAnchor = this.mRight;
        } else if (i2 != 4) {
            return;
        } else {
            constraintAnchor = this.mBottom;
        }
        constraintAnchor.mGoneMargin = i;
    }

    public void setHeight(int i) {
        this.mHeight = i;
        int i2 = this.mMinHeight;
        if (i < i2) {
            this.mHeight = i2;
        }
    }

    public void setHeightWrapContent(boolean z) {
        this.mIsHeightWrapContent = z;
    }

    public void setHorizontalBiasPercent(float f) {
        this.mHorizontalBiasPercent = f;
    }

    public void setHorizontalChainStyle(int i) {
        this.mHorizontalChainStyle = i;
    }

    public void setHorizontalDimension(int i, int i2) {
        this.mX = i;
        int i3 = i2 - i;
        this.mWidth = i3;
        int i4 = this.mMinWidth;
        if (i3 < i4) {
            this.mWidth = i4;
        }
    }

    public void setHorizontalDimensionBehaviour(DimensionBehaviour dimensionBehaviour) {
        this.mListDimensionBehaviors[0] = dimensionBehaviour;
        if (dimensionBehaviour == DimensionBehaviour.WRAP_CONTENT) {
            setWidth(this.mWrapWidth);
        }
    }

    public void setHorizontalMatchStyle(int i, int i2, int i3, float f) {
        this.mMatchConstraintDefaultWidth = i;
        this.mMatchConstraintMinWidth = i2;
        this.mMatchConstraintMaxWidth = i3;
        this.mMatchConstraintPercentWidth = f;
        if (f >= 1.0f || i != 0) {
            return;
        }
        this.mMatchConstraintDefaultWidth = 2;
    }

    public void setHorizontalWeight(float f) {
        this.mWeight[0] = f;
    }

    public void setLength(int i, int i2) {
        if (i2 == 0) {
            setWidth(i);
        } else if (i2 == 1) {
            setHeight(i);
        }
    }

    public void setMaxHeight(int i) {
        this.mMaxDimension[1] = i;
    }

    public void setMaxWidth(int i) {
        this.mMaxDimension[0] = i;
    }

    public void setMinHeight(int i) {
        if (i < 0) {
            i = 0;
        }
        this.mMinHeight = i;
    }

    public void setMinWidth(int i) {
        if (i < 0) {
            i = 0;
        }
        this.mMinWidth = i;
    }

    public void setOffset(int i, int i2) {
        this.mOffsetX = i;
        this.mOffsetY = i2;
    }

    public void setOrigin(int i, int i2) {
        this.mX = i;
        this.mY = i2;
    }

    public void setParent(ConstraintWidget constraintWidget) {
        this.mParent = constraintWidget;
    }

    public void setRelativePositioning(int i, int i2) {
        if (i2 == 0) {
            this.mRelX = i;
        } else if (i2 == 1) {
            this.mRelY = i;
        }
    }

    public void setType(String str) {
        this.mType = str;
    }

    public void setVerticalBiasPercent(float f) {
        this.mVerticalBiasPercent = f;
    }

    public void setVerticalChainStyle(int i) {
        this.mVerticalChainStyle = i;
    }

    public void setVerticalDimension(int i, int i2) {
        this.mY = i;
        int i3 = i2 - i;
        this.mHeight = i3;
        int i4 = this.mMinHeight;
        if (i3 < i4) {
            this.mHeight = i4;
        }
    }

    public void setVerticalDimensionBehaviour(DimensionBehaviour dimensionBehaviour) {
        this.mListDimensionBehaviors[1] = dimensionBehaviour;
        if (dimensionBehaviour == DimensionBehaviour.WRAP_CONTENT) {
            setHeight(this.mWrapHeight);
        }
    }

    public void setVerticalMatchStyle(int i, int i2, int i3, float f) {
        this.mMatchConstraintDefaultHeight = i;
        this.mMatchConstraintMinHeight = i2;
        this.mMatchConstraintMaxHeight = i3;
        this.mMatchConstraintPercentHeight = f;
        if (f >= 1.0f || i != 0) {
            return;
        }
        this.mMatchConstraintDefaultHeight = 2;
    }

    public void setVerticalWeight(float f) {
        this.mWeight[1] = f;
    }

    public void setVisibility(int i) {
        this.mVisibility = i;
    }

    public void setWidth(int i) {
        this.mWidth = i;
        int i2 = this.mMinWidth;
        if (i < i2) {
            this.mWidth = i2;
        }
    }

    public void setWidthWrapContent(boolean z) {
        this.mIsWidthWrapContent = z;
    }

    public void setWrapHeight(int i) {
        this.mWrapHeight = i;
    }

    public void setWrapWidth(int i) {
        this.mWrapWidth = i;
    }

    public void setX(int i) {
        this.mX = i;
    }

    public void setY(int i) {
        this.mY = i;
    }

    public void setupDimensionRatio(boolean z, boolean z3, boolean z4, boolean z5) {
        if (this.mResolvedDimensionRatioSide == -1) {
            if (z4 && !z5) {
                this.mResolvedDimensionRatioSide = 0;
            } else if (!z4 && z5) {
                this.mResolvedDimensionRatioSide = 1;
                if (this.mDimensionRatioSide == -1) {
                    this.mResolvedDimensionRatio = 1.0f / this.mResolvedDimensionRatio;
                }
            }
        }
        if (this.mResolvedDimensionRatioSide == 0 && (!this.mTop.isConnected() || !this.mBottom.isConnected())) {
            this.mResolvedDimensionRatioSide = 1;
        } else if (this.mResolvedDimensionRatioSide == 1 && (!this.mLeft.isConnected() || !this.mRight.isConnected())) {
            this.mResolvedDimensionRatioSide = 0;
        }
        if (this.mResolvedDimensionRatioSide == -1 && (!this.mTop.isConnected() || !this.mBottom.isConnected() || !this.mLeft.isConnected() || !this.mRight.isConnected())) {
            if (this.mTop.isConnected() && this.mBottom.isConnected()) {
                this.mResolvedDimensionRatioSide = 0;
            } else if (this.mLeft.isConnected() && this.mRight.isConnected()) {
                this.mResolvedDimensionRatio = 1.0f / this.mResolvedDimensionRatio;
                this.mResolvedDimensionRatioSide = 1;
            }
        }
        if (this.mResolvedDimensionRatioSide == -1) {
            if (z && !z3) {
                this.mResolvedDimensionRatioSide = 0;
            } else if (!z && z3) {
                this.mResolvedDimensionRatio = 1.0f / this.mResolvedDimensionRatio;
                this.mResolvedDimensionRatioSide = 1;
            }
        }
        if (this.mResolvedDimensionRatioSide == -1) {
            int i = this.mMatchConstraintMinWidth;
            if (i > 0 && this.mMatchConstraintMinHeight == 0) {
                this.mResolvedDimensionRatioSide = 0;
            } else if (i == 0 && this.mMatchConstraintMinHeight > 0) {
                this.mResolvedDimensionRatio = 1.0f / this.mResolvedDimensionRatio;
                this.mResolvedDimensionRatioSide = 1;
            }
        }
        if (this.mResolvedDimensionRatioSide == -1 && z && z3) {
            this.mResolvedDimensionRatio = 1.0f / this.mResolvedDimensionRatio;
            this.mResolvedDimensionRatioSide = 1;
        }
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        String str2 = "";
        if (this.mType != null) {
            str = "type: " + this.mType + o4.OooO00o.OooO0Oo;
        } else {
            str = "";
        }
        sb.append(str);
        if (this.mDebugName != null) {
            str2 = "id: " + this.mDebugName + o4.OooO00o.OooO0Oo;
        }
        sb.append(str2);
        sb.append("(");
        sb.append(this.mX);
        sb.append(", ");
        sb.append(this.mY);
        sb.append(") - (");
        sb.append(this.mWidth);
        sb.append(" x ");
        sb.append(this.mHeight);
        sb.append(") wrap: (");
        sb.append(this.mWrapWidth);
        sb.append(" x ");
        sb.append(this.mWrapHeight);
        sb.append(")");
        return sb.toString();
    }

    public void updateDrawPosition() {
        int i = this.mX;
        int i2 = this.mY;
        int i3 = this.mWidth + i;
        int i4 = this.mHeight + i2;
        this.mDrawX = i;
        this.mDrawY = i2;
        this.mDrawWidth = i3 - i;
        this.mDrawHeight = i4 - i2;
    }

    public void updateFromSolver(LinearSystem linearSystem) {
        int objectVariableValue = linearSystem.getObjectVariableValue(this.mLeft);
        int objectVariableValue2 = linearSystem.getObjectVariableValue(this.mTop);
        int objectVariableValue3 = linearSystem.getObjectVariableValue(this.mRight);
        int objectVariableValue4 = linearSystem.getObjectVariableValue(this.mBottom);
        int i = objectVariableValue4 - objectVariableValue2;
        if (objectVariableValue3 - objectVariableValue < 0 || i < 0 || objectVariableValue == Integer.MIN_VALUE || objectVariableValue == Integer.MAX_VALUE || objectVariableValue2 == Integer.MIN_VALUE || objectVariableValue2 == Integer.MAX_VALUE || objectVariableValue3 == Integer.MIN_VALUE || objectVariableValue3 == Integer.MAX_VALUE || objectVariableValue4 == Integer.MIN_VALUE || objectVariableValue4 == Integer.MAX_VALUE) {
            objectVariableValue4 = 0;
            objectVariableValue = 0;
            objectVariableValue2 = 0;
            objectVariableValue3 = 0;
        }
        setFrame(objectVariableValue, objectVariableValue2, objectVariableValue3, objectVariableValue4);
    }

    public void updateResolutionNodes() {
        for (int i = 0; i < 6; i++) {
            this.mListAnchors[i].getResolutionNode().update();
        }
    }
}

package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class Analyzer {
    private Analyzer() {
    }

    public static void determineGroups(ConstraintWidgetContainer constraintWidgetContainer) {
        if ((constraintWidgetContainer.getOptimizationLevel() & 32) != 32) {
            singleGroup(constraintWidgetContainer);
            return;
        }
        constraintWidgetContainer.mSkipSolver = true;
        constraintWidgetContainer.mGroupsWrapOptimized = false;
        constraintWidgetContainer.mHorizontalWrapOptimized = false;
        constraintWidgetContainer.mVerticalWrapOptimized = false;
        ArrayList<ConstraintWidget> arrayList = constraintWidgetContainer.mChildren;
        List<ConstraintWidgetGroup> list = constraintWidgetContainer.mWidgetGroups;
        ConstraintWidget.DimensionBehaviour horizontalDimensionBehaviour = constraintWidgetContainer.getHorizontalDimensionBehaviour();
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        boolean z = horizontalDimensionBehaviour == dimensionBehaviour;
        boolean z3 = constraintWidgetContainer.getVerticalDimensionBehaviour() == dimensionBehaviour;
        boolean z4 = z || z3;
        list.clear();
        for (ConstraintWidget constraintWidget : arrayList) {
            constraintWidget.mBelongingGroup = null;
            constraintWidget.mGroupsToSolver = false;
            constraintWidget.resetResolutionNodes();
        }
        for (ConstraintWidget constraintWidget2 : arrayList) {
            if (constraintWidget2.mBelongingGroup == null && !determineGroups(constraintWidget2, list, z4)) {
                singleGroup(constraintWidgetContainer);
                constraintWidgetContainer.mSkipSolver = false;
                return;
            }
        }
        int iMax = 0;
        int iMax2 = 0;
        for (ConstraintWidgetGroup constraintWidgetGroup : list) {
            iMax = Math.max(iMax, getMaxDimension(constraintWidgetGroup, 0));
            iMax2 = Math.max(iMax2, getMaxDimension(constraintWidgetGroup, 1));
        }
        if (z) {
            constraintWidgetContainer.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
            constraintWidgetContainer.setWidth(iMax);
            constraintWidgetContainer.mGroupsWrapOptimized = true;
            constraintWidgetContainer.mHorizontalWrapOptimized = true;
            constraintWidgetContainer.mWrapFixedWidth = iMax;
        }
        if (z3) {
            constraintWidgetContainer.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
            constraintWidgetContainer.setHeight(iMax2);
            constraintWidgetContainer.mGroupsWrapOptimized = true;
            constraintWidgetContainer.mVerticalWrapOptimized = true;
            constraintWidgetContainer.mWrapFixedHeight = iMax2;
        }
        setPosition(list, 0, constraintWidgetContainer.getWidth());
        setPosition(list, 1, constraintWidgetContainer.getHeight());
    }

    private static boolean determineGroups(ConstraintWidget constraintWidget, List<ConstraintWidgetGroup> list, boolean z) {
        ConstraintWidgetGroup constraintWidgetGroup = new ConstraintWidgetGroup(new ArrayList(), true);
        list.add(constraintWidgetGroup);
        return traverse(constraintWidget, constraintWidgetGroup, list, z);
    }

    private static int getMaxDimension(ConstraintWidgetGroup constraintWidgetGroup, int i) {
        int i2 = i * 2;
        List<ConstraintWidget> startWidgets = constraintWidgetGroup.getStartWidgets(i);
        int size = startWidgets.size();
        int iMax = 0;
        for (int i3 = 0; i3 < size; i3++) {
            ConstraintWidget constraintWidget = startWidgets.get(i3);
            ConstraintAnchor[] constraintAnchorArr = constraintWidget.mListAnchors;
            int i4 = i2 + 1;
            iMax = Math.max(iMax, getMaxDimensionTraversal(constraintWidget, i, constraintAnchorArr[i4].mTarget == null || !(constraintAnchorArr[i2].mTarget == null || constraintAnchorArr[i4].mTarget == null), 0));
        }
        constraintWidgetGroup.mGroupDimensions[i] = iMax;
        return iMax;
    }

    private static int getMaxDimensionTraversal(ConstraintWidget constraintWidget, int i, boolean z, int i2) {
        int height;
        int baselineDistance;
        int i3;
        int i4;
        int i5;
        int width;
        int i6;
        int i7;
        int i8;
        int iMax = 0;
        if (!constraintWidget.mOptimizerMeasurable) {
            return 0;
        }
        boolean z3 = constraintWidget.mBaseline.mTarget != null && i == 1;
        if (z) {
            height = constraintWidget.getBaselineDistance();
            baselineDistance = constraintWidget.getHeight() - constraintWidget.getBaselineDistance();
            i4 = i * 2;
            i3 = i4 + 1;
        } else {
            height = constraintWidget.getHeight() - constraintWidget.getBaselineDistance();
            baselineDistance = constraintWidget.getBaselineDistance();
            i3 = i * 2;
            i4 = i3 + 1;
        }
        ConstraintAnchor[] constraintAnchorArr = constraintWidget.mListAnchors;
        if (constraintAnchorArr[i3].mTarget == null || constraintAnchorArr[i4].mTarget != null) {
            i5 = 1;
        } else {
            i5 = -1;
            int i9 = i3;
            i3 = i4;
            i4 = i9;
        }
        int i10 = z3 ? i2 - height : i2;
        int margin = (constraintAnchorArr[i4].getMargin() * i5) + getParentBiasOffset(constraintWidget, i);
        int i11 = i10 + margin;
        int width2 = (i == 0 ? constraintWidget.getWidth() : constraintWidget.getHeight()) * i5;
        Iterator<ResolutionNode> it = constraintWidget.mListAnchors[i4].getResolutionNode().dependents.iterator();
        while (it.hasNext()) {
            iMax = Math.max(iMax, getMaxDimensionTraversal(((ResolutionAnchor) it.next()).myAnchor.mOwner, i, z, i11));
        }
        int iMax2 = 0;
        for (Iterator<ResolutionNode> it2 = constraintWidget.mListAnchors[i3].getResolutionNode().dependents.iterator(); it2.hasNext(); it2 = it2) {
            iMax2 = Math.max(iMax2, getMaxDimensionTraversal(((ResolutionAnchor) it2.next()).myAnchor.mOwner, i, z, width2 + i11));
        }
        if (z3) {
            iMax -= height;
            width = iMax2 + baselineDistance;
        } else {
            width = iMax2 + ((i == 0 ? constraintWidget.getWidth() : constraintWidget.getHeight()) * i5);
        }
        int i12 = 1;
        if (i == 1) {
            Iterator<ResolutionNode> it3 = constraintWidget.mBaseline.getResolutionNode().dependents.iterator();
            int iMax3 = 0;
            while (it3.hasNext()) {
                Iterator<ResolutionNode> it4 = it3;
                ResolutionAnchor resolutionAnchor = (ResolutionAnchor) it3.next();
                if (i5 == i12) {
                    iMax3 = Math.max(iMax3, getMaxDimensionTraversal(resolutionAnchor.myAnchor.mOwner, i, z, height + i11));
                    i8 = i3;
                } else {
                    i8 = i3;
                    iMax3 = Math.max(iMax3, getMaxDimensionTraversal(resolutionAnchor.myAnchor.mOwner, i, z, (baselineDistance * i5) + i11));
                }
                it3 = it4;
                i3 = i8;
                i12 = 1;
            }
            i6 = i3;
            int i13 = iMax3;
            i7 = (constraintWidget.mBaseline.getResolutionNode().dependents.size() <= 0 || z3) ? i13 : i5 == 1 ? i13 + height : i13 - baselineDistance;
        } else {
            i6 = i3;
            i7 = 0;
        }
        int iMax4 = margin + Math.max(iMax, Math.max(width, i7));
        int i14 = width2 + i11;
        if (i5 == -1) {
            i14 = i11;
            i11 = i14;
        }
        if (z) {
            Optimizer.setOptimizedWidget(constraintWidget, i, i11);
            constraintWidget.setFrame(i11, i14, i);
        } else {
            constraintWidget.mBelongingGroup.addWidgetsToSet(constraintWidget, i);
            constraintWidget.setRelativePositioning(i11, i);
        }
        if (constraintWidget.getDimensionBehaviour(i) == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mDimensionRatio != 0.0f) {
            constraintWidget.mBelongingGroup.addWidgetsToSet(constraintWidget, i);
        }
        ConstraintAnchor[] constraintAnchorArr2 = constraintWidget.mListAnchors;
        if (constraintAnchorArr2[i4].mTarget != null && constraintAnchorArr2[i6].mTarget != null) {
            ConstraintWidget parent = constraintWidget.getParent();
            ConstraintAnchor[] constraintAnchorArr3 = constraintWidget.mListAnchors;
            if (constraintAnchorArr3[i4].mTarget.mOwner == parent && constraintAnchorArr3[i6].mTarget.mOwner == parent) {
                constraintWidget.mBelongingGroup.addWidgetsToSet(constraintWidget, i);
            }
        }
        return iMax4;
    }

    private static int getParentBiasOffset(ConstraintWidget constraintWidget, int i) {
        ConstraintAnchor constraintAnchor;
        int i2 = i * 2;
        ConstraintAnchor[] constraintAnchorArr = constraintWidget.mListAnchors;
        ConstraintAnchor constraintAnchor2 = constraintAnchorArr[i2];
        ConstraintAnchor constraintAnchor3 = constraintAnchorArr[i2 + 1];
        ConstraintAnchor constraintAnchor4 = constraintAnchor2.mTarget;
        if (constraintAnchor4 == null) {
            return 0;
        }
        ConstraintWidget constraintWidget2 = constraintAnchor4.mOwner;
        ConstraintWidget constraintWidget3 = constraintWidget.mParent;
        if (constraintWidget2 != constraintWidget3 || (constraintAnchor = constraintAnchor3.mTarget) == null || constraintAnchor.mOwner != constraintWidget3) {
            return 0;
        }
        return (int) ((((constraintWidget3.getLength(i) - constraintAnchor2.getMargin()) - constraintAnchor3.getMargin()) - constraintWidget.getLength(i)) * (i == 0 ? constraintWidget.mHorizontalBiasPercent : constraintWidget.mVerticalBiasPercent));
    }

    private static void invalidate(ConstraintWidgetContainer constraintWidgetContainer, ConstraintWidget constraintWidget, ConstraintWidgetGroup constraintWidgetGroup) {
        constraintWidgetGroup.mSkipSolver = false;
        constraintWidgetContainer.mSkipSolver = false;
        constraintWidget.mOptimizerMeasurable = false;
    }

    private static int resolveDimensionRatio(ConstraintWidget constraintWidget) {
        ConstraintWidget.DimensionBehaviour horizontalDimensionBehaviour = constraintWidget.getHorizontalDimensionBehaviour();
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        if (horizontalDimensionBehaviour == dimensionBehaviour) {
            int height = (int) (constraintWidget.mDimensionRatioSide == 0 ? constraintWidget.getHeight() * constraintWidget.mDimensionRatio : constraintWidget.getHeight() / constraintWidget.mDimensionRatio);
            constraintWidget.setWidth(height);
            return height;
        }
        if (constraintWidget.getVerticalDimensionBehaviour() != dimensionBehaviour) {
            return -1;
        }
        int width = (int) (constraintWidget.mDimensionRatioSide == 1 ? constraintWidget.getWidth() * constraintWidget.mDimensionRatio : constraintWidget.getWidth() / constraintWidget.mDimensionRatio);
        constraintWidget.setHeight(width);
        return width;
    }

    private static void setConnection(ConstraintAnchor constraintAnchor) {
        ResolutionAnchor resolutionNode = constraintAnchor.getResolutionNode();
        ConstraintAnchor constraintAnchor2 = constraintAnchor.mTarget;
        if (constraintAnchor2 == null || constraintAnchor2.mTarget == constraintAnchor) {
            return;
        }
        constraintAnchor2.getResolutionNode().addDependent(resolutionNode);
    }

    public static void setPosition(List<ConstraintWidgetGroup> list, int i, int i2) {
        int size = list.size();
        for (int i3 = 0; i3 < size; i3++) {
            for (ConstraintWidget constraintWidget : list.get(i3).getWidgetsToSet(i)) {
                if (constraintWidget.mOptimizerMeasurable) {
                    updateSizeDependentWidgets(constraintWidget, i, i2);
                }
            }
        }
    }

    private static void singleGroup(ConstraintWidgetContainer constraintWidgetContainer) {
        constraintWidgetContainer.mWidgetGroups.clear();
        constraintWidgetContainer.mWidgetGroups.add(0, new ConstraintWidgetGroup(constraintWidgetContainer.mChildren));
    }

    /* JADX WARN: Removed duplicated region for block: B:115:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0114  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static boolean traverse(ConstraintWidget constraintWidget, ConstraintWidgetGroup constraintWidgetGroup, List<ConstraintWidgetGroup> list, boolean z) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        if (constraintWidget == null) {
            return true;
        }
        constraintWidget.mOptimizerMeasured = false;
        ConstraintWidgetContainer constraintWidgetContainer = (ConstraintWidgetContainer) constraintWidget.getParent();
        ConstraintWidgetGroup constraintWidgetGroup2 = constraintWidget.mBelongingGroup;
        if (constraintWidgetGroup2 != null) {
            if (constraintWidgetGroup2 != constraintWidgetGroup) {
                constraintWidgetGroup.mConstrainedGroup.addAll(constraintWidgetGroup2.mConstrainedGroup);
                constraintWidgetGroup.mStartHorizontalWidgets.addAll(constraintWidget.mBelongingGroup.mStartHorizontalWidgets);
                constraintWidgetGroup.mStartVerticalWidgets.addAll(constraintWidget.mBelongingGroup.mStartVerticalWidgets);
                ConstraintWidgetGroup constraintWidgetGroup3 = constraintWidget.mBelongingGroup;
                if (!constraintWidgetGroup3.mSkipSolver) {
                    constraintWidgetGroup.mSkipSolver = false;
                }
                list.remove(constraintWidgetGroup3);
                Iterator<ConstraintWidget> it = constraintWidget.mBelongingGroup.mConstrainedGroup.iterator();
                while (it.hasNext()) {
                    it.next().mBelongingGroup = constraintWidgetGroup;
                }
            }
            return true;
        }
        constraintWidget.mOptimizerMeasurable = true;
        constraintWidgetGroup.mConstrainedGroup.add(constraintWidget);
        constraintWidget.mBelongingGroup = constraintWidgetGroup;
        if (constraintWidget.mLeft.mTarget == null && constraintWidget.mRight.mTarget == null && constraintWidget.mTop.mTarget == null && constraintWidget.mBottom.mTarget == null && constraintWidget.mBaseline.mTarget == null && constraintWidget.mCenter.mTarget == null) {
            invalidate(constraintWidgetContainer, constraintWidget, constraintWidgetGroup);
            if (z) {
                return false;
            }
        }
        if (constraintWidget.mTop.mTarget != null && constraintWidget.mBottom.mTarget != null) {
            constraintWidgetContainer.getVerticalDimensionBehaviour();
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            if (z) {
                invalidate(constraintWidgetContainer, constraintWidget, constraintWidgetGroup);
                return false;
            }
            if (constraintWidget.mTop.mTarget.mOwner != constraintWidget.getParent() || constraintWidget.mBottom.mTarget.mOwner != constraintWidget.getParent()) {
                invalidate(constraintWidgetContainer, constraintWidget, constraintWidgetGroup);
            }
        }
        if (constraintWidget.mLeft.mTarget != null && constraintWidget.mRight.mTarget != null) {
            constraintWidgetContainer.getHorizontalDimensionBehaviour();
            ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            if (z) {
                invalidate(constraintWidgetContainer, constraintWidget, constraintWidgetGroup);
                return false;
            }
            if (constraintWidget.mLeft.mTarget.mOwner != constraintWidget.getParent() || constraintWidget.mRight.mTarget.mOwner != constraintWidget.getParent()) {
                invalidate(constraintWidgetContainer, constraintWidget, constraintWidgetGroup);
            }
        }
        ConstraintWidget.DimensionBehaviour horizontalDimensionBehaviour = constraintWidget.getHorizontalDimensionBehaviour();
        ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        if (((horizontalDimensionBehaviour == dimensionBehaviour3) ^ (constraintWidget.getVerticalDimensionBehaviour() == dimensionBehaviour3)) && constraintWidget.mDimensionRatio != 0.0f) {
            resolveDimensionRatio(constraintWidget);
        } else if (constraintWidget.getHorizontalDimensionBehaviour() == dimensionBehaviour3 || constraintWidget.getVerticalDimensionBehaviour() == dimensionBehaviour3) {
            invalidate(constraintWidgetContainer, constraintWidget, constraintWidgetGroup);
            if (z) {
                return false;
            }
        }
        ConstraintAnchor constraintAnchor3 = constraintWidget.mLeft.mTarget;
        if ((constraintAnchor3 != null || constraintWidget.mRight.mTarget != null) && ((constraintAnchor3 == null || constraintAnchor3.mOwner != constraintWidget.mParent || constraintWidget.mRight.mTarget != null) && ((constraintAnchor = constraintWidget.mRight.mTarget) == null || constraintAnchor.mOwner != constraintWidget.mParent || constraintAnchor3 != null))) {
            if (constraintAnchor3 != null) {
                ConstraintWidget constraintWidget2 = constraintAnchor3.mOwner;
                ConstraintWidget constraintWidget3 = constraintWidget.mParent;
                if (constraintWidget2 == constraintWidget3 && constraintAnchor != null && constraintAnchor.mOwner == constraintWidget3) {
                    if (constraintWidget.mCenter.mTarget == null && !(constraintWidget instanceof Guideline) && !(constraintWidget instanceof Helper)) {
                        constraintWidgetGroup.mStartHorizontalWidgets.add(constraintWidget);
                    }
                }
            }
        }
        ConstraintAnchor constraintAnchor4 = constraintWidget.mTop.mTarget;
        if ((constraintAnchor4 != null || constraintWidget.mBottom.mTarget != null) && ((constraintAnchor4 == null || constraintAnchor4.mOwner != constraintWidget.mParent || constraintWidget.mBottom.mTarget != null) && ((constraintAnchor2 = constraintWidget.mBottom.mTarget) == null || constraintAnchor2.mOwner != constraintWidget.mParent || constraintAnchor4 != null))) {
            if (constraintAnchor4 != null) {
                ConstraintWidget constraintWidget4 = constraintAnchor4.mOwner;
                ConstraintWidget constraintWidget5 = constraintWidget.mParent;
                if (constraintWidget4 == constraintWidget5 && constraintAnchor2 != null && constraintAnchor2.mOwner == constraintWidget5) {
                    if (constraintWidget.mCenter.mTarget == null && constraintWidget.mBaseline.mTarget == null && !(constraintWidget instanceof Guideline) && !(constraintWidget instanceof Helper)) {
                        constraintWidgetGroup.mStartVerticalWidgets.add(constraintWidget);
                    }
                }
            }
        }
        if (constraintWidget instanceof Helper) {
            invalidate(constraintWidgetContainer, constraintWidget, constraintWidgetGroup);
            if (z) {
                return false;
            }
            Helper helper = (Helper) constraintWidget;
            for (int i = 0; i < helper.mWidgetsCount; i++) {
                if (!traverse(helper.mWidgets[i], constraintWidgetGroup, list, z)) {
                    return false;
                }
            }
        }
        int length = constraintWidget.mListAnchors.length;
        for (int i2 = 0; i2 < length; i2++) {
            ConstraintAnchor constraintAnchor5 = constraintWidget.mListAnchors[i2];
            ConstraintAnchor constraintAnchor6 = constraintAnchor5.mTarget;
            if (constraintAnchor6 != null && constraintAnchor6.mOwner != constraintWidget.getParent()) {
                if (constraintAnchor5.mType == ConstraintAnchor.Type.CENTER) {
                    invalidate(constraintWidgetContainer, constraintWidget, constraintWidgetGroup);
                    if (z) {
                        return false;
                    }
                } else {
                    setConnection(constraintAnchor5);
                }
                if (!traverse(constraintAnchor5.mTarget.mOwner, constraintWidgetGroup, list, z)) {
                    return false;
                }
            }
        }
        return true;
    }

    private static void updateSizeDependentWidgets(ConstraintWidget constraintWidget, int i, int i2) {
        int i3 = i * 2;
        ConstraintAnchor[] constraintAnchorArr = constraintWidget.mListAnchors;
        ConstraintAnchor constraintAnchor = constraintAnchorArr[i3];
        ConstraintAnchor constraintAnchor2 = constraintAnchorArr[i3 + 1];
        if ((constraintAnchor.mTarget == null || constraintAnchor2.mTarget == null) ? false : true) {
            Optimizer.setOptimizedWidget(constraintWidget, i, getParentBiasOffset(constraintWidget, i) + constraintAnchor.getMargin());
            return;
        }
        if (constraintWidget.mDimensionRatio == 0.0f || constraintWidget.getDimensionBehaviour(i) != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            int relativePositioning = i2 - constraintWidget.getRelativePositioning(i);
            int length = relativePositioning - constraintWidget.getLength(i);
            constraintWidget.setFrame(length, relativePositioning, i);
            Optimizer.setOptimizedWidget(constraintWidget, i, length);
            return;
        }
        int iResolveDimensionRatio = resolveDimensionRatio(constraintWidget);
        int i4 = (int) constraintWidget.mListAnchors[i3].getResolutionNode().resolvedOffset;
        constraintAnchor2.getResolutionNode().resolvedTarget = constraintAnchor.getResolutionNode();
        constraintAnchor2.getResolutionNode().resolvedOffset = iResolveDimensionRatio;
        constraintAnchor2.getResolutionNode().state = 1;
        constraintWidget.setFrame(i4, i4 + iResolveDimensionRatio, i);
    }
}

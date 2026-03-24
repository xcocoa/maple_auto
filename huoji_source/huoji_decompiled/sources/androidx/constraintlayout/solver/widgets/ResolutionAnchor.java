package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.LinearSystem;
import androidx.constraintlayout.solver.SolverVariable;
import androidx.constraintlayout.solver.widgets.ConstraintAnchor;

/* JADX INFO: loaded from: classes.dex */
public class ResolutionAnchor extends ResolutionNode {
    public static final int BARRIER_CONNECTION = 5;
    public static final int CENTER_CONNECTION = 2;
    public static final int CHAIN_CONNECTION = 4;
    public static final int DIRECT_CONNECTION = 1;
    public static final int MATCH_CONNECTION = 3;
    public static final int UNCONNECTED = 0;
    public float computedValue;
    public ConstraintAnchor myAnchor;
    public float offset;
    private ResolutionAnchor opposite;
    private float oppositeOffset;
    public float resolvedOffset;
    public ResolutionAnchor resolvedTarget;
    public ResolutionAnchor target;
    public int type = 0;
    private ResolutionDimension dimension = null;
    private int dimensionMultiplier = 1;
    private ResolutionDimension oppositeDimension = null;
    private int oppositeDimensionMultiplier = 1;

    public ResolutionAnchor(ConstraintAnchor constraintAnchor) {
        this.myAnchor = constraintAnchor;
    }

    public void addResolvedValue(LinearSystem linearSystem) {
        SolverVariable solverVariable = this.myAnchor.getSolverVariable();
        ResolutionAnchor resolutionAnchor = this.resolvedTarget;
        if (resolutionAnchor == null) {
            linearSystem.addEquality(solverVariable, (int) (this.resolvedOffset + 0.5f));
        } else {
            linearSystem.addEquality(solverVariable, linearSystem.createObjectVariable(resolutionAnchor.myAnchor), (int) (this.resolvedOffset + 0.5f), 6);
        }
    }

    public void dependsOn(int i, ResolutionAnchor resolutionAnchor, int i2) {
        this.type = i;
        this.target = resolutionAnchor;
        this.offset = i2;
        resolutionAnchor.addDependent(this);
    }

    public void dependsOn(ResolutionAnchor resolutionAnchor, int i) {
        this.target = resolutionAnchor;
        this.offset = i;
        resolutionAnchor.addDependent(this);
    }

    public void dependsOn(ResolutionAnchor resolutionAnchor, int i, ResolutionDimension resolutionDimension) {
        this.target = resolutionAnchor;
        resolutionAnchor.addDependent(this);
        this.dimension = resolutionDimension;
        this.dimensionMultiplier = i;
        resolutionDimension.addDependent(this);
    }

    public float getResolvedValue() {
        return this.resolvedOffset;
    }

    @Override // androidx.constraintlayout.solver.widgets.ResolutionNode
    public void remove(ResolutionDimension resolutionDimension) {
        ResolutionDimension resolutionDimension2 = this.dimension;
        if (resolutionDimension2 == resolutionDimension) {
            this.dimension = null;
            this.offset = this.dimensionMultiplier;
        } else if (resolutionDimension2 == this.oppositeDimension) {
            this.oppositeDimension = null;
            this.oppositeOffset = this.oppositeDimensionMultiplier;
        }
        resolve();
    }

    @Override // androidx.constraintlayout.solver.widgets.ResolutionNode
    public void reset() {
        super.reset();
        this.target = null;
        this.offset = 0.0f;
        this.dimension = null;
        this.dimensionMultiplier = 1;
        this.oppositeDimension = null;
        this.oppositeDimensionMultiplier = 1;
        this.resolvedTarget = null;
        this.resolvedOffset = 0.0f;
        this.computedValue = 0.0f;
        this.opposite = null;
        this.oppositeOffset = 0.0f;
        this.type = 0;
    }

    @Override // androidx.constraintlayout.solver.widgets.ResolutionNode
    public void resolve() {
        int i;
        ResolutionAnchor resolutionAnchor;
        ResolutionAnchor resolutionAnchor2;
        ResolutionAnchor resolutionAnchor3;
        ResolutionAnchor resolutionAnchor4;
        ResolutionAnchor resolutionAnchor5;
        ResolutionAnchor resolutionAnchor6;
        float width;
        float f;
        ResolutionAnchor resolutionAnchor7;
        float f2;
        boolean z = true;
        if (this.state == 1 || (i = this.type) == 4) {
            return;
        }
        ResolutionDimension resolutionDimension = this.dimension;
        if (resolutionDimension != null) {
            if (resolutionDimension.state != 1) {
                return;
            } else {
                this.offset = this.dimensionMultiplier * resolutionDimension.value;
            }
        }
        ResolutionDimension resolutionDimension2 = this.oppositeDimension;
        if (resolutionDimension2 != null) {
            if (resolutionDimension2.state != 1) {
                return;
            } else {
                this.oppositeOffset = this.oppositeDimensionMultiplier * resolutionDimension2.value;
            }
        }
        if (i == 1 && ((resolutionAnchor7 = this.target) == null || resolutionAnchor7.state == 1)) {
            if (resolutionAnchor7 == null) {
                this.resolvedTarget = this;
                f2 = this.offset;
            } else {
                this.resolvedTarget = resolutionAnchor7.resolvedTarget;
                f2 = resolutionAnchor7.resolvedOffset + this.offset;
            }
            this.resolvedOffset = f2;
            didResolve();
            return;
        }
        if (i == 2 && (resolutionAnchor4 = this.target) != null && resolutionAnchor4.state == 1 && (resolutionAnchor5 = this.opposite) != null && (resolutionAnchor6 = resolutionAnchor5.target) != null && resolutionAnchor6.state == 1) {
            if (LinearSystem.getMetrics() != null) {
                LinearSystem.getMetrics().centerConnectionResolved++;
            }
            ResolutionAnchor resolutionAnchor8 = this.target;
            this.resolvedTarget = resolutionAnchor8.resolvedTarget;
            ResolutionAnchor resolutionAnchor9 = this.opposite;
            ResolutionAnchor resolutionAnchor10 = resolutionAnchor9.target;
            resolutionAnchor9.resolvedTarget = resolutionAnchor10.resolvedTarget;
            ConstraintAnchor.Type type = this.myAnchor.mType;
            ConstraintAnchor.Type type2 = ConstraintAnchor.Type.RIGHT;
            int i2 = 0;
            if (type != type2 && type != ConstraintAnchor.Type.BOTTOM) {
                z = false;
            }
            float f3 = z ? resolutionAnchor8.resolvedOffset - resolutionAnchor10.resolvedOffset : resolutionAnchor10.resolvedOffset - resolutionAnchor8.resolvedOffset;
            if (type == ConstraintAnchor.Type.LEFT || type == type2) {
                width = f3 - r2.mOwner.getWidth();
                f = this.myAnchor.mOwner.mHorizontalBiasPercent;
            } else {
                width = f3 - r2.mOwner.getHeight();
                f = this.myAnchor.mOwner.mVerticalBiasPercent;
            }
            int margin = this.myAnchor.getMargin();
            int margin2 = this.opposite.myAnchor.getMargin();
            if (this.myAnchor.getTarget() == this.opposite.myAnchor.getTarget()) {
                f = 0.5f;
                margin2 = 0;
            } else {
                i2 = margin;
            }
            float f4 = i2;
            float f5 = margin2;
            float f6 = (width - f4) - f5;
            if (z) {
                ResolutionAnchor resolutionAnchor11 = this.opposite;
                resolutionAnchor11.resolvedOffset = resolutionAnchor11.target.resolvedOffset + f5 + (f6 * f);
                this.resolvedOffset = (this.target.resolvedOffset - f4) - (f6 * (1.0f - f));
            } else {
                this.resolvedOffset = this.target.resolvedOffset + f4 + (f6 * f);
                ResolutionAnchor resolutionAnchor12 = this.opposite;
                resolutionAnchor12.resolvedOffset = (resolutionAnchor12.target.resolvedOffset - f5) - (f6 * (1.0f - f));
            }
        } else {
            if (i != 3 || (resolutionAnchor = this.target) == null || resolutionAnchor.state != 1 || (resolutionAnchor2 = this.opposite) == null || (resolutionAnchor3 = resolutionAnchor2.target) == null || resolutionAnchor3.state != 1) {
                if (i == 5) {
                    this.myAnchor.mOwner.resolve();
                    return;
                }
                return;
            }
            if (LinearSystem.getMetrics() != null) {
                LinearSystem.getMetrics().matchConnectionResolved++;
            }
            ResolutionAnchor resolutionAnchor13 = this.target;
            this.resolvedTarget = resolutionAnchor13.resolvedTarget;
            ResolutionAnchor resolutionAnchor14 = this.opposite;
            ResolutionAnchor resolutionAnchor15 = resolutionAnchor14.target;
            resolutionAnchor14.resolvedTarget = resolutionAnchor15.resolvedTarget;
            this.resolvedOffset = resolutionAnchor13.resolvedOffset + this.offset;
            resolutionAnchor14.resolvedOffset = resolutionAnchor15.resolvedOffset + resolutionAnchor14.offset;
        }
        didResolve();
        this.opposite.didResolve();
    }

    public void resolve(ResolutionAnchor resolutionAnchor, float f) {
        int i = this.state;
        if (i == 0 || !(this.resolvedTarget == resolutionAnchor || this.resolvedOffset == f)) {
            this.resolvedTarget = resolutionAnchor;
            this.resolvedOffset = f;
            if (i == 1) {
                invalidate();
            }
            didResolve();
        }
    }

    public String sType(int i) {
        return i == 1 ? "DIRECT" : i == 2 ? "CENTER" : i == 3 ? "MATCH" : i == 4 ? "CHAIN" : i == 5 ? "BARRIER" : "UNCONNECTED";
    }

    public void setOpposite(ResolutionAnchor resolutionAnchor, float f) {
        this.opposite = resolutionAnchor;
        this.oppositeOffset = f;
    }

    public void setOpposite(ResolutionAnchor resolutionAnchor, int i, ResolutionDimension resolutionDimension) {
        this.opposite = resolutionAnchor;
        this.oppositeDimension = resolutionDimension;
        this.oppositeDimensionMultiplier = i;
    }

    public void setType(int i) {
        this.type = i;
    }

    public String toString() {
        StringBuilder sb;
        String str;
        if (this.state != 1) {
            sb = new StringBuilder();
            sb.append("{ ");
            sb.append(this.myAnchor);
            str = " UNRESOLVED} type: ";
        } else if (this.resolvedTarget == this) {
            sb = new StringBuilder();
            sb.append("[");
            sb.append(this.myAnchor);
            sb.append(", RESOLVED: ");
            sb.append(this.resolvedOffset);
            str = "]  type: ";
        } else {
            sb = new StringBuilder();
            sb.append("[");
            sb.append(this.myAnchor);
            sb.append(", RESOLVED: ");
            sb.append(this.resolvedTarget);
            sb.append(":");
            sb.append(this.resolvedOffset);
            str = "] type: ";
        }
        sb.append(str);
        sb.append(sType(this.type));
        return sb.toString();
    }

    public void update() {
        ConstraintAnchor target = this.myAnchor.getTarget();
        if (target == null) {
            return;
        }
        if (target.getTarget() == this.myAnchor) {
            this.type = 4;
            target.getResolutionNode().type = 4;
        }
        int margin = this.myAnchor.getMargin();
        ConstraintAnchor.Type type = this.myAnchor.mType;
        if (type == ConstraintAnchor.Type.RIGHT || type == ConstraintAnchor.Type.BOTTOM) {
            margin = -margin;
        }
        dependsOn(target.getResolutionNode(), margin);
    }
}

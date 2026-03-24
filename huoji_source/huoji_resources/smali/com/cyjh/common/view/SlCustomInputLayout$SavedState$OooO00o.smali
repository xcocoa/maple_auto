.class public Lcom/cyjh/common/view/SlCustomInputLayout$SavedState$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/common/view/SlCustomInputLayout$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/cyjh/common/view/SlCustomInputLayout$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Landroid/os/Parcel;)Lcom/cyjh/common/view/SlCustomInputLayout$SavedState;
    .locals 2

    new-instance v0, Lcom/cyjh/common/view/SlCustomInputLayout$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/cyjh/common/view/SlCustomInputLayout$SavedState;-><init>(Landroid/os/Parcel;Lcom/cyjh/common/view/SlCustomInputLayout$OooO00o;)V

    return-object v0
.end method

.method public OooO0O0(I)[Lcom/cyjh/common/view/SlCustomInputLayout$SavedState;
    .locals 0

    new-array p1, p1, [Lcom/cyjh/common/view/SlCustomInputLayout$SavedState;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cyjh/common/view/SlCustomInputLayout$SavedState$OooO00o;->OooO00o(Landroid/os/Parcel;)Lcom/cyjh/common/view/SlCustomInputLayout$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cyjh/common/view/SlCustomInputLayout$SavedState$OooO00o;->OooO0O0(I)[Lcom/cyjh/common/view/SlCustomInputLayout$SavedState;

    move-result-object p1

    return-object p1
.end method

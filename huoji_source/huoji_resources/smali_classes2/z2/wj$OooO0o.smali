.class public Lz2/wj$OooO0o;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$OooO0OO;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/wj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/wj;


# direct methods
.method public constructor <init>(Lz2/wj;)V
    .locals 0

    iput-object p1, p0, Lz2/wj$OooO0o;->OooO00o:Lz2/wj;

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$OooO0OO;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Landroid/view/View;F)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public OooO0O0(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lz2/wj$OooO0o;->OooO00o:Lz2/wj;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    :cond_0
    return-void
.end method

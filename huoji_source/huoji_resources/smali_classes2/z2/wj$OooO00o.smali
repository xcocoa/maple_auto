.class public Lz2/wj$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/wj;->OooO0O0(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lz2/wj;


# direct methods
.method public constructor <init>(Lz2/wj;)V
    .locals 0

    iput-object p1, p0, Lz2/wj$OooO00o;->OoooOoO:Lz2/wj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lz2/wj$OooO00o;->OoooOoO:Lz2/wj;

    iget-boolean v0, p1, Lz2/wj;->OoooOoo:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lz2/wj$OooO00o;->OoooOoO:Lz2/wj;

    invoke-virtual {p1}, Lz2/wj;->OooO00o()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lz2/wj$OooO00o;->OoooOoO:Lz2/wj;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    :cond_0
    return-void
.end method

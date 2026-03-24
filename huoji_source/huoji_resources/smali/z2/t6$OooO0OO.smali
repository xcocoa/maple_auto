.class public Lz2/t6$OooO0OO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/t6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lz2/u6;

.field public final synthetic OoooOoo:Lz2/t6;


# direct methods
.method public constructor <init>(Lz2/t6;Lz2/u6;)V
    .locals 0

    iput-object p1, p0, Lz2/t6$OooO0OO;->OoooOoo:Lz2/t6;

    iput-object p2, p0, Lz2/t6$OooO0OO;->OoooOoO:Lz2/u6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lz2/t6$OooO0OO;->OoooOoO:Lz2/u6;

    invoke-virtual {p1}, Lz2/u6;->OooO0oo()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lz2/t6$OooO0OO;->OoooOoo:Lz2/t6;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

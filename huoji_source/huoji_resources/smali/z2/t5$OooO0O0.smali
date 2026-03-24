.class public Lz2/t5$OooO0O0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/t5;->Oooo0o0(Landroid/view/View;Ljava/lang/CharSequence;ILz2/t5;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lz2/t5;

.field public final synthetic OoooOoo:Landroid/view/View;

.field public final synthetic Ooooo00:Ljava/lang/CharSequence;

.field public final synthetic Ooooo0o:I


# direct methods
.method public constructor <init>(Lz2/t5;Landroid/view/View;Ljava/lang/CharSequence;I)V
    .locals 0

    iput-object p1, p0, Lz2/t5$OooO0O0;->OoooOoO:Lz2/t5;

    iput-object p2, p0, Lz2/t5$OooO0O0;->OoooOoo:Landroid/view/View;

    iput-object p3, p0, Lz2/t5$OooO0O0;->Ooooo00:Ljava/lang/CharSequence;

    iput p4, p0, Lz2/t5$OooO0O0;->Ooooo0o:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lz2/t5;->OooOO0o()V

    iget-object v0, p0, Lz2/t5$OooO0O0;->OoooOoO:Lz2/t5;

    invoke-static {v0}, Lz2/t5;->OooO0OO(Lz2/t5;)Lz2/t5$OooO;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Lz2/t5;->OooO0O0(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lz2/t5$OooO0O0;->OoooOoo:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Lz2/t5$OooO;->OooO0OO(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lz2/t5$OooO0O0;->Ooooo00:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Lz2/t5$OooO;->OooO0O0(Ljava/lang/CharSequence;)V

    :goto_0
    iget v1, p0, Lz2/t5$OooO0O0;->Ooooo0o:I

    invoke-interface {v0, v1}, Lz2/t5$OooO;->OooO00o(I)V

    return-void
.end method

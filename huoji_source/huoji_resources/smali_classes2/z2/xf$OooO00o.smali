.class public final Lz2/xf$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/xf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lz2/xf;


# direct methods
.method public constructor <init>(Lz2/xf;)V
    .locals 0

    iput-object p1, p0, Lz2/xf$OooO00o;->OoooOoO:Lz2/xf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget-object p1, p0, Lz2/xf$OooO00o;->OoooOoO:Lz2/xf;

    iget-object v0, p1, Lz2/xf;->OooO00o:Landroid/view/WindowManager;

    iget-object p1, p1, Lz2/xf;->OooO0O0:Landroid/view/View;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    return p1
.end method

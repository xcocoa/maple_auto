.class public final Lz2/af$OooO0OO;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/af;


# direct methods
.method public constructor <init>(Lz2/af;)V
    .locals 0

    iput-object p1, p0, Lz2/af$OooO0OO;->OooO00o:Lz2/af;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x100

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lz2/af$OooO0OO;->OooO00o:Lz2/af;

    invoke-static {p1}, Lz2/af;->OooOOo(Lz2/af;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->invalidate()V

    :goto_0
    return-void
.end method

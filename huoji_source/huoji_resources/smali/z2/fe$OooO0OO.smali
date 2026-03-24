.class public final Lz2/fe$OooO0OO;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/fe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO0OO"
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lz2/fe;


# direct methods
.method private constructor <init>(Lz2/fe;)V
    .locals 0

    iput-object p1, p0, Lz2/fe$OooO0OO;->OoooOoO:Lz2/fe;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lz2/fe;B)V
    .locals 0

    invoke-direct {p0, p1}, Lz2/fe$OooO0OO;-><init>(Lz2/fe;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lz2/fe$OooO0OO;->OoooOoO:Lz2/fe;

    iget-object v0, v0, Lz2/fe;->OooO0o0:Lz2/pg;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lz2/fe$OooO0OO;->OoooOoO:Lz2/fe;

    invoke-static {v0}, Lz2/fe;->OooO0O0(Lz2/fe;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

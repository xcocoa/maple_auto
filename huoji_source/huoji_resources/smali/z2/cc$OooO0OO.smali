.class public Lz2/cc$OooO0OO;
.super Ljava/util/TimerTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/cc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO0OO"
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lz2/cc;


# direct methods
.method private constructor <init>(Lz2/cc;)V
    .locals 0

    iput-object p1, p0, Lz2/cc$OooO0OO;->OoooOoO:Lz2/cc;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lz2/cc;Lz2/cc$OooO00o;)V
    .locals 0

    invoke-direct {p0, p1}, Lz2/cc$OooO0OO;-><init>(Lz2/cc;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x3e8

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lz2/cc$OooO0OO;->OoooOoO:Lz2/cc;

    invoke-static {v1}, Lz2/cc;->OooO00o(Lz2/cc;)Lz2/cc$OooO0O0;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lz2/cc$OooO0OO;->OoooOoO:Lz2/cc;

    invoke-static {v1}, Lz2/cc;->OooO00o(Lz2/cc;)Lz2/cc$OooO0O0;

    move-result-object v1

    invoke-interface {v1, v0}, Lz2/cc$OooO0O0;->OooO00o(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

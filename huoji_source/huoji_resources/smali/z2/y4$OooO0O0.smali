.class public Lz2/y4$OooO0O0;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/y4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO0O0"
.end annotation


# instance fields
.field private OoooOoO:Ljava/lang/Process;

.field private OoooOoo:I


# direct methods
.method public constructor <init>(Ljava/lang/Process;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lz2/y4$OooO0O0;->OoooOoO:Ljava/lang/Process;

    iput p2, p0, Lz2/y4$OooO0O0;->OoooOoo:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget v0, p0, Lz2/y4$OooO0O0;->OoooOoo:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    invoke-static {}, Lz2/y4;->OooO00o()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/y4$OooO0O0;->OoooOoO:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    :cond_0
    return-void
.end method

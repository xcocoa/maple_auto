.class public Lz2/rl$OooO0OO;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/rl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO0OO"
.end annotation


# instance fields
.field public final OooO00o:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lz2/rl$OooO0O0;",
            ">;"
        }
    .end annotation
.end field

.field public OooO0O0:I

.field public OooO0OO:Z


# direct methods
.method public constructor <init>(ILz2/rl$OooO0O0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lz2/rl$OooO0OO;->OooO00o:Ljava/lang/ref/WeakReference;

    iput p1, p0, Lz2/rl$OooO0OO;->OooO0O0:I

    return-void
.end method


# virtual methods
.method public OooO00o(Lz2/rl$OooO0O0;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lz2/rl$OooO0OO;->OooO00o:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

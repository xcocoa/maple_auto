.class public abstract Lz2/bb0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private OooO00o:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 2

    iget-object v0, p0, Lz2/bb0;->OooO00o:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lz2/bb0;->OooO00o:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public OooO0O0(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lz2/bb0;->OooO00o:Ljava/lang/Runnable;

    return-void
.end method

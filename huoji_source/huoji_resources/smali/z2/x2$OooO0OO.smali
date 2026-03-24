.class public Lz2/x2$OooO0OO;
.super Lz2/x2;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/x2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO0OO"
.end annotation


# instance fields
.field private volatile OooO0O0:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lz2/x2;-><init>(Lz2/x2$OooO00o;)V

    return-void
.end method


# virtual methods
.method public OooO0O0(Z)V
    .locals 0

    iput-boolean p1, p0, Lz2/x2$OooO0OO;->OooO0O0:Z

    return-void
.end method

.method public OooO0OO()V
    .locals 2

    iget-boolean v0, p0, Lz2/x2$OooO0OO;->OooO0O0:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.class public Lz2/q70$OooO00o$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/q70$OooO00o;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lz2/q70$OooO00o;


# direct methods
.method public constructor <init>(Lz2/q70$OooO00o;)V
    .locals 0

    iput-object p1, p0, Lz2/q70$OooO00o$OooO00o;->OoooOoO:Lz2/q70$OooO00o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lz2/q70$OooO00o$OooO00o;->OoooOoO:Lz2/q70$OooO00o;

    iget-object v0, v0, Lz2/q70$OooO00o;->OoooOoo:Lz2/q70;

    invoke-virtual {v0}, Lz2/q70;->OooO0oO()V

    const/4 v0, 0x0

    return-object v0
.end method

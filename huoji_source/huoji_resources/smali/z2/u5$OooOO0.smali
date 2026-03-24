.class public abstract Lz2/u5$OooOO0;
.super Lcom/cyjh/common/util/toast/ThreadUtils$OooO0o;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/u5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OooOO0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/cyjh/common/util/toast/ThreadUtils$OooO0o<",
        "TResult;>;"
    }
.end annotation


# instance fields
.field private o00Oo0:Lz2/u5$OooO0O0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/u5$OooO0O0<",
            "TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lz2/u5$OooO0O0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/u5$OooO0O0<",
            "TResult;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/cyjh/common/util/toast/ThreadUtils$OooO0o;-><init>()V

    iput-object p1, p0, Lz2/u5$OooOO0;->o00Oo0:Lz2/u5$OooO0O0;

    return-void
.end method


# virtual methods
.method public OooOOO0(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    iget-object v0, p0, Lz2/u5$OooOO0;->o00Oo0:Lz2/u5$OooO0O0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lz2/u5$OooO0O0;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

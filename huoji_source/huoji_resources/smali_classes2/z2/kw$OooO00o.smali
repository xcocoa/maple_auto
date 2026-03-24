.class public Lz2/kw$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/fw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/kw;->OooOO0O(Lz2/hw;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/hw;

.field public final synthetic OooO0O0:Lz2/kw;


# direct methods
.method public constructor <init>(Lz2/kw;Lz2/hw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iput-object p1, p0, Lz2/kw$OooO00o;->OooO0O0:Lz2/kw;

    iput-object p2, p0, Lz2/kw$OooO00o;->OooO00o:Lz2/hw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lz2/kw$OooO00o;->OooO00o:Lz2/hw;

    invoke-virtual {v0}, Lz2/hw;->OoooO0()V

    return-void
.end method

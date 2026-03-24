.class public Lz2/na0$OooOOO0$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/na0$OooOOO0;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:D

.field public final synthetic OoooOoo:Lz2/na0$OooOOO0;


# direct methods
.method public constructor <init>(Lz2/na0$OooOOO0;D)V
    .locals 0

    iput-object p1, p0, Lz2/na0$OooOOO0$OooO00o;->OoooOoo:Lz2/na0$OooOOO0;

    iput-wide p2, p0, Lz2/na0$OooOOO0$OooO00o;->OoooOoO:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lz2/na0$OooOOO0$OooO00o;->OoooOoo:Lz2/na0$OooOOO0;

    iget-object v0, v0, Lz2/na0$OooOOO0;->Ooooo00:Lz2/cb0;

    invoke-virtual {v0}, Lz2/cb0;->OooO0OO()Lz2/ib0;

    move-result-object v0

    iget-wide v1, p0, Lz2/na0$OooOOO0$OooO00o;->OoooOoO:D

    invoke-interface {v0, v1, v2}, Lz2/ib0;->OooO00o(D)V

    return-void
.end method

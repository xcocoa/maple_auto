.class public Lz2/na0$o000oOoO$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/na0$o000oOoO;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Ljava/util/List;

.field public final synthetic OoooOoo:Lz2/na0$o000oOoO;


# direct methods
.method public constructor <init>(Lz2/na0$o000oOoO;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lz2/na0$o000oOoO$OooO00o;->OoooOoo:Lz2/na0$o000oOoO;

    iput-object p2, p0, Lz2/na0$o000oOoO$OooO00o;->OoooOoO:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lz2/na0$o000oOoO$OooO00o;->OoooOoo:Lz2/na0$o000oOoO;

    iget-object v0, v0, Lz2/na0$o000oOoO;->Ooooo0o:Lz2/fb0;

    invoke-virtual {v0}, Lz2/fb0;->OooO0OO()Lz2/lb0;

    move-result-object v0

    iget-object v1, p0, Lz2/na0$o000oOoO$OooO00o;->OoooOoO:Ljava/util/List;

    invoke-interface {v0, v1}, Lz2/lb0;->OooO00o(Ljava/util/List;)V

    return-void
.end method

.class public Lz2/na0$OooO0o$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/na0$OooO0o;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:I

.field public final synthetic OoooOoo:Lz2/na0$OooO0o;


# direct methods
.method public constructor <init>(Lz2/na0$OooO0o;I)V
    .locals 0

    iput-object p1, p0, Lz2/na0$OooO0o$OooO00o;->OoooOoo:Lz2/na0$OooO0o;

    iput p2, p0, Lz2/na0$OooO0o$OooO00o;->OoooOoO:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lz2/na0$OooO0o$OooO00o;->OoooOoo:Lz2/na0$OooO0o;

    iget-object v0, v0, Lz2/na0$OooO0o;->Ooooo00:Lz2/hb0;

    invoke-virtual {v0}, Lz2/hb0;->OooO0OO()Lz2/nb0;

    move-result-object v0

    iget v1, p0, Lz2/na0$OooO0o$OooO00o;->OoooOoO:I

    invoke-interface {v0, v1}, Lz2/nb0;->OooO00o(I)V

    return-void
.end method

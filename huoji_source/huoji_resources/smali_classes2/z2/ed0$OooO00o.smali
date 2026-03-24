.class public Lz2/ed0$OooO00o;
.super Lz2/rd0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/ed0;->OooOoO0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoo:Lz2/ed0;


# direct methods
.method public constructor <init>(Lz2/ed0;Lz2/ed0;)V
    .locals 0

    iput-object p1, p0, Lz2/ed0$OooO00o;->OoooOoo:Lz2/ed0;

    invoke-direct {p0, p2}, Lz2/rd0;-><init>(Lz2/ed0;)V

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 1

    iget-object v0, p0, Lz2/ed0$OooO00o;->OoooOoo:Lz2/ed0;

    iget-object v0, v0, Lz2/ed0;->OooooOo:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->OooOoo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/ed0$OooO00o;->OoooOoo:Lz2/ed0;

    invoke-virtual {v0}, Lz2/ed0;->start()V

    :cond_0
    return-void
.end method

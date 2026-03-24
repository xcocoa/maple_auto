.class public final Lz2/ey;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/ey$OooO00o;
    }
.end annotation


# instance fields
.field public final OooO00o:Lz2/qx;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final OooO0O0:Lz2/sx;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lz2/qx;Lz2/sx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/ey;->OooO00o:Lz2/qx;

    iput-object p2, p0, Lz2/ey;->OooO0O0:Lz2/sx;

    return-void
.end method

.method public static OooO00o(Lz2/sx;Lz2/qx;)Z
    .locals 3

    invoke-virtual {p0}, Lz2/sx;->OoooooO()I

    move-result v0

    const/16 v1, 0xc8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/16 v1, 0x19a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x19e

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1f5

    if-eq v0, v1, :cond_2

    const/16 v1, 0xcb

    if-eq v0, v1, :cond_2

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_2

    const/16 v1, 0x133

    if-eq v0, v1, :cond_0

    const/16 v1, 0x134

    if-eq v0, v1, :cond_2

    const/16 v1, 0x194

    if-eq v0, v1, :cond_2

    const/16 v1, 0x195

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :cond_0
    :pswitch_0
    const-string v0, "Expires"

    invoke-virtual {p0, v0}, Lz2/sx;->o0OoOo0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lz2/sx;->OooooOo()Lz2/sw;

    move-result-object v0

    invoke-virtual {v0}, Lz2/sw;->OooO0o0()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lz2/sx;->OooooOo()Lz2/sw;

    move-result-object v0

    invoke-virtual {v0}, Lz2/sw;->OooO0Oo()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lz2/sx;->OooooOo()Lz2/sw;

    move-result-object v0

    invoke-virtual {v0}, Lz2/sw;->OooO0OO()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return v2

    :cond_2
    :goto_1
    :pswitch_1
    invoke-virtual {p0}, Lz2/sx;->OooooOo()Lz2/sw;

    move-result-object p0

    invoke-virtual {p0}, Lz2/sw;->OooOO0()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {p1}, Lz2/qx;->OooO0O0()Lz2/sw;

    move-result-object p0

    invoke-virtual {p0}, Lz2/sw;->OooOO0()Z

    move-result p0

    if-nez p0, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public abstract Lz2/rr;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final OooO00o:Lz2/do;

.field private final OooO0O0:Lz2/zr;


# direct methods
.method public constructor <init>(Lz2/do;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/rr;->OooO00o:Lz2/do;

    new-instance v0, Lz2/zr;

    invoke-direct {v0, p1}, Lz2/zr;-><init>(Lz2/do;)V

    iput-object v0, p0, Lz2/rr;->OooO0O0:Lz2/zr;

    return-void
.end method

.method public static OooO00o(Lz2/do;)Lz2/rr;
    .locals 7

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lz2/do;->OooO0oo(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lz2/or;

    invoke-direct {v0, p0}, Lz2/or;-><init>(Lz2/do;)V

    return-object v0

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lz2/do;->OooO0oo(I)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Lz2/sr;

    invoke-direct {v0, p0}, Lz2/sr;-><init>(Lz2/do;)V

    return-object v0

    :cond_1
    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lz2/zr;->OooO0oO(Lz2/do;II)I

    move-result v2

    if-eq v2, v1, :cond_5

    const/4 v1, 0x5

    if-eq v2, v1, :cond_4

    invoke-static {p0, v0, v1}, Lz2/zr;->OooO0oO(Lz2/do;II)I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_3

    const/16 v2, 0xd

    if-eq v1, v2, :cond_2

    const/4 v1, 0x7

    invoke-static {p0, v0, v1}, Lz2/zr;->OooO0oO(Lz2/do;II)I

    move-result v0

    const-string v1, "17"

    const-string v2, "15"

    const-string v3, "13"

    const-string v4, "11"

    const-string v5, "320"

    const-string v6, "310"

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "unknown decoder: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lz2/mr;

    invoke-direct {v0, p0, v5, v1}, Lz2/mr;-><init>(Lz2/do;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_1
    new-instance v0, Lz2/mr;

    invoke-direct {v0, p0, v6, v1}, Lz2/mr;-><init>(Lz2/do;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_2
    new-instance v0, Lz2/mr;

    invoke-direct {v0, p0, v5, v2}, Lz2/mr;-><init>(Lz2/do;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_3
    new-instance v0, Lz2/mr;

    invoke-direct {v0, p0, v6, v2}, Lz2/mr;-><init>(Lz2/do;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_4
    new-instance v0, Lz2/mr;

    invoke-direct {v0, p0, v5, v3}, Lz2/mr;-><init>(Lz2/do;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_5
    new-instance v0, Lz2/mr;

    invoke-direct {v0, p0, v6, v3}, Lz2/mr;-><init>(Lz2/do;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_6
    new-instance v0, Lz2/mr;

    invoke-direct {v0, p0, v5, v4}, Lz2/mr;-><init>(Lz2/do;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_7
    new-instance v0, Lz2/mr;

    invoke-direct {v0, p0, v6, v4}, Lz2/mr;-><init>(Lz2/do;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    new-instance v0, Lz2/lr;

    invoke-direct {v0, p0}, Lz2/lr;-><init>(Lz2/do;)V

    return-object v0

    :cond_3
    new-instance v0, Lz2/kr;

    invoke-direct {v0, p0}, Lz2/kr;-><init>(Lz2/do;)V

    return-object v0

    :cond_4
    new-instance v0, Lz2/jr;

    invoke-direct {v0, p0}, Lz2/jr;-><init>(Lz2/do;)V

    return-object v0

    :cond_5
    new-instance v0, Lz2/ir;

    invoke-direct {v0, p0}, Lz2/ir;-><init>(Lz2/do;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x38
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final OooO0O0()Lz2/zr;
    .locals 1

    iget-object v0, p0, Lz2/rr;->OooO0O0:Lz2/zr;

    return-object v0
.end method

.method public final OooO0OO()Lz2/do;
    .locals 1

    iget-object v0, p0, Lz2/rr;->OooO00o:Lz2/do;

    return-object v0
.end method

.method public abstract OooO0Oo()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation
.end method

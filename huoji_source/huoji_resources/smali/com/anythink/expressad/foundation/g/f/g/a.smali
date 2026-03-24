.class public final Lcom/anythink/expressad/foundation/g/f/g/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:I = -0x2

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field public static final f:I = 0x5

.field public static final g:I = 0x6

.field public static final h:I = 0x7

.field public static final i:I = 0x8

.field public static final j:I = 0x9

.field public static final k:I = 0xa

.field public static final l:I = 0xb

.field public static final m:I = 0xc

.field public static final n:I = 0xd

.field public static final o:I = 0xe

.field public static final p:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/anythink/expressad/foundation/g/f/a/a;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_4

    :try_start_0
    iget v0, p0, Lcom/anythink/expressad/foundation/g/f/a/a;->a:I

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/anythink/expressad/foundation/g/f/a/a;->b:Lcom/anythink/expressad/foundation/g/f/f/c;

    if-eqz p0, :cond_0

    iget v1, p0, Lcom/anythink/expressad/foundation/g/f/f/c;->a:I

    :cond_0
    const/4 p0, -0x2

    if-eq v0, p0, :cond_3

    const/4 p0, 0x1

    if-eq v0, p0, :cond_4

    packed-switch v0, :pswitch_data_0

    const-string p0, "Network error,I/O exception"

    goto :goto_1

    :pswitch_0
    const-string p0, "Network error,sslp exception"

    goto :goto_1

    :pswitch_1
    const-string p0, "Network error,socket timeout exception"

    goto :goto_1

    :pswitch_2
    const-string p0, "Network error,disconnected network exception"

    goto :goto_1

    :pswitch_3
    const-string p0, "Cast exception, return data can\'t be casted correctly"

    goto :goto_1

    :pswitch_4
    if-eqz v1, :cond_1

    const-string p0, "The server returns an exception state code "

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const-string p0, "The server returns an exception "

    goto :goto_1

    :pswitch_5
    if-eqz v1, :cond_2

    const-string p0, "Network error,please check state code"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string p0, "Network error,please check "

    goto :goto_1

    :pswitch_6
    const-string p0, "Network error,https is not work,please check your phone time"

    goto :goto_1

    :pswitch_7
    const-string p0, "Network unknown error"

    goto :goto_1

    :pswitch_8
    const-string p0, "Network error,timeout exception"

    goto :goto_1

    :cond_3
    const-string p0, "Network is canceled"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    const-string p0, "Network error,Load failed"

    :goto_1
    return-object p0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

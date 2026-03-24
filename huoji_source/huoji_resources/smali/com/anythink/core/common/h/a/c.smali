.class public abstract Lcom/anythink/core/common/h/a/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/core/common/h/a/c$a;
    }
.end annotation


# static fields
.field public static final d:I = 0x1

.field public static final e:I = 0x2

.field public static final f:I = 0x2

.field public static final g:I = 0x3

.field public static final h:I = 0x4


# instance fields
.field private final a:I

.field public i:I

.field public j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/core/common/h/a/c;->a:I

    return-void
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 3

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-string v2, "utf-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_1
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/h/a/c;->i:I

    iput-object p2, p0, Lcom/anythink/core/common/h/a/c;->j:Ljava/lang/String;

    return-void
.end method

.method public final a(Lcom/anythink/core/common/h/a/c$a;)V
    .locals 2

    invoke-static {}, Lcom/anythink/core/common/h/a/d;->a()Lcom/anythink/core/common/h/a/d;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/h/a/d$1;

    invoke-direct {v1, v0, p0, p1}, Lcom/anythink/core/common/h/a/d$1;-><init>(Lcom/anythink/core/common/h/a/d;Lcom/anythink/core/common/h/a/c;Lcom/anythink/core/common/h/a/c$a;)V

    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/anythink/core/common/o/b/b;->a(Lcom/anythink/core/common/o/b/d;I)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public abstract c()I
.end method

.method public abstract d()I
.end method

.method public abstract e()[B
.end method

.method public abstract f()Z
.end method

.method public g()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final h()Lorg/json/JSONObject;
    .locals 1

    invoke-virtual {p0}, Lcom/anythink/core/common/h/a/c;->g()I

    move-result v0

    invoke-static {v0}, Lcom/anythink/core/common/h/c;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lorg/json/JSONObject;
    .locals 1

    invoke-virtual {p0}, Lcom/anythink/core/common/h/a/c;->g()I

    move-result v0

    invoke-static {v0}, Lcom/anythink/core/common/h/c;->b(I)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

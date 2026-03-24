.class public abstract Lmobi/oneway/export/d/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmobi/oneway/export/d/f$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lmobi/oneway/export/d/f$b;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(ILjava/lang/String;)V
.end method

.method public abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TData;)V"
        }
    .end annotation
.end method

.method public a(Ljava/lang/Throwable;Lmobi/oneway/export/d/b;)V
    .locals 0

    const/4 p1, -0x1

    const-string p2, "\u8bf7\u6c42\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-virtual {p0, p1, p2}, Lmobi/oneway/export/d/a;->a(ILjava/lang/String;)V

    return-void
.end method

.method public a(Lmobi/oneway/export/d/b;)V
    .locals 4

    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p1}, Lmobi/oneway/export/d/b;->e()Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "code"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "message"

    const-string v3, "\u8bf7\u6c42\u5931\u8d25"

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lmobi/oneway/export/d/a;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0, v1, v2}, Lmobi/oneway/export/d/a;->a(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string p1, "\u8bf7\u6c42\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-virtual {p0, v0, p1}, Lmobi/oneway/export/d/a;->a(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

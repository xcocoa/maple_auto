.class public Lcom/anythink/basead/mraid/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/basead/mraid/d$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String; = "d"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->m()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/res/d;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/d;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/anythink/core/common/res/d;->b(Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/anythink/basead/mraid/d;->a:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "loadMraidResource: html exists: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/anythink/basead/mraid/d;->a:Ljava/lang/String;

    const-string v1, "loadMraidResource: html no exists: "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/res/d;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/d;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1}, Lcom/anythink/core/common/res/d;->a(Ljava/lang/String;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/basead/mraid/MraidWebView;Lcom/anythink/basead/mraid/d$a;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;I)V
    .locals 10

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v8

    new-instance v9, Lcom/anythink/basead/mraid/d$1;

    move-object v0, v9

    move-object v1, p5

    move-object v2, p4

    move/from16 v3, p6

    move-object v4, p1

    move-object v5, p3

    move-object v6, p2

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/anythink/basead/mraid/d$1;-><init>(Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;ILjava/lang/String;Lcom/anythink/basead/mraid/d$a;Lcom/anythink/basead/mraid/MraidWebView;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V

    return-void
.end method

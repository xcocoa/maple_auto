.class public final Lcom/octopus/ad/internal/b/q;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/octopus/ad/internal/b/q;->a(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    const-string v1, "video-cache"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(Landroid/content/Context;Z)Ljava/io/File;
    .locals 0

    invoke-static {p0}, Lcom/octopus/ad/utils/b/d;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

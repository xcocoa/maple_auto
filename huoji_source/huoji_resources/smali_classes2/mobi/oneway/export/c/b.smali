.class public Lmobi/oneway/export/c/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmobi/oneway/export/c/b;->a:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lmobi/oneway/export/c/b;->a:Ljava/io/File;

    invoke-static {v0}, Lmobi/oneway/export/g/h;->i(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmobi/oneway/export/d/f;

    sget-object v2, Lmobi/oneway/export/a/a;->e:[Ljava/lang/String;

    const-string v3, "/crash/report"

    invoke-direct {v1, v2, v3}, Lmobi/oneway/export/d/f;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lmobi/oneway/export/d/f;->a(Ljava/lang/String;)Lmobi/oneway/export/d/f;

    move-result-object v0

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Lmobi/oneway/export/d/f;->c(Ljava/lang/String;)Lmobi/oneway/export/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/oneway/export/d/f;->n()Lmobi/oneway/export/d/b;

    iget-object v0, p0, Lmobi/oneway/export/c/b;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

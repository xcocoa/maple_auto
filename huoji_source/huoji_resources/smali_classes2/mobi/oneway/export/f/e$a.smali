.class public Lmobi/oneway/export/f/e$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/oneway/export/f/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Lmobi/oneway/export/enums/EventType;

.field public final synthetic b:Lmobi/oneway/export/f/e;


# direct methods
.method public constructor <init>(Lmobi/oneway/export/f/e;Lmobi/oneway/export/enums/EventType;)V
    .locals 0

    iput-object p1, p0, Lmobi/oneway/export/f/e$a;->b:Lmobi/oneway/export/f/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lmobi/oneway/export/f/e$a;->a:Lmobi/oneway/export/enums/EventType;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    new-instance v0, Lmobi/oneway/export/d/f;

    sget-object v1, Lmobi/oneway/export/a/a;->e:[Ljava/lang/String;

    const-string v2, "/sdkEvent"

    invoke-direct {v0, v1, v2}, Lmobi/oneway/export/d/f;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "eventName"

    iget-object v2, p0, Lmobi/oneway/export/f/e$a;->a:Lmobi/oneway/export/enums/EventType;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/d/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lmobi/oneway/export/d/f;

    move-result-object v0

    const-string v1, "publishId"

    invoke-static {}, Lmobi/oneway/export/a/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/d/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lmobi/oneway/export/d/f;

    move-result-object v0

    const-string v1, "token"

    invoke-static {}, Lmobi/oneway/export/a/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/d/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lmobi/oneway/export/d/f;

    move-result-object v0

    const-string v1, "adType"

    iget-object v2, p0, Lmobi/oneway/export/f/e$a;->b:Lmobi/oneway/export/f/e;

    invoke-static {v2}, Lmobi/oneway/export/f/e;->a(Lmobi/oneway/export/f/e;)Lmobi/oneway/export/enums/AdType;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/oneway/export/enums/AdType;->value()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/d/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lmobi/oneway/export/d/f;

    move-result-object v0

    const-string v1, "dmd"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/d/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lmobi/oneway/export/d/f;

    move-result-object v0

    const-string v1, "dmk"

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/d/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lmobi/oneway/export/d/f;

    move-result-object v0

    const-string v1, "ip"

    invoke-static {}, Lmobi/oneway/export/a/b;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lmobi/oneway/export/g/n;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/d/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lmobi/oneway/export/d/f;

    move-result-object v0

    const-string v1, "osv"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/d/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lmobi/oneway/export/d/f;

    move-result-object v0

    invoke-static {}, Lmobi/oneway/export/a/b;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "e"

    invoke-static {}, Lmobi/oneway/export/a/b;->c()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/d/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lmobi/oneway/export/d/f;

    :cond_0
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Lmobi/oneway/export/d/f;->c(Ljava/lang/String;)Lmobi/oneway/export/d/f;

    move-result-object v0

    iget-object v1, p0, Lmobi/oneway/export/f/e$a;->b:Lmobi/oneway/export/f/e;

    invoke-static {v1}, Lmobi/oneway/export/f/e;->b(Lmobi/oneway/export/f/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/oneway/export/d/f;->a(Ljava/lang/String;)Lmobi/oneway/export/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/oneway/export/d/f;->n()Lmobi/oneway/export/d/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

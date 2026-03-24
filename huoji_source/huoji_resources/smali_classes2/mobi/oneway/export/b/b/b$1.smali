.class public Lmobi/oneway/export/b/b/b$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/oneway/export/b/b/b;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmobi/oneway/export/b/b/b;


# direct methods
.method public constructor <init>(Lmobi/oneway/export/b/b/b;)V
    .locals 0

    iput-object p1, p0, Lmobi/oneway/export/b/b/b$1;->a:Lmobi/oneway/export/b/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lmobi/oneway/export/b/b/b$1;->a:Lmobi/oneway/export/b/b/b;

    invoke-static {v0}, Lmobi/oneway/export/b/b/b;->a(Lmobi/oneway/export/b/b/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/oneway/export/b/b/b$1;->a:Lmobi/oneway/export/b/b/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmobi/oneway/export/b/b/b;->a(Z)V

    iget-object v0, p0, Lmobi/oneway/export/b/b/b$1;->a:Lmobi/oneway/export/b/b/b;

    invoke-virtual {v0}, Lmobi/oneway/export/b/b/b;->a()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmobi/oneway/export/b/b/b$1;->a:Lmobi/oneway/export/b/b/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/oneway/export/b/b/b;->a(Z)V

    iget-object v0, p0, Lmobi/oneway/export/b/b/b$1;->a:Lmobi/oneway/export/b/b/b;

    const-string v1, "load ad timeout"

    invoke-virtual {v0, v1}, Lmobi/oneway/export/b/b/b;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

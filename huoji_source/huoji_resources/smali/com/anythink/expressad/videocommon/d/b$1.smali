.class public final Lcom/anythink/expressad/videocommon/d/b$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/common/n/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/videocommon/d/b;-><init>(Ljava/util/Map;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/Map;

.field public final synthetic b:Lcom/anythink/expressad/videocommon/d/b;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/videocommon/d/b;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/videocommon/d/b$1;->b:Lcom/anythink/expressad/videocommon/d/b;

    iput-object p2, p0, Lcom/anythink/expressad/videocommon/d/b$1;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/videocommon/d/b$1;->b:Lcom/anythink/expressad/videocommon/d/b;

    invoke-static {v0}, Lcom/anythink/expressad/videocommon/d/b;->a(Lcom/anythink/expressad/videocommon/d/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/anythink/expressad/videocommon/d/b$1;->b:Lcom/anythink/expressad/videocommon/d/b;

    invoke-static {p1}, Lcom/anythink/expressad/videocommon/d/b;->b(Lcom/anythink/expressad/videocommon/d/b;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/anythink/expressad/videocommon/d/b$1;->a:Ljava/util/Map;

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "close_scene"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/videocommon/d/b$1;->b:Lcom/anythink/expressad/videocommon/d/b;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {p1, v0, v2, v1}, Lcom/anythink/expressad/videocommon/d/b;->a(ZLjava/lang/String;F)V

    :cond_1
    return-void
.end method

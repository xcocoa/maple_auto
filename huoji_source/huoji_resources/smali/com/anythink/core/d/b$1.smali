.class public final Lcom/anythink/core/d/b$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/d/b;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/anythink/core/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lorg/json/JSONObject;

.field public final synthetic d:Lcom/anythink/core/d/a;

.field public final synthetic e:Lcom/anythink/core/d/b;


# direct methods
.method public constructor <init>(Lcom/anythink/core/d/b;Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/anythink/core/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/d/b$1;->e:Lcom/anythink/core/d/b;

    iput-object p2, p0, Lcom/anythink/core/d/b$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/anythink/core/d/b$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/anythink/core/d/b$1;->c:Lorg/json/JSONObject;

    iput-object p5, p0, Lcom/anythink/core/d/b$1;->d:Lcom/anythink/core/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/anythink/core/d/b$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/common/c/c;->a(Landroid/content/Context;)Lcom/anythink/core/common/c/c;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/c/d;->a(Lcom/anythink/core/common/c/b;)Lcom/anythink/core/common/c/d;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/d/b$1;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/core/d/b$1;->c:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/core/d/b$1;->e:Lcom/anythink/core/d/b;

    invoke-static {v3}, Lcom/anythink/core/d/b;->a(Lcom/anythink/core/d/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/core/common/c/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    iget-object v0, p0, Lcom/anythink/core/d/b$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/anythink/core/d/b$1;->d:Lcom/anythink/core/d/a;

    invoke-virtual {v1}, Lcom/anythink/core/d/a;->Y()I

    move-result v1

    const-string v2, "anythink_sdk"

    const-string v3, "EU_INFO"

    invoke-static {v0, v2, v3, v1}, Lcom/anythink/core/common/o/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

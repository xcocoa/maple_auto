.class public final Lcom/tramini/plugin/a/g/a$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tramini/plugin/a/g/a;->a(ILjava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lorg/json/JSONObject;

.field public final synthetic c:Lorg/json/JSONObject;

.field public final synthetic d:I

.field public final synthetic e:Lcom/tramini/plugin/a/g/a;


# direct methods
.method public constructor <init>(Lcom/tramini/plugin/a/g/a;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;I)V
    .locals 0

    iput-object p1, p0, Lcom/tramini/plugin/a/g/a$1;->e:Lcom/tramini/plugin/a/g/a;

    iput-object p2, p0, Lcom/tramini/plugin/a/g/a$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/tramini/plugin/a/g/a$1;->b:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/tramini/plugin/a/g/a$1;->c:Lorg/json/JSONObject;

    iput p5, p0, Lcom/tramini/plugin/a/g/a$1;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    new-instance v0, Lcom/tramini/plugin/a/e/e;

    invoke-static {}, Lcom/tramini/plugin/a/b/c;->a()Lcom/tramini/plugin/a/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tramini/plugin/a/b/c;->b()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tramini/plugin/a/g/a$1;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/tramini/plugin/a/g/a$1;->b:Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/tramini/plugin/a/g/a$1;->c:Lorg/json/JSONObject;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tramini/plugin/a/e/e;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    iget v1, p0, Lcom/tramini/plugin/a/g/a$1;->d:I

    new-instance v2, Lcom/tramini/plugin/a/g/a$1$1;

    invoke-direct {v2, p0}, Lcom/tramini/plugin/a/g/a$1$1;-><init>(Lcom/tramini/plugin/a/g/a$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/tramini/plugin/a/e/a;->a(ILcom/tramini/plugin/a/e/b;)V

    return-void
.end method

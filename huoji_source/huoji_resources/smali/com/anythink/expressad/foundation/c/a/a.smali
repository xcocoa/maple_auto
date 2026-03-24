.class public final Lcom/anythink/expressad/foundation/c/a/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/foundation/c/a/a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/anythink/expressad/foundation/g/a/d;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/anythink/expressad/foundation/g/a/d;

    invoke-direct {v0}, Lcom/anythink/expressad/foundation/g/a/d;-><init>()V

    iput-object v0, p0, Lcom/anythink/expressad/foundation/c/a/a;->a:Lcom/anythink/expressad/foundation/g/a/d;

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/expressad/foundation/c/a/a;-><init>()V

    return-void
.end method

.method public static a()Lcom/anythink/expressad/foundation/c/a/a;
    .locals 1

    invoke-static {}, Lcom/anythink/expressad/foundation/c/a/a$a;->a()Lcom/anythink/expressad/foundation/c/a/a;

    move-result-object v0

    return-object v0
.end method

.method private b()Lorg/json/JSONArray;
    .locals 2

    new-instance v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/anythink/expressad/foundation/c/a/a;->a:Lcom/anythink/expressad/foundation/g/a/d;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/g/a/d;->a()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/foundation/c/a/a;->a:Lcom/anythink/expressad/foundation/g/a/d;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/foundation/g/a/d;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/expressad/foundation/c/a/a;->a:Lcom/anythink/expressad/foundation/g/a/d;

    invoke-virtual {v3, v1, v2}, Lcom/anythink/expressad/foundation/g/a/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

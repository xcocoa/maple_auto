.class public Lcom/octopus/ad/b/d$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/octopus/ad/b/d$c$a;
    }
.end annotation


# instance fields
.field private a:Lcom/octopus/ad/b/e$d;

.field private b:Lcom/octopus/ad/b/e$c;

.field private c:Lcom/octopus/ad/b/d$b;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/octopus/ad/b/d$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/octopus/ad/b/d$c;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/b/d$c;Lcom/octopus/ad/b/d$b;)Lcom/octopus/ad/b/d$b;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/d$c;->c:Lcom/octopus/ad/b/d$b;

    return-object p1
.end method

.method public static synthetic a(Lcom/octopus/ad/b/d$c;Lcom/octopus/ad/b/e$c;)Lcom/octopus/ad/b/e$c;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/d$c;->b:Lcom/octopus/ad/b/e$c;

    return-object p1
.end method

.method public static synthetic a(Lcom/octopus/ad/b/d$c;Lcom/octopus/ad/b/e$d;)Lcom/octopus/ad/b/e$d;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/d$c;->a:Lcom/octopus/ad/b/e$d;

    return-object p1
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "net"

    iget-object v2, p0, Lcom/octopus/ad/b/d$c;->a:Lcom/octopus/ad/b/e$d;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "isp"

    iget-object v2, p0, Lcom/octopus/ad/b/d$c;->b:Lcom/octopus/ad/b/e$c;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/octopus/ad/b/d$c;->c:Lcom/octopus/ad/b/d$b;

    if-eqz v1, :cond_0

    const-string v2, "geo"

    invoke-virtual {v1}, Lcom/octopus/ad/b/d$b;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public b()[B
    .locals 1

    invoke-virtual {p0}, Lcom/octopus/ad/b/d$c;->a()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :goto_0
    return-object v0
.end method

.class public Lcom/octopus/ad/b/a$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/octopus/ad/b/a$b$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/octopus/ad/b/e$i;

.field private c:Lcom/octopus/ad/b/e$g;

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:J

.field private k:J

.field private l:Lcom/octopus/ad/b/d$a;

.field private m:Lcom/octopus/ad/b/d$c;

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/octopus/ad/b/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/octopus/ad/b/a$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/octopus/ad/b/a$b;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/b/a$b;J)J
    .locals 0

    iput-wide p1, p0, Lcom/octopus/ad/b/a$b;->j:J

    return-wide p1
.end method

.method public static synthetic a(Lcom/octopus/ad/b/a$b;Lcom/octopus/ad/b/d$a;)Lcom/octopus/ad/b/d$a;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/a$b;->l:Lcom/octopus/ad/b/d$a;

    return-object p1
.end method

.method public static synthetic a(Lcom/octopus/ad/b/a$b;Lcom/octopus/ad/b/d$c;)Lcom/octopus/ad/b/d$c;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/a$b;->m:Lcom/octopus/ad/b/d$c;

    return-object p1
.end method

.method public static synthetic a(Lcom/octopus/ad/b/a$b;Lcom/octopus/ad/b/e$g;)Lcom/octopus/ad/b/e$g;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/a$b;->c:Lcom/octopus/ad/b/e$g;

    return-object p1
.end method

.method public static synthetic a(Lcom/octopus/ad/b/a$b;Lcom/octopus/ad/b/e$i;)Lcom/octopus/ad/b/e$i;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/a$b;->b:Lcom/octopus/ad/b/e$i;

    return-object p1
.end method

.method private a()Ljava/lang/String;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "version"

    iget-object v2, p0, Lcom/octopus/ad/b/a$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "srcType"

    iget-object v2, p0, Lcom/octopus/ad/b/a$b;->b:Lcom/octopus/ad/b/e$i;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "reqType"

    iget-object v2, p0, Lcom/octopus/ad/b/a$b;->c:Lcom/octopus/ad/b/e$g;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "timeStamp"

    iget-wide v2, p0, Lcom/octopus/ad/b/a$b;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "appid"

    iget-object v2, p0, Lcom/octopus/ad/b/a$b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "reqid"

    iget-object v2, p0, Lcom/octopus/ad/b/a$b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "appVersion"

    iget-object v2, p0, Lcom/octopus/ad/b/a$b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "appName"

    iget-object v2, p0, Lcom/octopus/ad/b/a$b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "packageName"

    iget-object v2, p0, Lcom/octopus/ad/b/a$b;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "appInstallTime"

    iget-wide v2, p0, Lcom/octopus/ad/b/a$b;->j:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "appUpdateTime"

    iget-wide v2, p0, Lcom/octopus/ad/b/a$b;->k:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/octopus/ad/b/a$b;->l:Lcom/octopus/ad/b/d$a;

    if-eqz v1, :cond_0

    const-string v2, "devInfo"

    invoke-virtual {v1}, Lcom/octopus/ad/b/d$a;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v1, p0, Lcom/octopus/ad/b/a$b;->m:Lcom/octopus/ad/b/d$c;

    if-eqz v1, :cond_1

    const-string v2, "envInfo"

    invoke-virtual {v1}, Lcom/octopus/ad/b/d$c;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v1, p0, Lcom/octopus/ad/b/a$b;->n:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/octopus/ad/b/a$b;->n:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/octopus/ad/b/a$b;->n:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/octopus/ad/b/a$a;

    invoke-virtual {v3}, Lcom/octopus/ad/b/a$a;->a()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "adReqInfo"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic a(Lcom/octopus/ad/b/a$b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/a$b;->e:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic a(Lcom/octopus/ad/b/a$b;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/a$b;->n:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static synthetic b(Lcom/octopus/ad/b/a$b;J)J
    .locals 0

    iput-wide p1, p0, Lcom/octopus/ad/b/a$b;->d:J

    return-wide p1
.end method

.method public static synthetic b(Lcom/octopus/ad/b/a$b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/a$b;->f:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic c(Lcom/octopus/ad/b/a$b;J)J
    .locals 0

    iput-wide p1, p0, Lcom/octopus/ad/b/a$b;->k:J

    return-wide p1
.end method

.method public static synthetic c(Lcom/octopus/ad/b/a$b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/a$b;->h:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic d(Lcom/octopus/ad/b/a$b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/a$b;->i:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic e(Lcom/octopus/ad/b/a$b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/a$b;->g:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic f(Lcom/octopus/ad/b/a$b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/a$b;->a:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/octopus/ad/b/a$b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

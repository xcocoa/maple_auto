.class public Lmobi/oneway/export/e/c;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field private a:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lmobi/oneway/export/e/c;->a:Lorg/json/JSONObject;

    return-void
.end method

.method public static a(Lmobi/oneway/export/enums/PluginErrorType;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "type"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "name"

    const-string v1, "Error"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "stack"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "zc"

    invoke-static {}, Lmobi/oneway/export/g/o;->a()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "zm"

    invoke-static {}, Lmobi/oneway/export/g/o;->b()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p0, Lmobi/oneway/export/e/c;

    invoke-direct {p0, v0}, Lmobi/oneway/export/e/c;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    :try_start_0
    new-instance v0, Lmobi/oneway/export/d/f;

    sget-object v1, Lmobi/oneway/export/a/a;->f:[Ljava/lang/String;

    const-string v2, "/diagnosis"

    invoke-direct {v0, v1, v2}, Lmobi/oneway/export/d/f;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lmobi/oneway/export/e/c;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lmobi/oneway/export/d/f;->a(Lorg/json/JSONObject;)Lmobi/oneway/export/d/f;

    move-result-object v0

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Lmobi/oneway/export/d/f;->c(Ljava/lang/String;)Lmobi/oneway/export/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/oneway/export/d/f;->n()Lmobi/oneway/export/d/b;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

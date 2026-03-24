.class public Lmobi/oneway/export/g/i;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/lang/String; = "POST"

.field public static final b:Ljava/lang/String; = "GET"

.field public static final c:Ljava/lang/String; = "HEAD"

.field public static final d:Ljava/lang/String; = "Content-Type"

.field public static final e:Ljava/lang/String; = "application/json"

.field public static final f:J = 0x3a98L


# instance fields
.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)Lmobi/oneway/export/g/i;
    .locals 0

    iput-wide p1, p0, Lmobi/oneway/export/g/i;->i:J

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lmobi/oneway/export/g/i;
    .locals 0

    iput-object p1, p0, Lmobi/oneway/export/g/i;->g:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "GET"

    invoke-virtual {p0, v1}, Lmobi/oneway/export/g/i;->b(Ljava/lang/String;)Lmobi/oneway/export/g/i;

    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lmobi/oneway/export/g/i;->g:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public b(Ljava/lang/String;)Lmobi/oneway/export/g/i;
    .locals 0

    iput-object p1, p0, Lmobi/oneway/export/g/i;->h:Ljava/lang/String;

    return-object p0
.end method

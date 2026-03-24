.class public Lcom/anythink/expressad/video/bt/a/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/video/bt/a/a$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "a"

.field private static e:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:I

.field private d:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/anythink/expressad/video/bt/a/a;->e:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "handlerNativeResult"

    iput-object v0, p0, Lcom/anythink/expressad/video/bt/a/a;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/expressad/video/bt/a/a;->a:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/anythink/expressad/video/bt/a/a;->b:I

    return-void
.end method

.method public static a()Lcom/anythink/expressad/video/bt/a/a;
    .locals 1

    invoke-static {}, Lcom/anythink/expressad/video/bt/a/a$a;->a()Lcom/anythink/expressad/video/bt/a/a;

    move-result-object v0

    return-object v0
.end method

.method private static a(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "code"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "message"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/anythink/expressad/atsignalcommon/windvane/j;->a()Lcom/anythink/expressad/atsignalcommon/windvane/j;

    move-result-object p0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/anythink/expressad/atsignalcommon/windvane/j;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/anythink/expressad/video/bt/a/a;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;)V
    .locals 1

    sget-object v0, Lcom/anythink/expressad/video/bt/a/a;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 11

    :try_start_0
    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "value"

    const/4 v2, 0x7

    const-string v3, "type"

    const-string v4, "key"

    if-eqz p3, :cond_0

    :try_start_1
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {p3, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const-string v8, "instanceId"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-nez v7, :cond_0

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget p2, p0, Lcom/anythink/expressad/video/bt/a/a;->b:I

    const-string p3, "instanceId find error"

    invoke-static {p2, p3, p1}, Lcom/anythink/expressad/video/bt/a/a;->a(ILjava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    sget-object v5, Lcom/anythink/expressad/video/bt/a/a;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget p2, p0, Lcom/anythink/expressad/video/bt/a/a;->b:I

    const-string p3, "can not find player"

    invoke-static {p2, p3, p1}, Lcom/anythink/expressad/video/bt/a/a;->a(ILjava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_2
    const-string v5, "play"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v6, "player is null"

    if-eqz v5, :cond_4

    :try_start_2
    sget-object p2, Lcom/anythink/expressad/video/bt/a/a;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->play()V

    return-void

    :cond_3
    iget p2, p0, Lcom/anythink/expressad/video/bt/a/a;->b:I

    invoke-static {p2, v6, p1}, Lcom/anythink/expressad/video/bt/a/a;->a(ILjava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_4
    const-string v5, "pause"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object p2, Lcom/anythink/expressad/video/bt/a/a;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->pause()V

    return-void

    :cond_5
    iget p2, p0, Lcom/anythink/expressad/video/bt/a/a;->b:I

    invoke-static {p2, v6, p1}, Lcom/anythink/expressad/video/bt/a/a;->a(ILjava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_6
    const-string v5, "stop"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    sget-object p2, Lcom/anythink/expressad/video/bt/a/a;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->stop()V

    return-void

    :cond_7
    iget p2, p0, Lcom/anythink/expressad/video/bt/a/a;->b:I

    invoke-static {p2, v6, p1}, Lcom/anythink/expressad/video/bt/a/a;->a(ILjava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_8
    const-string v5, "setVolume"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-eqz v5, :cond_d

    const/4 p2, 0x0

    if-eqz p3, :cond_b

    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v9, 0x2

    if-le v5, v9, :cond_b

    invoke-virtual {p3, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {p3, v9}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p3

    if-eqz v5, :cond_9

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    const-string v10, "leftVolume"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    if-ne v9, v7, :cond_9

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v8

    double-to-float v5, v8

    goto :goto_0

    :cond_9
    const/4 v5, 0x0

    :goto_0
    if-eqz p3, :cond_a

    invoke-virtual {p3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "rightVolume"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    if-ne v2, v7, :cond_a

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide p2

    double-to-float p2, p2

    move p3, p2

    move p2, v5

    goto :goto_1

    :cond_a
    move p2, v5

    :cond_b
    const/4 p3, 0x0

    :goto_1
    sget-object v1, Lcom/anythink/expressad/video/bt/a/a;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p2, p3}, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->setVolume(FF)V

    return-void

    :cond_c
    iget p2, p0, Lcom/anythink/expressad/video/bt/a/a;->b:I

    invoke-static {p2, v6, p1}, Lcom/anythink/expressad/video/bt/a/a;->a(ILjava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_d
    const-string v5, "setPlaybackParams"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_10

    const/high16 p2, 0x3f800000    # 1.0f

    if-eqz p3, :cond_e

    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-le v5, v8, :cond_e

    invoke-virtual {p3, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p3

    if-eqz p3, :cond_e

    invoke-virtual {p3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "speed"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    if-ne v2, v7, :cond_e

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide p2

    double-to-float p2, p2

    :cond_e
    sget-object p3, Lcom/anythink/expressad/video/bt/a/a;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {p3, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;

    if-eqz p3, :cond_f

    invoke-virtual {p3, p2}, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->setPlaybackParams(F)V

    return-void

    :cond_f
    iget p2, p0, Lcom/anythink/expressad/video/bt/a/a;->b:I

    invoke-static {p2, v6, p1}, Lcom/anythink/expressad/video/bt/a/a;->a(ILjava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_10
    iget p2, p0, Lcom/anythink/expressad/video/bt/a/a;->b:I

    const-string p3, "method not found"

    invoke-static {p2, p3, p1}, Lcom/anythink/expressad/video/bt/a/a;->a(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    iget p3, p0, Lcom/anythink/expressad/video/bt/a/a;->b:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "exception:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2, p1}, Lcom/anythink/expressad/video/bt/a/a;->a(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

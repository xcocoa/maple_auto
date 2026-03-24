.class public Lcom/octopus/ad/b/b$q;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "q"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/octopus/ad/b/b$s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lcom/octopus/ad/b/b$q;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/octopus/ad/b/b$q;->b(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/octopus/ad/b/b$q;->c(Ljava/lang/String;)Lcom/octopus/ad/b/b$q;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static a([B)Lcom/octopus/ad/b/b$q;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v1}, Lcom/octopus/ad/b/b$q;->c(Ljava/lang/String;)Lcom/octopus/ad/b/b$q;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method private static a(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/octopus/ad/b/b$q;->b(Lorg/json/JSONArray;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static b(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    const-string p0, "UTF-8"

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lorg/json/JSONArray;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static c(Ljava/lang/String;)Lcom/octopus/ad/b/b$q;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encryptStr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ServerResponse"

    invoke-static {v2, v1}, Lcom/octopus/ad/utils/b/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object v1

    iget-object v1, v1, Lcom/octopus/ad/internal/m;->h:Landroid/content/Context;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v4, "encrypt"

    invoke-static {v1, v4, v3}, Lcom/octopus/ad/internal/utilities/SPUtils;->getFromGroupSdk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/octopus/ad/utils/b/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/octopus/ad/utils/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decryptStr = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/octopus/ad/utils/b/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/octopus/ad/b/b$q;

    invoke-direct {v3}, Lcom/octopus/ad/b/b$q;-><init>()V

    :try_start_0
    const-string v0, "errcode"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/octopus/ad/b/b$q;->a(Ljava/lang/String;)V

    const-string v0, "errmsg"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/octopus/ad/b/b$q;->b(Ljava/lang/String;)V

    const-string v0, "status"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/octopus/ad/b/b$q;->a(I)V

    const-string v0, "ts"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/octopus/ad/b/b$q;->a(J)V

    const-string v0, "spaceInfo"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/octopus/ad/b/b$q;->b(Lorg/json/JSONArray;)Z

    move-result v4

    if-eqz v4, :cond_21

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_20

    new-instance v6, Lcom/octopus/ad/b/b$s;

    invoke-direct {v6}, Lcom/octopus/ad/b/b$s;-><init>()V

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_1f

    const-string v8, "spaceID"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/octopus/ad/b/b$s;->a(Ljava/lang/String;)V

    const-string v8, "spaceParam"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/octopus/ad/b/b$s;->b(Ljava/lang/String;)V

    const-string v8, "adpType"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Lcom/octopus/ad/b/e$a;->a(I)Lcom/octopus/ad/b/e$a;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/octopus/ad/b/b$s;->a(Lcom/octopus/ad/b/e$a;)V

    const-string v8, "refreshInterval"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/octopus/ad/b/b$s;->a(I)V

    const-string v8, "filter"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/octopus/ad/b/b$s;->b(I)V

    const-string v8, "screenDirection"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Lcom/octopus/ad/b/e$h;->a(I)Lcom/octopus/ad/b/e$h;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/octopus/ad/b/b$s;->a(Lcom/octopus/ad/b/e$h;)V

    const-string v8, "width"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/octopus/ad/b/b$s;->c(Ljava/lang/String;)V

    const-string v8, "height"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/octopus/ad/b/b$s;->d(Ljava/lang/String;)V

    const-string v8, "adpPosition"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    new-instance v9, Lcom/octopus/ad/b/b$f;

    invoke-direct {v9}, Lcom/octopus/ad/b/b$f;-><init>()V

    const-string v10, "x"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/octopus/ad/b/b$f;->a(Ljava/lang/String;)V

    const-string v10, "y"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/octopus/ad/b/b$f;->b(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Lcom/octopus/ad/b/b$s;->a(Lcom/octopus/ad/b/b$f;)V

    const-string v8, "interEvent"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    const-string v9, "v"

    if-eqz v8, :cond_6

    :try_start_1
    new-instance v10, Lcom/octopus/ad/b/b$m;

    invoke-direct {v10}, Lcom/octopus/ad/b/b$m;-><init>()V

    const-string v11, "shakeEvent"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    if-eqz v11, :cond_2

    new-instance v12, Lcom/octopus/ad/b/b$r;

    invoke-direct {v12}, Lcom/octopus/ad/b/b$r;-><init>()V

    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/octopus/ad/b/b$r;->a(I)V

    const-string v13, "sr"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Lcom/octopus/ad/b/b$r;->a(D)V

    invoke-virtual {v10, v12}, Lcom/octopus/ad/b/b$m;->a(Lcom/octopus/ad/b/b$r;)V

    :cond_2
    const-string v11, "scrollEvent"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    if-eqz v11, :cond_3

    new-instance v12, Lcom/octopus/ad/b/b$p;

    invoke-direct {v12}, Lcom/octopus/ad/b/b$p;-><init>()V

    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v12, v11}, Lcom/octopus/ad/b/b$p;->a(I)V

    invoke-virtual {v10, v12}, Lcom/octopus/ad/b/b$m;->a(Lcom/octopus/ad/b/b$p;)V

    :cond_3
    const-string v11, "fullScreenClk"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    if-eqz v11, :cond_4

    new-instance v12, Lcom/octopus/ad/b/b$l;

    invoke-direct {v12}, Lcom/octopus/ad/b/b$l;-><init>()V

    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v12, v11}, Lcom/octopus/ad/b/b$l;->a(I)V

    invoke-virtual {v10, v12}, Lcom/octopus/ad/b/b$m;->a(Lcom/octopus/ad/b/b$l;)V

    :cond_4
    const-string v11, "regionScreenClk"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_5

    new-instance v11, Lcom/octopus/ad/b/b$o;

    invoke-direct {v11}, Lcom/octopus/ad/b/b$o;-><init>()V

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v11, v8}, Lcom/octopus/ad/b/b$o;->a(I)V

    invoke-virtual {v10, v11}, Lcom/octopus/ad/b/b$m;->a(Lcom/octopus/ad/b/b$o;)V

    :cond_5
    invoke-virtual {v6, v10}, Lcom/octopus/ad/b/b$s;->a(Lcom/octopus/ad/b/b$m;)V

    :cond_6
    const-string v8, "strategy"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    const-string v10, "t"

    if-eqz v8, :cond_b

    :try_start_2
    new-instance v11, Lcom/octopus/ad/b/b$t;

    invoke-direct {v11}, Lcom/octopus/ad/b/b$t;-><init>()V

    const-string v12, "pass"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    if-eqz v12, :cond_7

    new-instance v13, Lcom/octopus/ad/b/b$n;

    invoke-direct {v13}, Lcom/octopus/ad/b/b$n;-><init>()V

    invoke-virtual {v12, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v13, v12}, Lcom/octopus/ad/b/b$n;->a(I)V

    invoke-virtual {v11, v13}, Lcom/octopus/ad/b/b$t;->a(Lcom/octopus/ad/b/b$n;)V

    :cond_7
    const-string v12, "auto"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    const-string v13, "s"

    const-string v14, "f"

    if-eqz v12, :cond_8

    :try_start_3
    new-instance v15, Lcom/octopus/ad/b/b$g;

    invoke-direct {v15}, Lcom/octopus/ad/b/b$g;-><init>()V

    invoke-virtual {v12, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v15, v4}, Lcom/octopus/ad/b/b$g;->c(I)V

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v15, v4}, Lcom/octopus/ad/b/b$g;->a(I)V

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v15, v4}, Lcom/octopus/ad/b/b$g;->b(I)V

    const-string v4, "cr"

    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v15, v4}, Lcom/octopus/ad/b/b$g;->d(I)V

    invoke-virtual {v11, v15}, Lcom/octopus/ad/b/b$t;->a(Lcom/octopus/ad/b/b$g;)V

    :cond_8
    const-string v4, "callback"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_9

    new-instance v12, Lcom/octopus/ad/b/b$h;

    invoke-direct {v12}, Lcom/octopus/ad/b/b$h;-><init>()V

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v12, v4}, Lcom/octopus/ad/b/b$h;->a(I)V

    invoke-virtual {v11, v12}, Lcom/octopus/ad/b/b$t;->a(Lcom/octopus/ad/b/b$h;)V

    :cond_9
    const-string v4, "dpUp"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_a

    new-instance v8, Lcom/octopus/ad/b/b$k;

    invoke-direct {v8}, Lcom/octopus/ad/b/b$k;-><init>()V

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/octopus/ad/b/b$k;->c(I)V

    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/octopus/ad/b/b$k;->a(I)V

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/octopus/ad/b/b$k;->b(I)V

    const-string v9, "o"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/octopus/ad/b/b$k;->a(Z)V

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v4}, Lcom/octopus/ad/internal/utilities/JsonUtil;->getStringArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/octopus/ad/b/b$k;->a(Ljava/util/List;)V

    invoke-virtual {v11, v8}, Lcom/octopus/ad/b/b$t;->a(Lcom/octopus/ad/b/b$k;)V

    :cond_a
    invoke-virtual {v6, v11}, Lcom/octopus/ad/b/b$s;->a(Lcom/octopus/ad/b/b$t;)V

    :cond_b
    const-string v4, "autoClose"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v6, v4}, Lcom/octopus/ad/b/b$s;->a(Z)V

    const-string v4, "maxTime"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/octopus/ad/b/b$s;->c(I)V

    const-string v4, "manualClosable"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v6, v4}, Lcom/octopus/ad/b/b$s;->b(Z)V

    const-string v4, "minTime"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/octopus/ad/b/b$s;->d(I)V

    const-string v4, "wifiPreload"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v6, v4}, Lcom/octopus/ad/b/b$s;->c(Z)V

    const-string v4, "mute"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v6, v4}, Lcom/octopus/ad/b/b$s;->d(Z)V

    const-string v4, "fullScreen"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v6, v4}, Lcom/octopus/ad/b/b$s;->e(Z)V

    const-string v4, "backgroundDim"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v6, v4}, Lcom/octopus/ad/b/b$s;->f(Z)V

    const-string v4, "autoPlay"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v6, v4}, Lcom/octopus/ad/b/b$s;->g(Z)V

    const-string v4, "orgID"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/octopus/ad/b/b$s;->e(I)V

    const-string v4, "contentType"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/octopus/ad/b/b$s;->f(I)V

    const-string v4, "appID"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/octopus/ad/b/b$s;->e(Ljava/lang/String;)V

    const-string v4, "acratio"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/octopus/ad/b/b$s;->g(I)V

    const-string v4, "adResponse"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4}, Lcom/octopus/ad/b/b$q;->b(Lorg/json/JSONArray;)Z

    move-result v8

    if-eqz v8, :cond_1e

    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_1d

    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    if-eqz v9, :cond_1c

    new-instance v11, Lcom/octopus/ad/b/b$d;

    invoke-direct {v11}, Lcom/octopus/ad/b/b$d;-><init>()V

    const-string v12, "extInfo"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/octopus/ad/b/b$d;->a(Ljava/lang/String;)V

    const-string v12, "adid"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/octopus/ad/b/b$d;->b(Ljava/lang/String;)V

    const-string v12, "contentInfo"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v12}, Lcom/octopus/ad/b/b$q;->b(Lorg/json/JSONArray;)Z

    move-result v14

    if-eqz v14, :cond_10

    const/4 v14, 0x0

    :goto_2
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v14, v15, :cond_f

    invoke-virtual {v12, v14}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    move-object/from16 v16, v0

    new-instance v0, Lcom/octopus/ad/b/b$a;

    invoke-direct {v0}, Lcom/octopus/ad/b/b$a;-><init>()V

    move-object/from16 v17, v4

    const-string v4, "template"

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/octopus/ad/b/b$a;->a(Ljava/lang/String;)V

    const-string v4, "renderType"

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/octopus/ad/b/e$f;->a(I)Lcom/octopus/ad/b/e$f;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/octopus/ad/b/b$a;->a(Lcom/octopus/ad/b/e$f;)V

    const-string v4, "adcontentSlot"

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v4}, Lcom/octopus/ad/b/b$q;->b(Lorg/json/JSONArray;)Z

    move-result v15

    if-eqz v15, :cond_e

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 v19, v2

    move-object/from16 v18, v12

    const/4 v12, 0x0

    :goto_3
    :try_start_4
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v12, v2, :cond_d

    invoke-virtual {v4, v12}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_c

    move-object/from16 v20, v4

    new-instance v4, Lcom/octopus/ad/b/b$e;

    invoke-direct {v4}, Lcom/octopus/ad/b/b$e;-><init>()V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    move-object/from16 v21, v3

    :try_start_5
    const-string v3, "md5"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/octopus/ad/b/b$e;->a(Ljava/lang/String;)V

    const-string v3, "content"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "content_url"

    move/from16 v22, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v23, v1

    const-string v1, ""

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, v2}, Lcom/octopus/ad/b/b$e;->b(Ljava/lang/String;)V

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_c
    move-object/from16 v23, v1

    move-object/from16 v21, v3

    move-object/from16 v20, v4

    move/from16 v22, v5

    :goto_4
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v4, v20

    move-object/from16 v3, v21

    move/from16 v5, v22

    move-object/from16 v1, v23

    goto :goto_3

    :cond_d
    move-object/from16 v23, v1

    move-object/from16 v21, v3

    move/from16 v22, v5

    invoke-virtual {v0, v15}, Lcom/octopus/ad/b/b$a;->a(Ljava/util/List;)V

    goto :goto_5

    :catch_0
    move-exception v0

    goto/16 :goto_c

    :cond_e
    move-object/from16 v23, v1

    move-object/from16 v19, v2

    move-object/from16 v21, v3

    move/from16 v22, v5

    move-object/from16 v18, v12

    :goto_5
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, v16

    move-object/from16 v4, v17

    move-object/from16 v12, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v21

    move/from16 v5, v22

    move-object/from16 v1, v23

    goto/16 :goto_2

    :cond_f
    move-object/from16 v16, v0

    move-object/from16 v23, v1

    move-object/from16 v19, v2

    move-object/from16 v21, v3

    move-object/from16 v17, v4

    move/from16 v22, v5

    invoke-virtual {v11, v13}, Lcom/octopus/ad/b/b$d;->a(Ljava/util/List;)V

    goto :goto_6

    :cond_10
    move-object/from16 v16, v0

    move-object/from16 v23, v1

    move-object/from16 v19, v2

    move-object/from16 v21, v3

    move-object/from16 v17, v4

    move/from16 v22, v5

    :goto_6
    const-string v0, "adLogo"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_11

    new-instance v1, Lcom/octopus/ad/b/b$c;

    invoke-direct {v1}, Lcom/octopus/ad/b/b$c;-><init>()V

    const-string v2, "adLabel"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/octopus/ad/b/b$c;->b(Ljava/lang/String;)V

    const-string v2, "adLabelUrl"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/octopus/ad/b/b$c;->a(Ljava/lang/String;)V

    const-string v2, "sourceLabel"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/octopus/ad/b/b$c;->d(Ljava/lang/String;)V

    const-string v2, "sourceUrl"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/octopus/ad/b/b$c;->c(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Lcom/octopus/ad/b/b$d;->a(Lcom/octopus/ad/b/b$c;)V

    :cond_11
    const-string v0, "price"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/octopus/ad/b/b$d;->a(I)V

    const-string v0, "tagid"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/octopus/ad/b/b$d;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/octopus/ad/b/b$b;

    invoke-direct {v0}, Lcom/octopus/ad/b/b$b;-><init>()V

    const-string v1, "interactInfo"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1b

    const-string v2, "thirdpartInfo"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/octopus/ad/b/b$q;->b(Lorg/json/JSONArray;)Z

    move-result v3

    if-eqz v3, :cond_14

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_7
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_13

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_12

    new-instance v9, Lcom/octopus/ad/b/b$j;

    invoke-direct {v9}, Lcom/octopus/ad/b/b$j;-><init>()V

    const-string v12, "clickUrl"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/octopus/ad/b/b$j;->b(Ljava/lang/String;)V

    const-string v12, "viewUrl"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/octopus/ad/b/b$j;->a(Ljava/lang/String;)V

    const-string v12, "dpSucessUrl"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/octopus/ad/b/b$j;->c(Ljava/lang/String;)V

    const-string v12, "nurl"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/octopus/ad/b/b$j;->d(Ljava/lang/String;)V

    const-string v12, "lurl"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/octopus/ad/b/b$j;->e(Ljava/lang/String;)V

    const-string v12, "convertUrl"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/octopus/ad/b/b$j;->f(Ljava/lang/String;)V

    const-string v12, "onFinish"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/octopus/ad/b/b$j;->j(Ljava/lang/String;)V

    const-string v12, "onPause"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/octopus/ad/b/b$j;->h(Ljava/lang/String;)V

    const-string v12, "onRecover"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/octopus/ad/b/b$j;->i(Ljava/lang/String;)V

    const-string v12, "onStart"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Lcom/octopus/ad/b/b$j;->g(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_13
    invoke-virtual {v0, v3}, Lcom/octopus/ad/b/b$b;->a(Ljava/util/List;)V

    :cond_14
    const-string v2, "apkName"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/octopus/ad/b/b$b;->c(Ljava/lang/String;)V

    const-string v2, "appDesc"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/octopus/ad/b/b$b;->f(Ljava/lang/String;)V

    const-string v2, "appDownloadURL"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/octopus/ad/b/b$b;->g(Ljava/lang/String;)V

    const-string v2, "appStoreID"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/octopus/ad/b/b$b;->e(Ljava/lang/String;)V

    const-string v2, "landingPageUrl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/octopus/ad/b/b$b;->a(Ljava/lang/String;)V

    const-string v2, "deeplinkUrl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/octopus/ad/b/b$b;->b(Ljava/lang/String;)V

    const-string v2, "interactType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/octopus/ad/b/b$b;->a(I)V

    const-string v2, "packageName"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/octopus/ad/b/b$b;->d(Ljava/lang/String;)V

    const-string v2, "useBuiltInBrow"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/octopus/ad/b/b$b;->a(Z)V

    const-string v2, "openExternal"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/octopus/ad/b/b$b;->b(I)V

    const-string v2, "followTrackExt"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "complianceInfo"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_15

    new-instance v4, Lcom/octopus/ad/b/b$i;

    invoke-direct {v4}, Lcom/octopus/ad/b/b$i;-><init>()V

    const-string v5, "appName"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/octopus/ad/b/b$i;->a(Ljava/lang/String;)V

    const-string v5, "appVersion"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/octopus/ad/b/b$i;->b(Ljava/lang/String;)V

    const-string v5, "developerName"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/octopus/ad/b/b$i;->c(Ljava/lang/String;)V

    const-string v5, "privacyUrl"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/octopus/ad/b/b$i;->d(Ljava/lang/String;)V

    const-string v5, "permissionsUrl"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/octopus/ad/b/b$i;->e(Ljava/lang/String;)V

    const-string v5, "functionDescUrl"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/octopus/ad/b/b$i;->f(Ljava/lang/String;)V

    const-string v5, "appIconURL"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/octopus/ad/b/b$i;->g(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/octopus/ad/b/b$b;->a(Lcom/octopus/ad/b/b$i;)V

    :cond_15
    new-instance v3, Lcom/octopus/ad/b/b$b$a;

    invoke-direct {v3}, Lcom/octopus/ad/b/b$b$a;-><init>()V

    if-eqz v2, :cond_16

    const-string v4, "open"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v4}, Lcom/octopus/ad/b/b$q;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/octopus/ad/b/b$b$a;->a(Ljava/util/List;)V

    const-string v4, "beginDownload"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v4}, Lcom/octopus/ad/b/b$q;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/octopus/ad/b/b$b$a;->b(Ljava/util/List;)V

    const-string v4, "download"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v4}, Lcom/octopus/ad/b/b$q;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/octopus/ad/b/b$b$a;->c(Ljava/util/List;)V

    const-string v4, "beginInstall"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v4}, Lcom/octopus/ad/b/b$q;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/octopus/ad/b/b$b$a;->d(Ljava/util/List;)V

    const-string v4, "install"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v4}, Lcom/octopus/ad/b/b$q;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/octopus/ad/b/b$b$a;->e(Ljava/util/List;)V

    const-string v4, "active"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v4}, Lcom/octopus/ad/b/b$q;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/octopus/ad/b/b$b$a;->f(Ljava/util/List;)V

    const-string v4, "close"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v4}, Lcom/octopus/ad/b/b$q;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/octopus/ad/b/b$b$a;->g(Ljava/util/List;)V

    const-string v4, "showSlide"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v4}, Lcom/octopus/ad/b/b$q;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/octopus/ad/b/b$b$a;->h(Ljava/util/List;)V

    const-string v4, "pageClose"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v4}, Lcom/octopus/ad/b/b$q;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/octopus/ad/b/b$b$a;->j(Ljava/util/List;)V

    const-string v4, "pageLoad"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v4}, Lcom/octopus/ad/b/b$q;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/octopus/ad/b/b$b$a;->i(Ljava/util/List;)V

    const-string v4, "pageAction"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v4}, Lcom/octopus/ad/b/b$q;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/octopus/ad/b/b$b$a;->k(Ljava/util/List;)V

    const-string v4, "deepLinkSuccess"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v4}, Lcom/octopus/ad/b/b$q;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/octopus/ad/b/b$b$a;->l(Ljava/util/List;)V

    const-string v4, "deepLinkFail"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v4}, Lcom/octopus/ad/b/b$q;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/octopus/ad/b/b$b$a;->m(Ljava/util/List;)V

    const-string v4, "dpAppInstalled"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v4}, Lcom/octopus/ad/b/b$q;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/octopus/ad/b/b$b$a;->n(Ljava/util/List;)V

    const-string v4, "dpAppNotInstalled"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/octopus/ad/b/b$q;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/octopus/ad/b/b$b$a;->o(Ljava/util/List;)V

    invoke-virtual {v0, v3}, Lcom/octopus/ad/b/b$b;->a(Lcom/octopus/ad/b/b$b$a;)V

    :cond_16
    const-string v2, "videoTrackExt"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lcom/octopus/ad/b/b$b$b;

    invoke-direct {v2}, Lcom/octopus/ad/b/b$b$b;-><init>()V

    if-eqz v1, :cond_1a

    const-string v3, "start"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3}, Lcom/octopus/ad/b/b$q;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/octopus/ad/b/b$b$b;->a(Ljava/util/List;)V

    const-string v3, "pause"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3}, Lcom/octopus/ad/b/b$q;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/octopus/ad/b/b$b$b;->b(Ljava/util/List;)V

    const-string v3, "continue"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3}, Lcom/octopus/ad/b/b$q;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/octopus/ad/b/b$b$b;->c(Ljava/util/List;)V

    const-string v3, "exit"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3}, Lcom/octopus/ad/b/b$q;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/octopus/ad/b/b$b$b;->d(Ljava/util/List;)V

    const-string v3, "complete"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3}, Lcom/octopus/ad/b/b$q;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/octopus/ad/b/b$b$b;->e(Ljava/util/List;)V

    const-string v3, "showTrack"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Lcom/octopus/ad/b/b$q;->b(Lorg/json/JSONArray;)Z

    move-result v4

    if-eqz v4, :cond_19

    const/4 v4, 0x0

    :goto_8
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_18

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_17

    new-instance v9, Lcom/octopus/ad/b/b$b$b$a;

    invoke-direct {v9}, Lcom/octopus/ad/b/b$b$b$a;-><init>()V

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v9, v12}, Lcom/octopus/ad/b/b$b$b$a;->a(I)V

    const-string v12, "url"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-static {v5}, Lcom/octopus/ad/b/b$q;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v9, v5}, Lcom/octopus/ad/b/b$b$b$a;->a(Ljava/util/List;)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_18
    invoke-virtual {v2, v3}, Lcom/octopus/ad/b/b$b$b;->f(Ljava/util/List;)V

    :cond_19
    invoke-virtual {v0, v2}, Lcom/octopus/ad/b/b$b;->a(Lcom/octopus/ad/b/b$b$b;)V

    :cond_1a
    invoke-virtual {v11, v0}, Lcom/octopus/ad/b/b$d;->a(Lcom/octopus/ad/b/b$b;)V

    :cond_1b
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1c
    move-object/from16 v16, v0

    move-object/from16 v23, v1

    move-object/from16 v19, v2

    move-object/from16 v21, v3

    move-object/from16 v17, v4

    move/from16 v22, v5

    :goto_9
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, v16

    move-object/from16 v4, v17

    move-object/from16 v2, v19

    move-object/from16 v3, v21

    move/from16 v5, v22

    move-object/from16 v1, v23

    goto/16 :goto_1

    :cond_1d
    move-object/from16 v16, v0

    move-object/from16 v23, v1

    move-object/from16 v19, v2

    move-object/from16 v21, v3

    move/from16 v22, v5

    invoke-virtual {v6, v7}, Lcom/octopus/ad/b/b$s;->a(Ljava/util/List;)V

    move-object/from16 v0, v23

    goto :goto_a

    :cond_1e
    move-object/from16 v16, v0

    move-object/from16 v19, v2

    move-object/from16 v21, v3

    move/from16 v22, v5

    move-object v0, v1

    :goto_a
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_b

    :catch_1
    move-exception v0

    move-object/from16 v1, v21

    goto :goto_d

    :cond_1f
    move-object/from16 v16, v0

    move-object v0, v1

    move-object/from16 v19, v2

    move-object/from16 v21, v3

    move/from16 v22, v5

    :goto_b
    add-int/lit8 v5, v22, 0x1

    move-object v1, v0

    move-object/from16 v0, v16

    move-object/from16 v2, v19

    move-object/from16 v3, v21

    goto/16 :goto_0

    :cond_20
    move-object v0, v1

    move-object/from16 v19, v2

    move-object v1, v3

    :try_start_6
    invoke-virtual {v1, v0}, Lcom/octopus/ad/b/b$q;->a(Ljava/util/List;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_e

    :catch_2
    move-exception v0

    goto :goto_d

    :cond_21
    move-object v1, v3

    goto :goto_e

    :catch_3
    move-exception v0

    move-object/from16 v19, v2

    :goto_c
    move-object v1, v3

    :goto_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONException e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v19

    invoke-static {v2, v0}, Lcom/octopus/ad/utils/b/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_e
    return-object v1
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/b/b$q;->e:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/octopus/ad/b/b$q;->a:I

    return-void
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/octopus/ad/b/b$q;->d:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/b$q;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/octopus/ad/b/b$s;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/octopus/ad/b/b$q;->e:Ljava/util/List;

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/octopus/ad/b/b$q;->a:I

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/b$q;->c:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/b/b$q;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/b/b$q;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/octopus/ad/b/b$s;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/octopus/ad/b/b$q;->e:Ljava/util/List;

    return-object v0
.end method

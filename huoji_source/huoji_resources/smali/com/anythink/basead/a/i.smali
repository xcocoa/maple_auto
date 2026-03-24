.class public final Lcom/anythink/basead/a/i;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/anythink/basead/c/b;)Ljava/lang/String;
    .locals 1

    iget-object p1, p1, Lcom/anythink/basead/c/b;->a:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const-string v0, "\\{__CLICK_ID__\\}"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Lcom/anythink/basead/c/i;)Ljava/lang/String;
    .locals 12

    const-string v0, "up_y"

    const-string v1, "utf-8"

    const-string v2, "{}"

    const-string v3, "up_x"

    const-string v4, "down_y"

    const-string v5, "down_x"

    iget-object v6, p1, Lcom/anythink/basead/c/i;->g:Lcom/anythink/basead/c/a;

    iget v7, p1, Lcom/anythink/basead/c/i;->e:I

    iget p1, p1, Lcom/anythink/basead/c/i;->f:I

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget v9, v6, Lcom/anythink/basead/c/a;->e:I

    invoke-virtual {v8, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v9, v6, Lcom/anythink/basead/c/a;->f:I

    invoke-virtual {v8, v4, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v9, v6, Lcom/anythink/basead/c/a;->g:I

    invoke-virtual {v8, v3, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v9, v6, Lcom/anythink/basead/c/a;->h:I

    invoke-virtual {v8, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    iget v10, v6, Lcom/anythink/basead/c/a;->e:I

    int-to-float v10, v10

    int-to-float v7, v7

    div-float/2addr v10, v7

    const/high16 v11, 0x447a0000    # 1000.0f

    mul-float v10, v10, v11

    float-to-int v10, v10

    invoke-virtual {v9, v5, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v5, v6, Lcom/anythink/basead/c/a;->e:I

    int-to-float v5, v5

    int-to-float p1, p1

    div-float/2addr v5, p1

    mul-float v5, v5, v11

    float-to-int v5, v5

    invoke-virtual {v9, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v4, v6, Lcom/anythink/basead/c/a;->g:I

    int-to-float v4, v4

    div-float/2addr v4, v7

    mul-float v4, v4, v11

    float-to-int v4, v4

    invoke-virtual {v9, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v3, v6, Lcom/anythink/basead/c/a;->h:I

    int-to-float v3, v3

    div-float/2addr v3, p1

    mul-float v3, v3, v11

    float-to-int p1, v3

    invoke-virtual {v9, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object p1, v2

    :goto_0
    :try_start_3
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    iget-boolean v0, v6, Lcom/anythink/basead/c/a;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_2

    :cond_0
    const/4 v0, 0x2

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v6, Lcom/anythink/basead/c/a;->a:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "\\{__DOWN_X__\\}"

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v6, Lcom/anythink/basead/c/a;->b:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "\\{__DOWN_Y__\\}"

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v6, Lcom/anythink/basead/c/a;->c:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "\\{__UP_X__\\}"

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v6, Lcom/anythink/basead/c/a;->d:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "\\{__UP_Y__\\}"

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v6, Lcom/anythink/basead/c/a;->e:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "\\{__RE_DOWN_X__\\}"

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v6, Lcom/anythink/basead/c/a;->f:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "\\{__RE_DOWN_Y__\\}"

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v6, Lcom/anythink/basead/c/a;->g:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "\\{__RE_UP_X__\\}"

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v6, Lcom/anythink/basead/c/a;->h:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "\\{__RE_UP_Y__\\}"

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "\\{ABSOLUTE_COORD\\}"

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\{RELATIVE_COORD\\}"

    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\{__DPLINK_TYPE__\\}"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iget-boolean p1, v6, Lcom/anythink/basead/c/a;->i:Z

    const-string v0, ""

    const-string v1, "&apk_ptype=\\{apk_ptype\\}"

    if-eqz p1, :cond_1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    iget p1, v6, Lcom/anythink/basead/c/a;->j:I

    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\{apk_ptype\\}"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_3
    iget-boolean p1, v6, Lcom/anythink/basead/c/a;->i:Z

    if-eqz p1, :cond_3

    const-string p1, "1"

    goto :goto_4

    :cond_3
    const-string p1, "0"

    :goto_4
    const-string v0, "\\{opdptype\\}"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Lcom/anythink/basead/c/i;J)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p1, Lcom/anythink/basead/c/i;->g:Lcom/anythink/basead/c/a;

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lcom/anythink/basead/a/i;->a(Ljava/lang/String;Lcom/anythink/basead/c/i;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    iget-object v0, p1, Lcom/anythink/basead/c/i;->h:Lcom/anythink/basead/c/j;

    if-eqz v0, :cond_2

    invoke-static {p0, v0}, Lcom/anythink/basead/a/i;->a(Ljava/lang/String;Lcom/anythink/basead/c/j;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    iget-object v0, p1, Lcom/anythink/basead/c/i;->i:Lcom/anythink/basead/c/b;

    if-eqz v0, :cond_3

    invoke-static {p0, v0}, Lcom/anythink/basead/a/i;->a(Ljava/lang/String;Lcom/anythink/basead/c/b;)Ljava/lang/String;

    move-result-object p0

    :cond_3
    iget-object v0, p1, Lcom/anythink/basead/c/i;->l:Ljava/util/Map;

    if-eqz v0, :cond_4

    invoke-static {p0, v0}, Lcom/anythink/basead/a/i;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    :cond_4
    const-wide/16 v2, 0x3e8

    div-long v2, p2, v2

    iget v0, p1, Lcom/anythink/basead/c/i;->c:I

    if-nez v0, :cond_5

    const-string v0, "__REQ_WIDTH__"

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/anythink/basead/c/i;->c:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v4, "\\{__REQ_WIDTH__\\}"

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iget v0, p1, Lcom/anythink/basead/c/i;->d:I

    if-nez v0, :cond_6

    const-string v0, "__REQ_HEIGHT__"

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/anythink/basead/c/i;->d:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v4, "\\{__REQ_HEIGHT__\\}"

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/anythink/basead/c/i;->e:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "\\{__WIDTH__\\}"

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget p1, p1, Lcom/anythink/basead/c/i;->f:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\{__HEIGHT__\\}"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\{__TS__\\}"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\{__TS_MSEC__\\}"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\{__END_TS__\\}"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\\{__END_TS_MSEC__\\}"

    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\{__PLAY_SEC__\\}"

    const-string p2, "0"

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\{"

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\}"

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Lcom/anythink/basead/c/j;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p1, Lcom/anythink/basead/c/j;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\{__VIDEO_TIME__\\}"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p1, Lcom/anythink/basead/c/j;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\{__BEGIN_TIME__\\}"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p1, Lcom/anythink/basead/c/j;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\{__END_TIME__\\}"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lcom/anythink/basead/c/j;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\{__PLAY_FIRST_FRAME__\\}"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lcom/anythink/basead/c/j;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\{__PLAY_LAST_FRAME__\\}"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lcom/anythink/basead/c/j;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\{__SCENE__\\}"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lcom/anythink/basead/c/j;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\{__TYPE__\\}"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lcom/anythink/basead/c/j;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\{__BEHAVIOR__\\}"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lcom/anythink/basead/c/j;->u:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\{__STATUS__\\}"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p1, Lcom/anythink/basead/c/j;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\{__PLAY_SEC__\\}"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p1, Lcom/anythink/basead/c/j;->f:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\{__TS__\\}"

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p1, Lcom/anythink/basead/c/j;->f:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\{__TS_MSEC__\\}"

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p1, Lcom/anythink/basead/c/j;->g:J

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\{__END_TS__\\}"

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p1, Lcom/anythink/basead/c/j;->g:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\{__END_TS_MSEC__\\}"

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p1, Lcom/anythink/basead/c/j;->h:J

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p1, Lcom/anythink/basead/c/j;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\{__PLAY_MSEC__\\}"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "replaceAdxNoticeMap, replaceKey -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", replaceValue: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "replaceAdxNoticeMap, error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private static a(ILcom/anythink/basead/c/i;Lcom/anythink/core/common/f/aj;Lcom/anythink/core/common/f/al;Ljava/util/Map;)V
    .locals 1
    .param p1    # Lcom/anythink/basead/c/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/anythink/basead/c/i;",
            "Lcom/anythink/core/common/f/aj;",
            "Lcom/anythink/core/common/f/al;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p3}, Lcom/anythink/core/common/f/al;->aq()Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p3}, Lcom/anythink/core/common/f/al;->ao()Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p3}, Lcom/anythink/core/common/f/al;->an()Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {p3}, Lcom/anythink/core/common/f/al;->am()Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {p3}, Lcom/anythink/core/common/f/al;->al()Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p3}, Lcom/anythink/core/common/f/al;->aj()Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {p3}, Lcom/anythink/core/common/f/al;->ak()Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p3}, Lcom/anythink/core/common/f/al;->ai()Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p3}, Lcom/anythink/core/common/f/al;->ah()Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p3}, Lcom/anythink/core/common/f/al;->ag()Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p3}, Lcom/anythink/core/common/f/al;->af()Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p3}, Lcom/anythink/core/common/f/al;->ae()Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p3}, Lcom/anythink/core/common/f/al;->Q()Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p3}, Lcom/anythink/core/common/f/al;->ad()Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p3}, Lcom/anythink/core/common/f/al;->P()Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p3}, Lcom/anythink/core/common/f/al;->O()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :pswitch_11
    invoke-virtual {p3}, Lcom/anythink/core/common/f/al;->ac()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :pswitch_12
    invoke-virtual {p3}, Lcom/anythink/core/common/f/al;->ab()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :pswitch_13
    invoke-virtual {p3}, Lcom/anythink/core/common/f/al;->aa()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :pswitch_14
    invoke-virtual {p3}, Lcom/anythink/core/common/f/al;->J()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :pswitch_15
    invoke-virtual {p3}, Lcom/anythink/core/common/f/al;->L()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :pswitch_16
    invoke-virtual {p3}, Lcom/anythink/core/common/f/al;->K()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :pswitch_17
    invoke-virtual {p3}, Lcom/anythink/core/common/f/al;->I()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :pswitch_18
    invoke-virtual {p3}, Lcom/anythink/core/common/f/al;->A()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :pswitch_19
    invoke-virtual {p3}, Lcom/anythink/core/common/f/al;->C()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :pswitch_1a
    invoke-virtual {p3}, Lcom/anythink/core/common/f/al;->B()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :pswitch_1b
    invoke-virtual {p3}, Lcom/anythink/core/common/f/al;->N()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :pswitch_1c
    invoke-virtual {p3}, Lcom/anythink/core/common/f/al;->M()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :pswitch_1d
    invoke-virtual {p3}, Lcom/anythink/core/common/f/al;->H()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :pswitch_1e
    invoke-virtual {p3}, Lcom/anythink/core/common/f/al;->G()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :pswitch_1f
    invoke-virtual {p3}, Lcom/anythink/core/common/f/al;->F()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :pswitch_20
    invoke-virtual {p3}, Lcom/anythink/core/common/f/al;->E()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :pswitch_21
    invoke-virtual {p3}, Lcom/anythink/core/common/f/al;->D()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :goto_0
    const-string p3, ""

    :goto_1
    invoke-static {p3}, Lcom/anythink/basead/a/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/anythink/basead/g/f;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/anythink/basead/g/f;-><init>(ILcom/anythink/core/common/f/aj;Ljava/lang/String;Ljava/util/Map;)V

    iget-object p0, p1, Lcom/anythink/basead/c/i;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/anythink/basead/g/f;->a(Ljava/lang/String;)V

    const/4 p0, 0x0

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Lcom/anythink/core/common/h/a;->a(ILcom/anythink/core/common/h/k;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static a(ILcom/anythink/core/common/f/aj;Lcom/anythink/basead/c/i;)V
    .locals 12
    .param p2    # Lcom/anythink/basead/c/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/anythink/core/common/f/aj;->ah()Lcom/anythink/core/common/f/al;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/o/i;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    :try_start_0
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->e()[Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->ap()[Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->b()[Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->a()[Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :pswitch_5
    iget-object v4, p2, Lcom/anythink/basead/c/i;->h:Lcom/anythink/basead/c/j;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->z()Ljava/util/Map;

    move-result-object v5

    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    iget v4, v4, Lcom/anythink/basead/c/j;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->y()[Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->x()[Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->v()[Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->w()[Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->Z()[Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->Y()[Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->X()[Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->W()[Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->V()[Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->u()[Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->U()[Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->t()[Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :pswitch_12
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->s()[Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :pswitch_13
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->T()[Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :pswitch_14
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->S()[Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :pswitch_15
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->R()[Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :pswitch_16
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->n()[Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :pswitch_17
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->p()[Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :pswitch_18
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->o()[Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :pswitch_19
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->m()[Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :pswitch_1a
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->d()[Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :pswitch_1b
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->g()[Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :pswitch_1c
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->f()[Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :pswitch_1d
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->r()[Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :pswitch_1e
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->q()[Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :pswitch_1f
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->l()[Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :pswitch_20
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->k()[Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :pswitch_21
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->j()[Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :pswitch_22
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->i()[Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :pswitch_23
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->h()[Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :catchall_0
    move-exception v4

    goto :goto_5

    :cond_1
    :goto_0
    move-object v4, v2

    :goto_1
    if-eqz v4, :cond_4

    const/16 v5, 0x8

    if-eq p0, v5, :cond_3

    const/16 v5, 0x9

    if-ne p0, v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->o()Lcom/anythink/core/common/f/n;

    move-result-object v5

    invoke-virtual {v5}, Lcom/anythink/core/common/f/n;->aa()Z

    move-result v5

    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    array-length v8, v4

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v8, :cond_4

    aget-object v10, v4, v9

    invoke-static {v10, p2, v6, v7}, Lcom/anythink/basead/a/i;->a(Ljava/lang/String;Lcom/anythink/basead/c/i;J)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/anythink/basead/g/e;

    invoke-direct {v11, p0, v10, p1, v1}, Lcom/anythink/basead/g/e;-><init>(ILjava/lang/String;Lcom/anythink/core/common/f/aj;Ljava/util/Map;)V

    invoke-virtual {v11, v5}, Lcom/anythink/basead/g/e;->a(Z)V

    invoke-virtual {v11, v3, v2}, Lcom/anythink/core/common/h/a;->a(ILcom/anythink/core/common/h/k;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :goto_5
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    packed-switch p0, :pswitch_data_1

    :pswitch_24
    goto/16 :goto_6

    :pswitch_25
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->aq()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :pswitch_26
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->ao()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :pswitch_27
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->an()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :pswitch_28
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->am()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :pswitch_29
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->al()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :pswitch_2a
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->aj()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :pswitch_2b
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->ak()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :pswitch_2c
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->ai()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :pswitch_2d
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->ah()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :pswitch_2e
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->ag()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :pswitch_2f
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->af()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :pswitch_30
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->ae()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :pswitch_31
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->Q()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :pswitch_32
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->ad()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :pswitch_33
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->P()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :pswitch_34
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->O()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :pswitch_35
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->ac()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :pswitch_36
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->ab()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :pswitch_37
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->aa()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :pswitch_38
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->J()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :pswitch_39
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->L()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :pswitch_3a
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->K()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :pswitch_3b
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->I()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :pswitch_3c
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->A()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :pswitch_3d
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->C()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :pswitch_3e
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->B()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :pswitch_3f
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->N()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :pswitch_40
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->M()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :pswitch_41
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->H()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :pswitch_42
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->G()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :pswitch_43
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->F()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :pswitch_44
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->E()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :pswitch_45
    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->D()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :goto_6
    const-string v0, ""

    :goto_7
    invoke-static {v0}, Lcom/anythink/basead/a/i;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    new-instance v4, Lcom/anythink/basead/g/f;

    invoke-direct {v4, p0, p1, v0, v1}, Lcom/anythink/basead/g/f;-><init>(ILcom/anythink/core/common/f/aj;Ljava/lang/String;Ljava/util/Map;)V

    iget-object p0, p2, Lcom/anythink/basead/c/i;->b:Ljava/lang/String;

    invoke-virtual {v4, p0}, Lcom/anythink/basead/g/f;->a(Ljava/lang/String;)V

    invoke-virtual {v4, v3, v2}, Lcom/anythink/core/common/h/a;->a(ILcom/anythink/core/common/h/k;)V

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_24
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_24
        :pswitch_27
        :pswitch_26
        :pswitch_25
    .end packed-switch
.end method

.method private static a(ILcom/anythink/core/common/f/aj;Lcom/anythink/core/common/f/al;Ljava/util/Map;Lcom/anythink/basead/c/i;)V
    .locals 9
    .param p4    # Lcom/anythink/basead/c/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/anythink/core/common/f/aj;",
            "Lcom/anythink/core/common/f/al;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/basead/c/i;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    :try_start_0
    invoke-virtual {p2}, Lcom/anythink/core/common/f/al;->e()[Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p2}, Lcom/anythink/core/common/f/al;->ap()[Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p2}, Lcom/anythink/core/common/f/al;->b()[Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {p2}, Lcom/anythink/core/common/f/al;->a()[Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    :pswitch_5
    iget-object v1, p4, Lcom/anythink/basead/c/i;->h:Lcom/anythink/basead/c/j;

    invoke-virtual {p2}, Lcom/anythink/core/common/f/al;->z()Ljava/util/Map;

    move-result-object p2

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    iget v1, v1, Lcom/anythink/basead/c/j;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p2}, Lcom/anythink/core/common/f/al;->y()[Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {p2}, Lcom/anythink/core/common/f/al;->x()[Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p2}, Lcom/anythink/core/common/f/al;->v()[Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p2}, Lcom/anythink/core/common/f/al;->w()[Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p2}, Lcom/anythink/core/common/f/al;->Z()[Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p2}, Lcom/anythink/core/common/f/al;->Y()[Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p2}, Lcom/anythink/core/common/f/al;->X()[Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p2}, Lcom/anythink/core/common/f/al;->W()[Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p2}, Lcom/anythink/core/common/f/al;->V()[Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p2}, Lcom/anythink/core/common/f/al;->u()[Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p2}, Lcom/anythink/core/common/f/al;->U()[Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p2}, Lcom/anythink/core/common/f/al;->t()[Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    :pswitch_12
    invoke-virtual {p2}, Lcom/anythink/core/common/f/al;->s()[Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    :pswitch_13
    invoke-virtual {p2}, Lcom/anythink/core/common/f/al;->T()[Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :pswitch_14
    invoke-virtual {p2}, Lcom/anythink/core/common/f/al;->S()[Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :pswitch_15
    invoke-virtual {p2}, Lcom/anythink/core/common/f/al;->R()[Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :pswitch_16
    invoke-virtual {p2}, Lcom/anythink/core/common/f/al;->n()[Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :pswitch_17
    invoke-virtual {p2}, Lcom/anythink/core/common/f/al;->p()[Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :pswitch_18
    invoke-virtual {p2}, Lcom/anythink/core/common/f/al;->o()[Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :pswitch_19
    invoke-virtual {p2}, Lcom/anythink/core/common/f/al;->m()[Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :pswitch_1a
    invoke-virtual {p2}, Lcom/anythink/core/common/f/al;->d()[Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :pswitch_1b
    invoke-virtual {p2}, Lcom/anythink/core/common/f/al;->g()[Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :pswitch_1c
    invoke-virtual {p2}, Lcom/anythink/core/common/f/al;->f()[Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :pswitch_1d
    invoke-virtual {p2}, Lcom/anythink/core/common/f/al;->r()[Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :pswitch_1e
    invoke-virtual {p2}, Lcom/anythink/core/common/f/al;->q()[Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :pswitch_1f
    invoke-virtual {p2}, Lcom/anythink/core/common/f/al;->l()[Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :pswitch_20
    invoke-virtual {p2}, Lcom/anythink/core/common/f/al;->k()[Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :pswitch_21
    invoke-virtual {p2}, Lcom/anythink/core/common/f/al;->j()[Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :pswitch_22
    invoke-virtual {p2}, Lcom/anythink/core/common/f/al;->i()[Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :pswitch_23
    invoke-virtual {p2}, Lcom/anythink/core/common/f/al;->h()[Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_0
    :goto_0
    move-object p2, v0

    :goto_1
    if-eqz p2, :cond_3

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eq p0, v1, :cond_2

    const/16 v1, 0x9

    if-ne p0, v1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    goto :goto_3

    :cond_2
    :goto_2
    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->o()Lcom/anythink/core/common/f/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/f/n;->aa()Z

    move-result v1

    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    array-length v5, p2

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v5, :cond_3

    aget-object v7, p2, v6

    invoke-static {v7, p4, v3, v4}, Lcom/anythink/basead/a/i;->a(Ljava/lang/String;Lcom/anythink/basead/c/i;J)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/anythink/basead/g/e;

    invoke-direct {v8, p0, v7, p1, p3}, Lcom/anythink/basead/g/e;-><init>(ILjava/lang/String;Lcom/anythink/core/common/f/aj;Ljava/util/Map;)V

    invoke-virtual {v8, v1}, Lcom/anythink/basead/g/e;->a(Z)V

    invoke-virtual {v8, v2, v0}, Lcom/anythink/core/common/h/a;->a(ILcom/anythink/core/common/h/k;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :goto_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :catchall_0
    :cond_1
    return v1
.end method

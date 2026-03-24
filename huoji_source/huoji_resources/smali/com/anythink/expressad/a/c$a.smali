.class public final Lcom/anythink/expressad/a/c$a;
.super Lcom/anythink/expressad/foundation/g/g/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/a/c;


# direct methods
.method private constructor <init>(Lcom/anythink/expressad/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/a/c$a;->a:Lcom/anythink/expressad/a/c;

    invoke-direct {p0}, Lcom/anythink/expressad/foundation/g/g/a;-><init>()V

    return-void
.end method

.method private synthetic constructor <init>(Lcom/anythink/expressad/a/c;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anythink/expressad/a/c$a;-><init>(Lcom/anythink/expressad/a/c;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 13

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/anythink/expressad/a/c$a;->a:Lcom/anythink/expressad/a/c;

    new-instance v2, Lcom/anythink/expressad/a/c$b;

    invoke-direct {v2}, Lcom/anythink/expressad/a/c$b;-><init>()V

    iput-object v2, v1, Lcom/anythink/expressad/a/c;->a:Lcom/anythink/expressad/a/c$b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    const/4 v3, 0x2

    const-string v4, ".apk"

    const/16 v5, 0xa

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ge v1, v5, :cond_e

    :try_start_1
    iget-object v8, p0, Lcom/anythink/expressad/a/c$a;->a:Lcom/anythink/expressad/a/c;

    invoke-static {v8}, Lcom/anythink/expressad/a/c;->a(Lcom/anythink/expressad/a/c;)Z

    move-result v8

    if-nez v8, :cond_0

    return-void

    :cond_0
    iget-object v8, p0, Lcom/anythink/expressad/a/c$a;->a:Lcom/anythink/expressad/a/c;

    invoke-static {v8}, Lcom/anythink/expressad/a/c;->d(Lcom/anythink/expressad/a/c;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    const/16 v8, 0xc8

    :try_start_2
    iget-object v9, p0, Lcom/anythink/expressad/a/c$a;->a:Lcom/anythink/expressad/a/c;

    invoke-static {v9}, Lcom/anythink/expressad/a/c;->e(Lcom/anythink/expressad/a/c;)Ljava/lang/String;

    move-result-object v10

    const-string v11, " "

    const-string v12, "%20"

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/anythink/expressad/a/c;->a(Lcom/anythink/expressad/a/c;Ljava/lang/String;)Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "mTargetURL = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/anythink/expressad/a/c$a;->a:Lcom/anythink/expressad/a/c;

    invoke-static {v10}, Lcom/anythink/expressad/a/c;->e(Lcom/anythink/expressad/a/c;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v9, Ljava/net/URL;

    iget-object v10, p0, Lcom/anythink/expressad/a/c$a;->a:Lcom/anythink/expressad/a/c;

    invoke-static {v10}, Lcom/anythink/expressad/a/c;->e(Lcom/anythink/expressad/a/c;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    check-cast v9, Ljava/net/HttpURLConnection;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v10, "GET"

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v10, "User-Agent"

    invoke-static {}, Lcom/anythink/core/common/o/e;->i()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0x3a98

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    const-string v11, "Location"

    invoke-virtual {v9, v11}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    const-string v12, "Content-type"

    invoke-virtual {v9, v12}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v9, :cond_4

    :try_start_6
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    :catch_0
    move-exception v12

    goto :goto_2

    :catch_1
    move-exception v12

    move-object v11, v6

    goto :goto_2

    :catch_2
    move-exception v12

    move-object v11, v6

    goto :goto_1

    :catchall_0
    move-exception v1

    goto/16 :goto_8

    :catch_3
    move-exception v12

    move-object v9, v6

    move-object v11, v9

    :goto_1
    const/16 v10, 0xc8

    :goto_2
    :try_start_7
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/anythink/expressad/a/c$a;->a:Lcom/anythink/expressad/a/c;

    iget-object v1, v1, Lcom/anythink/expressad/a/c;->a:Lcom/anythink/expressad/a/c$b;

    invoke-virtual {v1, v0}, Lcom/anythink/expressad/a/c$b;->a(Z)V

    iget-object v1, p0, Lcom/anythink/expressad/a/c$a;->a:Lcom/anythink/expressad/a/c;

    iget-object v1, v1, Lcom/anythink/expressad/a/c;->a:Lcom/anythink/expressad/a/c$b;

    invoke-virtual {v12}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/a/c$b;->d(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v9, :cond_1

    :try_start_8
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    return-void

    :cond_2
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    move-object v12, v6

    :cond_4
    :goto_3
    const/16 v9, 0x12d

    if-eq v10, v9, :cond_9

    const/16 v9, 0x12e

    if-eq v10, v9, :cond_9

    const/16 v9, 0x133

    if-ne v10, v9, :cond_5

    goto :goto_7

    :cond_5
    if-ne v10, v8, :cond_8

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "html"

    invoke-virtual {v12, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_7

    const-string v1, "text"

    invoke-virtual {v12, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_6

    goto :goto_4

    :cond_6
    iget-object v1, p0, Lcom/anythink/expressad/a/c$a;->a:Lcom/anythink/expressad/a/c;

    iget-object v1, v1, Lcom/anythink/expressad/a/c;->a:Lcom/anythink/expressad/a/c$b;

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/a/c$b;->c(I)V

    goto :goto_5

    :cond_7
    :goto_4
    iget-object v1, p0, Lcom/anythink/expressad/a/c$a;->a:Lcom/anythink/expressad/a/c;

    iget-object v1, v1, Lcom/anythink/expressad/a/c;->a:Lcom/anythink/expressad/a/c$b;

    invoke-virtual {v1, v3}, Lcom/anythink/expressad/a/c$b;->c(I)V

    :goto_5
    iget-object v1, p0, Lcom/anythink/expressad/a/c$a;->a:Lcom/anythink/expressad/a/c;

    iget-object v1, v1, Lcom/anythink/expressad/a/c;->a:Lcom/anythink/expressad/a/c$b;

    :goto_6
    invoke-virtual {v1, v7}, Lcom/anythink/expressad/a/c$b;->b(Z)V

    goto :goto_9

    :cond_8
    iget-object v1, p0, Lcom/anythink/expressad/a/c$a;->a:Lcom/anythink/expressad/a/c;

    iget-object v1, v1, Lcom/anythink/expressad/a/c;->a:Lcom/anythink/expressad/a/c$b;

    invoke-virtual {v1, v0}, Lcom/anythink/expressad/a/c$b;->b(Z)V

    goto :goto_9

    :cond_9
    :goto_7
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v1, p0, Lcom/anythink/expressad/a/c$a;->a:Lcom/anythink/expressad/a/c;

    iget-object v1, v1, Lcom/anythink/expressad/a/c;->a:Lcom/anythink/expressad/a/c$b;

    goto :goto_6

    :cond_a
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "http"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b

    iget-object v1, p0, Lcom/anythink/expressad/a/c$a;->a:Lcom/anythink/expressad/a/c;

    invoke-static {v1, v11}, Lcom/anythink/expressad/a/c;->a(Lcom/anythink/expressad/a/c;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/anythink/expressad/a/c$a;->a:Lcom/anythink/expressad/a/c;

    iget-object v1, v1, Lcom/anythink/expressad/a/c;->a:Lcom/anythink/expressad/a/c$b;

    goto :goto_6

    :cond_b
    iget-object v8, p0, Lcom/anythink/expressad/a/c$a;->a:Lcom/anythink/expressad/a/c;

    invoke-static {v8, v11}, Lcom/anythink/expressad/a/c;->a(Lcom/anythink/expressad/a/c;Ljava/lang/String;)Ljava/lang/String;

    iget-object v8, p0, Lcom/anythink/expressad/a/c$a;->a:Lcom/anythink/expressad/a/c;

    invoke-static {v8}, Lcom/anythink/expressad/a/c;->e(Lcom/anythink/expressad/a/c;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    goto :goto_9

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    move-object v6, v9

    :goto_8
    if-eqz v6, :cond_d

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_d
    throw v1

    :cond_e
    :goto_9
    iget-object v1, p0, Lcom/anythink/expressad/a/c$a;->a:Lcom/anythink/expressad/a/c;

    invoke-static {v1}, Lcom/anythink/expressad/a/c;->e(Lcom/anythink/expressad/a/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v8, "market:/"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, p0, Lcom/anythink/expressad/a/c$a;->a:Lcom/anythink/expressad/a/c;

    invoke-static {v1}, Lcom/anythink/expressad/a/c;->e(Lcom/anythink/expressad/a/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v8, "play.google.com"

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_f

    goto :goto_b

    :cond_f
    iget-object v1, p0, Lcom/anythink/expressad/a/c$a;->a:Lcom/anythink/expressad/a/c;

    invoke-static {v1}, Lcom/anythink/expressad/a/c;->e(Lcom/anythink/expressad/a/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/anythink/expressad/a/c$a;->a:Lcom/anythink/expressad/a/c;

    iget-object v1, v1, Lcom/anythink/expressad/a/c;->a:Lcom/anythink/expressad/a/c$b;

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/a/c$b;->c(I)V

    iget-object v1, p0, Lcom/anythink/expressad/a/c$a;->a:Lcom/anythink/expressad/a/c;

    iget-object v2, v1, Lcom/anythink/expressad/a/c;->a:Lcom/anythink/expressad/a/c$b;

    invoke-static {v1}, Lcom/anythink/expressad/a/c;->e(Lcom/anythink/expressad/a/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/anythink/expressad/a/c$b;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/expressad/a/c$a;->a:Lcom/anythink/expressad/a/c;

    iget-object v1, v1, Lcom/anythink/expressad/a/c;->a:Lcom/anythink/expressad/a/c$b;

    :goto_a
    invoke-virtual {v1, v7}, Lcom/anythink/expressad/a/c$b;->b(Z)V

    goto :goto_c

    :cond_10
    iget-object v1, p0, Lcom/anythink/expressad/a/c$a;->a:Lcom/anythink/expressad/a/c;

    invoke-static {v1}, Lcom/anythink/expressad/a/c;->f(Lcom/anythink/expressad/a/c;)I

    move-result v1

    if-ge v1, v5, :cond_11

    iget-object v1, p0, Lcom/anythink/expressad/a/c$a;->a:Lcom/anythink/expressad/a/c;

    iget-object v1, v1, Lcom/anythink/expressad/a/c;->a:Lcom/anythink/expressad/a/c$b;

    invoke-virtual {v1}, Lcom/anythink/expressad/a/c$b;->k()Z

    move-result v1

    if-nez v1, :cond_12

    :cond_11
    iget-object v1, p0, Lcom/anythink/expressad/a/c$a;->a:Lcom/anythink/expressad/a/c;

    iget-object v1, v1, Lcom/anythink/expressad/a/c;->a:Lcom/anythink/expressad/a/c$b;

    invoke-virtual {v1, v3}, Lcom/anythink/expressad/a/c$b;->c(I)V

    :cond_12
    iget-object v1, p0, Lcom/anythink/expressad/a/c$a;->a:Lcom/anythink/expressad/a/c;

    iget-object v2, v1, Lcom/anythink/expressad/a/c;->a:Lcom/anythink/expressad/a/c$b;

    invoke-static {v1}, Lcom/anythink/expressad/a/c;->e(Lcom/anythink/expressad/a/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/anythink/expressad/a/c$b;->e(Ljava/lang/String;)V

    goto :goto_c

    :cond_13
    :goto_b
    iget-object v1, p0, Lcom/anythink/expressad/a/c$a;->a:Lcom/anythink/expressad/a/c;

    iget-object v1, v1, Lcom/anythink/expressad/a/c;->a:Lcom/anythink/expressad/a/c$b;

    invoke-virtual {v1, v7}, Lcom/anythink/expressad/a/c$b;->c(I)V

    iget-object v1, p0, Lcom/anythink/expressad/a/c$a;->a:Lcom/anythink/expressad/a/c;

    iget-object v2, v1, Lcom/anythink/expressad/a/c;->a:Lcom/anythink/expressad/a/c$b;

    invoke-static {v1}, Lcom/anythink/expressad/a/c;->e(Lcom/anythink/expressad/a/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/anythink/expressad/a/c$b;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/expressad/a/c$a;->a:Lcom/anythink/expressad/a/c;

    iget-object v1, v1, Lcom/anythink/expressad/a/c;->a:Lcom/anythink/expressad/a/c$b;

    goto :goto_a

    :goto_c
    iget-object v1, p0, Lcom/anythink/expressad/a/c$a;->a:Lcom/anythink/expressad/a/c;

    iget-object v1, v1, Lcom/anythink/expressad/a/c;->a:Lcom/anythink/expressad/a/c$b;

    invoke-virtual {v1, v6}, Lcom/anythink/expressad/a/c$b;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/expressad/a/c$a;->a:Lcom/anythink/expressad/a/c;

    iget-object v1, v1, Lcom/anythink/expressad/a/c;->a:Lcom/anythink/expressad/a/c$b;

    invoke-virtual {v1, v7}, Lcom/anythink/expressad/a/c$b;->a(Z)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    return-void

    :catch_4
    move-exception v1

    iget-object v2, p0, Lcom/anythink/expressad/a/c$a;->a:Lcom/anythink/expressad/a/c;

    iget-object v3, v2, Lcom/anythink/expressad/a/c;->a:Lcom/anythink/expressad/a/c$b;

    invoke-static {v2}, Lcom/anythink/expressad/a/c;->e(Lcom/anythink/expressad/a/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/anythink/expressad/a/c$b;->e(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/expressad/a/c$a;->a:Lcom/anythink/expressad/a/c;

    iget-object v2, v2, Lcom/anythink/expressad/a/c;->a:Lcom/anythink/expressad/a/c$b;

    invoke-virtual {v2, v0}, Lcom/anythink/expressad/a/c$b;->a(Z)V

    iget-object v0, p0, Lcom/anythink/expressad/a/c$a;->a:Lcom/anythink/expressad/a/c;

    iget-object v0, v0, Lcom/anythink/expressad/a/c;->a:Lcom/anythink/expressad/a/c$b;

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/a/c$b;->d(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.class public final Lcom/tramini/plugin/a/h/a$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tramini/plugin/a/h/a;->a(Lcom/tramini/plugin/b/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tramini/plugin/a/h/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tramini/plugin/b/b;

.field public final synthetic b:Lcom/tramini/plugin/a/h/a$a;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tramini/plugin/b/b;Lcom/tramini/plugin/a/h/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tramini/plugin/a/h/a$1;->a:Lcom/tramini/plugin/b/b;

    iput-object p2, p0, Lcom/tramini/plugin/a/h/a$1;->b:Lcom/tramini/plugin/a/h/a$a;

    iput-object p3, p0, Lcom/tramini/plugin/a/h/a$1;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/tramini/plugin/a/h/a$1;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/tramini/plugin/a/h/a$1;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const-string v0, "33"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/tramini/plugin/a/h/a$1;->a:Lcom/tramini/plugin/b/b;

    invoke-virtual {v2}, Lcom/tramini/plugin/b/b;->f()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/tramini/plugin/a/h/a$1;->b:Lcom/tramini/plugin/a/h/a$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/tramini/plugin/a/h/a$a;->a(Lcom/tramini/plugin/a/d/a;)V

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/tramini/plugin/a/h/a$1;->c:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "2"

    if-eqz v3, :cond_2

    move-object v3, v4

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/tramini/plugin/a/h/a$1;->c:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tramini/plugin/a/d/c;

    if-eqz v2, :cond_3

    iget-object v3, v2, Lcom/tramini/plugin/a/d/c;->d:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v3, ""

    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v0, p0, Lcom/tramini/plugin/a/h/a$1;->b:Lcom/tramini/plugin/a/h/a$a;

    if-eqz v0, :cond_4

    invoke-interface {v0, v1}, Lcom/tramini/plugin/a/h/a$a;->a(Lcom/tramini/plugin/a/d/a;)V

    :cond_4
    return-void

    :cond_5
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tramini/plugin/a/h/a$1;->c:Ljava/lang/String;

    const/4 v6, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v8, 0x32

    if-eq v7, v8, :cond_e

    const/16 v4, 0x38

    if-eq v7, v4, :cond_d

    const/16 v4, 0x624

    if-eq v7, v4, :cond_c

    const/16 v4, 0x660

    if-eq v7, v4, :cond_b

    const/16 v0, 0x69b

    if-eq v7, v0, :cond_a

    const/16 v0, 0x35

    if-eq v7, v0, :cond_9

    const/16 v0, 0x36

    if-eq v7, v0, :cond_8

    const/16 v0, 0x646

    if-eq v7, v0, :cond_7

    const/16 v0, 0x647

    if-eq v7, v0, :cond_6

    goto :goto_2

    :cond_6
    const-string v0, "29"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v6, 0x7

    goto :goto_2

    :cond_7
    const-string v0, "28"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v6, 0x6

    goto :goto_2

    :cond_8
    const-string v0, "6"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v6, 0x3

    goto :goto_2

    :cond_9
    const-string v0, "5"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v6, 0x2

    goto :goto_2

    :cond_a
    const-string v0, "50"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v6, 0x8

    goto :goto_2

    :cond_b
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v6, 0x1

    goto :goto_2

    :cond_c
    const-string v0, "15"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v6, 0x5

    goto :goto_2

    :cond_d
    const-string v0, "8"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v6, 0x4

    goto :goto_2

    :cond_e
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v6, 0x0

    :cond_f
    :goto_2
    packed-switch v6, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    iget-object v0, p0, Lcom/tramini/plugin/a/h/a$1;->d:Ljava/lang/String;

    invoke-static {v5, v2, v0}, Lcom/tramini/plugin/a/f/g;->a(Lorg/json/JSONObject;Lcom/tramini/plugin/a/d/c;Ljava/lang/String;)Lcom/tramini/plugin/a/d/a;

    move-result-object v1

    goto :goto_3

    :pswitch_1
    iget-object v0, p0, Lcom/tramini/plugin/a/h/a$1;->d:Ljava/lang/String;

    invoke-static {v5, v2, v0}, Lcom/tramini/plugin/a/f/h;->a(Lorg/json/JSONObject;Lcom/tramini/plugin/a/d/c;Ljava/lang/String;)Lcom/tramini/plugin/a/d/a;

    move-result-object v1

    goto :goto_3

    :pswitch_2
    iget-object v0, p0, Lcom/tramini/plugin/a/h/a$1;->d:Ljava/lang/String;

    invoke-static {v5, v2, v0}, Lcom/tramini/plugin/a/f/d;->a(Lorg/json/JSONObject;Lcom/tramini/plugin/a/d/c;Ljava/lang/String;)Lcom/tramini/plugin/a/d/a;

    move-result-object v1

    goto :goto_3

    :pswitch_3
    iget-object v0, p0, Lcom/tramini/plugin/a/h/a$1;->d:Ljava/lang/String;

    invoke-static {v5, v2, v0}, Lcom/tramini/plugin/a/f/i;->a(Lorg/json/JSONObject;Lcom/tramini/plugin/a/d/c;Ljava/lang/String;)Lcom/tramini/plugin/a/d/a;

    move-result-object v1

    goto :goto_3

    :pswitch_4
    iget-object v0, p0, Lcom/tramini/plugin/a/h/a$1;->d:Ljava/lang/String;

    invoke-static {v5, v2, v0}, Lcom/tramini/plugin/a/f/c;->a(Lorg/json/JSONObject;Lcom/tramini/plugin/a/d/c;Ljava/lang/String;)Lcom/tramini/plugin/a/d/a;

    move-result-object v1

    goto :goto_3

    :pswitch_5
    iget-object v0, p0, Lcom/tramini/plugin/a/h/a$1;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/tramini/plugin/a/h/a$1;->e:Ljava/lang/String;

    invoke-static {v5, v2, v0, v3}, Lcom/tramini/plugin/a/f/e;->a(Lorg/json/JSONObject;Lcom/tramini/plugin/a/d/c;Ljava/lang/String;Ljava/lang/String;)Lcom/tramini/plugin/a/d/a;

    move-result-object v1

    goto :goto_3

    :pswitch_6
    iget-object v0, p0, Lcom/tramini/plugin/a/h/a$1;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/tramini/plugin/a/h/a$1;->e:Ljava/lang/String;

    invoke-static {v5, v2, v0, v3}, Lcom/tramini/plugin/a/f/b;->a(Lorg/json/JSONObject;Lcom/tramini/plugin/a/d/c;Ljava/lang/String;Ljava/lang/String;)Lcom/tramini/plugin/a/d/a;

    move-result-object v1

    goto :goto_3

    :pswitch_7
    iget-object v0, p0, Lcom/tramini/plugin/a/h/a$1;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/tramini/plugin/a/h/a$1;->e:Ljava/lang/String;

    invoke-static {v5, v2, v0, v3}, Lcom/tramini/plugin/a/f/a;->a(Lorg/json/JSONObject;Lcom/tramini/plugin/a/d/c;Ljava/lang/String;Ljava/lang/String;)Lcom/tramini/plugin/a/d/a;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    nop

    :goto_3
    iget-object v0, p0, Lcom/tramini/plugin/a/h/a$1;->b:Lcom/tramini/plugin/a/h/a$a;

    if-eqz v0, :cond_10

    invoke-interface {v0, v1}, Lcom/tramini/plugin/a/h/a$a;->a(Lcom/tramini/plugin/a/d/a;)V

    :cond_10
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

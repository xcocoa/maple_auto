.class public Lcom/octopus/ad/utils/b/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/octopus/ad/utils/b/b;->a:Landroid/content/Context;

    return-void
.end method

.method private b()V
    .locals 7

    const-string v0, ""

    const-string v1, "version"

    const-string v2, "duration"

    :try_start_0
    invoke-virtual {p0}, Lcom/octopus/ad/utils/b/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    :cond_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    iget-object v3, p0, Lcom/octopus/ad/utils/b/b;->a:Landroid/content/Context;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v2, v5}, Lcom/octopus/ad/internal/utilities/SPUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/octopus/ad/utils/b/b;->a:Landroid/content/Context;

    invoke-static {v3, v1, v2}, Lcom/octopus/ad/internal/utilities/SPUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "data"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_2

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "sid"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "pkg"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/octopus/ad/utils/b/b;->a:Landroid/content/Context;

    invoke-static {v6, v4}, Lcom/octopus/ad/utils/b/l;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/octopus/ad/utils/b/b;->a:Landroid/content/Context;

    const-string v2, "codeList"

    invoke-static {v1, v2, v0}, Lcom/octopus/ad/internal/utilities/SPUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/octopus/ad/internal/utilities/DeviceInfo;->getInstance()Lcom/octopus/ad/internal/utilities/DeviceInfo;

    move-result-object v1

    iput-object v0, v1, Lcom/octopus/ad/internal/utilities/DeviceInfo;->appList:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/octopus/ad/utils/b/b;->a:Landroid/content/Context;

    const-string v1, "responseBody"

    const-string v2, "zyeyJkdXJhdGlvbiI6ODY0MDAsImRhdGEiOlt7InBrZyI6ImNvbS5iYWlkdS5zZWFyY2hib3giLCJzaWQiOiIzIn0seyJwa2ciOiJjb20uY3ViaWMuYXV0b2hvbWUiLCJzaWQiOiIyIn0seyJwa2ciOiJjb20uamluZ2RvbmcuYXBwLm1hbGwiLCJzaWQiOiIxIn0seyJwa2ciOiJjb20udGFvYmFvLnRhb2JhbyIsInNpZCI6IjQifSx7InBrZyI6ImNvbS5hdXRvbmF2aS5taW5pbWFwIiwic2lkIjoiNSJ9LHsicGtnIjoiY29tLmFsaWJhYmEuYW5kcm9pZC5yaW1ldCIsInNpZCI6IjYifSx7InBrZyI6ImNvbS5VQ01vYmlsZSIsInNpZCI6IjcifSx7InBrZyI6ImNvbS5lZy5hbmRyb2lkLkFsaXBheUdwaG9uZSIsInNpZCI6IjgifSx7InBrZyI6ImNvbS5zYW5rdWFpLm1laXR1YW4iLCJzaWQiOiI5In0seyJwa2ciOiJjb20uc2luYS53ZWlibyIsInNpZCI6IjEwIn0seyJwa2ciOiJjb20udGFvYmFvLmxpdGV0YW8iLCJzaWQiOiIxMSJ9LHsicGtnIjoiY29tLnRtYWxsLndpcmVsZXNzIiwic2lkIjoiMTIifSx7InBrZyI6ImNvbS50YW9iYW8ubGl2ZSIsInNpZCI6IjEzIn0seyJwa2ciOiJjb20uemhpaHUuYW5kcm9pZCIsInNpZCI6IjE0In0seyJwa2ciOiJjb20udGVuY2VudC5rYXJhb2tlIiwic2lkIjoiMTUifSx7InBrZyI6ImNvbS5xdWFyay5icm93c2VyIiwic2lkIjoiMTYifSx7InBrZyI6ImNvbS5zcy5hbmRyb2lkLnVnYy5hd2VtZSIsInNpZCI6IjE3In0seyJwa2ciOiJtZS5lbGUiLCJzaWQiOiIxOCJ9LHsicGtnIjoiY29tLlF1bmFyIiwic2lkIjoiMTkifSx7InBrZyI6ImNvbS54dW5tZW5nLnBpbmR1b2R1byIsInNpZCI6IjIwIn0seyJwa2ciOiJjb20uc21pbGUuZ2lmbWFrZXIiLCJzaWQiOiIyMSJ9LHsicGtnIjoiY29tLmt1YWlzaG91Lm5lYnVsYSIsInNpZCI6IjIyIn0seyJwa2ciOiJjb20uc2R1LmRpZGkucHNuZ2VyIiwic2lkIjoiMjMifSx7InBrZyI6ImNvbS5kaWRhcGluY2hlLmJvb2tpbmciLCJzaWQiOiIyNCJ9LHsicGtnIjoiYWlyLnR2LmRvdXl1LmFuZHJvaWQiLCJzaWQiOiIyNSJ9XSwidmVyc2lvbiI6IjE2ODYwNDE3MDMyMTIifQ=="

    invoke-static {v0, v1, v2}, Lcom/octopus/ad/internal/utilities/SPUtils;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public run()V
    .locals 0

    invoke-direct {p0}, Lcom/octopus/ad/utils/b/b;->b()V

    return-void
.end method

.class public Lcom/octopus/ad/internal/nativead/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/octopus/ad/NativeAdResponse;


# instance fields
.field private A:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private C:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private D:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private E:Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

.field private F:Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

.field private G:Lcom/octopus/ad/internal/network/ServerResponse;

.field private H:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private I:Ljava/lang/Runnable;

.field private J:Landroid/view/View;

.field private K:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private L:Lcom/octopus/ad/internal/nativead/NativeAdEventListener;

.field private M:Landroid/view/View$OnClickListener;

.field private N:Lcom/octopus/ad/internal/r;

.field private O:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/octopus/ad/internal/k;",
            ">;"
        }
    .end annotation
.end field

.field private P:Ljava/lang/String;

.field private Q:J

.field private R:I

.field private S:Ljava/lang/String;

.field private T:Ljava/lang/String;

.field private U:Ljava/lang/String;

.field private V:Ljava/lang/String;

.field private W:Lcom/octopus/ad/b/b$i;

.field private X:Lcom/octopus/ad/b/b$b$a;

.field private Y:Lcom/octopus/ad/b/b$b;

.field private Z:Z

.field private a:Lcom/octopus/ad/NativeAdResponse$b;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/graphics/Bitmap;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:D

.field private l:Ljava/lang/String;

.field private m:I

.field private n:I

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:I

.field private u:I

.field private v:Z

.field private w:Ljava/lang/String;

.field private x:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private y:Z

.field private z:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/octopus/ad/internal/nativead/c;->r:Z

    iput v0, p0, Lcom/octopus/ad/internal/nativead/c;->t:I

    iput v0, p0, Lcom/octopus/ad/internal/nativead/c;->u:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/octopus/ad/internal/nativead/c;->v:Z

    iput-boolean v0, p0, Lcom/octopus/ad/internal/nativead/c;->y:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/octopus/ad/internal/nativead/c;->z:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/octopus/ad/internal/nativead/c;->A:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/octopus/ad/internal/nativead/c;->B:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/octopus/ad/internal/nativead/c;->C:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/octopus/ad/internal/nativead/c;->D:Ljava/util/ArrayList;

    new-instance v1, Lcom/octopus/ad/internal/nativead/c$1;

    invoke-direct {v1, p0}, Lcom/octopus/ad/internal/nativead/c$1;-><init>(Lcom/octopus/ad/internal/nativead/c;)V

    iput-object v1, p0, Lcom/octopus/ad/internal/nativead/c;->I:Ljava/lang/Runnable;

    const-string v1, ""

    iput-object v1, p0, Lcom/octopus/ad/internal/nativead/c;->P:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/octopus/ad/internal/nativead/c;->Z:Z

    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/nativead/c;I)I
    .locals 0

    iput p1, p0, Lcom/octopus/ad/internal/nativead/c;->u:I

    return p1
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/nativead/c;J)J
    .locals 0

    iput-wide p1, p0, Lcom/octopus/ad/internal/nativead/c;->Q:J

    return-wide p1
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/nativead/c;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/nativead/c;->g:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/nativead/c;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/nativead/c;->J:Landroid/view/View;

    return-object p1
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/nativead/c;Lcom/octopus/ad/internal/nativead/NativeAdEventListener;)Lcom/octopus/ad/internal/nativead/NativeAdEventListener;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/nativead/c;->L:Lcom/octopus/ad/internal/nativead/NativeAdEventListener;

    return-object p1
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/octopus/ad/internal/nativead/c;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "ImpressionTrackers"

    invoke-static {p0, v0}, Lcom/octopus/ad/internal/utilities/JsonUtil;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/JsonUtil;->getStringArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/octopus/ad/internal/nativead/c;

    invoke-direct {v1}, Lcom/octopus/ad/internal/nativead/c;-><init>()V

    if-eqz v0, :cond_1

    iput-object v0, v1, Lcom/octopus/ad/internal/nativead/c;->C:Ljava/util/ArrayList;

    :cond_1
    const-string v0, "Headline"

    invoke-static {p0, v0}, Lcom/octopus/ad/internal/utilities/JsonUtil;->getJSONString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/octopus/ad/internal/nativead/c;->b:Ljava/lang/String;

    const-string v0, "Body"

    invoke-static {p0, v0}, Lcom/octopus/ad/internal/utilities/JsonUtil;->getJSONString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/octopus/ad/internal/nativead/c;->c:Ljava/lang/String;

    const-string v0, "Image"

    invoke-static {p0, v0}, Lcom/octopus/ad/internal/utilities/JsonUtil;->getJSONString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/octopus/ad/internal/nativead/c;->d:Ljava/lang/String;

    const-string v0, "LayoutType"

    invoke-static {p0, v0}, Lcom/octopus/ad/internal/utilities/JsonUtil;->getJSONInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/octopus/ad/internal/nativead/c;->t:I

    const-string v0, "IsShowClose"

    invoke-static {p0, v0}, Lcom/octopus/ad/internal/utilities/JsonUtil;->getJSONBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/octopus/ad/internal/nativead/c;->s:Z

    const-string v0, "Images"

    invoke-static {p0, v0}, Lcom/octopus/ad/internal/utilities/JsonUtil;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v2, "Videos"

    invoke-static {p0, v2}, Lcom/octopus/ad/internal/utilities/JsonUtil;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v3, "Texts"

    invoke-static {p0, v3}, Lcom/octopus/ad/internal/utilities/JsonUtil;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    iget-object v6, v1, Lcom/octopus/ad/internal/nativead/c;->z:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_3

    iget-object v5, v1, Lcom/octopus/ad/internal/nativead/c;->A:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v4, v0, :cond_4

    iget-object v0, v1, Lcom/octopus/ad/internal/nativead/c;->B:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    const-string v0, "AppIcon"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "Action"

    if-eqz v2, :cond_5

    sget-object v2, Lcom/octopus/ad/NativeAdResponse$b;->b:Lcom/octopus/ad/NativeAdResponse$b;

    iput-object v2, v1, Lcom/octopus/ad/internal/nativead/c;->a:Lcom/octopus/ad/NativeAdResponse$b;

    invoke-static {p0, v0}, Lcom/octopus/ad/internal/utilities/JsonUtil;->getJSONString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/octopus/ad/internal/nativead/c;->e:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/octopus/ad/internal/utilities/JsonUtil;->getJSONString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/octopus/ad/internal/nativead/c;->j:Ljava/lang/String;

    const-string v0, "Star"

    invoke-static {p0, v0}, Lcom/octopus/ad/internal/utilities/JsonUtil;->getJSONDouble(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/octopus/ad/internal/nativead/c;->k:D

    const-string v0, "Store"

    invoke-static {p0, v0}, Lcom/octopus/ad/internal/utilities/JsonUtil;->getJSONString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/octopus/ad/internal/nativead/c;->l:Ljava/lang/String;

    const-string v0, "Price"

    invoke-static {p0, v0}, Lcom/octopus/ad/internal/utilities/JsonUtil;->getJSONInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/octopus/ad/internal/nativead/c;->m:I

    goto :goto_3

    :cond_5
    sget-object v0, Lcom/octopus/ad/NativeAdResponse$b;->a:Lcom/octopus/ad/NativeAdResponse$b;

    iput-object v0, v1, Lcom/octopus/ad/internal/nativead/c;->a:Lcom/octopus/ad/NativeAdResponse$b;

    const-string v0, "Logo"

    invoke-static {p0, v0}, Lcom/octopus/ad/internal/utilities/JsonUtil;->getJSONString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/octopus/ad/internal/nativead/c;->e:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/octopus/ad/internal/utilities/JsonUtil;->getJSONString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/octopus/ad/internal/nativead/c;->j:Ljava/lang/String;

    const-string v0, "Advertiser"

    invoke-static {p0, v0}, Lcom/octopus/ad/internal/utilities/JsonUtil;->getJSONString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/octopus/ad/internal/nativead/c;->w:Ljava/lang/String;

    :goto_3
    const-string v0, "ClickTrackers"

    invoke-static {p0, v0}, Lcom/octopus/ad/internal/utilities/JsonUtil;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/JsonUtil;->getStringArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6

    iput-object v0, v1, Lcom/octopus/ad/internal/nativead/c;->D:Ljava/util/ArrayList;

    :cond_6
    const-string v0, "Custom"

    invoke-static {p0, v0}, Lcom/octopus/ad/internal/utilities/JsonUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/octopus/ad/internal/utilities/JsonUtil;->getStringObjectHashMap(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object p0

    iput-object p0, v1, Lcom/octopus/ad/internal/nativead/c;->x:Ljava/util/HashMap;

    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v0, v1, Lcom/octopus/ad/internal/nativead/c;->I:Ljava/lang/Runnable;

    const-wide/32 v2, 0x36ee80

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object v1
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/nativead/c;)Lcom/octopus/ad/internal/r;
    .locals 0

    iget-object p0, p0, Lcom/octopus/ad/internal/nativead/c;->N:Lcom/octopus/ad/internal/r;

    return-object p0
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/nativead/c;Lcom/octopus/ad/internal/r;)Lcom/octopus/ad/internal/r;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/nativead/c;->N:Lcom/octopus/ad/internal/r;

    return-object p1
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/nativead/c;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/nativead/c;->O:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/nativead/c;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/nativead/c;->K:Ljava/util/List;

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/octopus/ad/internal/nativead/c;->p:Z

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c;->D:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setClickListener:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "octopus"

    invoke-static {v3, v2}, Lcom/octopus/ad/utils/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "http://v.adintl.cn/clk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/octopus/ad/internal/nativead/c;->r:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&opt=1"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_0
    iget v2, p0, Lcom/octopus/ad/internal/nativead/c;->u:I

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&opt="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/octopus/ad/internal/nativead/c;->u:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    :goto_2
    new-instance v2, Lcom/octopus/ad/internal/h;

    invoke-direct {v2, v1}, Lcom/octopus/ad/internal/h;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v2, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c;->L:Lcom/octopus/ad/internal/nativead/NativeAdEventListener;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/octopus/ad/internal/nativead/c;->v:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/octopus/ad/internal/nativead/c;->q:Z

    if-nez v1, :cond_3

    invoke-interface {v0}, Lcom/octopus/ad/internal/nativead/NativeAdEventListener;->onAdClick()V

    :cond_3
    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c;->i:Ljava/lang/String;

    iget-object v1, p0, Lcom/octopus/ad/internal/nativead/c;->h:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/octopus/ad/internal/nativead/c;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Lcom/octopus/ad/internal/utilities/HaoboLog;->nativeLogTag:Ljava/lang/String;

    const-string v0, "Unable to handle click."

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/octopus/ad/internal/nativead/c;->D:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Landroid/view/View;Lcom/octopus/ad/internal/nativead/NativeAdShownListener;)V
    .locals 5

    iget-boolean v0, p0, Lcom/octopus/ad/internal/nativead/c;->y:Z

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c;->N:Lcom/octopus/ad/internal/r;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/r;->d()V

    :cond_0
    const v0, 0x34e167a

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/octopus/ad/internal/r;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/octopus/ad/internal/r;

    invoke-virtual {v1}, Lcom/octopus/ad/internal/r;->d()V

    :cond_1
    invoke-static {p1}, Lcom/octopus/ad/internal/r;->a(Landroid/view/View;)Lcom/octopus/ad/internal/r;

    move-result-object v1

    iput-object v1, p0, Lcom/octopus/ad/internal/nativead/c;->N:Lcom/octopus/ad/internal/r;

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-static {p1, p2}, Lcom/octopus/ad/internal/g;->a(Landroid/view/View;Lcom/octopus/ad/internal/nativead/NativeAdShownListener;)Lcom/octopus/ad/internal/g;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/octopus/ad/internal/nativead/c;->O:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/octopus/ad/internal/nativead/c;->C:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/octopus/ad/internal/nativead/c;->P:Ljava/lang/String;

    iget-object v2, p0, Lcom/octopus/ad/internal/nativead/c;->N:Lcom/octopus/ad/internal/r;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/octopus/ad/internal/nativead/c;->C:Ljava/util/ArrayList;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/octopus/ad/internal/k;->a(Ljava/lang/String;Ljava/lang/String;Lcom/octopus/ad/internal/r;Landroid/content/Context;Ljava/util/ArrayList;)Lcom/octopus/ad/internal/k;

    move-result-object v0

    iget-object v1, p0, Lcom/octopus/ad/internal/nativead/c;->O:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lcom/octopus/ad/internal/nativead/c;->J:Landroid/view/View;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c;->I:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p2, p0, Lcom/octopus/ad/internal/nativead/c;->G:Lcom/octopus/ad/internal/network/ServerResponse;

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/octopus/ad/internal/nativead/c;->G:Lcom/octopus/ad/internal/network/ServerResponse;

    new-instance v0, Lcom/octopus/ad/internal/nativead/c$2;

    invoke-direct {v0, p0}, Lcom/octopus/ad/internal/nativead/c$2;-><init>(Lcom/octopus/ad/internal/nativead/c;)V

    invoke-static {p1, p2, v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->setAutoClickStrategy(Landroid/content/Context;Lcom/octopus/ad/internal/network/ServerResponse;Lcom/octopus/ad/internal/view/AdViewImpl$d;)V

    iget-object p1, p0, Lcom/octopus/ad/internal/nativead/c;->G:Lcom/octopus/ad/internal/network/ServerResponse;

    invoke-static {p1}, Lcom/octopus/ad/internal/view/AdViewImpl;->isCallBackClick(Lcom/octopus/ad/internal/network/ServerResponse;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/octopus/ad/internal/nativead/c;->v:Z

    if-nez p1, :cond_3

    const/16 p1, 0x8

    iput p1, p0, Lcom/octopus/ad/internal/nativead/c;->u:I

    :cond_3
    return-void
.end method

.method private a(Landroid/view/View;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/nativead/c;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/octopus/ad/internal/nativead/c;->M:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/octopus/ad/internal/nativead/c;->K:Ljava/util/List;

    :cond_1
    return-void
.end method

.method private a(Landroid/view/ViewGroup;I)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    sget v0, Lcom/octopus/ad/R$id;->ad_image:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v2, Lcom/octopus/ad/R$id;->ad_logo:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sget v3, Lcom/octopus/ad/R$id;->ad_logo_text:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v4, Lcom/octopus/ad/R$id;->ad_close:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    sget v5, Lcom/octopus/ad/R$id;->ad_title:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    sget v6, Lcom/octopus/ad/R$id;->ad_action:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/octopus/ad/internal/nativead/c;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcom/octopus/ad/internal/nativead/c;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/octopus/ad/internal/nativead/c;->getButtonText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/octopus/ad/internal/nativead/c;->getButtonText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p0}, Lcom/octopus/ad/internal/nativead/c;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v1}, Lcom/octopus/ad/internal/utilities/ImageManager;->with(Landroid/content/Context;)Lcom/octopus/ad/internal/utilities/ImageManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/octopus/ad/internal/nativead/c;->getImageUrl()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/octopus/ad/internal/nativead/c$14;

    invoke-direct {v7, p0, v0, p1, p2}, Lcom/octopus/ad/internal/nativead/c$14;-><init>(Lcom/octopus/ad/internal/nativead/c;Landroid/widget/ImageView;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v5, v6, v7}, Lcom/octopus/ad/internal/utilities/ImageManager;->getBitmap(Ljava/lang/String;Lcom/octopus/ad/internal/utilities/ImageManager$BitmapLoadedListener;)V

    :cond_2
    invoke-virtual {p0}, Lcom/octopus/ad/internal/nativead/c;->getLogoUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {v1}, Lcom/octopus/ad/internal/utilities/ImageManager;->with(Landroid/content/Context;)Lcom/octopus/ad/internal/utilities/ImageManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/octopus/ad/internal/nativead/c;->getLogoUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/octopus/ad/internal/utilities/ImageManager;->load(Ljava/lang/String;)Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;->into(Landroid/widget/ImageView;)V

    :cond_3
    invoke-virtual {p0}, Lcom/octopus/ad/internal/nativead/c;->getTextLogoUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {v1}, Lcom/octopus/ad/internal/utilities/ImageManager;->with(Landroid/content/Context;)Lcom/octopus/ad/internal/utilities/ImageManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/octopus/ad/internal/nativead/c;->getTextLogoUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/octopus/ad/internal/utilities/ImageManager;->load(Ljava/lang/String;)Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;->into(Landroid/widget/ImageView;)V

    :cond_4
    iget-boolean p1, p0, Lcom/octopus/ad/internal/nativead/c;->s:Z

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance p1, Lcom/octopus/ad/internal/nativead/c$15;

    invoke-direct {p1, p0}, Lcom/octopus/ad/internal/nativead/c$15;-><init>(Lcom/octopus/ad/internal/nativead/c;)V

    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_5
    const/16 p1, 0x8

    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/nativead/c;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/nativead/c;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/nativead/c;Landroid/view/View;Lcom/octopus/ad/internal/nativead/NativeAdShownListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/octopus/ad/internal/nativead/c;->a(Landroid/view/View;Lcom/octopus/ad/internal/nativead/NativeAdShownListener;)V

    return-void
.end method

.method private a(Lcom/octopus/ad/internal/utilities/ImageManager$BitmapLoadedListener;)V
    .locals 17

    move-object/from16 v7, p0

    invoke-virtual/range {p0 .. p0}, Lcom/octopus/ad/internal/nativead/c;->getImageUrls()Ljava/util/ArrayList;

    move-result-object v8

    const/4 v0, 0x3

    new-array v9, v0, [Landroid/graphics/Bitmap;

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/octopus/ad/internal/nativead/c;->getTextLogoInfo()Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;->getType()I

    move-result v0

    sget v1, Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;->TYPE_PIC:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    const/4 v12, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v12, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/octopus/ad/internal/nativead/c;->getLogoInfo()Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

    move-result-object v13

    invoke-virtual {v13}, Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;->getType()I

    move-result v1

    sget v3, Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;->TYPE_PIC:I

    if-ne v1, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    const/4 v14, 0x1

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    :goto_1
    new-instance v15, Ljava/util/concurrent/CountDownLatch;

    add-int/2addr v0, v2

    invoke-direct {v15, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v6, Ljava/lang/Thread;

    new-instance v5, Lcom/octopus/ad/internal/nativead/c$9;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v15

    move-object v3, v9

    move-object/from16 v4, p1

    move-object v11, v5

    move-object v5, v10

    move/from16 v16, v14

    move-object v14, v6

    move-object v6, v13

    invoke-direct/range {v0 .. v6}, Lcom/octopus/ad/internal/nativead/c$9;-><init>(Lcom/octopus/ad/internal/nativead/c;Ljava/util/concurrent/CountDownLatch;[Landroid/graphics/Bitmap;Lcom/octopus/ad/internal/utilities/ImageManager$BitmapLoadedListener;Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;)V

    invoke-direct {v14, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v14}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ImageManager;->with(Landroid/content/Context;)Lcom/octopus/ad/internal/utilities/ImageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lcom/octopus/ad/internal/nativead/c$10;

    invoke-direct {v3, v7, v15, v9}, Lcom/octopus/ad/internal/nativead/c$10;-><init>(Lcom/octopus/ad/internal/nativead/c;Ljava/util/concurrent/CountDownLatch;[Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2, v3}, Lcom/octopus/ad/internal/utilities/ImageManager;->getBitmap(Ljava/lang/String;Lcom/octopus/ad/internal/utilities/ImageManager$BitmapLoadedListener;)V

    if-eqz v12, :cond_2

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ImageManager;->with(Landroid/content/Context;)Lcom/octopus/ad/internal/utilities/ImageManager;

    move-result-object v1

    invoke-virtual {v10}, Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;->getAdurl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/octopus/ad/internal/nativead/c$11;

    invoke-direct {v3, v7, v15, v9}, Lcom/octopus/ad/internal/nativead/c$11;-><init>(Lcom/octopus/ad/internal/nativead/c;Ljava/util/concurrent/CountDownLatch;[Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2, v3}, Lcom/octopus/ad/internal/utilities/ImageManager;->getBitmap(Ljava/lang/String;Lcom/octopus/ad/internal/utilities/ImageManager$BitmapLoadedListener;)V

    :cond_2
    if-eqz v16, :cond_3

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ImageManager;->with(Landroid/content/Context;)Lcom/octopus/ad/internal/utilities/ImageManager;

    move-result-object v0

    invoke-virtual {v13}, Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;->getAdurl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/octopus/ad/internal/nativead/c$12;

    invoke-direct {v2, v7, v15, v9}, Lcom/octopus/ad/internal/nativead/c$12;-><init>(Lcom/octopus/ad/internal/nativead/c;Ljava/util/concurrent/CountDownLatch;[Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1, v2}, Lcom/octopus/ad/internal/utilities/ImageManager;->getBitmap(Ljava/lang/String;Lcom/octopus/ad/internal/utilities/ImageManager$BitmapLoadedListener;)V

    :cond_3
    return-void
.end method

.method private a(Landroid/view/View;)Z
    .locals 6

    iget-boolean v0, p0, Lcom/octopus/ad/internal/nativead/c;->y:Z

    const/4 v1, 0x0

    if-nez v0, :cond_4

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c;->N:Lcom/octopus/ad/internal/r;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/r;->d()V

    :cond_0
    const v0, 0x34e167a

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/octopus/ad/internal/r;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/octopus/ad/internal/r;

    invoke-virtual {v2}, Lcom/octopus/ad/internal/r;->d()V

    :cond_1
    invoke-static {p1}, Lcom/octopus/ad/internal/r;->a(Landroid/view/View;)Lcom/octopus/ad/internal/r;

    move-result-object v2

    iput-object v2, p0, Lcom/octopus/ad/internal/nativead/c;->N:Lcom/octopus/ad/internal/r;

    invoke-virtual {p1, v0, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c;->N:Lcom/octopus/ad/internal/r;

    if-nez v0, :cond_2

    return v1

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/octopus/ad/internal/nativead/c;->O:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/octopus/ad/internal/nativead/c;->P:Ljava/lang/String;

    iget-object v3, p0, Lcom/octopus/ad/internal/nativead/c;->N:Lcom/octopus/ad/internal/r;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/octopus/ad/internal/nativead/c;->C:Ljava/util/ArrayList;

    invoke-static {v2, v1, v3, v4, v5}, Lcom/octopus/ad/internal/k;->a(Ljava/lang/String;Ljava/lang/String;Lcom/octopus/ad/internal/r;Landroid/content/Context;Ljava/util/ArrayList;)Lcom/octopus/ad/internal/k;

    move-result-object v1

    iget-object v2, p0, Lcom/octopus/ad/internal/nativead/c;->O:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iput-object p1, p0, Lcom/octopus/ad/internal/nativead/c;->J:Landroid/view/View;

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/octopus/ad/internal/nativead/c$5;

    invoke-direct {v1, p0, p1}, Lcom/octopus/ad/internal/nativead/c$5;-><init>(Lcom/octopus/ad/internal/nativead/c;Landroid/view/View;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    invoke-direct {p0}, Lcom/octopus/ad/internal/nativead/c;->e()V

    new-instance v1, Lcom/octopus/ad/internal/nativead/c$6;

    invoke-direct {v1, p0, v0}, Lcom/octopus/ad/internal/nativead/c$6;-><init>(Lcom/octopus/ad/internal/nativead/c;Landroid/view/GestureDetector;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c;->M:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c;->I:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1

    :cond_4
    return v1
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/nativead/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/octopus/ad/internal/nativead/c;->y:Z

    return p1
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/octopus/ad/internal/nativead/c;->Z:Z

    const/4 v2, 0x1

    if-nez v1, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/octopus/ad/internal/nativead/c;->b(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v2

    :cond_1
    return v0

    :cond_2
    invoke-static {}, Lcom/octopus/ad/AdActivity;->a()Ljava/lang/Class;

    move-result-object v1

    :try_start_0
    new-instance v3, Landroid/webkit/WebView;

    new-instance v4, Landroid/content/MutableContextWrapper;

    invoke-direct {v4, p2}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {v3, v4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-static {v3}, Lcom/octopus/ad/internal/utilities/WebviewUtil;->setWebViewSettings(Landroid/webkit/WebView;)V

    invoke-virtual {v3, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    sget-object p1, Lcom/octopus/ad/internal/a/a;->a:Ljava/util/LinkedList;

    invoke-virtual {p1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x10000000

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "ACTIVITY_TYPE"

    const-string v4, "DOWNLOADBROWSER"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p1

    sget-object p2, Lcom/octopus/ad/internal/utilities/HaoboLog;->baseLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception initializing the redirect webview: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :catch_1
    sget-object p1, Lcom/octopus/ad/internal/utilities/HaoboLog;->baseLogTag:Ljava/lang/String;

    sget p2, Lcom/octopus/ad/R$string;->adactivity_missing:I

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/octopus/ad/internal/utilities/HaoboLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/octopus/ad/internal/a/a;->a:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    :cond_3
    :goto_0
    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-nez v0, :cond_a

    :try_start_0
    iget-object v0, v1, Lcom/octopus/ad/internal/nativead/c;->X:Lcom/octopus/ad/b/b$b$a;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/octopus/ad/internal/nativead/c;->T:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/octopus/ad/utils/b/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/octopus/ad/internal/nativead/c;->X:Lcom/octopus/ad/b/b$b$a;

    invoke-virtual {v0}, Lcom/octopus/ad/b/b$b$a;->h()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lcom/octopus/ad/internal/nativead/c;->X:Lcom/octopus/ad/b/b$b$a;

    invoke-virtual {v0}, Lcom/octopus/ad/b/b$b$a;->i()Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ReportEventUtil;->report(Ljava/util/List;)V

    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v8, "bzopen"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v7}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v7}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "flags"

    invoke-virtual {v7, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v9, :cond_4

    :try_start_1
    const-string v9, "0x"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "0X"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_1
    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v9, 0x10

    invoke-static {v0, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_3
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-direct {v0, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "rect"

    invoke-virtual {v7, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v7, :cond_5

    :try_start_3
    const-string v7, ":"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v7, v0

    const/4 v9, 0x4

    if-ne v7, v9, :cond_5

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v9, v0, v6

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v10, 0x3

    aget-object v0, v0, v10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v4, v9, v5, v0}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v8, v7}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_4
    if-eqz v3, :cond_7

    invoke-virtual {v3, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_5

    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v4, 0x10000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-eqz v3, :cond_7

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_7
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/octopus/ad/internal/nativead/c;->f()V

    iget-object v0, v1, Lcom/octopus/ad/internal/nativead/c;->X:Lcom/octopus/ad/b/b$b$a;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/octopus/ad/b/b$b$a;->f()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ReportEventUtil;->report(Ljava/util/List;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_8
    return v6

    :catch_2
    nop

    iget-object v0, v1, Lcom/octopus/ad/internal/nativead/c;->X:Lcom/octopus/ad/b/b$b$a;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/octopus/ad/b/b$b$a;->g()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ReportEventUtil;->report(Ljava/util/List;)V

    :cond_9
    invoke-direct {v1, v2, v3}, Lcom/octopus/ad/internal/nativead/c;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0

    :cond_a
    iget-object v0, v1, Lcom/octopus/ad/internal/nativead/c;->V:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    iget v0, v1, Lcom/octopus/ad/internal/nativead/c;->R:I

    if-ne v0, v5, :cond_10

    iget-object v0, v1, Lcom/octopus/ad/internal/nativead/c;->T:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/octopus/ad/utils/b/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v1, Lcom/octopus/ad/internal/nativead/c;->T:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/octopus/ad/utils/b/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/octopus/ad/internal/nativead/c;->X:Lcom/octopus/ad/b/b$b$a;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/octopus/ad/b/b$b$a;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ReportEventUtil;->report(Ljava/util/List;)V

    goto :goto_7

    :cond_b
    invoke-static/range {p3 .. p3}, Lcom/octopus/ad/utils/b/d;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_c
    const-string v0, ""

    :goto_6
    move-object v11, v0

    invoke-static/range {p3 .. p3}, Lcom/octopus/ad/utils/b;->a(Landroid/content/Context;)Lcom/octopus/ad/utils/b;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/octopus/ad/utils/b;->b(Landroid/content/Context;)Lcom/octopus/ad/utils/b;

    move-result-object v0

    iget-object v2, v1, Lcom/octopus/ad/internal/nativead/c;->W:Lcom/octopus/ad/b/b$i;

    invoke-virtual {v0, v2}, Lcom/octopus/ad/utils/b;->a(Lcom/octopus/ad/b/b$i;)Lcom/octopus/ad/utils/b;

    move-result-object v0

    iget-boolean v2, v1, Lcom/octopus/ad/internal/nativead/c;->r:Z

    if-nez v2, :cond_d

    iget v2, v1, Lcom/octopus/ad/internal/nativead/c;->u:I

    const/16 v5, 0x8

    if-eq v2, v5, :cond_d

    const/16 v5, 0x9

    if-ne v2, v5, :cond_e

    :cond_d
    const/4 v4, 0x1

    :cond_e
    invoke-virtual {v0, v4}, Lcom/octopus/ad/utils/b;->a(Z)Lcom/octopus/ad/utils/b;

    move-result-object v0

    new-instance v2, Lcom/octopus/ad/utils/a;

    iget-object v8, v1, Lcom/octopus/ad/internal/nativead/c;->V:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/octopus/ad/internal/nativead/c;->T:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".apk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v1, Lcom/octopus/ad/internal/nativead/c;->T:Ljava/lang/String;

    iget-object v12, v1, Lcom/octopus/ad/internal/nativead/c;->S:Ljava/lang/String;

    iget-object v13, v1, Lcom/octopus/ad/internal/nativead/c;->U:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".fileprovider"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v1, Lcom/octopus/ad/internal/nativead/c;->X:Lcom/octopus/ad/b/b$b$a;

    move-object v7, v2

    invoke-direct/range {v7 .. v15}, Lcom/octopus/ad/utils/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/octopus/ad/b/b$b$a;)V

    invoke-virtual {v0, v2}, Lcom/octopus/ad/utils/b;->a(Lcom/octopus/ad/utils/a;)Lcom/octopus/ad/utils/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/octopus/ad/utils/b;->b()V

    :cond_f
    :goto_7
    return v6

    :cond_10
    invoke-direct {v1, v2, v3}, Lcom/octopus/ad/internal/nativead/c;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static synthetic b(Lcom/octopus/ad/internal/nativead/c;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/octopus/ad/internal/nativead/c;->g:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static synthetic b(Lcom/octopus/ad/internal/nativead/c;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/nativead/c;->f:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public static synthetic b(Lcom/octopus/ad/internal/nativead/c;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/nativead/c;->D:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static synthetic b(Lcom/octopus/ad/internal/nativead/c;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/nativead/c;->a(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/octopus/ad/internal/nativead/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/octopus/ad/internal/nativead/c;->q:Z

    return p1
.end method

.method private b(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    sget-object p2, Lcom/octopus/ad/internal/utilities/HaoboLog;->baseLogTag:Ljava/lang/String;

    sget v0, Lcom/octopus/ad/R$string;->opening_url_failed:I

    invoke-static {v0, p1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic c(Lcom/octopus/ad/internal/nativead/c;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/octopus/ad/internal/nativead/c;->f:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c;->G:Lcom/octopus/ad/internal/network/ServerResponse;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/octopus/ad/internal/nativead/c;->q:Z

    iput-boolean v0, p0, Lcom/octopus/ad/internal/nativead/c;->r:Z

    invoke-direct {p0}, Lcom/octopus/ad/internal/nativead/c;->d()V

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c;->G:Lcom/octopus/ad/internal/network/ServerResponse;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/network/ServerResponse;->getAcRatio()I

    move-result v0

    invoke-static {v0}, Lcom/octopus/ad/utils/g;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/octopus/ad/internal/nativead/c$4;

    invoke-direct {v1, p0}, Lcom/octopus/ad/internal/nativead/c$4;-><init>(Lcom/octopus/ad/internal/nativead/c;)V

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/16 v3, 0x1f4

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public static synthetic c(Lcom/octopus/ad/internal/nativead/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/octopus/ad/internal/nativead/c;->v:Z

    return p1
.end method

.method public static synthetic d(Lcom/octopus/ad/internal/nativead/c;)Lcom/octopus/ad/internal/nativead/NativeAdEventListener;
    .locals 0

    iget-object p0, p0, Lcom/octopus/ad/internal/nativead/c;->L:Lcom/octopus/ad/internal/nativead/NativeAdEventListener;

    return-object p0
.end method

.method private d()V
    .locals 4

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/octopus/ad/internal/h;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&opt=1"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/octopus/ad/internal/h;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/octopus/ad/utils/b/h;->b()Lcom/octopus/ad/utils/b/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/octopus/ad/utils/b/h;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v1, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private e()V
    .locals 1

    new-instance v0, Lcom/octopus/ad/internal/nativead/c$7;

    invoke-direct {v0, p0}, Lcom/octopus/ad/internal/nativead/c$7;-><init>(Lcom/octopus/ad/internal/nativead/c;)V

    iput-object v0, p0, Lcom/octopus/ad/internal/nativead/c;->M:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static synthetic e(Lcom/octopus/ad/internal/nativead/c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/octopus/ad/internal/nativead/c;->s:Z

    return p0
.end method

.method private f()V
    .locals 5

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c;->Y:Lcom/octopus/ad/b/b$b;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/octopus/ad/b/b$b;->m()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/octopus/ad/b/b$j;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/octopus/ad/b/b$j;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/octopus/ad/b/b$j;->c()Ljava/lang/String;

    move-result-object v3

    const-string v4, "http://v.adintl.cn/deepLink"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/octopus/ad/internal/nativead/c;->r:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&opt=1"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_0
    iget v4, p0, Lcom/octopus/ad/internal/nativead/c;->u:I

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&opt="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/octopus/ad/internal/nativead/c;->u:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    :goto_2
    new-instance v4, Lcom/octopus/ad/internal/h;

    invoke-direct {v4, v3}, Lcom/octopus/ad/internal/h;-><init>(Ljava/lang/String;)V

    new-array v3, v1, [Ljava/lang/Void;

    invoke-virtual {v4, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static synthetic f(Lcom/octopus/ad/internal/nativead/c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/octopus/ad/internal/nativead/c;->o:Z

    return p0
.end method

.method public static synthetic g(Lcom/octopus/ad/internal/nativead/c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/octopus/ad/internal/nativead/c;->p:Z

    return p0
.end method

.method public static synthetic h(Lcom/octopus/ad/internal/nativead/c;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/octopus/ad/internal/nativead/c;->J:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic i(Lcom/octopus/ad/internal/nativead/c;)Lcom/octopus/ad/internal/network/ServerResponse;
    .locals 0

    iget-object p0, p0, Lcom/octopus/ad/internal/nativead/c;->G:Lcom/octopus/ad/internal/network/ServerResponse;

    return-object p0
.end method

.method public static synthetic j(Lcom/octopus/ad/internal/nativead/c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/octopus/ad/internal/nativead/c;->q:Z

    return p0
.end method

.method public static synthetic k(Lcom/octopus/ad/internal/nativead/c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/octopus/ad/internal/nativead/c;->r:Z

    return p0
.end method

.method public static synthetic l(Lcom/octopus/ad/internal/nativead/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/octopus/ad/internal/nativead/c;->c()V

    return-void
.end method

.method public static synthetic m(Lcom/octopus/ad/internal/nativead/c;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/octopus/ad/internal/nativead/c;->D:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic n(Lcom/octopus/ad/internal/nativead/c;)J
    .locals 2

    iget-wide v0, p0, Lcom/octopus/ad/internal/nativead/c;->Q:J

    return-wide v0
.end method

.method public static synthetic o(Lcom/octopus/ad/internal/nativead/c;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/octopus/ad/internal/nativead/c;->P:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic p(Lcom/octopus/ad/internal/nativead/c;)I
    .locals 0

    iget p0, p0, Lcom/octopus/ad/internal/nativead/c;->u:I

    return p0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/octopus/ad/internal/nativead/c;->n:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/octopus/ad/internal/nativead/c;->n:I

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c;->Y:Lcom/octopus/ad/b/b$b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/octopus/ad/b/b$b;->m()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/octopus/ad/b/b$j;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/octopus/ad/b/b$j;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/octopus/ad/b/b$j;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1, p2, p3}, Lcom/octopus/ad/internal/utilities/UrlUtil;->replaceLossUrl(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/octopus/ad/internal/h;

    invoke-direct {v4, v3}, Lcom/octopus/ad/internal/h;-><init>(Ljava/lang/String;)V

    new-array v3, v1, [Ljava/lang/Void;

    invoke-virtual {v4, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 1

    new-instance v0, Lcom/octopus/ad/internal/nativead/c$13;

    invoke-direct {v0, p0, p1}, Lcom/octopus/ad/internal/nativead/c$13;-><init>(Lcom/octopus/ad/internal/nativead/c;Landroid/view/ViewGroup;)V

    invoke-direct {p0, v0}, Lcom/octopus/ad/internal/nativead/c;->a(Lcom/octopus/ad/internal/utilities/ImageManager$BitmapLoadedListener;)V

    return-void
.end method

.method public a(Lcom/octopus/ad/b/b$b;)V
    .locals 1

    iput-object p1, p0, Lcom/octopus/ad/internal/nativead/c;->Y:Lcom/octopus/ad/b/b$b;

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$b;->k()Lcom/octopus/ad/b/b$b$a;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/internal/nativead/c;->X:Lcom/octopus/ad/b/b$b$a;

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$b;->c()I

    move-result v0

    iput v0, p0, Lcom/octopus/ad/internal/nativead/c;->R:I

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$b;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/internal/nativead/c;->S:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$b;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/internal/nativead/c;->T:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$b;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/internal/nativead/c;->U:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$b;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/internal/nativead/c;->V:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$b;->h()Lcom/octopus/ad/b/b$i;

    move-result-object p1

    iput-object p1, p0, Lcom/octopus/ad/internal/nativead/c;->W:Lcom/octopus/ad/b/b$i;

    iget-object p1, p0, Lcom/octopus/ad/internal/nativead/c;->T:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "octopus"

    iput-object p1, p0, Lcom/octopus/ad/internal/nativead/c;->T:Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lcom/octopus/ad/internal/nativead/c;->S:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Octopus"

    iput-object p1, p0, Lcom/octopus/ad/internal/nativead/c;->S:Ljava/lang/String;

    :cond_1
    iget-object p1, p0, Lcom/octopus/ad/internal/nativead/c;->U:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Ad Download"

    iput-object p1, p0, Lcom/octopus/ad/internal/nativead/c;->U:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public a(Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/nativead/c;->E:Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

    return-void
.end method

.method public a(Lcom/octopus/ad/internal/network/ServerResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/nativead/c;->G:Lcom/octopus/ad/internal/network/ServerResponse;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/nativead/c;->P:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/octopus/ad/internal/nativead/c;->Z:Z

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c;->G:Lcom/octopus/ad/internal/network/ServerResponse;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/m;->g()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/octopus/ad/internal/nativead/c;->G:Lcom/octopus/ad/internal/network/ServerResponse;

    new-instance v2, Lcom/octopus/ad/internal/nativead/c$3;

    invoke-direct {v2, p0}, Lcom/octopus/ad/internal/nativead/c$3;-><init>(Lcom/octopus/ad/internal/nativead/c;)V

    invoke-static {v0, v1, v2}, Lcom/octopus/ad/internal/view/AdViewImpl;->setDpUpStrategy(Landroid/content/Context;Lcom/octopus/ad/internal/network/ServerResponse;Lcom/octopus/ad/internal/view/AdViewImpl$d;)V

    return-void
.end method

.method public b(I)V
    .locals 5

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c;->Y:Lcom/octopus/ad/b/b$b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/octopus/ad/b/b$b;->m()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/octopus/ad/b/b$j;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/octopus/ad/b/b$j;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/octopus/ad/b/b$j;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/octopus/ad/internal/utilities/UrlUtil;->replaceWinUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/octopus/ad/internal/h;

    invoke-direct {v4, v3}, Lcom/octopus/ad/internal/h;-><init>(Ljava/lang/String;)V

    new-array v3, v1, [Ljava/lang/Void;

    invoke-virtual {v4, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/nativead/c;->F:Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/nativead/c;->h:Ljava/lang/String;

    return-void
.end method

.method public bindUnifiedView(Landroid/view/ViewGroup;Ljava/util/List;Lcom/octopus/ad/internal/nativead/NativeAdEventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/octopus/ad/internal/nativead/NativeAdEventListener;",
            ")V"
        }
    .end annotation

    const v0, 0x138e5

    :try_start_0
    iput-object p3, p0, Lcom/octopus/ad/internal/nativead/c;->L:Lcom/octopus/ad/internal/nativead/NativeAdEventListener;

    if-nez p3, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/octopus/ad/internal/nativead/c;->a(Landroid/view/View;Ljava/util/List;)V

    new-instance p2, Lcom/octopus/ad/internal/nativead/c$8;

    invoke-direct {p2, p0}, Lcom/octopus/ad/internal/nativead/c$8;-><init>(Lcom/octopus/ad/internal/nativead/c;)V

    invoke-direct {p0, p1, p2}, Lcom/octopus/ad/internal/nativead/c;->a(Landroid/view/View;Lcom/octopus/ad/internal/nativead/NativeAdShownListener;)V

    goto :goto_0

    :cond_1
    invoke-interface {p3, v0}, Lcom/octopus/ad/internal/nativead/NativeAdEventListener;->onAdRenderFailed(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p1, p0, Lcom/octopus/ad/internal/nativead/c;->L:Lcom/octopus/ad/internal/nativead/NativeAdEventListener;

    if-eqz p1, :cond_2

    invoke-interface {p1, v0}, Lcom/octopus/ad/internal/nativead/NativeAdEventListener;->onAdRenderFailed(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public bindView(Landroid/view/ViewGroup;Lcom/octopus/ad/internal/nativead/NativeAdEventListener;)V
    .locals 1

    iput-object p2, p0, Lcom/octopus/ad/internal/nativead/c;->L:Lcom/octopus/ad/internal/nativead/NativeAdEventListener;

    iget p2, p0, Lcom/octopus/ad/internal/nativead/c;->t:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/octopus/ad/internal/nativead/c;->a(Landroid/view/ViewGroup;)V

    goto :goto_1

    :cond_0
    sget p2, Lcom/octopus/ad/R$layout;->oct_native_text_left_img:I

    goto :goto_0

    :cond_1
    sget p2, Lcom/octopus/ad/R$layout;->oct_native_text_right_img:I

    goto :goto_0

    :cond_2
    sget p2, Lcom/octopus/ad/R$layout;->oct_native_text_below_img:I

    goto :goto_0

    :cond_3
    sget p2, Lcom/octopus/ad/R$layout;->oct_native_text_above_img:I

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/octopus/ad/internal/nativead/c;->a(Landroid/view/ViewGroup;I)V

    :goto_1
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/nativead/c;->i:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public destroy()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/octopus/ad/internal/nativead/c;->o:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lcom/octopus/ad/internal/nativead/c;->I:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/octopus/ad/internal/nativead/c;->I:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c;->D:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAdvertiser()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c;->w:Ljava/lang/String;

    return-object v0
.end method

.method public getButtonText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u67e5\u770b\u8be6\u60c5"

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c;->g:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c;->f:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrls()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c;->z:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLandingPageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getLogo(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/octopus/ad/R$drawable;->oct_logo:I

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getLogoInfo()Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c;->F:Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

    return-object v0
.end method

.method public getLogoUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c;->F:Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;->getType()I

    move-result v0

    sget v1, Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;->TYPE_PIC:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c;->F:Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;->getAdurl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNativeAdType()Lcom/octopus/ad/NativeAdResponse$b;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c;->a:Lcom/octopus/ad/NativeAdResponse$b;

    return-object v0
.end method

.method public getNativeElements()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c;->x:Ljava/util/HashMap;

    return-object v0
.end method

.method public getNativeInfoListView()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c;->H:Ljava/util/List;

    return-object v0
.end method

.method public getNetworkIdentifier()Lcom/octopus/ad/NativeAdResponse$a;
    .locals 1

    sget-object v0, Lcom/octopus/ad/NativeAdResponse$a;->a:Lcom/octopus/ad/NativeAdResponse$a;

    return-object v0
.end method

.method public getPrice()I
    .locals 1

    iget v0, p0, Lcom/octopus/ad/internal/nativead/c;->m:I

    return v0
.end method

.method public getStarRating()D
    .locals 2

    iget-wide v0, p0, Lcom/octopus/ad/internal/nativead/c;->k:D

    return-wide v0
.end method

.method public getStore()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getTextList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c;->B:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTextLogo(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/octopus/ad/R$drawable;->oct_logo_text:I

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getTextLogoInfo()Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c;->E:Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

    return-object v0
.end method

.method public getTextLogoUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c;->E:Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;->getType()I

    move-result v0

    sget v1, Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;->TYPE_PIC:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c;->E:Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;->getAdurl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoUrls()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c;->A:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hasExpired()Z
    .locals 1

    iget-boolean v0, p0, Lcom/octopus/ad/internal/nativead/c;->y:Z

    return v0
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/nativead/c;->g:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/nativead/c;->f:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setNativeInfoListView(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/octopus/ad/internal/nativead/c;->H:Ljava/util/List;

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 1

    const-string v0, "OctopusGroup"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/octopus/ad/internal/nativead/c;->c()V

    :cond_0
    return-void
.end method

.method public unregisterViews()V
    .locals 3

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c;->J:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c;->K:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c;->K:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/octopus/ad/internal/nativead/c;->destroy()V

    return-void
.end method

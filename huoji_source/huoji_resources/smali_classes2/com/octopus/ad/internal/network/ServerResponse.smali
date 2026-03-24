.class public Lcom/octopus/ad/internal/network/ServerResponse;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;
    }
.end annotation


# static fields
.field public static final EXTRAS_KEY_MRAID:Ljava/lang/String; = "MRAID"

.field public static final EXTRAS_KEY_ORIENTATION:Ljava/lang/String; = "ORIENTATION"

.field public static final EXTRAS_KEY_REWARD_ITEM:Ljava/lang/String; = "REWARD_ITEM"

.field public static final EXTRAS_KEY_SCALE:Ljava/lang/String; = "SCALE"


# instance fields
.field private A:I

.field private B:Z

.field private C:Lcom/octopus/ad/b/b$b$b;

.field private D:Lcom/octopus/ad/b/b$b$a;

.field private E:I

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Lcom/octopus/ad/b/b$i;

.field private K:Lcom/octopus/ad/b/b$b;

.field private L:Lcom/octopus/ad/b/b$m;

.field private M:Lcom/octopus/ad/b/b$t;

.field private N:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/octopus/ad/b/b$j;",
            ">;"
        }
    .end annotation
.end field

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field private Q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/octopus/ad/internal/i;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private R:Ljava/lang/String;

.field private S:Ljava/lang/String;

.field private T:Ljava/lang/String;

.field private U:Ljava/lang/String;

.field private V:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private W:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private X:Z

.field private Y:Z

.field private Z:Lcom/octopus/ad/internal/nativead/c;

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/octopus/ad/b/e$a;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field public mDetectClickUrl:Ljava/lang/String;

.field public mDetectViewUrl:Ljava/lang/String;

.field public mMediaType:Lcom/octopus/ad/internal/l;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:I

.field private r:I

.field private s:Z

.field private t:I

.field private u:Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

.field private v:Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

.field private w:Z

.field private x:I

.field private y:I

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/b/b$q;Ljava/util/Map;Lcom/octopus/ad/internal/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/octopus/ad/b/b$q;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/octopus/ad/internal/l;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->d:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/octopus/ad/internal/network/ServerResponse;->e:I

    iput v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->f:I

    iput v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->g:I

    iput v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->h:I

    iput v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->i:I

    iput-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->j:Z

    iput-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->k:Z

    iput-boolean v1, p0, Lcom/octopus/ad/internal/network/ServerResponse;->l:Z

    iput-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->m:Z

    iput-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->n:Z

    iput-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->o:Z

    iput-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->p:Z

    iput v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->q:I

    iput v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->r:I

    iput-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->s:Z

    iput v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->t:I

    new-instance v1, Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

    invoke-direct {v1}, Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;-><init>()V

    iput-object v1, p0, Lcom/octopus/ad/internal/network/ServerResponse;->u:Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

    new-instance v1, Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

    invoke-direct {v1}, Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;-><init>()V

    iput-object v1, p0, Lcom/octopus/ad/internal/network/ServerResponse;->v:Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

    iput-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->w:Z

    iput-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->B:Z

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/octopus/ad/internal/network/ServerResponse;->Q:Ljava/util/List;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/octopus/ad/internal/network/ServerResponse;->V:Ljava/util/LinkedList;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/octopus/ad/internal/network/ServerResponse;->W:Ljava/util/HashMap;

    iput-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->X:Z

    iput-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->Y:Z

    if-nez p1, :cond_0

    invoke-static {}, Lcom/octopus/ad/internal/utilities/HaoboLog;->clearLastResponse()V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/HaoboLog;->setLastResponse(Ljava/lang/String;)V

    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->httpRespLogTag:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->response_body:I

    invoke-static {}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getLastResponse()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/octopus/ad/internal/network/ServerResponse;->mMediaType:Lcom/octopus/ad/internal/l;

    invoke-direct {p0, p2}, Lcom/octopus/ad/internal/network/ServerResponse;->a(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/network/ServerResponse;->a(Lcom/octopus/ad/b/b$q;)V

    invoke-direct {p0}, Lcom/octopus/ad/internal/network/ServerResponse;->b()V

    return-void
.end method

.method public constructor <init>(Lcom/octopus/ad/internal/utilities/HTTPResponse;Lcom/octopus/ad/internal/l;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->d:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/octopus/ad/internal/network/ServerResponse;->e:I

    iput v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->f:I

    iput v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->g:I

    iput v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->h:I

    iput v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->i:I

    iput-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->j:Z

    iput-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->k:Z

    iput-boolean v1, p0, Lcom/octopus/ad/internal/network/ServerResponse;->l:Z

    iput-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->m:Z

    iput-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->n:Z

    iput-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->o:Z

    iput-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->p:Z

    iput v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->q:I

    iput v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->r:I

    iput-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->s:Z

    iput v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->t:I

    new-instance v1, Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

    invoke-direct {v1}, Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;-><init>()V

    iput-object v1, p0, Lcom/octopus/ad/internal/network/ServerResponse;->u:Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

    new-instance v1, Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

    invoke-direct {v1}, Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;-><init>()V

    iput-object v1, p0, Lcom/octopus/ad/internal/network/ServerResponse;->v:Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

    iput-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->w:Z

    iput-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->B:Z

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/octopus/ad/internal/network/ServerResponse;->Q:Ljava/util/List;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/octopus/ad/internal/network/ServerResponse;->V:Ljava/util/LinkedList;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/octopus/ad/internal/network/ServerResponse;->W:Ljava/util/HashMap;

    iput-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->X:Z

    iput-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->Y:Z

    iput-object p2, p0, Lcom/octopus/ad/internal/network/ServerResponse;->mMediaType:Lcom/octopus/ad/internal/l;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/utilities/HTTPResponse;->getHeaders()Ljava/util/Map;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/octopus/ad/internal/network/ServerResponse;->a(Ljava/util/Map;)V

    :try_start_0
    invoke-virtual {p1}, Lcom/octopus/ad/internal/utilities/HTTPResponse;->getResponseBinaryBody()Ljava/io/ByteArrayOutputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lcom/octopus/ad/b/b$q;->a([B)Lcom/octopus/ad/b/b$q;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/network/ServerResponse;->a(Lcom/octopus/ad/b/b$q;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->d:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/octopus/ad/internal/network/ServerResponse;->e:I

    iput v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->f:I

    iput v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->g:I

    iput v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->h:I

    iput v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->i:I

    iput-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->j:Z

    iput-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->k:Z

    iput-boolean v1, p0, Lcom/octopus/ad/internal/network/ServerResponse;->l:Z

    iput-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->m:Z

    iput-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->n:Z

    iput-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->o:Z

    iput-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->p:Z

    iput v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->q:I

    iput v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->r:I

    iput-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->s:Z

    iput v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->t:I

    new-instance v1, Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

    invoke-direct {v1}, Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;-><init>()V

    iput-object v1, p0, Lcom/octopus/ad/internal/network/ServerResponse;->u:Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

    new-instance v1, Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

    invoke-direct {v1}, Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;-><init>()V

    iput-object v1, p0, Lcom/octopus/ad/internal/network/ServerResponse;->v:Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

    iput-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->w:Z

    iput-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->B:Z

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/octopus/ad/internal/network/ServerResponse;->Q:Ljava/util/List;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/octopus/ad/internal/network/ServerResponse;->V:Ljava/util/LinkedList;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/octopus/ad/internal/network/ServerResponse;->W:Ljava/util/HashMap;

    iput-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->X:Z

    iput-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->Y:Z

    iput-boolean p1, p0, Lcom/octopus/ad/internal/network/ServerResponse;->Y:Z

    return-void
.end method

.method private a(Lcom/octopus/ad/b/b$a;)Ljava/lang/String;
    .locals 7

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$a;->a()Lcom/octopus/ad/b/e$f;

    move-result-object v0

    sget-object v1, Lcom/octopus/ad/b/e$f;->d:Lcom/octopus/ad/b/e$f;

    const-string v2, ""

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$a;->a()Lcom/octopus/ad/b/e$f;

    move-result-object v0

    sget-object v1, Lcom/octopus/ad/b/e$f;->c:Lcom/octopus/ad/b/e$f;

    if-eq v0, v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p1}, Lcom/octopus/ad/b/b$a;->a()Lcom/octopus/ad/b/e$f;

    move-result-object v0

    sget-object v1, Lcom/octopus/ad/b/e$f;->c:Lcom/octopus/ad/b/e$f;

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$a;->d()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$a;->c()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/octopus/ad/b/b$e;

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$e;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "<!DOCTYPE html>\n<html lang=\"en\" style=\"width: 100%; height: 100%;\">\n<head>\n    <meta charset=\"UTF-8\">\n    <meta name=\"viewport\" id=\"viewport\" content=\"width=device-width, height=device-height, initial-scale=1\">\n    <title>Document</title>\n</head>\n<body style=\"width: 100%; height: 100%; padding: 0; margin: 0;\">\n<img style=\"width: 100%; height: 100%\" src=\"https://v.behe.com/dsp20/ad/2017/5/5/28d147ed3e96a3ba8ac90703e4d66de2.jpg\" alt=\"\"/>\n</body>\n</html><!DOCTYPE html>"

    const-string v1, "https://v.behe.com/dsp20/ad/2017/5/5/28d147ed3e96a3ba8ac90703e4d66de2.jpg"

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, "\\{(\\d+)\\.value\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/octopus/ad/b/b$a;->d()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$a;->c()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/octopus/ad/b/b$e;

    invoke-virtual {v6}, Lcom/octopus/ad/b/b$e;->b()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, p1, v4}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_1

    :cond_3
    invoke-virtual {v0, p1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    sget-object v4, Lcom/octopus/ad/internal/utilities/HaoboLog;->pbLogTag:Ljava/lang/String;

    sget v5, Lcom/octopus/ad/R$string;->invalid_string_placeholder:I

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/octopus/ad/internal/utilities/HaoboLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/network/ServerResponse;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->V:Ljava/util/LinkedList;

    return-object p0
.end method

.method private a(I)V
    .locals 5

    iget-object v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->K:Lcom/octopus/ad/b/b$b;

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

    iget-boolean v4, p0, Lcom/octopus/ad/internal/network/ServerResponse;->B:Z

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
    if-eqz p1, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&opt="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

.method private a(Lcom/octopus/ad/b/b$b;)V
    .locals 1

    iput-object p1, p0, Lcom/octopus/ad/internal/network/ServerResponse;->K:Lcom/octopus/ad/b/b$b;

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$b;->m()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->N:Ljava/util/List;

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$b;->l()Lcom/octopus/ad/b/b$b$b;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->C:Lcom/octopus/ad/b/b$b$b;

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$b;->k()Lcom/octopus/ad/b/b$b$a;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->D:Lcom/octopus/ad/b/b$b$a;

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$b;->c()I

    move-result v0

    iput v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->E:I

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$b;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->F:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$b;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->G:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$b;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->H:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$b;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->I:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$b;->h()Lcom/octopus/ad/b/b$i;

    move-result-object p1

    iput-object p1, p0, Lcom/octopus/ad/internal/network/ServerResponse;->J:Lcom/octopus/ad/b/b$i;

    iget-object p1, p0, Lcom/octopus/ad/internal/network/ServerResponse;->G:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "octopus"

    iput-object p1, p0, Lcom/octopus/ad/internal/network/ServerResponse;->G:Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lcom/octopus/ad/internal/network/ServerResponse;->F:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Octopus"

    iput-object p1, p0, Lcom/octopus/ad/internal/network/ServerResponse;->F:Ljava/lang/String;

    :cond_1
    iget-object p1, p0, Lcom/octopus/ad/internal/network/ServerResponse;->H:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Ad Download"

    iput-object p1, p0, Lcom/octopus/ad/internal/network/ServerResponse;->H:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method private a(Lcom/octopus/ad/b/b$q;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/network/ServerResponse;->b(Lcom/octopus/ad/b/b$q;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->mMediaType:Lcom/octopus/ad/internal/l;

    sget-object v1, Lcom/octopus/ad/internal/l;->f:Lcom/octopus/ad/internal/l;

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/network/ServerResponse;->d(Lcom/octopus/ad/b/b$q;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_1
    sget-object v1, Lcom/octopus/ad/internal/l;->e:Lcom/octopus/ad/internal/l;

    if-eq v0, v1, :cond_2

    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/network/ServerResponse;->c(Lcom/octopus/ad/b/b$q;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/network/ServerResponse;->e(Lcom/octopus/ad/b/b$q;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/network/ServerResponse;->f(Lcom/octopus/ad/b/b$q;)Z

    move-result p1

    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/octopus/ad/internal/utilities/HaoboLog;->httpRespLogTag:Ljava/lang/String;

    sget v4, Lcom/octopus/ad/R$string;->response_header:I

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v4, v5, v2}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/octopus/ad/internal/utilities/HaoboLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->V:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/m;->c()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/octopus/ad/internal/network/ServerResponse$1;

    invoke-direct {v2, p0, v0}, Lcom/octopus/ad/internal/network/ServerResponse$1;-><init>(Lcom/octopus/ad/internal/network/ServerResponse;Lcom/octopus/ad/internal/m;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private b(Lcom/octopus/ad/b/b$q;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$q;->b()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->httpRespLogTag:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->response_error:I

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$q;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$q;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private c(Lcom/octopus/ad/b/b$q;)Z
    .locals 9

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$q;->a()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_15

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$q;->e()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/octopus/ad/b/b$s;

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->c()Lcom/octopus/ad/b/e$a;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->c:Lcom/octopus/ad/b/e$a;

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->d()I

    move-result v0

    iput v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->d:I

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->e()Lcom/octopus/ad/b/e$h;

    move-result-object v0

    sget-object v3, Lcom/octopus/ad/b/e$h;->b:Lcom/octopus/ad/b/e$h;

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->e:I

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->i:I

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->h:I

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->i()Lcom/octopus/ad/b/b$f;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/octopus/ad/internal/network/ServerResponse;->getAdType()Lcom/octopus/ad/b/e$a;

    move-result-object v0

    sget-object v3, Lcom/octopus/ad/b/e$a;->d:Lcom/octopus/ad/b/e$a;

    if-eq v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/octopus/ad/internal/network/ServerResponse;->getAdType()Lcom/octopus/ad/b/e$a;

    move-result-object v0

    sget-object v3, Lcom/octopus/ad/b/e$a;->f:Lcom/octopus/ad/b/e$a;

    if-ne v0, v3, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->i()Lcom/octopus/ad/b/b$f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/octopus/ad/b/b$f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/octopus/ad/internal/network/ServerResponse;->f:I

    invoke-virtual {v0}, Lcom/octopus/ad/b/b$f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->g:I

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/octopus/ad/internal/network/ServerResponse;->getAdType()Lcom/octopus/ad/b/e$a;

    move-result-object v0

    sget-object v3, Lcom/octopus/ad/b/e$a;->b:Lcom/octopus/ad/b/e$a;

    if-ne v0, v3, :cond_3

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->b()Ljava/lang/String;

    move-result-object v0

    const-string v3, "REWARD_ITEM"

    invoke-virtual {p0, v3, v0}, Lcom/octopus/ad/internal/network/ServerResponse;->addToExtras(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->r()Z

    move-result v0

    iput-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->j:Z

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->s()Z

    move-result v0

    iput-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->k:Z

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->p()Z

    move-result v0

    iput-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->l:Z

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->u()Z

    move-result v0

    iput-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->m:Z

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->q()Z

    move-result v0

    iput-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->n:Z

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->l()Z

    move-result v0

    iput-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->o:Z

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->n()Z

    move-result v0

    iput-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->p:Z

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->o()I

    move-result v0

    iput v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->q:I

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->m()I

    move-result v0

    iput v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->r:I

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->t()Z

    move-result v0

    iput-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->s:Z

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->j()Lcom/octopus/ad/b/b$m;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->L:Lcom/octopus/ad/b/b$m;

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->k()Lcom/octopus/ad/b/b$t;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->M:Lcom/octopus/ad/b/b$t;

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->v()I

    move-result v0

    iput v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->A:I

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->f()I

    move-result v0

    iput v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->y:I

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->w()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/octopus/ad/b/b$d;

    invoke-virtual {v3}, Lcom/octopus/ad/b/b$d;->i()I

    move-result v3

    iput v3, p0, Lcom/octopus/ad/internal/network/ServerResponse;->x:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/octopus/ad/b/b$d;

    invoke-virtual {v0}, Lcom/octopus/ad/b/b$d;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->z:Ljava/lang/String;

    :cond_4
    iget-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->j:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->i:I

    if-nez v0, :cond_5

    iget v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->h:I

    if-nez v0, :cond_5

    const/16 v0, 0x2d0

    iput v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->i:I

    const/16 v0, 0x500

    iput v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->h:I

    :cond_5
    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->x()I

    move-result v0

    if-lez v0, :cond_16

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->w()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/octopus/ad/b/b$d;

    if-nez v0, :cond_7

    invoke-virtual {v3}, Lcom/octopus/ad/b/b$d;->b()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/octopus/ad/internal/network/ServerResponse;->P:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAdid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/octopus/ad/internal/network/ServerResponse;->P:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OctopusAd"

    invoke-static {v5, v4}, Lcom/octopus/ad/utils/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v3}, Lcom/octopus/ad/b/b$d;->h()I

    move-result v4

    if-lez v4, :cond_8

    invoke-virtual {v3}, Lcom/octopus/ad/b/b$d;->g()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_14

    :cond_8
    invoke-virtual {v3}, Lcom/octopus/ad/b/b$d;->a()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/octopus/ad/internal/network/ServerResponse;->O:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/octopus/ad/b/b$d;->e()Lcom/octopus/ad/b/b$c;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lcom/octopus/ad/b/b$c;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/octopus/ad/internal/network/ServerResponse;->u:Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

    invoke-virtual {v4}, Lcom/octopus/ad/b/b$c;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;->access$100(Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/octopus/ad/internal/network/ServerResponse;->u:Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

    sget v6, Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;->TYPE_PIC:I

    goto :goto_2

    :cond_9
    iget-object v5, p0, Lcom/octopus/ad/internal/network/ServerResponse;->u:Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

    invoke-virtual {v4}, Lcom/octopus/ad/b/b$c;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;->access$100(Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/octopus/ad/internal/network/ServerResponse;->u:Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

    sget v6, Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;->TYPE_TEXT:I

    :goto_2
    invoke-static {v5, v6}, Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;->access$200(Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;I)V

    invoke-virtual {v4}, Lcom/octopus/ad/b/b$c;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/octopus/ad/internal/network/ServerResponse;->v:Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

    invoke-virtual {v4}, Lcom/octopus/ad/b/b$c;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;->access$100(Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/octopus/ad/internal/network/ServerResponse;->v:Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

    sget v5, Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;->TYPE_PIC:I

    goto :goto_3

    :cond_a
    iget-object v5, p0, Lcom/octopus/ad/internal/network/ServerResponse;->v:Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

    invoke-virtual {v4}, Lcom/octopus/ad/b/b$c;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;->access$100(Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/octopus/ad/internal/network/ServerResponse;->v:Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

    sget v5, Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;->TYPE_TEXT:I

    :goto_3
    invoke-static {v4, v5}, Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;->access$200(Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;I)V

    :cond_b
    invoke-virtual {v3}, Lcom/octopus/ad/b/b$d;->d()I

    move-result v4

    if-lez v4, :cond_11

    invoke-virtual {v3}, Lcom/octopus/ad/b/b$d;->f()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/octopus/ad/b/b$a;

    iget-boolean v6, p0, Lcom/octopus/ad/internal/network/ServerResponse;->l:Z

    if-eqz v6, :cond_e

    const/4 v6, 0x0

    :goto_5
    invoke-virtual {v5}, Lcom/octopus/ad/b/b$a;->d()I

    move-result v7

    if-ge v6, v7, :cond_e

    invoke-virtual {v5}, Lcom/octopus/ad/b/b$a;->c()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/octopus/ad/b/b$e;

    invoke-virtual {v7}, Lcom/octopus/ad/b/b$e;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/octopus/ad/internal/utilities/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_d

    iget-object v7, p0, Lcom/octopus/ad/internal/network/ServerResponse;->V:Ljava/util/LinkedList;

    invoke-virtual {v5}, Lcom/octopus/ad/b/b$a;->c()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/octopus/ad/b/b$e;

    invoke-virtual {v8}, Lcom/octopus/ad/b/b$e;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_e
    invoke-virtual {v5}, Lcom/octopus/ad/b/b$a;->a()Lcom/octopus/ad/b/e$f;

    move-result-object v6

    sget-object v7, Lcom/octopus/ad/b/e$f;->b:Lcom/octopus/ad/b/e$f;

    if-eq v6, v7, :cond_f

    invoke-virtual {v5}, Lcom/octopus/ad/b/b$a;->a()Lcom/octopus/ad/b/e$f;

    move-result-object v6

    sget-object v7, Lcom/octopus/ad/b/e$f;->f:Lcom/octopus/ad/b/e$f;

    if-ne v6, v7, :cond_10

    :cond_f
    invoke-virtual {v5}, Lcom/octopus/ad/b/b$a;->d()I

    move-result v6

    if-lez v6, :cond_10

    iget-object v6, p0, Lcom/octopus/ad/internal/network/ServerResponse;->Q:Ljava/util/List;

    sget-object v7, Lcom/octopus/ad/internal/i;->a:Lcom/octopus/ad/internal/i;

    invoke-virtual {v5}, Lcom/octopus/ad/b/b$a;->c()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/octopus/ad/b/b$e;

    invoke-virtual {v5}, Lcom/octopus/ad/b/b$e;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_10
    invoke-direct {p0, v5}, Lcom/octopus/ad/internal/network/ServerResponse;->a(Lcom/octopus/ad/b/b$a;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/octopus/ad/internal/network/ServerResponse;->Q:Ljava/util/List;

    sget-object v7, Lcom/octopus/ad/internal/i;->b:Lcom/octopus/ad/internal/i;

    invoke-static {v7, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, "mraid.js"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v6, "MRAID"

    invoke-virtual {p0, v6, v5}, Lcom/octopus/ad/internal/network/ServerResponse;->addToExtras(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_11
    invoke-virtual {v3}, Lcom/octopus/ad/b/b$d;->c()Lcom/octopus/ad/b/b$b;

    move-result-object v4

    if-eqz v4, :cond_14

    invoke-virtual {v3}, Lcom/octopus/ad/b/b$d;->c()Lcom/octopus/ad/b/b$b;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/octopus/ad/internal/network/ServerResponse;->a(Lcom/octopus/ad/b/b$b;)V

    invoke-virtual {v3}, Lcom/octopus/ad/b/b$b;->a()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/octopus/ad/internal/network/ServerResponse;->S:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/octopus/ad/b/b$b;->i()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/octopus/ad/internal/network/ServerResponse;->U:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/octopus/ad/b/b$b;->b()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/octopus/ad/internal/network/ServerResponse;->T:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/octopus/ad/b/b$b;->j()Lcom/octopus/ad/b/b$j;

    move-result-object v3

    if-eqz v3, :cond_12

    invoke-virtual {v3}, Lcom/octopus/ad/b/b$j;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_12

    invoke-virtual {v3}, Lcom/octopus/ad/b/b$j;->a()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/octopus/ad/internal/network/ServerResponse;->mDetectViewUrl:Ljava/lang/String;

    :cond_12
    if-eqz v3, :cond_13

    invoke-virtual {v3}, Lcom/octopus/ad/b/b$j;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_13

    invoke-virtual {v3}, Lcom/octopus/ad/b/b$j;->b()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/octopus/ad/internal/network/ServerResponse;->mDetectClickUrl:Ljava/lang/String;

    :cond_13
    if-eqz v3, :cond_14

    invoke-virtual {v3}, Lcom/octopus/ad/b/b$j;->f()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_14

    invoke-virtual {v3}, Lcom/octopus/ad/b/b$j;->f()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/octopus/ad/internal/network/ServerResponse;->R:Ljava/lang/String;

    :cond_14
    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lcom/octopus/ad/internal/network/ServerResponse;->Q:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_6

    :cond_15
    sget-object p1, Lcom/octopus/ad/internal/utilities/HaoboLog;->httpRespLogTag:Ljava/lang/String;

    sget v0, Lcom/octopus/ad/R$string;->blank_ad:I

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/utilities/HaoboLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    :goto_6
    iget-object p1, p0, Lcom/octopus/ad/internal/network/ServerResponse;->Q:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_17

    iput-boolean v1, p0, Lcom/octopus/ad/internal/network/ServerResponse;->X:Z

    return v1

    :cond_17
    return v2
.end method

.method private d(Lcom/octopus/ad/b/b$q;)Z
    .locals 7

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$q;->a()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_5

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$q;->e()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/octopus/ad/b/b$s;

    invoke-virtual {v0}, Lcom/octopus/ad/b/b$s;->p()Z

    move-result v2

    iput-boolean v2, p0, Lcom/octopus/ad/internal/network/ServerResponse;->l:Z

    invoke-virtual {v0}, Lcom/octopus/ad/b/b$s;->x()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0}, Lcom/octopus/ad/b/b$s;->w()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/octopus/ad/b/b$d;

    invoke-virtual {v2}, Lcom/octopus/ad/b/b$d;->h()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v2}, Lcom/octopus/ad/b/b$d;->g()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_2
    invoke-virtual {v2}, Lcom/octopus/ad/b/b$d;->d()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v2}, Lcom/octopus/ad/b/b$d;->f()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/octopus/ad/b/b$a;

    iget-boolean v4, p0, Lcom/octopus/ad/internal/network/ServerResponse;->l:Z

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3}, Lcom/octopus/ad/b/b$a;->d()I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-virtual {v3}, Lcom/octopus/ad/b/b$a;->c()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/octopus/ad/b/b$e;

    invoke-virtual {v5}, Lcom/octopus/ad/b/b$e;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/octopus/ad/internal/utilities/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/octopus/ad/internal/network/ServerResponse;->V:Ljava/util/LinkedList;

    invoke-virtual {v3}, Lcom/octopus/ad/b/b$a;->c()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/octopus/ad/b/b$e;

    invoke-virtual {v6}, Lcom/octopus/ad/b/b$e;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/octopus/ad/internal/network/ServerResponse;->V:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/octopus/ad/internal/network/ServerResponse;->X:Z

    return p1

    :cond_6
    return v1
.end method

.method private e(Lcom/octopus/ad/b/b$q;)Z
    .locals 8

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$q;->a()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_11

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$q;->e()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/octopus/ad/b/b$s;

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->c()Lcom/octopus/ad/b/e$a;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->c:Lcom/octopus/ad/b/e$a;

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->d()I

    move-result v0

    iput v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->d:I

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->e()Lcom/octopus/ad/b/e$h;

    move-result-object v0

    sget-object v3, Lcom/octopus/ad/b/e$h;->b:Lcom/octopus/ad/b/e$h;

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->e:I

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->i:I

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->h:I

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->f()I

    move-result v0

    iput v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->y:I

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->w()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/octopus/ad/b/b$d;

    invoke-virtual {v3}, Lcom/octopus/ad/b/b$d;->i()I

    move-result v3

    iput v3, p0, Lcom/octopus/ad/internal/network/ServerResponse;->x:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/octopus/ad/b/b$d;

    invoke-virtual {v0}, Lcom/octopus/ad/b/b$d;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->z:Ljava/lang/String;

    :cond_1
    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->r()Z

    move-result v0

    iput-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->j:Z

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->s()Z

    move-result v0

    iput-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->k:Z

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->p()Z

    move-result v0

    iput-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->l:Z

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->u()Z

    move-result v0

    iput-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->m:Z

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->q()Z

    move-result v0

    iput-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->n:Z

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->l()Z

    move-result v0

    iput-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->o:Z

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->n()Z

    move-result v0

    iput-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->p:Z

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->o()I

    move-result v0

    iput v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->q:I

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->m()I

    move-result v0

    iput v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->r:I

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->t()Z

    move-result v0

    iput-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->s:Z

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->j()Lcom/octopus/ad/b/b$m;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->L:Lcom/octopus/ad/b/b$m;

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->k()Lcom/octopus/ad/b/b$t;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->M:Lcom/octopus/ad/b/b$t;

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->v()I

    move-result v0

    iput v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->A:I

    iget-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->j:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->i:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->h:I

    if-nez v0, :cond_2

    const/16 v0, 0x2d0

    iput v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->i:I

    const/16 v0, 0x500

    iput v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->h:I

    :cond_2
    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->x()I

    move-result v0

    if-lez v0, :cond_12

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->w()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/octopus/ad/b/b$d;

    invoke-virtual {v0}, Lcom/octopus/ad/b/b$d;->h()I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {v0}, Lcom/octopus/ad/b/b$d;->g()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    :cond_4
    invoke-virtual {v0}, Lcom/octopus/ad/b/b$d;->a()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/octopus/ad/internal/network/ServerResponse;->O:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/octopus/ad/b/b$d;->d()I

    move-result v3

    if-ltz v3, :cond_3

    invoke-virtual {v0}, Lcom/octopus/ad/b/b$d;->f()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/octopus/ad/b/b$a;

    iget-boolean v5, p0, Lcom/octopus/ad/internal/network/ServerResponse;->l:Z

    if-eqz v5, :cond_7

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v4}, Lcom/octopus/ad/b/b$a;->d()I

    move-result v6

    if-ge v5, v6, :cond_7

    invoke-virtual {v4}, Lcom/octopus/ad/b/b$a;->c()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/octopus/ad/b/b$e;

    invoke-virtual {v6}, Lcom/octopus/ad/b/b$e;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/octopus/ad/internal/utilities/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/octopus/ad/internal/network/ServerResponse;->V:Ljava/util/LinkedList;

    invoke-virtual {v4}, Lcom/octopus/ad/b/b$a;->c()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/octopus/ad/b/b$e;

    invoke-virtual {v7}, Lcom/octopus/ad/b/b$e;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual {v4}, Lcom/octopus/ad/b/b$a;->a()Lcom/octopus/ad/b/e$f;

    move-result-object v5

    sget-object v6, Lcom/octopus/ad/b/e$f;->e:Lcom/octopus/ad/b/e$f;

    if-ne v5, v6, :cond_5

    invoke-virtual {v4}, Lcom/octopus/ad/b/b$a;->d()I

    move-result v5

    if-lez v5, :cond_5

    :try_start_0
    invoke-virtual {v0}, Lcom/octopus/ad/b/b$d;->e()Lcom/octopus/ad/b/b$c;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Lcom/octopus/ad/b/b$c;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/octopus/ad/internal/network/ServerResponse;->u:Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

    invoke-virtual {v5}, Lcom/octopus/ad/b/b$c;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;->access$100(Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/octopus/ad/internal/network/ServerResponse;->u:Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

    sget v7, Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;->TYPE_PIC:I

    :goto_2
    invoke-static {v6, v7}, Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;->access$200(Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;I)V

    goto :goto_3

    :cond_8
    iget-object v6, p0, Lcom/octopus/ad/internal/network/ServerResponse;->u:Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

    invoke-virtual {v5}, Lcom/octopus/ad/b/b$c;->b()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;->access$100(Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/octopus/ad/internal/network/ServerResponse;->u:Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

    sget v7, Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;->TYPE_TEXT:I

    goto :goto_2

    :goto_3
    invoke-virtual {v5}, Lcom/octopus/ad/b/b$c;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/octopus/ad/internal/network/ServerResponse;->v:Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

    invoke-virtual {v5}, Lcom/octopus/ad/b/b$c;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;->access$100(Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/octopus/ad/internal/network/ServerResponse;->v:Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

    sget v6, Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;->TYPE_PIC:I

    :goto_4
    invoke-static {v5, v6}, Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;->access$200(Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;I)V

    goto :goto_5

    :cond_9
    iget-object v6, p0, Lcom/octopus/ad/internal/network/ServerResponse;->v:Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

    invoke-virtual {v5}, Lcom/octopus/ad/b/b$c;->d()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;->access$100(Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/octopus/ad/internal/network/ServerResponse;->v:Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

    sget v6, Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;->TYPE_TEXT:I

    goto :goto_4

    :cond_a
    :goto_5
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {v4}, Lcom/octopus/ad/b/b$a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/octopus/ad/internal/nativead/c;->a(Lorg/json/JSONObject;)Lcom/octopus/ad/internal/nativead/c;

    move-result-object v4

    iput-object v4, p0, Lcom/octopus/ad/internal/network/ServerResponse;->Z:Lcom/octopus/ad/internal/nativead/c;

    invoke-virtual {v4, p0}, Lcom/octopus/ad/internal/nativead/c;->a(Lcom/octopus/ad/internal/network/ServerResponse;)V

    iget-object v4, p0, Lcom/octopus/ad/internal/network/ServerResponse;->Z:Lcom/octopus/ad/internal/nativead/c;

    invoke-virtual {p0}, Lcom/octopus/ad/internal/network/ServerResponse;->getFilter()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/octopus/ad/internal/nativead/c;->a(I)V

    iget-object v4, p0, Lcom/octopus/ad/internal/network/ServerResponse;->Z:Lcom/octopus/ad/internal/nativead/c;

    invoke-virtual {p0}, Lcom/octopus/ad/internal/network/ServerResponse;->getLogoInfo()Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/octopus/ad/internal/nativead/c;->b(Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;)V

    iget-object v4, p0, Lcom/octopus/ad/internal/network/ServerResponse;->Z:Lcom/octopus/ad/internal/nativead/c;

    invoke-virtual {p0}, Lcom/octopus/ad/internal/network/ServerResponse;->getTextLogInfo()Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/octopus/ad/internal/nativead/c;->a(Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;)V

    invoke-virtual {v0}, Lcom/octopus/ad/b/b$d;->c()Lcom/octopus/ad/b/b$b;

    move-result-object v4

    if-eqz v4, :cond_10

    invoke-virtual {v0}, Lcom/octopus/ad/b/b$d;->c()Lcom/octopus/ad/b/b$b;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/octopus/ad/internal/network/ServerResponse;->a(Lcom/octopus/ad/b/b$b;)V

    invoke-virtual {v0}, Lcom/octopus/ad/b/b$d;->c()Lcom/octopus/ad/b/b$b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/octopus/ad/b/b$b;->a()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/octopus/ad/internal/network/ServerResponse;->S:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/octopus/ad/b/b$b;->b()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/octopus/ad/internal/network/ServerResponse;->T:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/octopus/ad/b/b$b;->i()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/octopus/ad/internal/network/ServerResponse;->U:Ljava/lang/String;

    iget-object v5, p0, Lcom/octopus/ad/internal/network/ServerResponse;->Z:Lcom/octopus/ad/internal/nativead/c;

    iget-object v6, p0, Lcom/octopus/ad/internal/network/ServerResponse;->S:Ljava/lang/String;

    invoke-static {v6}, Lcom/octopus/ad/internal/utilities/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, p0, Lcom/octopus/ad/internal/network/ServerResponse;->S:Ljava/lang/String;

    goto :goto_6

    :cond_b
    iget-object v6, p0, Lcom/octopus/ad/internal/network/ServerResponse;->U:Ljava/lang/String;

    :goto_6
    invoke-virtual {v5, v6}, Lcom/octopus/ad/internal/nativead/c;->b(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/octopus/ad/internal/network/ServerResponse;->Z:Lcom/octopus/ad/internal/nativead/c;

    iget-object v6, p0, Lcom/octopus/ad/internal/network/ServerResponse;->T:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/octopus/ad/internal/nativead/c;->c(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/octopus/ad/internal/network/ServerResponse;->Z:Lcom/octopus/ad/internal/nativead/c;

    invoke-virtual {v0}, Lcom/octopus/ad/b/b$d;->c()Lcom/octopus/ad/b/b$b;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/octopus/ad/internal/nativead/c;->a(Lcom/octopus/ad/b/b$b;)V

    invoke-virtual {v4}, Lcom/octopus/ad/b/b$b;->j()Lcom/octopus/ad/b/b$j;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Lcom/octopus/ad/b/b$j;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    iget-object v6, p0, Lcom/octopus/ad/internal/network/ServerResponse;->Z:Lcom/octopus/ad/internal/nativead/c;

    invoke-virtual {v5}, Lcom/octopus/ad/b/b$j;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/octopus/ad/internal/nativead/c;->d(Ljava/lang/String;)V

    :cond_c
    if-eqz v5, :cond_d

    invoke-virtual {v5}, Lcom/octopus/ad/b/b$j;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_d

    iget-object v6, p0, Lcom/octopus/ad/internal/network/ServerResponse;->Z:Lcom/octopus/ad/internal/nativead/c;

    invoke-virtual {v5}, Lcom/octopus/ad/b/b$j;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/octopus/ad/internal/nativead/c;->e(Ljava/lang/String;)V

    :cond_d
    invoke-virtual {v4}, Lcom/octopus/ad/b/b$b;->m()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_10

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_10

    const/4 v5, 0x0

    :goto_7
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_10

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/octopus/ad/b/b$j;

    invoke-virtual {v6}, Lcom/octopus/ad/b/b$j;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_e

    iget-object v7, p0, Lcom/octopus/ad/internal/network/ServerResponse;->Z:Lcom/octopus/ad/internal/nativead/c;

    invoke-virtual {v7, v6}, Lcom/octopus/ad/internal/nativead/c;->e(Ljava/lang/String;)V

    :cond_e
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/octopus/ad/b/b$j;

    invoke-virtual {v6}, Lcom/octopus/ad/b/b$j;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_f

    iget-object v7, p0, Lcom/octopus/ad/internal/network/ServerResponse;->Z:Lcom/octopus/ad/internal/nativead/c;

    invoke-virtual {v7, v6}, Lcom/octopus/ad/internal/nativead/c;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :catch_0
    nop

    :cond_10
    iget-object v4, p0, Lcom/octopus/ad/internal/network/ServerResponse;->Z:Lcom/octopus/ad/internal/nativead/c;

    if-eqz v4, :cond_5

    iput-boolean v1, p0, Lcom/octopus/ad/internal/network/ServerResponse;->X:Z

    return v1

    :cond_11
    sget-object p1, Lcom/octopus/ad/internal/utilities/HaoboLog;->httpRespLogTag:Ljava/lang/String;

    sget v0, Lcom/octopus/ad/R$string;->blank_ad:I

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/utilities/HaoboLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    iget-object p1, p0, Lcom/octopus/ad/internal/network/ServerResponse;->Q:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_13

    iput-boolean v1, p0, Lcom/octopus/ad/internal/network/ServerResponse;->X:Z

    return v1

    :cond_13
    return v2
.end method

.method private f(Lcom/octopus/ad/b/b$q;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$q;->a()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_5

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$q;->e()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/octopus/ad/b/b$s;

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->w()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/octopus/ad/b/b$d;

    invoke-virtual {v0}, Lcom/octopus/ad/b/b$d;->c()Lcom/octopus/ad/b/b$b;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/octopus/ad/b/b$d;->c()Lcom/octopus/ad/b/b$b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/octopus/ad/internal/network/ServerResponse;->a(Lcom/octopus/ad/b/b$b;)V

    invoke-virtual {v0}, Lcom/octopus/ad/b/b$b;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/octopus/ad/internal/network/ServerResponse;->S:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/octopus/ad/b/b$b;->i()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/octopus/ad/internal/network/ServerResponse;->U:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/octopus/ad/b/b$b;->j()Lcom/octopus/ad/b/b$j;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/octopus/ad/b/b$j;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/octopus/ad/b/b$j;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/octopus/ad/internal/network/ServerResponse;->mDetectViewUrl:Ljava/lang/String;

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/octopus/ad/b/b$j;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/octopus/ad/b/b$j;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/octopus/ad/internal/network/ServerResponse;->mDetectClickUrl:Ljava/lang/String;

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/octopus/ad/b/b$j;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/octopus/ad/b/b$j;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->R:Ljava/lang/String;

    :cond_2
    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->c()Lcom/octopus/ad/b/e$a;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->c:Lcom/octopus/ad/b/e$a;

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->d()I

    move-result v0

    iput v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->d:I

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->e()Lcom/octopus/ad/b/e$h;

    move-result-object v0

    sget-object v2, Lcom/octopus/ad/b/e$h;->b:Lcom/octopus/ad/b/e$h;

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->e:I

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->h:I

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->i:I

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->f()I

    move-result v0

    iput v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->y:I

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->w()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/octopus/ad/b/b$d;

    invoke-virtual {v2}, Lcom/octopus/ad/b/b$d;->i()I

    move-result v2

    iput v2, p0, Lcom/octopus/ad/internal/network/ServerResponse;->x:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/octopus/ad/b/b$d;

    invoke-virtual {v0}, Lcom/octopus/ad/b/b$d;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->z:Ljava/lang/String;

    :cond_4
    iput v1, p0, Lcom/octopus/ad/internal/network/ServerResponse;->f:I

    iput v1, p0, Lcom/octopus/ad/internal/network/ServerResponse;->g:I

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->i()Lcom/octopus/ad/b/b$f;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/octopus/ad/internal/network/ServerResponse;->getAdType()Lcom/octopus/ad/b/e$a;

    move-result-object v0

    sget-object v2, Lcom/octopus/ad/b/e$a;->d:Lcom/octopus/ad/b/e$a;

    if-ne v0, v2, :cond_5

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$s;->i()Lcom/octopus/ad/b/b$f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->f:I

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$f;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/octopus/ad/internal/network/ServerResponse;->g:I

    :cond_5
    return v1
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->Y:Z

    return v0
.end method

.method public addToExtras(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->W:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public containsAds()Z
    .locals 1

    iget-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->X:Z

    return v0
.end method

.method public doClick(Landroid/view/View;ZI)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v0, p2

    move/from16 v3, p3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleClick========"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OctopusAd"

    invoke-static {v5, v4}, Lcom/octopus/ad/utils/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, ""

    const/4 v6, 0x0

    if-nez v0, :cond_5

    iget-object v0, v1, Lcom/octopus/ad/internal/network/ServerResponse;->mDetectClickUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/octopus/ad/internal/h;

    iget-object v7, v1, Lcom/octopus/ad/internal/network/ServerResponse;->mDetectClickUrl:Ljava/lang/String;

    invoke-direct {v0, v7}, Lcom/octopus/ad/internal/h;-><init>(Ljava/lang/String;)V

    new-array v7, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v7}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iput-object v4, v1, Lcom/octopus/ad/internal/network/ServerResponse;->mDetectClickUrl:Ljava/lang/String;

    :cond_0
    iget-object v0, v1, Lcom/octopus/ad/internal/network/ServerResponse;->K:Lcom/octopus/ad/b/b$b;

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/octopus/ad/internal/network/ServerResponse;->N:Ljava/util/List;

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    :goto_0
    iget-object v7, v1, Lcom/octopus/ad/internal/network/ServerResponse;->N:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_4

    iget-object v7, v1, Lcom/octopus/ad/internal/network/ServerResponse;->N:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/octopus/ad/b/b$j;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/octopus/ad/b/b$j;->b()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v7}, Lcom/octopus/ad/b/b$j;->b()Ljava/lang/String;

    move-result-object v7

    const-string v8, "http://v.adintl.cn/clk"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-boolean v8, v1, Lcom/octopus/ad/internal/network/ServerResponse;->B:Z

    if-eqz v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "&opt=1"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_1
    if-eqz v3, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "&opt="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    :goto_2
    new-instance v8, Lcom/octopus/ad/internal/h;

    invoke-static {v2, v7}, Lcom/octopus/ad/internal/utilities/StringUtil;->replaceClick(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Lcom/octopus/ad/internal/h;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/octopus/ad/utils/b/h;->b()Lcom/octopus/ad/utils/b/h;

    move-result-object v7

    invoke-virtual {v7}, Lcom/octopus/ad/utils/b/h;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    new-array v9, v6, [Ljava/lang/Void;

    invoke-virtual {v8, v7, v9}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/octopus/ad/internal/network/ServerResponse;->N:Ljava/util/List;

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mDeepLinkUrl:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/octopus/ad/internal/network/ServerResponse;->T:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",appDownloadURL = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/octopus/ad/internal/network/ServerResponse;->I:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",mLandingPageUrl = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/octopus/ad/internal/network/ServerResponse;->S:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/octopus/ad/utils/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/octopus/ad/internal/network/ServerResponse;->T:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v5, "DOWNLOADBROWSER"

    const-string v7, "ACTIVITY_TYPE"

    const-string v8, "Exception initializing the redirect webview: "

    const-string v9, "http"

    const/4 v11, 0x1

    const-string v12, "android.intent.action.VIEW"

    const/4 v13, 0x2

    if-nez v0, :cond_10

    :try_start_0
    iget-object v0, v1, Lcom/octopus/ad/internal/network/ServerResponse;->D:Lcom/octopus/ad/b/b$b$a;

    if-eqz v0, :cond_7

    if-eqz v2, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v4, v1, Lcom/octopus/ad/internal/network/ServerResponse;->G:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/octopus/ad/utils/b/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/octopus/ad/internal/network/ServerResponse;->D:Lcom/octopus/ad/b/b$b$a;

    invoke-virtual {v0}, Lcom/octopus/ad/b/b$b$a;->h()Ljava/util/List;

    move-result-object v0

    goto :goto_3

    :cond_6
    iget-object v0, v1, Lcom/octopus/ad/internal/network/ServerResponse;->D:Lcom/octopus/ad/b/b$b$a;

    invoke-virtual {v0}, Lcom/octopus/ad/b/b$b$a;->i()Ljava/util/List;

    move-result-object v0

    :goto_3
    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ReportEventUtil;->report(Ljava/util/List;)V

    :cond_7
    iget-object v0, v1, Lcom/octopus/ad/internal/network/ServerResponse;->T:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v14, "bzopen"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {v4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "flags"

    invoke-virtual {v4, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v15, :cond_a

    :try_start_1
    const-string v15, "0x"

    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_9

    const-string v15, "0X"

    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8

    goto :goto_5

    :cond_8
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_4
    invoke-virtual {v14, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_6

    :cond_9
    :goto_5
    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0x10

    invoke-static {v0, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    :goto_6
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-direct {v0, v15, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "rect"

    invoke-virtual {v4, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v4, :cond_b

    :try_start_3
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    const/4 v10, 0x4

    if-ne v4, v10, :cond_b

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    aget-object v10, v0, v6

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aget-object v11, v0, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aget-object v13, v0, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/4 v15, 0x3

    aget-object v0, v0, v15

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v10, v11, v13, v0}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v14, v4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    :goto_7
    if-eqz v2, :cond_d

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_8

    :cond_c
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v12, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v4, 0x10000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-eqz v2, :cond_d

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_d
    :goto_8
    invoke-direct {v1, v3}, Lcom/octopus/ad/internal/network/ServerResponse;->a(I)V

    iget-object v0, v1, Lcom/octopus/ad/internal/network/ServerResponse;->D:Lcom/octopus/ad/b/b$b$a;

    if-eqz v0, :cond_18

    if-eqz v2, :cond_18

    invoke-virtual {v0}, Lcom/octopus/ad/b/b$b$a;->f()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ReportEventUtil;->report(Ljava/util/List;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_c

    :catch_2
    move-exception v0

    iget-object v3, v1, Lcom/octopus/ad/internal/network/ServerResponse;->D:Lcom/octopus/ad/b/b$b$a;

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Lcom/octopus/ad/b/b$b$a;->g()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/octopus/ad/internal/utilities/ReportEventUtil;->report(Ljava/util/List;)V

    :cond_e
    iget-object v3, v1, Lcom/octopus/ad/internal/network/ServerResponse;->S:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_18

    iget-object v3, v1, Lcom/octopus/ad/internal/network/ServerResponse;->S:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    iget-boolean v3, v1, Lcom/octopus/ad/internal/network/ServerResponse;->w:Z

    if-eqz v3, :cond_f

    invoke-static {}, Lcom/octopus/ad/AdActivity;->a()Ljava/lang/Class;

    move-result-object v3

    :try_start_5
    new-instance v4, Landroid/webkit/WebView;

    new-instance v6, Landroid/content/MutableContextWrapper;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v6, v9}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {v4, v6}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-static {v4}, Lcom/octopus/ad/internal/utilities/WebviewUtil;->setWebViewSettings(Landroid/webkit/WebView;)V

    iget-object v6, v1, Lcom/octopus/ad/internal/network/ServerResponse;->S:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    sget-object v6, Lcom/octopus/ad/internal/a/a;->a:Ljava/util/LinkedList;

    invoke-virtual {v6, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v4, Landroid/content/Intent;

    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object v6

    invoke-virtual {v6}, Lcom/octopus/ad/internal/m;->g()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v6, 0x10000000

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_c

    :catch_3
    sget-object v2, Lcom/octopus/ad/internal/utilities/HaoboLog;->baseLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_9
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/octopus/ad/internal/utilities/HaoboLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    :catch_4
    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->baseLogTag:Ljava/lang/String;

    sget v2, Lcom/octopus/ad/R$string;->adactivity_missing:I

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/octopus/ad/internal/utilities/HaoboLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a
    sget-object v0, Lcom/octopus/ad/internal/a/a;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    goto/16 :goto_c

    :cond_f
    :try_start_6
    new-instance v0, Landroid/content/Intent;

    iget-object v3, v1, Lcom/octopus/ad/internal/network/ServerResponse;->S:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v12, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-eqz v2, :cond_18

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_c

    :catch_5
    nop

    if-eqz v2, :cond_18

    goto/16 :goto_b

    :cond_10
    iget-object v0, v1, Lcom/octopus/ad/internal/network/ServerResponse;->I:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    iget v0, v1, Lcom/octopus/ad/internal/network/ServerResponse;->E:I

    if-ne v0, v13, :cond_15

    if-eqz v2, :cond_18

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v5, v1, Lcom/octopus/ad/internal/network/ServerResponse;->G:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/octopus/ad/utils/b/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, v1, Lcom/octopus/ad/internal/network/ServerResponse;->G:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/octopus/ad/utils/b/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/octopus/ad/internal/network/ServerResponse;->D:Lcom/octopus/ad/b/b$b$a;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/octopus/ad/b/b$b$a;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ReportEventUtil;->report(Ljava/util/List;)V

    goto/16 :goto_c

    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/octopus/ad/utils/b/d;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    :cond_12
    move-object/from16 v16, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/octopus/ad/utils/b;->a(Landroid/content/Context;)Lcom/octopus/ad/utils/b;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/octopus/ad/utils/b;->b(Landroid/content/Context;)Lcom/octopus/ad/utils/b;

    move-result-object v0

    iget-object v4, v1, Lcom/octopus/ad/internal/network/ServerResponse;->J:Lcom/octopus/ad/b/b$i;

    invoke-virtual {v0, v4}, Lcom/octopus/ad/utils/b;->a(Lcom/octopus/ad/b/b$i;)Lcom/octopus/ad/utils/b;

    move-result-object v0

    iget-boolean v4, v1, Lcom/octopus/ad/internal/network/ServerResponse;->B:Z

    if-nez v4, :cond_13

    const/16 v4, 0x8

    if-eq v3, v4, :cond_13

    const/16 v4, 0x9

    if-ne v3, v4, :cond_14

    :cond_13
    const/4 v6, 0x1

    :cond_14
    invoke-virtual {v0, v6}, Lcom/octopus/ad/utils/b;->a(Z)Lcom/octopus/ad/utils/b;

    move-result-object v0

    new-instance v3, Lcom/octopus/ad/utils/a;

    iget-object v13, v1, Lcom/octopus/ad/internal/network/ServerResponse;->I:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/octopus/ad/internal/network/ServerResponse;->G:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".apk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v1, Lcom/octopus/ad/internal/network/ServerResponse;->G:Ljava/lang/String;

    iget-object v4, v1, Lcom/octopus/ad/internal/network/ServerResponse;->F:Ljava/lang/String;

    iget-object v5, v1, Lcom/octopus/ad/internal/network/ServerResponse;->H:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".fileprovider"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    iget-object v2, v1, Lcom/octopus/ad/internal/network/ServerResponse;->D:Lcom/octopus/ad/b/b$b$a;

    move-object v12, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v20, v2

    invoke-direct/range {v12 .. v20}, Lcom/octopus/ad/utils/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/octopus/ad/b/b$b$a;)V

    invoke-virtual {v0, v3}, Lcom/octopus/ad/utils/b;->a(Lcom/octopus/ad/utils/a;)Lcom/octopus/ad/utils/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/octopus/ad/utils/b;->b()V

    goto/16 :goto_c

    :cond_15
    iget-object v0, v1, Lcom/octopus/ad/internal/network/ServerResponse;->S:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, v1, Lcom/octopus/ad/internal/network/ServerResponse;->S:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-boolean v0, v1, Lcom/octopus/ad/internal/network/ServerResponse;->w:Z

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/octopus/ad/AdActivity;->a()Ljava/lang/Class;

    move-result-object v0

    :try_start_7
    new-instance v2, Landroid/webkit/WebView;

    new-instance v3, Landroid/content/MutableContextWrapper;

    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object v4

    invoke-virtual {v4}, Lcom/octopus/ad/internal/m;->g()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-static {v2}, Lcom/octopus/ad/internal/utilities/WebviewUtil;->setWebViewSettings(Landroid/webkit/WebView;)V

    iget-object v3, v1, Lcom/octopus/ad/internal/network/ServerResponse;->S:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    sget-object v3, Lcom/octopus/ad/internal/a/a;->a:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/octopus/ad/internal/m;->g()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/octopus/ad/internal/m;->g()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_c

    :catch_6
    move-exception v0

    sget-object v2, Lcom/octopus/ad/internal/utilities/HaoboLog;->baseLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_9

    :catch_7
    sget-object v2, Lcom/octopus/ad/internal/utilities/HaoboLog;->baseLogTag:Ljava/lang/String;

    sget v3, Lcom/octopus/ad/R$string;->adactivity_missing:I

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/octopus/ad/internal/utilities/HaoboLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_16
    :try_start_8
    new-instance v0, Landroid/content/Intent;

    iget-object v3, v1, Lcom/octopus/ad/internal/network/ServerResponse;->S:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v12, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-eqz v2, :cond_18

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_c

    :catch_8
    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/octopus/ad/R$string;->action_cant_be_completed:I

    invoke-static {v0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_c

    :cond_17
    iget-object v0, v1, Lcom/octopus/ad/internal/network/ServerResponse;->U:Ljava/lang/String;

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/StringUtil;->isEmpty(Ljava/lang/String;)Z

    :cond_18
    :goto_c
    return-void
.end method

.method public getAcRatio()I
    .locals 1

    iget v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->A:I

    return v0
.end method

.method public getAdExtInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->O:Ljava/lang/String;

    return-object v0
.end method

.method public getAdId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->P:Ljava/lang/String;

    return-object v0
.end method

.method public getAdInteractInfo()Lcom/octopus/ad/b/b$b;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->K:Lcom/octopus/ad/b/b$b;

    return-object v0
.end method

.method public getAdOrientation()I
    .locals 1

    iget v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->e:I

    return v0
.end method

.method public getAdType()Lcom/octopus/ad/b/e$a;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->c:Lcom/octopus/ad/b/e$a;

    return-object v0
.end method

.method public getCreatives()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/octopus/ad/internal/i;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->Q:Ljava/util/List;

    return-object v0
.end method

.method public getExtras()Ljava/util/HashMap;
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

    iget-object v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->W:Ljava/util/HashMap;

    return-object v0
.end method

.method public getFilter()I
    .locals 1

    iget v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->y:I

    return v0
.end method

.method public getFollowTrackExt()Lcom/octopus/ad/b/b$b$a;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->D:Lcom/octopus/ad/b/b$b$a;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->h:I

    return v0
.end method

.method public getInterEvent()Lcom/octopus/ad/b/b$m;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->L:Lcom/octopus/ad/b/b$m;

    return-object v0
.end method

.method public getLeft()I
    .locals 1

    iget v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->f:I

    return v0
.end method

.method public getLogoInfo()Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->v:Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

    return-object v0
.end method

.method public getMaxTimer()I
    .locals 1

    iget v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->r:I

    return v0
.end method

.method public getMinTimer()I
    .locals 1

    iget v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->q:I

    return v0
.end method

.method public getNativeAdResponse()Lcom/octopus/ad/NativeAdResponse;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->Z:Lcom/octopus/ad/internal/nativead/c;

    return-object v0
.end method

.method public getPrefetchResources()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->V:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getPrice()I
    .locals 1

    iget v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->x:I

    return v0
.end method

.method public getRefreshInterval()I
    .locals 1

    iget v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->d:I

    return v0
.end method

.method public getStrategy()Lcom/octopus/ad/b/b$t;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->M:Lcom/octopus/ad/b/b$t;

    return-object v0
.end method

.method public getTagId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->z:Ljava/lang/String;

    return-object v0
.end method

.method public getTextLogInfo()Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->u:Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

    return-object v0
.end method

.method public getTop()I
    .locals 1

    iget v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->g:I

    return v0
.end method

.method public getVideoTrackExt()Lcom/octopus/ad/b/b$b$b;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->C:Lcom/octopus/ad/b/b$b$b;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->i:I

    return v0
.end method

.method public handleClick(Landroid/view/View;Lcom/octopus/ad/b/c;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;II)V
    .locals 0

    invoke-virtual {p0, p1, p5, p8}, Lcom/octopus/ad/internal/network/ServerResponse;->doClick(Landroid/view/View;ZI)V

    return-void
.end method

.method public handleClick(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1, p8, p10}, Lcom/octopus/ad/internal/network/ServerResponse;->doClick(Landroid/view/View;ZI)V

    return-void
.end method

.method public handleConvert(Landroid/view/View;)V
    .locals 2

    sget-object p1, Lcom/octopus/ad/internal/utilities/HaoboLog;->baseLogTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleClick called with convertUrl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/octopus/ad/internal/network/ServerResponse;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/utilities/HaoboLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/octopus/ad/internal/network/ServerResponse;->R:Ljava/lang/String;

    invoke-static {p1}, Lcom/octopus/ad/internal/utilities/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/octopus/ad/internal/h;

    iget-object v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->R:Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/octopus/ad/internal/h;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public handleOnCompletion()V
    .locals 3

    iget-object v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->K:Lcom/octopus/ad/b/b$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/octopus/ad/b/b$b;->m()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/octopus/ad/b/b$j;

    invoke-static {v2}, Lcom/octopus/ad/internal/utilities/UrlUtil;->sendOnCompletionInfoToServer(Lcom/octopus/ad/b/b$j;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public handleOnPause(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/octopus/ad/internal/network/ServerResponse;->K:Lcom/octopus/ad/b/b$b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$b;->m()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/octopus/ad/b/b$j;

    invoke-static {v1}, Lcom/octopus/ad/internal/utilities/UrlUtil;->sendOnPauseInfoToServer(Lcom/octopus/ad/b/b$j;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public handleOnStart(Landroid/view/View;I)V
    .locals 1

    iget-object p1, p0, Lcom/octopus/ad/internal/network/ServerResponse;->K:Lcom/octopus/ad/b/b$b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/octopus/ad/b/b$b;->m()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/octopus/ad/b/b$j;

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/UrlUtil;->sendOnStartInfoToServer(Lcom/octopus/ad/b/b$j;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public handleView(Landroid/view/View;Ljava/lang/String;)V
    .locals 10

    iget v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->t:I

    if-gtz v0, :cond_4

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->t:I

    iget-object v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->mDetectViewUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/octopus/ad/internal/network/ServerResponse;->mDetectViewUrl:Ljava/lang/String;

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    invoke-static/range {v2 .. v9}, Lcom/octopus/ad/internal/utilities/UrlUtil;->replaceToTouchEventUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->mDetectViewUrl:Ljava/lang/String;

    new-instance v0, Lcom/octopus/ad/internal/h;

    iget-object v2, p0, Lcom/octopus/ad/internal/network/ServerResponse;->mDetectViewUrl:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/octopus/ad/internal/h;-><init>(Ljava/lang/String;)V

    new-array v2, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const-string v0, ""

    iput-object v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->mDetectViewUrl:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->K:Lcom/octopus/ad/b/b$b;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/octopus/ad/b/b$b;->m()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/octopus/ad/b/b$j;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/octopus/ad/b/b$j;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz p1, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-virtual {v3}, Lcom/octopus/ad/b/b$j;->a()Ljava/lang/String;

    move-result-object v3

    if-nez v4, :cond_1

    const-string v4, "__REQUESTUUID__"

    invoke-virtual {v3, v4, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    iget-boolean v4, p0, Lcom/octopus/ad/internal/network/ServerResponse;->B:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&opt=1"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    new-instance v4, Lcom/octopus/ad/internal/h;

    invoke-static {v1, p1, v3}, Lcom/octopus/ad/internal/utilities/StringUtil;->replaceView(ILandroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/octopus/ad/internal/h;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/octopus/ad/utils/b/h;->b()Lcom/octopus/ad/utils/b/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/octopus/ad/utils/b/h;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    new-array v5, v1, [Ljava/lang/Void;

    invoke-virtual {v4, v3, v5}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public isAutoClose()Z
    .locals 1

    iget-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->o:Z

    return v0
.end method

.method public isAutoPlay()Z
    .locals 1

    iget-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->s:Z

    return v0
.end method

.method public isBackgroundDim()Z
    .locals 1

    iget-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->k:Z

    return v0
.end method

.method public isFullScreen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->j:Z

    return v0
.end method

.method public isManualClose()Z
    .locals 1

    iget-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->p:Z

    return v0
.end method

.method public isMuted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->n:Z

    return v0
.end method

.method public isWifiOnly()Z
    .locals 1

    iget-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->m:Z

    return v0
.end method

.method public isWifiPreload()Z
    .locals 1

    iget-boolean v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->l:Z

    return v0
.end method

.method public reportLoss(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->K:Lcom/octopus/ad/b/b$b;

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

.method public reportWin(I)V
    .locals 5

    iget-object v0, p0, Lcom/octopus/ad/internal/network/ServerResponse;->K:Lcom/octopus/ad/b/b$b;

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

.method public setAdOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/octopus/ad/internal/network/ServerResponse;->e:I

    return-void
.end method

.method public setIsLiftUp(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/octopus/ad/internal/network/ServerResponse;->B:Z

    return-void
.end method

.method public setOpenInNativeBrowser(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/octopus/ad/internal/network/ServerResponse;->w:Z

    return-void
.end method

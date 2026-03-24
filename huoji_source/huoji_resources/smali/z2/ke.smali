.class public abstract Lz2/ke;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final OooO0OO:Ljava/lang/String; = "http://api4.mobileanjian.com/api"


# instance fields
.field public OooO00o:Landroid/content/Context;

.field public OooO0O0:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/ke;->OooO00o:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract OooO00o()V
.end method

.method public abstract OooO0O0()Ljava/lang/String;
.end method

.method public commit()V
    .locals 5

    invoke-virtual {p0}, Lz2/ke;->OooO00o()V

    new-instance v0, Lcom/lidroid/xutils/HttpUtils;

    invoke-direct {v0}, Lcom/lidroid/xutils/HttpUtils;-><init>()V

    new-instance v1, Lcom/lidroid/xutils/http/RequestParams;

    invoke-direct {v1}, Lcom/lidroid/xutils/http/RequestParams;-><init>()V

    invoke-virtual {p0}, Lz2/ke;->OooO0O0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Data"

    invoke-virtual {v1, v3, v2}, Lcom/lidroid/xutils/http/RequestParams;->addQueryStringParameter(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->GET:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    iget-object v3, p0, Lz2/ke;->OooO0O0:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/lidroid/xutils/HttpUtils;->send(Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;Lcom/lidroid/xutils/http/callback/RequestCallBack;)Lcom/lidroid/xutils/http/HttpHandler;

    return-void
.end method

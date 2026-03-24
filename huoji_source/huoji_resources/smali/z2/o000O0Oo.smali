.class public Lz2/o000O0Oo;
.super Lz2/o000Oo0;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/o000O0Oo$OooO0O0;,
        Lz2/o000O0Oo$OooO00o;,
        Lz2/o000O0Oo$OooO0OO;
    }
.end annotation


# static fields
.field private static final Oooooo:Ljava/lang/String; = "https://api.twitter.com/oauth/access_token"

.field private static final Oooooo0:Ljava/lang/String; = "https://api.twitter.com/oauth/request_token"

.field private static final OoooooO:Ljava/lang/String; = "https://api.twitter.com/oauth/authorize"

.field private static final Ooooooo:Ljava/lang/String; = "twitter://callback"

.field private static final o00O0O:Ljava/lang/String; = "aq.tw.secret"

.field private static final o0OoOo0:Ljava/lang/String; = "twitter://cancel"

.field private static final ooOO:Ljava/lang/String; = "aq.tw.token"


# instance fields
.field private OoooOoo:Landroid/app/Activity;

.field private Ooooo00:Lz2/o000O0o;

.field private Ooooo0o:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

.field private OooooO0:Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;

.field private OooooOO:Ljava/lang/String;

.field private OooooOo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lz2/o000Oo0;-><init>()V

    iput-object p1, p0, Lz2/o000O0Oo;->OoooOoo:Landroid/app/Activity;

    new-instance p1, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    invoke-direct {p1, p2, p3}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lz2/o000O0Oo;->Ooooo0o:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    const-string p1, "aq.tw.token"

    invoke-direct {p0, p1}, Lz2/o000O0Oo;->Oooo000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lz2/o000O0Oo;->OooooOO:Ljava/lang/String;

    const-string p1, "aq.tw.secret"

    invoke-direct {p0, p1}, Lz2/o000O0Oo;->Oooo000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lz2/o000O0Oo;->OooooOo:Ljava/lang/String;

    iget-object p2, p0, Lz2/o000O0Oo;->OooooOO:Ljava/lang/String;

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object p3, p0, Lz2/o000O0Oo;->Ooooo0o:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    invoke-virtual {p3, p2, p1}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;->setTokenWithSecret(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance p1, Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;

    const-string p2, "https://api.twitter.com/oauth/request_token"

    const-string p3, "https://api.twitter.com/oauth/access_token"

    const-string v0, "https://api.twitter.com/oauth/authorize"

    invoke-direct {p1, p2, p3, v0}, Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lz2/o000O0Oo;->OooooO0:Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;

    return-void
.end method

.method public static synthetic OooOOO(Lz2/o000O0Oo;)Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;
    .locals 0

    iget-object p0, p0, Lz2/o000O0Oo;->Ooooo0o:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    return-object p0
.end method

.method public static synthetic OooOOO0(Lz2/o000O0Oo;)Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;
    .locals 0

    iget-object p0, p0, Lz2/o000O0Oo;->OooooO0:Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;

    return-object p0
.end method

.method public static synthetic OooOOOO(Lz2/o000O0Oo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lz2/o000O0Oo;->OooooOo:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic OooOOOo(Lz2/o000O0Oo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lz2/o000O0Oo;->Oooo0O0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic OooOOo(Lz2/o000O0Oo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lz2/o000O0Oo;->OooOooO(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic OooOOo0(Lz2/o000O0Oo;)V
    .locals 0

    invoke-direct {p0}, Lz2/o000O0Oo;->OooOoo()V

    return-void
.end method

.method public static synthetic OooOOoo(Lz2/o000O0Oo;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lz2/o000O0Oo;->OoooOoo:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic OooOo(Lz2/o000O0Oo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz2/o000O0Oo;->OooooOO:Ljava/lang/String;

    return-void
.end method

.method public static synthetic OooOo0(Lz2/o000O0Oo;)Lz2/o000O0o;
    .locals 0

    iget-object p0, p0, Lz2/o000O0Oo;->Ooooo00:Lz2/o000O0o;

    return-object p0
.end method

.method public static synthetic OooOo00(Lz2/o000O0Oo;Lz2/o000O0o;)V
    .locals 0

    iput-object p1, p0, Lz2/o000O0Oo;->Ooooo00:Lz2/o000O0o;

    return-void
.end method

.method public static synthetic OooOo0O(Lz2/o000O0Oo;)V
    .locals 0

    invoke-direct {p0}, Lz2/o000O0Oo;->Oooo0()V

    return-void
.end method

.method public static synthetic OooOo0o(Lz2/o000O0Oo;)V
    .locals 0

    invoke-direct {p0}, Lz2/o000O0Oo;->OooOooo()V

    return-void
.end method

.method public static synthetic OooOoO(Lz2/o000O0Oo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lz2/o000O0Oo;->OooooOO:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic OooOoO0(Lz2/o000O0Oo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz2/o000O0Oo;->OooooOo:Ljava/lang/String;

    return-void
.end method

.method private OooOoo()V
    .locals 2

    iget-object v0, p0, Lz2/o000O0Oo;->Ooooo00:Lz2/o000O0o;

    if-eqz v0, :cond_0

    new-instance v0, Lz2/o000;

    iget-object v1, p0, Lz2/o000O0Oo;->OoooOoo:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lz2/o000;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lz2/o000O0Oo;->Ooooo00:Lz2/o000O0o;

    invoke-virtual {v0, v1}, Lz2/o000O000;->OooOooO(Landroid/app/Dialog;)Lz2/o000O000;

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/o000O0Oo;->Ooooo00:Lz2/o000O0o;

    :cond_0
    return-void
.end method

.method private OooOooO(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private OooOooo()V
    .locals 3

    invoke-direct {p0}, Lz2/o000O0Oo;->OooOoo()V

    iget-object v0, p0, Lz2/o000O0Oo;->OoooOoo:Landroid/app/Activity;

    const/16 v1, 0x191

    const-string v2, "cancel"

    invoke-virtual {p0, v0, v1, v2}, Lz2/o000Oo0;->OooO0oO(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method private Oooo0()V
    .locals 2

    iget-object v0, p0, Lz2/o000O0Oo;->Ooooo00:Lz2/o000O0o;

    if-eqz v0, :cond_0

    new-instance v0, Lz2/o000;

    iget-object v1, p0, Lz2/o000O0Oo;->OoooOoo:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lz2/o000;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lz2/o000O0Oo;->Ooooo00:Lz2/o000O0o;

    invoke-virtual {v0, v1}, Lz2/o000O000;->o000O0oo(Landroid/app/Dialog;)Lz2/o000O000;

    :cond_0
    return-void
.end method

.method private Oooo000(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lz2/o000O0Oo;->OoooOoo:Landroid/app/Activity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private Oooo0O0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lz2/o000O0Oo;->OoooOoo:Landroid/app/Activity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p3, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public OooO00o(Lz2/o000OO0O;Ljava/net/HttpURLConnection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o000OO0O<",
            "**>;",
            "Ljava/net/HttpURLConnection;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lz2/o000OO0O;->getUrl()Ljava/lang/String;

    move-result-object p1

    const-string v0, "apply token multipart"

    invoke-static {v0, p1}, Lz2/o00O000;->OooOO0(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, Loauth/signpost/basic/DefaultOAuthConsumer;

    iget-object v0, p0, Lz2/o000O0Oo;->Ooooo0o:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    invoke-virtual {v0}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;->getConsumerKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lz2/o000O0Oo;->Ooooo0o:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    invoke-virtual {v1}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;->getConsumerSecret()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Loauth/signpost/basic/DefaultOAuthConsumer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lz2/o000O0Oo;->Ooooo0o:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    invoke-virtual {v0}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;->getToken()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lz2/o000O0Oo;->Ooooo0o:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    invoke-virtual {v1}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;->getTokenSecret()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Loauth/signpost/OAuthConsumer;->setTokenWithSecret(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p1, p2}, Loauth/signpost/OAuthConsumer;->sign(Ljava/lang/Object;)Loauth/signpost/http/HttpRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lz2/o00O000;->OoooO0O(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public OooO0O0(Lz2/o000OO0O;Lorg/apache/http/HttpRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o000OO0O<",
            "**>;",
            "Lorg/apache/http/HttpRequest;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lz2/o000OO0O;->getUrl()Ljava/lang/String;

    move-result-object p1

    const-string v0, "apply token"

    invoke-static {v0, p1}, Lz2/o00O000;->OooOO0(Ljava/lang/Object;Ljava/lang/Object;)V

    :try_start_0
    iget-object p1, p0, Lz2/o000O0Oo;->Ooooo0o:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    invoke-virtual {p1, p2}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;->sign(Ljava/lang/Object;)Loauth/signpost/http/HttpRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lz2/o00O000;->OoooO0O(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public OooO0OO()V
    .locals 2

    new-instance v0, Lz2/o000O0Oo$OooO0O0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lz2/o000O0Oo$OooO0O0;-><init>(Lz2/o000O0Oo;Lz2/o000O0Oo$OooO0O0;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public OooO0o(Lz2/o000OO0O;Lz2/o000O;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o000OO0O<",
            "**>;",
            "Lz2/o000O;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p2}, Lz2/o000O;->OooOO0o()I

    move-result p1

    const/16 p2, 0x190

    if-eq p1, p2, :cond_0

    const/16 p2, 0x191

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public OooO0o0()Z
    .locals 1

    iget-object v0, p0, Lz2/o000O0Oo;->OooooOO:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/o000O0Oo;->OooooOo:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public OooOO0(Lz2/o000OO0O;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o000OO0O<",
            "**>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/o000O0Oo;->OooooOO:Ljava/lang/String;

    iput-object v0, p0, Lz2/o000O0Oo;->OooooOo:Ljava/lang/String;

    const-string v1, "aq.tw.token"

    const-string v2, "aq.tw.secret"

    invoke-direct {p0, v1, v0, v2, v0}, Lz2/o000O0Oo;->Oooo0O0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lz2/o000O0Oo$OooO0O0;

    invoke-direct {v1, p0, v0}, Lz2/o000O0Oo$OooO0O0;-><init>(Lz2/o000O0Oo;Lz2/o000O0Oo$OooO0O0;)V

    invoke-static {v1, p1}, Lz2/o000O0Oo$OooO0O0;->OooO00o(Lz2/o000O0Oo$OooO0O0;Lz2/o000OO0O;)V

    invoke-static {p1}, Lz2/o00O000;->Oooo0o(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public OooOO0o()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/o000O0Oo;->OooooOO:Ljava/lang/String;

    iput-object v0, p0, Lz2/o000O0Oo;->OooooOo:Ljava/lang/String;

    iget-object v1, p0, Lz2/o000O0Oo;->OoooOoo:Landroid/app/Activity;

    invoke-static {v1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    const-string v1, "aq.tw.token"

    const-string v2, "aq.tw.secret"

    invoke-direct {p0, v1, v0, v2, v0}, Lz2/o000O0Oo;->Oooo0O0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public OooOoOO(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lz2/o000O0Oo;->OooooOO:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lz2/o000O0Oo;->OooooOo:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Lz2/o000O0Oo;->OooOoo0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lz2/o000O0Oo;->OooO0OO()V

    :goto_0
    return-void
.end method

.method public OooOoo0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public Oooo00O()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/o000O0Oo;->OooooOo:Ljava/lang/String;

    return-object v0
.end method

.method public Oooo00o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/o000O0Oo;->OooooOO:Ljava/lang/String;

    return-object v0
.end method

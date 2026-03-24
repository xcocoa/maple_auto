.class public Lz2/o000O0Oo$OooO00o;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/o000O0Oo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO00o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/o000O0Oo;


# direct methods
.method private constructor <init>(Lz2/o000O0Oo;)V
    .locals 0

    iput-object p1, p0, Lz2/o000O0Oo$OooO00o;->OooO00o:Lz2/o000O0Oo;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lz2/o000O0Oo;Lz2/o000O0Oo$OooO00o;)V
    .locals 0

    invoke-direct {p0, p1}, Lz2/o000O0Oo$OooO00o;-><init>(Lz2/o000O0Oo;)V

    return-void
.end method


# virtual methods
.method public varargs OooO00o([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lz2/o000O0Oo$OooO00o;->OooO00o:Lz2/o000O0Oo;

    invoke-static {v0}, Lz2/o000O0Oo;->OooOOO0(Lz2/o000O0Oo;)Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;

    move-result-object v0

    iget-object v1, p0, Lz2/o000O0Oo$OooO00o;->OooO00o:Lz2/o000O0Oo;

    invoke-static {v1}, Lz2/o000O0Oo;->OooOOO(Lz2/o000O0Oo;)Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    move-result-object v1

    const/4 v2, 0x0

    aget-object p1, p1, v2

    invoke-virtual {v0, v1, p1}, Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;->retrieveAccessToken(Loauth/signpost/OAuthConsumer;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, ""

    return-object p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lz2/o00O000;->OoooO0O(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public OooO0O0(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object p1, p0, Lz2/o000O0Oo$OooO00o;->OooO00o:Lz2/o000O0Oo;

    invoke-static {p1}, Lz2/o000O0Oo;->OooOOO(Lz2/o000O0Oo;)Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    move-result-object v0

    invoke-virtual {v0}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lz2/o000O0Oo;->OooOo(Lz2/o000O0Oo;Ljava/lang/String;)V

    iget-object p1, p0, Lz2/o000O0Oo$OooO00o;->OooO00o:Lz2/o000O0Oo;

    invoke-static {p1}, Lz2/o000O0Oo;->OooOOO(Lz2/o000O0Oo;)Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    move-result-object v0

    invoke-virtual {v0}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;->getTokenSecret()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lz2/o000O0Oo;->OooOoO0(Lz2/o000O0Oo;Ljava/lang/String;)V

    iget-object p1, p0, Lz2/o000O0Oo$OooO00o;->OooO00o:Lz2/o000O0Oo;

    invoke-static {p1}, Lz2/o000O0Oo;->OooOoO(Lz2/o000O0Oo;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "token"

    invoke-static {v0, p1}, Lz2/o00O000;->OooOO0(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lz2/o000O0Oo$OooO00o;->OooO00o:Lz2/o000O0Oo;

    invoke-static {p1}, Lz2/o000O0Oo;->OooOOOO(Lz2/o000O0Oo;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "secret"

    invoke-static {v0, p1}, Lz2/o00O000;->OooOO0(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lz2/o000O0Oo$OooO00o;->OooO00o:Lz2/o000O0Oo;

    invoke-static {p1}, Lz2/o000O0Oo;->OooOoO(Lz2/o000O0Oo;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lz2/o000O0Oo$OooO00o;->OooO00o:Lz2/o000O0Oo;

    invoke-static {v1}, Lz2/o000O0Oo;->OooOOOO(Lz2/o000O0Oo;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "aq.tw.token"

    const-string v3, "aq.tw.secret"

    invoke-static {p1, v2, v0, v3, v1}, Lz2/o000O0Oo;->OooOOOo(Lz2/o000O0Oo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lz2/o000O0Oo$OooO00o;->OooO00o:Lz2/o000O0Oo;

    invoke-static {p1}, Lz2/o000O0Oo;->OooOOo0(Lz2/o000O0Oo;)V

    iget-object p1, p0, Lz2/o000O0Oo$OooO00o;->OooO00o:Lz2/o000O0Oo;

    invoke-static {p1}, Lz2/o000O0Oo;->OooOOoo(Lz2/o000O0Oo;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lz2/o000Oo0;->OooOO0O(Landroid/content/Context;)V

    iget-object p1, p0, Lz2/o000O0Oo$OooO00o;->OooO00o:Lz2/o000O0Oo;

    invoke-static {p1}, Lz2/o000O0Oo;->OooOOOO(Lz2/o000O0Oo;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lz2/o000O0Oo$OooO00o;->OooO00o:Lz2/o000O0Oo;

    invoke-static {v1}, Lz2/o000O0Oo;->OooOoO(Lz2/o000O0Oo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lz2/o000O0Oo;->OooOoo0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lz2/o000O0Oo$OooO00o;->OooO00o:Lz2/o000O0Oo;

    invoke-static {p1}, Lz2/o000O0Oo;->OooOo0o(Lz2/o000O0Oo;)V

    iget-object p1, p0, Lz2/o000O0Oo$OooO00o;->OooO00o:Lz2/o000O0Oo;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lz2/o000O0Oo;->OooOoo0(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lz2/o000O0Oo$OooO00o;->OooO00o([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lz2/o000O0Oo$OooO00o;->OooO0O0(Ljava/lang/String;)V

    return-void
.end method

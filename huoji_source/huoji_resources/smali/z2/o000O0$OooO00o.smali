.class public Lz2/o000O0$OooO00o;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/o000O0;
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
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/o000O0;


# direct methods
.method private constructor <init>(Lz2/o000O0;)V
    .locals 0

    iput-object p1, p0, Lz2/o000O0$OooO00o;->OooO00o:Lz2/o000O0;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lz2/o000O0;Lz2/o000O0$OooO00o;)V
    .locals 0

    invoke-direct {p0, p1}, Lz2/o000O0$OooO00o;-><init>(Lz2/o000O0;)V

    return-void
.end method


# virtual methods
.method public varargs OooO00o([Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7

    :try_start_0
    iget-object p1, p0, Lz2/o000O0$OooO00o;->OooO00o:Lz2/o000O0;

    invoke-static {p1}, Lz2/o000O0;->OooOOO0(Lz2/o000O0;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object p1, p0, Lz2/o000O0$OooO00o;->OooO00o:Lz2/o000O0;

    invoke-static {p1}, Lz2/o000O0;->OooOOO(Lz2/o000O0;)Landroid/accounts/Account;

    move-result-object v1

    iget-object p1, p0, Lz2/o000O0$OooO00o;->OooO00o:Lz2/o000O0;

    invoke-static {p1}, Lz2/o000O0;->OooOOOO(Lz2/o000O0;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object p1, p0, Lz2/o000O0$OooO00o;->OooO00o:Lz2/o000O0;

    invoke-static {p1}, Lz2/o000O0;->OooOOOo(Lz2/o000O0;)Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object p1

    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-static {p1}, Lz2/o00O000;->OooOO0O(Ljava/lang/Throwable;)V

    :catch_2
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public OooO0O0(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "authtoken"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lz2/o000O0$OooO00o;->OooO00o:Lz2/o000O0;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lz2/o000O0;->OooOOo0(Lz2/o000O0;Ljava/lang/String;)V

    iget-object p1, p0, Lz2/o000O0$OooO00o;->OooO00o:Lz2/o000O0;

    invoke-static {p1}, Lz2/o000O0;->OooOOOo(Lz2/o000O0;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lz2/o000Oo0;->OooOO0O(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lz2/o000O0$OooO00o;->OooO00o:Lz2/o000O0;

    invoke-static {p1}, Lz2/o000O0;->OooOOOo(Lz2/o000O0;)Landroid/app/Activity;

    move-result-object v0

    const/16 v1, -0x66

    const-string v2, "rejected"

    invoke-virtual {p1, v0, v1, v2}, Lz2/o000Oo0;->OooO0oO(Landroid/content/Context;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lz2/o000O0$OooO00o;->OooO00o([Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lz2/o000O0$OooO00o;->OooO0O0(Landroid/os/Bundle;)V

    return-void
.end method

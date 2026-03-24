.class public Lz2/o000O0Oo$OooO0O0;
.super Landroid/os/AsyncTask;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/o000O0Oo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO0O0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;",
        "Landroid/content/DialogInterface$OnCancelListener;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private OoooOoO:Lz2/o000OO0O;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/o000OO0O<",
            "**>;"
        }
    .end annotation
.end field

.field public final synthetic OoooOoo:Lz2/o000O0Oo;


# direct methods
.method private constructor <init>(Lz2/o000O0Oo;)V
    .locals 0

    iput-object p1, p0, Lz2/o000O0Oo$OooO0O0;->OoooOoo:Lz2/o000O0Oo;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lz2/o000O0Oo;Lz2/o000O0Oo$OooO0O0;)V
    .locals 0

    invoke-direct {p0, p1}, Lz2/o000O0Oo$OooO0O0;-><init>(Lz2/o000O0Oo;)V

    return-void
.end method

.method public static synthetic OooO00o(Lz2/o000O0Oo$OooO0O0;Lz2/o000OO0O;)V
    .locals 0

    iput-object p1, p0, Lz2/o000O0Oo$OooO0O0;->OoooOoO:Lz2/o000OO0O;

    return-void
.end method


# virtual methods
.method public varargs OooO0O0([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object p1, p0, Lz2/o000O0Oo$OooO0O0;->OoooOoo:Lz2/o000O0Oo;

    invoke-static {p1}, Lz2/o000O0Oo;->OooOOO0(Lz2/o000O0Oo;)Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;

    move-result-object p1

    iget-object v0, p0, Lz2/o000O0Oo$OooO0O0;->OoooOoo:Lz2/o000O0Oo;

    invoke-static {v0}, Lz2/o000O0Oo;->OooOOO(Lz2/o000O0Oo;)Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    move-result-object v0

    const-string v1, "twitter://callback"

    invoke-virtual {p1, v0, v1}, Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;->retrieveRequestToken(Loauth/signpost/OAuthConsumer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lz2/o00O000;->OoooO0O(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public OooO0OO(Ljava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_0

    iget-object v0, p0, Lz2/o000O0Oo$OooO0O0;->OoooOoo:Lz2/o000O0Oo;

    new-instance v1, Lz2/o000O0o;

    iget-object v2, p0, Lz2/o000O0Oo$OooO0O0;->OoooOoo:Lz2/o000O0Oo;

    invoke-static {v2}, Lz2/o000O0Oo;->OooOOoo(Lz2/o000O0Oo;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lz2/o000O0Oo$OooO0OO;

    iget-object v4, p0, Lz2/o000O0Oo$OooO0O0;->OoooOoo:Lz2/o000O0Oo;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lz2/o000O0Oo$OooO0OO;-><init>(Lz2/o000O0Oo;Lz2/o000O0Oo$OooO0OO;)V

    invoke-direct {v1, v2, p1, v3}, Lz2/o000O0o;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebViewClient;)V

    invoke-static {v0, v1}, Lz2/o000O0Oo;->OooOo00(Lz2/o000O0Oo;Lz2/o000O0o;)V

    iget-object p1, p0, Lz2/o000O0Oo$OooO0O0;->OoooOoo:Lz2/o000O0Oo;

    invoke-static {p1}, Lz2/o000O0Oo;->OooOo0(Lz2/o000O0Oo;)Lz2/o000O0o;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object p1, p0, Lz2/o000O0Oo$OooO0O0;->OoooOoo:Lz2/o000O0Oo;

    invoke-static {p1}, Lz2/o000O0Oo;->OooOo0O(Lz2/o000O0Oo;)V

    iget-object p1, p0, Lz2/o000O0Oo$OooO0O0;->OoooOoo:Lz2/o000O0Oo;

    invoke-static {p1}, Lz2/o000O0Oo;->OooOo0(Lz2/o000O0Oo;)Lz2/o000O0o;

    move-result-object p1

    invoke-virtual {p1}, Lz2/o000O0o;->OooO0OO()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lz2/o000O0Oo$OooO0O0;->OoooOoo:Lz2/o000O0Oo;

    invoke-static {p1}, Lz2/o000O0Oo;->OooOo0o(Lz2/o000O0Oo;)V

    :goto_0
    return-void
.end method

.method public bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lz2/o000O0Oo$OooO0O0;->OooO0O0([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lz2/o000O0Oo$OooO0O0;->OoooOoo:Lz2/o000O0Oo;

    invoke-static {p1}, Lz2/o000O0Oo;->OooOo0o(Lz2/o000O0Oo;)V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lz2/o000O0Oo$OooO0O0;->OooO0OO(Ljava/lang/String;)V

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lz2/o000O0Oo$OooO0O0;->OoooOoo:Lz2/o000O0Oo;

    iget-object v1, p0, Lz2/o000O0Oo$OooO0O0;->OoooOoO:Lz2/o000OO0O;

    invoke-virtual {v0, v1}, Lz2/o000Oo0;->OooO0Oo(Lz2/o000OO0O;)V

    return-void
.end method

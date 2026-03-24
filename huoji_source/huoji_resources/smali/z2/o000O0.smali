.class public Lz2/o000O0;
.super Lz2/o000Oo0;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/o000O0$OooO00o;
    }
.end annotation


# instance fields
.field private OoooOoo:Landroid/accounts/AccountManager;

.field private Ooooo00:Landroid/accounts/Account;

.field private Ooooo0o:Ljava/lang/String;

.field private OooooO0:Landroid/app/Activity;

.field private OooooOO:Ljava/lang/String;

.field private OooooOo:[Landroid/accounts/Account;

.field private Oooooo0:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lz2/o000Oo0;-><init>()V

    const-string v0, "aq.account"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lz2/o000O0;->OooOo00(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    :cond_0
    iput-object p1, p0, Lz2/o000O0;->OooooO0:Landroid/app/Activity;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lz2/o000O0;->Ooooo0o:Ljava/lang/String;

    iput-object p3, p0, Lz2/o000O0;->OooooOO:Ljava/lang/String;

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p1

    iput-object p1, p0, Lz2/o000O0;->OoooOoo:Landroid/accounts/AccountManager;

    return-void
.end method

.method public static synthetic OooOOO(Lz2/o000O0;)Landroid/accounts/Account;
    .locals 0

    iget-object p0, p0, Lz2/o000O0;->Ooooo00:Landroid/accounts/Account;

    return-object p0
.end method

.method public static synthetic OooOOO0(Lz2/o000O0;)Landroid/accounts/AccountManager;
    .locals 0

    iget-object p0, p0, Lz2/o000O0;->OoooOoo:Landroid/accounts/AccountManager;

    return-object p0
.end method

.method public static synthetic OooOOOO(Lz2/o000O0;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lz2/o000O0;->Ooooo0o:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic OooOOOo(Lz2/o000O0;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lz2/o000O0;->OooooO0:Landroid/app/Activity;

    return-object p0
.end method

.method private OooOOo()V
    .locals 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lz2/o000O0;->OooooO0:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lz2/o000O0;->OoooOoo:Landroid/accounts/AccountManager;

    const-string v2, "com.google"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    iput-object v1, p0, Lz2/o000O0;->OooooOo:[Landroid/accounts/Account;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    aget-object v0, v1, v3

    invoke-direct {p0, v0}, Lz2/o000O0;->OooOOoo(Landroid/accounts/Account;)V

    goto :goto_1

    :cond_0
    new-array v1, v2, [Ljava/lang/String;

    :goto_0
    if-lt v3, v2, :cond_1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lz2/o000;

    iget-object v2, p0, Lz2/o000O0;->OooooO0:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lz2/o000;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Lz2/o000O000;->o000O0oo(Landroid/app/Dialog;)Lz2/o000O000;

    :goto_1
    return-void

    :cond_1
    iget-object v4, p0, Lz2/o000O0;->OooooOo:[Landroid/accounts/Account;

    aget-object v4, v4, v3

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static synthetic OooOOo0(Lz2/o000O0;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz2/o000O0;->Oooooo0:Ljava/lang/String;

    return-void
.end method

.method private OooOOoo(Landroid/accounts/Account;)V
    .locals 1

    iput-object p1, p0, Lz2/o000O0;->Ooooo00:Landroid/accounts/Account;

    new-instance p1, Lz2/o000O0$OooO00o;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lz2/o000O0$OooO00o;-><init>(Lz2/o000O0;Lz2/o000O0$OooO00o;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static OooOo00(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "aq.account"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static OooOo0O(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "aq.account"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
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

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "GoogleLogin auth="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lz2/o000O0;->Oooooo0:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Authorization"

    invoke-interface {p2, v0, p1}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public OooO0OO()V
    .locals 5

    iget-object v0, p0, Lz2/o000O0;->OooooOO:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lz2/o000O0;->OooOOo()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lz2/o000O0;->OoooOoo:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_1

    :goto_1
    return-void

    :cond_1
    aget-object v2, v0, v1

    iget-object v3, p0, Lz2/o000O0;->OooooOO:Ljava/lang/String;

    iget-object v4, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v2}, Lz2/o000O0;->OooOOoo(Landroid/accounts/Account;)V

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
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

    const/16 p2, 0x191

    if-eq p1, p2, :cond_0

    const/16 p2, 0x193

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public OooO0o0()Z
    .locals 1

    iget-object v0, p0, Lz2/o000O0;->Oooooo0:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public OooO0oo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "#"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lz2/o000O0;->Oooooo0:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
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

    iget-object p1, p0, Lz2/o000O0;->OoooOoo:Landroid/accounts/AccountManager;

    iget-object v0, p0, Lz2/o000O0;->Ooooo00:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v1, p0, Lz2/o000O0;->Oooooo0:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    :try_start_0
    iget-object v0, p0, Lz2/o000O0;->OoooOoo:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lz2/o000O0;->Ooooo00:Landroid/accounts/Account;

    iget-object v2, p0, Lz2/o000O0;->Ooooo0o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lz2/o000O0;->Oooooo0:Ljava/lang/String;

    const-string v1, "re token"

    invoke-static {v1, v0}, Lz2/o00O000;->OooOO0(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lz2/o00O000;->OooOO0O(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/o000O0;->Oooooo0:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lz2/o000O0;->Oooooo0:Ljava/lang/String;

    if-eqz v0, :cond_0

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public OooOo0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/o000O0;->Ooooo0o:Ljava/lang/String;

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object p1, p0, Lz2/o000O0;->OooooO0:Landroid/app/Activity;

    const/16 v0, -0x66

    const-string v1, "cancel"

    invoke-virtual {p0, p1, v0, v1}, Lz2/o000Oo0;->OooO0oO(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lz2/o000O0;->OooooOo:[Landroid/accounts/Account;

    aget-object p1, p1, p2

    iget-object p2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v0, "acc"

    invoke-static {v0, p2}, Lz2/o00O000;->OooOO0(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p2, p0, Lz2/o000O0;->OooooO0:Landroid/app/Activity;

    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {p2, v0}, Lz2/o000O0;->OooOo0O(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lz2/o000O0;->OooOOoo(Landroid/accounts/Account;)V

    return-void
.end method

.class public Lz2/o000O00O;
.super Lz2/o000Oo0;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/o000O00O$OooO0O0;
    }
.end annotation


# static fields
.field private static final Ooooooo:Ljava/lang/String; = "https://graph.facebook.com/oauth/authorize"

.field private static final o00O0O:Ljava/lang/String; = "aq.fb.token"

.field private static final o00Oo0:Ljava/lang/String; = "aq.fb.permission"

.field private static o00Ooo:Ljava/lang/Boolean; = null

.field public static final o00o0O:Ljava/lang/String; = "30820268308201d102044a9c4610300d06092a864886f70d0101040500307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e3020170d3039303833313231353231365a180f32303530303932353231353231365a307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e30819f300d06092a864886f70d010101050003818d0030818902818100c207d51df8eb8c97d93ba0c8c1002c928fab00dc1b42fca5e66e99cc3023ed2d214d822bc59e8e35ddcf5f44c7ae8ade50d7e0c434f500e6c131f4a2834f987fc46406115de2018ebbb0d5a3c261bd97581ccfef76afc7135a6d59e8855ecd7eacc8f8737e794c60a761c536b72b11fac8e603f5da1a2d54aa103b8a13c0dbc10203010001300d06092a864886f70d0101040500038181005ee9be8bcbb250648d3b741290a82a1c9dc2e76a0af2f2228f1d9f9c4007529c446a70175c5a900d5141812866db46be6559e2141616483998211f4a673149fb2232a10d247663b26a9031e15f84bc1c74d141ff98a02d76f85b2c8ab2571b6469b232d8e768a7f7ca04f7abe4a775615916c07940656b58717457b42bd928a2"

.field private static final o0OoOo0:Ljava/lang/String; = "https://www.facebook.com/connect/login_success.html"

.field private static final ooOO:Ljava/lang/String; = "fbconnect:cancel"


# instance fields
.field private OoooOoo:Ljava/lang/String;

.field private Ooooo00:Landroid/app/Activity;

.field private Ooooo0o:Lz2/o000O0o;

.field private OooooO0:Ljava/lang/String;

.field private OooooOO:Ljava/lang/String;

.field private OooooOo:Ljava/lang/String;

.field private Oooooo:Z

.field private Oooooo0:Z

.field private OoooooO:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lz2/o000O00O;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lz2/o000Oo0;-><init>()V

    iput-object p2, p0, Lz2/o000O00O;->OoooOoo:Ljava/lang/String;

    iput-object p1, p0, Lz2/o000O00O;->Ooooo00:Landroid/app/Activity;

    iput-object p3, p0, Lz2/o000O00O;->OooooOO:Ljava/lang/String;

    iput-object p4, p0, Lz2/o000O00O;->OooooO0:Ljava/lang/String;

    if-nez p4, :cond_0

    invoke-direct {p0}, Lz2/o000O00O;->Oooo00O()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lz2/o000O00O;->Oooo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lz2/o000O00O;->Oooo00o()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lz2/o000O00O;->OooooO0:Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lz2/o000O00O;->OooooO0:Ljava/lang/String;

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lz2/o000O00O;->Oooooo0:Z

    return-void
.end method

.method public static synthetic OooOOO(Lz2/o000O00O;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lz2/o000O00O;->OooOooO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic OooOOO0(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    invoke-static {p0}, Lz2/o000O00O;->Oooo0oo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic OooOOOO(Lz2/o000O00O;)V
    .locals 0

    invoke-direct {p0}, Lz2/o000O00O;->OoooO0()V

    return-void
.end method

.method public static synthetic OooOOOo(Lz2/o000O00O;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz2/o000O00O;->OooooO0:Ljava/lang/String;

    return-void
.end method

.method public static synthetic OooOOo(Lz2/o000O00O;)V
    .locals 0

    invoke-direct {p0}, Lz2/o000O00O;->OooOoo0()V

    return-void
.end method

.method public static synthetic OooOOo0(Lz2/o000O00O;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lz2/o000O00O;->OooooO0:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic OooOOoo(Lz2/o000O00O;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lz2/o000O00O;->OooooOO:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic OooOo0(Lz2/o000O00O;Z)V
    .locals 0

    iput-boolean p1, p0, Lz2/o000O00O;->Oooooo0:Z

    return-void
.end method

.method public static synthetic OooOo00(Lz2/o000O00O;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lz2/o000O00O;->o000oOoO(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic OooOo0O(Lz2/o000O00O;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lz2/o000O00O;->Ooooo00:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic OooOo0o(Lz2/o000O00O;)V
    .locals 0

    invoke-direct {p0}, Lz2/o000O00O;->OooOooo()V

    return-void
.end method

.method private static OooOoOO(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_1

    const-string v1, "&"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v1, :cond_0

    goto :goto_1

    :cond_0
    aget-object v4, p0, v3

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v5, v4, v2

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method private static OooOoo(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const-string v4, "&"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private OooOoo0()V
    .locals 2

    iget-object v0, p0, Lz2/o000O00O;->Ooooo0o:Lz2/o000O0o;

    if-eqz v0, :cond_0

    new-instance v0, Lz2/o000;

    iget-object v1, p0, Lz2/o000O00O;->Ooooo00:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lz2/o000;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lz2/o000O00O;->Ooooo0o:Lz2/o000O0o;

    invoke-virtual {v0, v1}, Lz2/o000O000;->OooOooO(Landroid/app/Dialog;)Lz2/o000O000;

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/o000O00O;->Ooooo0o:Lz2/o000O0o;

    :cond_0
    return-void
.end method

.method private OooOooO(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x23

    const/16 v1, 0x3f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "token"

    invoke-static {v0, p1}, Lz2/o00O000;->OooOO0(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private OooOooo()V
    .locals 1

    const-string v0, "cancel"

    invoke-direct {p0, v0}, Lz2/o000O00O;->Oooo000(Ljava/lang/String;)V

    return-void
.end method

.method private Oooo(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p2, :cond_1

    return v1

    :cond_1
    const-string v2, "[,\\s]+"

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    new-instance v3, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v3, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    array-length v2, p1

    if-lt p2, v2, :cond_2

    return v0

    :cond_2
    aget-object v2, p1, p2

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string p1, "perm mismatch"

    invoke-static {p1}, Lz2/o00O000;->OooO(Ljava/lang/Object;)V

    return v1

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method private Oooo000(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lz2/o000O00O;->OooOoo0()V

    iget-object v0, p0, Lz2/o000O00O;->Ooooo00:Landroid/app/Activity;

    const/16 v1, -0x66

    invoke-virtual {p0, v0, v1, p1}, Lz2/o000Oo0;->OooO0oO(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method private Oooo00O()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lz2/o000O00O;->Ooooo00:Landroid/app/Activity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "aq.fb.permission"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private Oooo00o()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lz2/o000O00O;->Ooooo00:Landroid/app/Activity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "aq.fb.token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static Oooo0O0(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "aq.fb.token"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private Oooo0OO()V
    .locals 1

    iget-object v0, p0, Lz2/o000O00O;->Ooooo0o:Lz2/o000O0o;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lz2/o00O000;->OooOO0O(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private static Oooo0oo(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lz2/o000O00O;->OooOoOO(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v0}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lz2/o000O00O;->OooOoOO(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0
.end method

.method private OoooO()Z
    .locals 4

    iget-boolean v0, p0, Lz2/o000O00O;->Oooooo:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lz2/o000O00O;->Ooooo00:Landroid/app/Activity;

    iget-object v1, p0, Lz2/o000O00O;->OoooOoo:Ljava/lang/String;

    iget-object v2, p0, Lz2/o000O00O;->OooooOO:Ljava/lang/String;

    iget v3, p0, Lz2/o000O00O;->OoooooO:I

    invoke-direct {p0, v0, v1, v2, v3}, Lz2/o000O00O;->OoooOO0(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private OoooO0()V
    .locals 2

    iget-object v0, p0, Lz2/o000O00O;->Ooooo0o:Lz2/o000O0o;

    if-eqz v0, :cond_0

    new-instance v0, Lz2/o000;

    iget-object v1, p0, Lz2/o000O00O;->Ooooo00:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lz2/o000;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lz2/o000O00O;->Ooooo0o:Lz2/o000O0o;

    invoke-virtual {v0, v1}, Lz2/o000O000;->o000O0oo(Landroid/app/Dialog;)Lz2/o000O000;

    :cond_0
    return-void
.end method

.method private OoooOO0(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.facebook.katana"

    const-string v2, "com.facebook.katana.ProxyAuth"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "client_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p3, :cond_0

    const-string p2, "scope"

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-direct {p0, p1, v0}, Lz2/o000O00O;->OoooOOO(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_1

    return p3

    :cond_1
    :try_start_0
    invoke-virtual {p1, v0, p4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p3, 0x1

    :catch_0
    return p3
.end method

.method private OoooOOO(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p2

    if-nez p2, :cond_0

    return v0

    :cond_0
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/16 v1, 0x40

    :try_start_0
    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length p2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, p2, :cond_1

    return v0

    :cond_1
    aget-object v2, p1, v1

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "30820268308201d102044a9c4610300d06092a864886f70d0101040500307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e3020170d3039303833313231353231365a180f32303530303932353231353231365a307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e30819f300d06092a864886f70d010101050003818d0030818902818100c207d51df8eb8c97d93ba0c8c1002c928fab00dc1b42fca5e66e99cc3023ed2d214d822bc59e8e35ddcf5f44c7ae8ade50d7e0c434f500e6c131f4a2834f987fc46406115de2018ebbb0d5a3c261bd97581ccfef76afc7135a6d59e8855ecd7eacc8f8737e794c60a761c536b72b11fac8e603f5da1a2d54aa103b8a13c0dbc10203010001300d06092a864886f70d0101040500038181005ee9be8bcbb250648d3b741290a82a1c9dc2e76a0af2f2228f1d9f9c4007529c446a70175c5a900d5141812866db46be6559e2141616483998211f4a673149fb2232a10d247663b26a9031e15f84bc1c74d141ff98a02d76f85b2c8ab2571b6469b232d8e768a7f7ca04f7abe4a775615916c07940656b58717457b42bd928a2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    return v0
.end method

.method private OoooOOo()V
    .locals 4

    const-string v0, "web auth"

    invoke-static {v0}, Lz2/o00O000;->OooO(Ljava/lang/Object;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lz2/o000O00O;->OoooOoo:Ljava/lang/String;

    const-string v2, "client_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "type"

    const-string v2, "user_agent"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lz2/o000O00O;->OooooOO:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "scope"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "redirect_uri"

    const-string v2, "https://www.facebook.com/connect/login_success.html"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://graph.facebook.com/oauth/authorize?"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lz2/o000O00O;->OooOoo(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lz2/o000O00O$OooO0O0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lz2/o000O00O$OooO0O0;-><init>(Lz2/o000O00O;Lz2/o000O00O$OooO0O0;)V

    new-instance v2, Lz2/o000O0o;

    iget-object v3, p0, Lz2/o000O00O;->Ooooo00:Landroid/app/Activity;

    invoke-direct {v2, v3, v0, v1}, Lz2/o000O0o;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebViewClient;)V

    iput-object v2, p0, Lz2/o000O00O;->Ooooo0o:Lz2/o000O0o;

    iget-object v0, p0, Lz2/o000O00O;->OooooOo:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lz2/o000O0o;->OooO0Oo(Ljava/lang/String;)V

    iget-object v0, p0, Lz2/o000O00O;->Ooooo0o:Lz2/o000O0o;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-direct {p0}, Lz2/o000O00O;->OoooO0()V

    iget-boolean v0, p0, Lz2/o000O00O;->Oooooo0:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz2/o000O00O;->OooooO0:Ljava/lang/String;

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "auth hide"

    invoke-static {v0}, Lz2/o00O000;->OooO(Ljava/lang/Object;)V

    invoke-direct {p0}, Lz2/o000O00O;->Oooo0OO()V

    :cond_2
    iget-object v0, p0, Lz2/o000O00O;->Ooooo0o:Lz2/o000O0o;

    invoke-virtual {v0}, Lz2/o000O0o;->OooO0OO()V

    const-string v0, "auth started"

    invoke-static {v0}, Lz2/o00O000;->OooO(Ljava/lang/Object;)V

    return-void
.end method

.method private o000oOoO(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lz2/o000O00O;->Ooooo00:Landroid/app/Activity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "aq.fb.token"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "aq.fb.permission"

    invoke-interface {p1, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lz2/o00O000;->OooO00o(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method


# virtual methods
.method public OooO(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x3f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "?"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "&"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "access_token="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lz2/o000O00O;->OooooO0:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public OooO0OO()V
    .locals 3

    iget-object v0, p0, Lz2/o000O00O;->Ooooo00:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lz2/o000O00O;->OoooO()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "authing"

    invoke-static {v2, v1}, Lz2/o00O000;->OooOO0(Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez v0, :cond_1

    invoke-direct {p0}, Lz2/o000O00O;->OoooOOo()V

    :cond_1
    return-void
.end method

.method public OooO0o(Lz2/o000OO0O;Lz2/o000O;)Z
    .locals 5
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

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p2}, Lz2/o000O;->OooOOo0()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    const-string v3, "OAuthException"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p1, "fb token expired"

    invoke-static {p1}, Lz2/o00O000;->OooO(Ljava/lang/Object;)V

    return v2

    :cond_1
    invoke-virtual {p1}, Lz2/o000OO0O;->getUrl()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x190

    if-ne v0, p2, :cond_3

    const-string v3, "/likes"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "/comments"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "/checkins"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    return v1

    :cond_3
    const/16 v3, 0x193

    if-ne v0, v3, :cond_5

    const-string v4, "/feed"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "method=delete"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    return v1

    :cond_5
    if-eq v0, p2, :cond_6

    const/16 p1, 0x191

    if-eq v0, p1, :cond_6

    if-eq v0, v3, :cond_6

    return v1

    :cond_6
    return v2
.end method

.method public OooO0o0()Z
    .locals 1

    iget-object v0, p0, Lz2/o000O00O;->OooooO0:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public OooO0oo(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lz2/o000O00O;->OooO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public OooOO0(Lz2/o000OO0O;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o000OO0O<",
            "**>;)Z"
        }
    .end annotation

    const-string v0, "reauth requested"

    invoke-static {v0}, Lz2/o00O000;->OooO(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/o000O00O;->OooooO0:Ljava/lang/String;

    new-instance v0, Lz2/o000O00O$OooO00o;

    invoke-direct {v0, p0, p1}, Lz2/o000O00O$OooO00o;-><init>(Lz2/o000O00O;Lz2/o000OO0O;)V

    invoke-static {v0}, Lz2/o00O000;->Oooo0o(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public OooOO0o()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/o000O00O;->OooooO0:Ljava/lang/String;

    iget-object v1, p0, Lz2/o000O00O;->Ooooo00:Landroid/app/Activity;

    invoke-static {v1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    invoke-direct {p0, v0, v0}, Lz2/o000O00O;->o000oOoO(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public OooOo(Lz2/o000O0O0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o000O0O0<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lz2/o000O00O;->OooOoO0(Lz2/o000O0O0;J)V

    return-void
.end method

.method public OooOoO(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public OooOoO0(Lz2/o000O0O0;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o000O0O0<",
            "Lorg/json/JSONObject;",
            ">;J)V"
        }
    .end annotation

    new-instance v0, Lz2/o000;

    iget-object v1, p0, Lz2/o000O00O;->Ooooo00:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lz2/o000;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p0}, Lz2/o000O000;->OooOOO(Lz2/o000Oo0;)Lz2/o000O000;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lz2/o000;

    const-class v3, Lorg/json/JSONObject;

    const-string v2, "https://graph.facebook.com/me"

    move-wide v4, p2

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lz2/o000O000;->OooO0Oo(Ljava/lang/String;Ljava/lang/Class;JLz2/o000O0O0;)Lz2/o000O000;

    return-void
.end method

.method public Oooo0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/o000O00O;->OooooO0:Ljava/lang/String;

    return-object v0
.end method

.method public Oooo0o(Ljava/lang/String;)Lz2/o000O00O;
    .locals 0

    iput-object p1, p0, Lz2/o000O00O;->OooooOo:Ljava/lang/String;

    return-object p0
.end method

.method public Oooo0o0()Z
    .locals 3

    sget-object v0, Lz2/o000O00O;->o00Ooo:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.facebook.katana"

    const-string v2, "com.facebook.katana.ProxyAuth"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lz2/o000O00O;->Ooooo00:Landroid/app/Activity;

    invoke-direct {p0, v1, v0}, Lz2/o000O00O;->OoooOOO(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lz2/o000O00O;->o00Ooo:Ljava/lang/Boolean;

    :cond_0
    sget-object v0, Lz2/o000O00O;->o00Ooo:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public Oooo0oO(IILandroid/content/Intent;)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "on result"

    invoke-static {v0, p1}, Lz2/o00O000;->OooOO0(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_4

    const-string p1, "error"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, "error_type"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    if-eqz p2, :cond_3

    invoke-static {p1, p2}, Lz2/o00O000;->OooOO0(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p1, "service_disabled"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "AndroidAuthKillSwitchException"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "error_description"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "fb error"

    invoke-static {p2, p1}, Lz2/o00O000;->OooOO0(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lz2/o000O00O;->Oooo000(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-direct {p0}, Lz2/o000O00O;->OoooOOo()V

    goto :goto_1

    :cond_3
    const-string p1, "access_token"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lz2/o000O00O;->OooooO0:Ljava/lang/String;

    const-string p2, "onComplete"

    invoke-static {p2, p1}, Lz2/o00O000;->OooOO0(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lz2/o000O00O;->OooooO0:Ljava/lang/String;

    if-eqz p1, :cond_5

    iget-object p2, p0, Lz2/o000O00O;->OooooOO:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lz2/o000O00O;->o000oOoO(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lz2/o000O00O;->Oooooo0:Z

    iget-object p1, p0, Lz2/o000O00O;->OooooO0:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lz2/o000O00O;->OooOoO(Ljava/lang/String;)V

    iget-object p1, p0, Lz2/o000O00O;->Ooooo00:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lz2/o000Oo0;->OooOO0O(Landroid/content/Context;)V

    goto :goto_1

    :cond_4
    if-nez p2, :cond_6

    :cond_5
    invoke-direct {p0}, Lz2/o000O00O;->OooOooo()V

    :cond_6
    :goto_1
    return-void
.end method

.method public OoooO00(I)Lz2/o000O00O;
    .locals 1

    iget-object v0, p0, Lz2/o000O00O;->Ooooo00:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lz2/o000O00O;->OooooOo:Ljava/lang/String;

    return-object p0
.end method

.method public OoooO0O(I)Lz2/o000O00O;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/o000O00O;->Oooooo:Z

    iput p1, p0, Lz2/o000O00O;->OoooooO:I

    return-object p0
.end method

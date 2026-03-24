.class public Lz2/o00oOoo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/o00oOoo$OooO00o;
    }
.end annotation


# static fields
.field public static final OooOOO:I = 0x0

.field public static final OooOOOO:I = 0x1

.field public static final OooOOOo:I = 0x2

.field private static OooOOo:Landroid/content/pm/PackageInfo; = null

.field private static OooOOo0:Landroid/content/pm/ApplicationInfo; = null

.field private static final OooOOoo:Ljava/lang/String; = "aqs.skip"

.field private static final OooOo00:Ljava/lang/String; = "\u2022"


# instance fields
.field private OooO:J

.field private OooO00o:Landroid/app/Activity;

.field private OooO0O0:Lz2/o000;

.field private OooO0OO:Lz2/o00oOoo$OooO00o;

.field private OooO0Oo:Ljava/lang/String;

.field private OooO0o:Ljava/lang/String;

.field private OooO0o0:Ljava/lang/String;

.field private OooO0oO:Z

.field private OooO0oo:I

.field private OooOO0:Ljava/lang/String;

.field private OooOO0O:Z

.field private OooOO0o:Z

.field private OooOOO0:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xafc80

    iput-wide v0, p0, Lz2/o00oOoo;->OooO:J

    const/4 v0, 0x0

    iput v0, p0, Lz2/o00oOoo;->OooOOO0:I

    iput-object p1, p0, Lz2/o00oOoo;->OooO00o:Landroid/app/Activity;

    new-instance v0, Lz2/o000;

    invoke-direct {v0, p1}, Lz2/o000;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lz2/o00oOoo;->OooO0O0:Lz2/o000;

    new-instance p1, Lz2/o00oOoo$OooO00o;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lz2/o00oOoo$OooO00o;-><init>(Lz2/o00oOoo;Lz2/o00oOoo$OooO00o;)V

    iput-object p1, p0, Lz2/o00oOoo;->OooO0OO:Lz2/o00oOoo$OooO00o;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lz2/o00oOoo;->OooO0Oo:Ljava/lang/String;

    invoke-direct {p0}, Lz2/o00oOoo;->OooOo0o()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lz2/o00oOoo;->OooO0o0:Ljava/lang/String;

    iput-object p1, p0, Lz2/o00oOoo;->OooO0o:Ljava/lang/String;

    return-void
.end method

.method public static synthetic OooO(Lz2/o00oOoo;)I
    .locals 0

    iget p0, p0, Lz2/o00oOoo;->OooO0oo:I

    return p0
.end method

.method public static synthetic OooO00o(Lz2/o00oOoo;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lz2/o00oOoo;->OooO00o:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic OooO0O0(Lz2/o00oOoo;)Z
    .locals 0

    iget-boolean p0, p0, Lz2/o00oOoo;->OooOO0O:Z

    return p0
.end method

.method public static synthetic OooO0OO(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lz2/o00oOoo;->Oooo000(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic OooO0Oo(Lz2/o00oOoo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lz2/o00oOoo;->OooO0o:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic OooO0o(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lz2/o00oOoo;->Oooo0o0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic OooO0o0(Lz2/o00oOoo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lz2/o00oOoo;->OooOO0:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic OooO0oO(Lz2/o00oOoo;Z)V
    .locals 0

    iput-boolean p1, p0, Lz2/o00oOoo;->OooOO0O:Z

    return-void
.end method

.method public static synthetic OooO0oo(Lz2/o00oOoo;)Lz2/o000;
    .locals 0

    iget-object p0, p0, Lz2/o00oOoo;->OooO0O0:Lz2/o000;

    return-object p0
.end method

.method public static synthetic OooOO0(Lz2/o00oOoo;)Z
    .locals 0

    iget-boolean p0, p0, Lz2/o00oOoo;->OooOO0o:Z

    return p0
.end method

.method public static synthetic OooOO0O(Lz2/o00oOoo;Z)V
    .locals 0

    iput-boolean p1, p0, Lz2/o00oOoo;->OooOO0o:Z

    return-void
.end method

.method public static synthetic OooOO0o(Lz2/o00oOoo;I)V
    .locals 0

    iput p1, p0, Lz2/o00oOoo;->OooO0oo:I

    return-void
.end method

.method public static synthetic OooOOO(Lz2/o00oOoo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lz2/o00oOoo;->OooO0o0:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic OooOOO0(Lz2/o00oOoo;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lz2/o00oOoo;->OooOoO0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private OooOOoo()Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-direct {p0}, Lz2/o00oOoo;->OooOo0()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, p0, Lz2/o00oOoo;->OooO00o:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private OooOo()Landroid/content/pm/PackageInfo;
    .locals 3

    sget-object v0, Lz2/o00oOoo;->OooOOo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lz2/o00oOoo;->OooO00o:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-direct {p0}, Lz2/o00oOoo;->OooOo00()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    sput-object v0, Lz2/o00oOoo;->OooOOo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    sget-object v0, Lz2/o00oOoo;->OooOOo:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method private OooOo0()Landroid/content/pm/ApplicationInfo;
    .locals 1

    sget-object v0, Lz2/o00oOoo;->OooOOo0:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/o00oOoo;->OooO00o:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    sput-object v0, Lz2/o00oOoo;->OooOOo0:Landroid/content/pm/ApplicationInfo;

    :cond_0
    sget-object v0, Lz2/o00oOoo;->OooOOo0:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method private OooOo00()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lz2/o00oOoo;->OooOo0()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method private OooOo0O()Ljava/lang/String;
    .locals 1

    const-string v0, "https://androidquery.appspot.com"

    return-object v0
.end method

.method private OooOo0o()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lz2/o00oOoo;->OooOo00()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "market://details?id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static OooOoO(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "aqs.skip"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private OooOoO0()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lz2/o00oOoo;->OooOo00()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lz2/o00oOoo;->OooOo0O()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/api/market?app="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&locale="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lz2/o00oOoo;->OooO0Oo:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&version="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lz2/o00oOoo;->OooOoOO()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&code="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lz2/o00oOoo;->OooOoo0()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "&aq="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "0.26.7"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lz2/o00oOoo;->OooO0oO:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&force=true"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private OooOoOO()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lz2/o00oOoo;->OooOo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method private OooOoo()Z
    .locals 1

    iget-object v0, p0, Lz2/o00oOoo;->OooO00o:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private OooOoo0()I
    .locals 1

    invoke-direct {p0}, Lz2/o00oOoo;->OooOo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    return v0
.end method

.method private static Oooo000(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method private Oooo00O(Ljava/lang/String;I)Z
    .locals 4

    iget-object v0, p0, Lz2/o00oOoo;->OooO00o:Landroid/app/Activity;

    invoke-static {v0}, Lz2/o00oOoo;->OooOoO(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lz2/o00oOoo;->OooOoOO()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lz2/o00oOoo;->OooOoo0()I

    move-result v2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    if-gt v2, p2, :cond_1

    iget p2, p0, Lz2/o00oOoo;->OooOOO0:I

    invoke-direct {p0, v0, p1, p2}, Lz2/o00oOoo;->Oooo0OO(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method private static Oooo00o(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<small>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "</small>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private Oooo0OO(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5

    const-string v0, "\\."

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length v0, p1

    const/4 v3, 0x3

    if-lt v0, v3, :cond_6

    array-length v0, p2

    if-ge v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-eqz p3, :cond_2

    if-eq p3, v1, :cond_3

    if-eq p3, v0, :cond_4

    return v1

    :cond_2
    array-length p3, p1

    sub-int/2addr p3, v1

    aget-object p3, p1, p3

    array-length v4, p2

    sub-int/2addr v4, v1

    aget-object v4, p2, v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    return v1

    :cond_3
    array-length p3, p1

    sub-int/2addr p3, v0

    aget-object p3, p1, p3

    array-length v4, p2

    sub-int/2addr v4, v0

    aget-object v0, p2, v4

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    return v1

    :cond_4
    array-length p3, p1

    sub-int/2addr p3, v3

    aget-object p1, p1, p3

    array-length p3, p2

    sub-int/2addr p3, v3

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v2

    :cond_6
    :goto_0
    return v1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lz2/o00O000;->OoooO0O(Ljava/lang/Throwable;)V

    return v1
.end method

.method private static Oooo0o0(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "aqs.skip"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public OooOOOO(Ljava/lang/String;Lorg/json/JSONObject;Lz2/o000O;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string p1, "version"

    const-string p3, "0"

    invoke-virtual {p2, p1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    const-string v1, "code"

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lz2/o00oOoo;->OooOoOO()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lz2/o00oOoo;->OooOoo0()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lz2/o00O000;->OooOO0(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p3, v0}, Lz2/o00oOoo;->Oooo00O(Ljava/lang/String;I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "outdated"

    invoke-static {v1, p1}, Lz2/o00O000;->OooOO0(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean p1, p0, Lz2/o00oOoo;->OooO0oO:Z

    if-nez p1, :cond_1

    invoke-direct {p0, p3, v0}, Lz2/o00oOoo;->Oooo00O(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    invoke-virtual {p0, p2}, Lz2/o00oOoo;->Oooo0o(Lorg/json/JSONObject;)V

    :cond_2
    return-void
.end method

.method public OooOOOo()V
    .locals 4

    invoke-direct {p0}, Lz2/o00oOoo;->OooOoO0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lz2/o000O0O0;

    invoke-direct {v1}, Lz2/o000O0O0;-><init>()V

    invoke-virtual {v1, v0}, Lz2/o000OO0O;->url(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/o000O0O0;

    const-class v2, Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lz2/o000OO0O;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/o000O0O0;

    iget-object v2, p0, Lz2/o00oOoo;->OooO0OO:Lz2/o00oOoo$OooO00o;

    const-string v3, "marketCb"

    invoke-virtual {v0, v2, v3}, Lz2/o000OO0O;->handler(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/o000O0O0;

    iget-boolean v2, p0, Lz2/o00oOoo;->OooO0oO:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lz2/o000OO0O;->fileCache(Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/o000O0O0;

    iget-wide v2, p0, Lz2/o00oOoo;->OooO:J

    invoke-virtual {v0, v2, v3}, Lz2/o000OO0O;->expire(J)Ljava/lang/Object;

    iget-object v0, p0, Lz2/o00oOoo;->OooO0O0:Lz2/o000;

    iget v2, p0, Lz2/o00oOoo;->OooO0oo:I

    invoke-virtual {v0, v2}, Lz2/o000O000;->o0000o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    invoke-virtual {v0, v1}, Lz2/o000O000;->OooO0OO(Lz2/o000O0O0;)Lz2/o000O000;

    return-void
.end method

.method public OooOOo(Z)Lz2/o00oOoo;
    .locals 0

    iput-boolean p1, p0, Lz2/o00oOoo;->OooO0oO:Z

    return-object p0
.end method

.method public OooOOo0(J)Lz2/o00oOoo;
    .locals 0

    iput-wide p1, p0, Lz2/o00oOoo;->OooO:J

    return-object p0
.end method

.method public OooOooO(I)Lz2/o00oOoo;
    .locals 0

    iput p1, p0, Lz2/o00oOoo;->OooOOO0:I

    return-object p0
.end method

.method public OooOooo(Ljava/lang/String;)Lz2/o00oOoo;
    .locals 0

    iput-object p1, p0, Lz2/o00oOoo;->OooO0Oo:Ljava/lang/String;

    return-object p0
.end method

.method public Oooo0(I)Lz2/o00oOoo;
    .locals 0

    iput p1, p0, Lz2/o00oOoo;->OooO0oo:I

    return-object p0
.end method

.method public Oooo0O0(Ljava/lang/String;)Lz2/o00oOoo;
    .locals 0

    iput-object p1, p0, Lz2/o00oOoo;->OooO0o0:Ljava/lang/String;

    return-object p0
.end method

.method public Oooo0o(Lorg/json/JSONObject;)V
    .locals 8

    if-eqz p1, :cond_2

    iget-object v0, p0, Lz2/o00oOoo;->OooOO0:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-direct {p0}, Lz2/o00oOoo;->OooOoo()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "dialog"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "update"

    const-string v2, "Update"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "skip"

    const-string v3, "Skip"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "rate"

    const-string v4, "Rate"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "wbody"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "title"

    const-string v7, "Update Available"

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5}, Lz2/o00O000;->OooOO0(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v4, "version"

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lz2/o00oOoo;->OooOO0:Ljava/lang/String;

    invoke-direct {p0}, Lz2/o00oOoo;->OooOOoo()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v4, p0, Lz2/o00oOoo;->OooO00o:Landroid/app/Activity;

    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, p1}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lz2/o00oOoo;->OooO0OO:Lz2/o00oOoo$OooO00o;

    invoke-virtual {p1, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lz2/o00oOoo;->OooO0OO:Lz2/o00oOoo$OooO00o;

    invoke-virtual {p1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lz2/o00oOoo;->OooO0OO:Lz2/o00oOoo$OooO00o;

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-static {v5}, Lz2/o00oOoo;->Oooo00o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lz2/o00oOoo;->OooO0OO:Lz2/o00oOoo$OooO00o;

    invoke-static {v0, v6, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lz2/o00oOoo;->OooO0O0:Lz2/o000;

    invoke-virtual {v0, p1}, Lz2/o000O000;->o000O0oo(Landroid/app/Dialog;)Lz2/o000O000;

    :cond_2
    :goto_0
    return-void
.end method

.method public Oooo0oO(Ljava/lang/String;)Lz2/o00oOoo;
    .locals 0

    iput-object p1, p0, Lz2/o00oOoo;->OooO0o:Ljava/lang/String;

    return-object p0
.end method

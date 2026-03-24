.class public final Lz2/pe;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final OooO00o:Ljava/lang/String; = "com.cyjh.mobileanjian"

.field private static OooO0O0:Z = true

.field private static OooO0OO:Ljava/lang/String; = "12345678-0000-0000-0000-BA9876543210"

.field private static OooO0Oo:Ljava/lang/String; = "2015-06-24"

.field private static OooO0o0:Ljava/lang/String; = ""


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO()Ljava/lang/String;
    .locals 1

    sget-object v0, Lz2/pe;->OooO0OO:Ljava/lang/String;

    return-object v0
.end method

.method private static OooO00o(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static OooO0O0(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lz2/pe;->OooO0Oo:Ljava/lang/String;

    return-void
.end method

.method private static OooO0OO(Z)V
    .locals 0

    sput-boolean p0, Lz2/pe;->OooO0O0:Z

    return-void
.end method

.method public static OooO0Oo()Z
    .locals 1

    sget-boolean v0, Lz2/pe;->OooO0O0:Z

    return v0
.end method

.method private static OooO0o(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string p0, "NOT_FOUND"

    :goto_0
    return-object p0
.end method

.method public static OooO0o0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lz2/pe;->OooO0Oo:Ljava/lang/String;

    return-object v0
.end method

.method private static OooO0oO(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lz2/pe;->OooO0OO:Ljava/lang/String;

    return-void
.end method

.method private static OooO0oo(Landroid/content/Context;)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/16 p0, -0x7d0

    :goto_0
    return p0
.end method

.method private static OooOO0(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lz2/pe;->OooO0o0:Ljava/lang/String;

    return-void
.end method

.method private static OooOO0O()Ljava/lang/String;
    .locals 1

    sget-object v0, Lz2/pe;->OooO0o0:Ljava/lang/String;

    return-object v0
.end method

.method private static OooOO0o(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.cyjh.mobileanjian"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

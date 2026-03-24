.class public Lz2/w4;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final OooO:Ljava/lang/String; = "ro.miui.ui.version.name"

.field private static final OooO00o:Ljava/lang/String; = "Rom"

.field public static final OooO0O0:Ljava/lang/String; = "MIUI"

.field public static final OooO0OO:Ljava/lang/String; = "EMUI"

.field public static final OooO0Oo:Ljava/lang/String; = "FLYME"

.field public static final OooO0o:Ljava/lang/String; = "SMARTISAN"

.field public static final OooO0o0:Ljava/lang/String; = "OPPO"

.field public static final OooO0oO:Ljava/lang/String; = "VIVO"

.field public static final OooO0oo:Ljava/lang/String; = "QIKU"

.field private static final OooOO0:Ljava/lang/String; = "ro.build.version.emui"

.field private static final OooOO0O:Ljava/lang/String; = "ro.build.version.opporom"

.field private static final OooOO0o:Ljava/lang/String; = "ro.smartisan.version"

.field private static OooOOO:Ljava/lang/String; = null

.field private static final OooOOO0:Ljava/lang/String; = "ro.vivo.os.version"

.field private static OooOOOO:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO()Z
    .locals 1

    const-string v0, "MIUI"

    invoke-static {v0}, Lz2/w4;->OooO00o(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static OooO00o(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lz2/w4;->OooOOO:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "ro.miui.ui.version.name"

    invoke-static {v0}, Lz2/w4;->OooO0Oo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lz2/w4;->OooOOOO:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MIUI"

    :goto_0
    sput-object v0, Lz2/w4;->OooOOO:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v0, "ro.build.version.emui"

    invoke-static {v0}, Lz2/w4;->OooO0Oo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lz2/w4;->OooOOOO:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "EMUI"

    goto :goto_0

    :cond_2
    const-string v0, "ro.build.version.opporom"

    invoke-static {v0}, Lz2/w4;->OooO0Oo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lz2/w4;->OooOOOO:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "OPPO"

    goto :goto_0

    :cond_3
    const-string v0, "ro.vivo.os.version"

    invoke-static {v0}, Lz2/w4;->OooO0Oo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lz2/w4;->OooOOOO:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "VIVO"

    goto :goto_0

    :cond_4
    const-string v0, "ro.smartisan.version"

    invoke-static {v0}, Lz2/w4;->OooO0Oo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lz2/w4;->OooOOOO:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "SMARTISAN"

    goto :goto_0

    :cond_5
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    sput-object v0, Lz2/w4;->OooOOOO:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FLYME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    sput-object v1, Lz2/w4;->OooOOO:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const-string v0, "unknown"

    sput-object v0, Lz2/w4;->OooOOOO:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    sget-object v0, Lz2/w4;->OooOOO:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static OooO0O0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lz2/w4;->OooOOO:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-static {v0}, Lz2/w4;->OooO00o(Ljava/lang/String;)Z

    :cond_0
    sget-object v0, Lz2/w4;->OooOOO:Ljava/lang/String;

    return-object v0
.end method

.method public static OooO0OO()Ljava/lang/String;
    .locals 2

    const-string v0, "ro.miui.ui.version.name"

    invoke-static {v0}, Lz2/w4;->OooO0Oo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lz2/w4;->OooOOOO:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "FLYME"

    if-nez v0, :cond_0

    const-string v1, "MIUI"

    goto :goto_0

    :cond_0
    const-string v0, "ro.build.version.emui"

    invoke-static {v0}, Lz2/w4;->OooO0Oo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lz2/w4;->OooOOOO:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v1, "EMUI"

    goto :goto_0

    :cond_1
    const-string v0, "ro.build.version.opporom"

    invoke-static {v0}, Lz2/w4;->OooO0Oo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lz2/w4;->OooOOOO:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v1, "OPPO"

    goto :goto_0

    :cond_2
    const-string v0, "ro.vivo.os.version"

    invoke-static {v0}, Lz2/w4;->OooO0Oo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lz2/w4;->OooOOOO:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v1, "VIVO"

    goto :goto_0

    :cond_3
    const-string v0, "ro.smartisan.version"

    invoke-static {v0}, Lz2/w4;->OooO0Oo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lz2/w4;->OooOOOO:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v1, "SMARTISAN"

    goto :goto_0

    :cond_4
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    sput-object v0, Lz2/w4;->OooOOOO:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    const-string v0, "unknown"

    sput-object v0, Lz2/w4;->OooOOOO:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :cond_6
    :goto_0
    return-object v1
.end method

.method public static OooO0Oo(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getprop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v1, 0x400

    invoke-direct {v2, v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-object v1

    :catch_1
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v2, v0

    :goto_1
    :try_start_3
    const-string v3, "Rom"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to read prop "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_2
    return-object v0

    :catchall_1
    move-exception p0

    move-object v0, v2

    :goto_3
    if-eqz v0, :cond_1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_4
    throw p0
.end method

.method public static OooO0o()Z
    .locals 1

    const-string v0, "QIKU"

    invoke-static {v0}, Lz2/w4;->OooO00o(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "360"

    invoke-static {v0}, Lz2/w4;->OooO00o(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static OooO0o0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lz2/w4;->OooOOOO:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-static {v0}, Lz2/w4;->OooO00o(Ljava/lang/String;)Z

    :cond_0
    sget-object v0, Lz2/w4;->OooOOOO:Ljava/lang/String;

    return-object v0
.end method

.method public static OooO0oO()Z
    .locals 1

    const-string v0, "EMUI"

    invoke-static {v0}, Lz2/w4;->OooO00o(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static OooO0oo()Z
    .locals 1

    const-string v0, "FLYME"

    invoke-static {v0}, Lz2/w4;->OooO00o(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static OooOO0()Z
    .locals 1

    const-string v0, "OPPO"

    invoke-static {v0}, Lz2/w4;->OooO00o(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static OooOO0O()Z
    .locals 1

    const-string v0, "SMARTISAN"

    invoke-static {v0}, Lz2/w4;->OooO00o(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static OooOO0o()Z
    .locals 1

    const-string v0, "VIVO"

    invoke-static {v0}, Lz2/w4;->OooO00o(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

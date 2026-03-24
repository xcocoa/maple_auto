.class public final Lz2/u5;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/u5$OooO0OO;,
        Lz2/u5$OooO;,
        Lz2/u5$OooO0O0;,
        Lz2/u5$OooO00o;,
        Lz2/u5$OooO0o;,
        Lz2/u5$OooOO0;
    }
.end annotation


# static fields
.field private static OooO00o:Landroid/app/Application;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static OooO00o()Landroid/app/Application;
    .locals 2

    sget-object v0, Lz2/u5;->OooO00o:Landroid/app/Application;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lz2/w5;->OooOO0O()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lz2/u5;->OooO0O0(Landroid/app/Application;)V

    sget-object v0, Lz2/u5;->OooO00o:Landroid/app/Application;

    const-string v1, "reflect failed."

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lz2/w5;->OooOO0o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " reflect app success."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lz2/u5;->OooO00o:Landroid/app/Application;

    return-object v0
.end method

.method public static OooO0O0(Landroid/app/Application;)V
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "Utils"

    const-string v0, "app is null."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lz2/u5;->OooO00o:Landroid/app/Application;

    if-nez v0, :cond_1

    sput-object p0, Lz2/u5;->OooO00o:Landroid/app/Application;

    invoke-static {p0}, Lz2/w5;->OooOo0o(Landroid/app/Application;)V

    invoke-static {}, Lz2/w5;->OooOooo()V

    return-void

    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    sget-object v0, Lz2/u5;->OooO00o:Landroid/app/Application;

    invoke-static {v0}, Lz2/w5;->Oooo0o(Landroid/app/Application;)V

    sput-object p0, Lz2/u5;->OooO00o:Landroid/app/Application;

    invoke-static {p0}, Lz2/w5;->OooOo0o(Landroid/app/Application;)V

    return-void
.end method

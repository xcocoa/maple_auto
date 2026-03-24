.class public Lmobi/oneway/export/a/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Ljava/lang/String;

.field private static c:Z

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;


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

.method public static a()Landroid/content/Context;
    .locals 1

    sget-object v0, Lmobi/oneway/export/a/b;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "OnewaySdk.init method must invoke first and paramter context must not be null"

    invoke-static {v0}, Lmobi/oneway/export/g/m;->d(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lmobi/oneway/export/a/b;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lmobi/oneway/export/a/b;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lmobi/oneway/export/a/b;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Z)V
    .locals 0

    sput-boolean p0, Lmobi/oneway/export/a/b;->c:Z

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmobi/oneway/export/a/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lmobi/oneway/export/a/b;->d:Ljava/lang/String;

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lmobi/oneway/export/a/b;->e:Ljava/lang/String;

    return-void
.end method

.method public static c()Z
    .locals 1

    sget-boolean v0, Lmobi/oneway/export/a/b;->c:Z

    return v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmobi/oneway/export/a/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmobi/oneway/export/a/b;->e:Ljava/lang/String;

    return-object v0
.end method

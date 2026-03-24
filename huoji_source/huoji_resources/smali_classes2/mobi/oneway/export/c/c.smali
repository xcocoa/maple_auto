.class public Lmobi/oneway/export/c/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Lmobi/oneway/export/c/c;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lmobi/oneway/export/c/c;
    .locals 1

    sget-object v0, Lmobi/oneway/export/c/c;->a:Lmobi/oneway/export/c/c;

    if-nez v0, :cond_0

    new-instance v0, Lmobi/oneway/export/c/c;

    invoke-direct {v0}, Lmobi/oneway/export/c/c;-><init>()V

    sput-object v0, Lmobi/oneway/export/c/c;->a:Lmobi/oneway/export/c/c;

    :cond_0
    sget-object v0, Lmobi/oneway/export/c/c;->a:Lmobi/oneway/export/c/c;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lmobi/oneway/export/c/a;

    invoke-direct {v0, p1}, Lmobi/oneway/export/c/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lmobi/oneway/export/c/a;->a()V

    new-instance p1, Lmobi/oneway/export/c/d;

    invoke-direct {p1, v0}, Lmobi/oneway/export/c/d;-><init>(Lmobi/oneway/export/c/a;)V

    invoke-static {p1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.class public Lz2/pa$OooO0O0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/pa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO0O0"
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lz2/pa;


# direct methods
.method private constructor <init>(Lz2/pa;)V
    .locals 0

    iput-object p1, p0, Lz2/pa$OooO0O0;->OoooOoO:Lz2/pa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lz2/pa;Lz2/pa$OooO00o;)V
    .locals 0

    invoke-direct {p0, p1}, Lz2/pa$OooO0O0;-><init>(Lz2/pa;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lz2/pa$OooO0O0;->OoooOoO:Lz2/pa;

    invoke-virtual {v0}, Lz2/pa;->OooOo0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.class public Lz2/u50$OooO00o;
.super Lz2/z80;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/u50;->OooO0O0(Ljava/util/List;)Lz2/z80;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Ljava/util/List;

.field public final synthetic OooO0O0:Lz2/u50;


# direct methods
.method public constructor <init>(Lz2/u50;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lz2/u50$OooO00o;->OooO0O0:Lz2/u50;

    iput-object p2, p0, Lz2/u50$OooO00o;->OooO00o:Ljava/util/List;

    invoke-direct {p0}, Lz2/z80;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO0oo()Lz2/b90;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lz2/u50$OooO00o$OooO00o;

    iget-object v2, p0, Lz2/u50$OooO00o;->OooO00o:Ljava/util/List;

    invoke-direct {v1, p0, v0, v2}, Lz2/u50$OooO00o$OooO00o;-><init>(Lz2/u50$OooO00o;Ljava/lang/Class;Ljava/util/List;)V
    :try_end_0
    .catch Lorg/junit/runners/model/InitializationError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    new-instance v2, Lz2/n70;

    invoke-direct {v2, v0, v1}, Lz2/n70;-><init>(Ljava/lang/Class;Ljava/lang/Throwable;)V

    return-object v2
.end method

.class public Lz2/c00$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/c00;-><init>(Lz2/qx;Lz2/wx;Ljava/util/Random;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lz2/c00;


# direct methods
.method public constructor <init>(Lz2/c00;)V
    .locals 0

    iput-object p1, p0, Lz2/c00$OooO00o;->OoooOoO:Lz2/c00;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :goto_0
    :try_start_0
    iget-object v0, p0, Lz2/c00$OooO00o;->OoooOoO:Lz2/c00;

    invoke-virtual {v0}, Lz2/c00;->OooOoO0()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lz2/c00$OooO00o;->OoooOoO:Lz2/c00;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lz2/c00;->OooOOO(Ljava/lang/Exception;Lz2/sx;)V

    :cond_0
    return-void
.end method

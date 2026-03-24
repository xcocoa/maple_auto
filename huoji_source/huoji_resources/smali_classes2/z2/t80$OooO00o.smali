.class public Lz2/t80$OooO00o;
.super Lz2/w90;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/t80;->OooO00o(Lz2/w90;Lorg/junit/runner/Description;)Lz2/w90;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Ljava/lang/Exception;

.field public final synthetic OooO0O0:Lz2/t80;


# direct methods
.method public constructor <init>(Lz2/t80;Ljava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Lz2/t80$OooO00o;->OooO0O0:Lz2/t80;

    iput-object p2, p0, Lz2/t80$OooO00o;->OooO00o:Ljava/lang/Exception;

    invoke-direct {p0}, Lz2/w90;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v1, p0, Lz2/t80$OooO00o;->OooO00o:Ljava/lang/Exception;

    const-string v2, "Invalid parameters for Timeout"

    invoke-direct {v0, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

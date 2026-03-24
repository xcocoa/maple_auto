.class public Ljunit/framework/JUnit4TestAdapterCache$OooO00o;
.super Lz2/g90;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljunit/framework/JUnit4TestAdapterCache;->getNotifier(Lz2/kw;Lz2/dw;)Lz2/h90;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/kw;

.field public final synthetic OooO0O0:Ljunit/framework/JUnit4TestAdapterCache;


# direct methods
.method public constructor <init>(Ljunit/framework/JUnit4TestAdapterCache;Lz2/kw;)V
    .locals 0

    iput-object p1, p0, Ljunit/framework/JUnit4TestAdapterCache$OooO00o;->OooO0O0:Ljunit/framework/JUnit4TestAdapterCache;

    iput-object p2, p0, Ljunit/framework/JUnit4TestAdapterCache$OooO00o;->OooO00o:Lz2/kw;

    invoke-direct {p0}, Lz2/g90;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO0O0(Lorg/junit/runner/notification/Failure;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Ljunit/framework/JUnit4TestAdapterCache$OooO00o;->OooO00o:Lz2/kw;

    iget-object v1, p0, Ljunit/framework/JUnit4TestAdapterCache$OooO00o;->OooO0O0:Ljunit/framework/JUnit4TestAdapterCache;

    invoke-virtual {p1}, Lorg/junit/runner/notification/Failure;->getDescription()Lorg/junit/runner/Description;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljunit/framework/JUnit4TestAdapterCache;->asTest(Lorg/junit/runner/Description;)Lz2/gw;

    move-result-object v1

    invoke-virtual {p1}, Lorg/junit/runner/notification/Failure;->getException()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lz2/kw;->OooO00o(Lz2/gw;Ljava/lang/Throwable;)V

    return-void
.end method

.method public OooO0OO(Lorg/junit/runner/Description;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Ljunit/framework/JUnit4TestAdapterCache$OooO00o;->OooO00o:Lz2/kw;

    iget-object v1, p0, Ljunit/framework/JUnit4TestAdapterCache$OooO00o;->OooO0O0:Ljunit/framework/JUnit4TestAdapterCache;

    invoke-virtual {v1, p1}, Ljunit/framework/JUnit4TestAdapterCache;->asTest(Lorg/junit/runner/Description;)Lz2/gw;

    move-result-object p1

    invoke-virtual {v0, p1}, Lz2/kw;->OooO0o0(Lz2/gw;)V

    return-void
.end method

.method public OooO0oO(Lorg/junit/runner/Description;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Ljunit/framework/JUnit4TestAdapterCache$OooO00o;->OooO00o:Lz2/kw;

    iget-object v1, p0, Ljunit/framework/JUnit4TestAdapterCache$OooO00o;->OooO0O0:Ljunit/framework/JUnit4TestAdapterCache;

    invoke-virtual {v1, p1}, Ljunit/framework/JUnit4TestAdapterCache;->asTest(Lorg/junit/runner/Description;)Lz2/gw;

    move-result-object p1

    invoke-virtual {v0, p1}, Lz2/kw;->OooOOOO(Lz2/gw;)V

    return-void
.end method

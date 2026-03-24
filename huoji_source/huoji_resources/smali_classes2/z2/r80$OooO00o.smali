.class public Lz2/r80$OooO00o;
.super Lz2/w90;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/r80;->OooO00o(Lz2/w90;Lorg/junit/runner/Description;)Lz2/w90;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lorg/junit/runner/Description;

.field public final synthetic OooO0O0:Lz2/w90;

.field public final synthetic OooO0OO:Lz2/r80;


# direct methods
.method public constructor <init>(Lz2/r80;Lorg/junit/runner/Description;Lz2/w90;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iput-object p1, p0, Lz2/r80$OooO00o;->OooO0OO:Lz2/r80;

    iput-object p2, p0, Lz2/r80$OooO00o;->OooO00o:Lorg/junit/runner/Description;

    iput-object p3, p0, Lz2/r80$OooO00o;->OooO0O0:Lz2/w90;

    invoke-direct {p0}, Lz2/w90;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lz2/r80$OooO00o;->OooO0OO:Lz2/r80;

    iget-object v2, p0, Lz2/r80$OooO00o;->OooO00o:Lorg/junit/runner/Description;

    invoke-static {v1, v2, v0}, Lz2/r80;->OooO0O0(Lz2/r80;Lorg/junit/runner/Description;Ljava/util/List;)V

    :try_start_0
    iget-object v1, p0, Lz2/r80$OooO00o;->OooO0O0:Lz2/w90;

    invoke-virtual {v1}, Lz2/w90;->OooO00o()V

    iget-object v1, p0, Lz2/r80$OooO00o;->OooO0OO:Lz2/r80;

    iget-object v2, p0, Lz2/r80$OooO00o;->OooO00o:Lorg/junit/runner/Description;

    invoke-static {v1, v2, v0}, Lz2/r80;->OooO0OO(Lz2/r80;Lorg/junit/runner/Description;Ljava/util/List;)V
    :try_end_0
    .catch Lorg/junit/internal/AssumptionViolatedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v1, p0, Lz2/r80$OooO00o;->OooO0OO:Lz2/r80;

    iget-object v2, p0, Lz2/r80$OooO00o;->OooO00o:Lorg/junit/runner/Description;

    invoke-static {v1, v2, v0}, Lz2/r80;->OooO0o(Lz2/r80;Lorg/junit/runner/Description;Ljava/util/List;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lz2/r80$OooO00o;->OooO0OO:Lz2/r80;

    iget-object v3, p0, Lz2/r80$OooO00o;->OooO00o:Lorg/junit/runner/Description;

    invoke-static {v2, v1, v3, v0}, Lz2/r80;->OooO0o0(Lz2/r80;Ljava/lang/Throwable;Lorg/junit/runner/Description;Ljava/util/List;)V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lz2/r80$OooO00o;->OooO0OO:Lz2/r80;

    iget-object v3, p0, Lz2/r80$OooO00o;->OooO00o:Lorg/junit/runner/Description;

    invoke-static {v2, v1, v3, v0}, Lz2/r80;->OooO0Oo(Lz2/r80;Lorg/junit/internal/AssumptionViolatedException;Lorg/junit/runner/Description;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :goto_1
    invoke-static {v0}, Lorg/junit/runners/model/MultipleFailureException;->assertEmpty(Ljava/util/List;)V

    return-void

    :catchall_1
    move-exception v1

    iget-object v2, p0, Lz2/r80$OooO00o;->OooO0OO:Lz2/r80;

    iget-object v3, p0, Lz2/r80$OooO00o;->OooO00o:Lorg/junit/runner/Description;

    invoke-static {v2, v3, v0}, Lz2/r80;->OooO0o(Lz2/r80;Lorg/junit/runner/Description;Ljava/util/List;)V

    throw v1
.end method

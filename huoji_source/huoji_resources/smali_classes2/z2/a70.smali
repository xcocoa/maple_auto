.class public Lz2/a70;
.super Lz2/b90;
.source ""


# instance fields
.field private final OooO00o:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lz2/b90;-><init>()V

    iput-object p1, p0, Lz2/a70;->OooO00o:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public OooO00o(Lz2/h90;)V
    .locals 1

    invoke-virtual {p0}, Lz2/a70;->getDescription()Lorg/junit/runner/Description;

    move-result-object v0

    invoke-virtual {p1, v0}, Lz2/h90;->OooO(Lorg/junit/runner/Description;)V

    return-void
.end method

.method public getDescription()Lorg/junit/runner/Description;
    .locals 1

    iget-object v0, p0, Lz2/a70;->OooO00o:Ljava/lang/Class;

    invoke-static {v0}, Lorg/junit/runner/Description;->createSuiteDescription(Ljava/lang/Class;)Lorg/junit/runner/Description;

    move-result-object v0

    return-object v0
.end method

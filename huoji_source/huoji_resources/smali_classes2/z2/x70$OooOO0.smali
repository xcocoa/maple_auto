.class public final Lz2/x70$OooOO0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/x70$OooOo00;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/x70;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooOO0"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lz2/x70$OooO00o;)V
    .locals 0

    invoke-direct {p0}, Lz2/x70$OooOO0;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Lz2/r90;Ljava/lang/Class;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/r90<",
            "*>;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lz2/x70;->OooO00o(Lz2/r90;)Z

    move-result v0

    const-class v1, Lz2/j50;

    invoke-interface {p1, v1}, Lz2/p90;->OooO00o(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lz2/r90;->OooOO0()Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez v0, :cond_1

    if-nez v1, :cond_3

    :cond_1
    invoke-static {p1}, Lz2/x70;->OooO00o(Lz2/r90;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "must not be static."

    goto :goto_1

    :cond_2
    const-string v0, "must not be static or it must be annotated with @ClassRule."

    :goto_1
    new-instance v1, Lorg/junit/internal/runners/rules/ValidationError;

    invoke-direct {v1, p1, p2, v0}, Lorg/junit/internal/runners/rules/ValidationError;-><init>(Lz2/r90;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

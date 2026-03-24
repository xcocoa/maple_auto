.class public final Lz2/x70$OooO0OO;
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
    name = "OooO0OO"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lz2/x70$OooO00o;)V
    .locals 0

    invoke-direct {p0}, Lz2/x70$OooO0OO;-><init>()V

    return-void
.end method

.method private OooO0O0(Lz2/r90;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/r90<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Lz2/r90;->OooO0OO()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result p1

    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public OooO00o(Lz2/r90;Ljava/lang/Class;Ljava/util/List;)V
    .locals 2
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

    invoke-direct {p0, p1}, Lz2/x70$OooO0OO;->OooO0O0(Lz2/r90;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/junit/internal/runners/rules/ValidationError;

    const-string v1, "must be declared in a public class."

    invoke-direct {v0, p1, p2, v1}, Lorg/junit/internal/runners/rules/ValidationError;-><init>(Lz2/r90;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

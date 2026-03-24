.class public Lz2/x70$OooO0O0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/x70;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO0O0"
.end annotation


# instance fields
.field private final OooO00o:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private OooO0O0:Z

.field private final OooO0OO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz2/x70$OooOo00;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/x70$OooO0O0;->OooO00o:Ljava/lang/Class;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lz2/x70$OooO0O0;->OooO0O0:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lz2/x70$OooO0O0;->OooO0OO:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Class;Lz2/x70$OooO00o;)V
    .locals 0

    invoke-direct {p0, p1}, Lz2/x70$OooO0O0;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public static synthetic OooO00o(Lz2/x70$OooO0O0;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lz2/x70$OooO0O0;->OooO0OO:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic OooO0O0(Lz2/x70$OooO0O0;)Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lz2/x70$OooO0O0;->OooO00o:Ljava/lang/Class;

    return-object p0
.end method

.method public static synthetic OooO0OO(Lz2/x70$OooO0O0;)Z
    .locals 0

    iget-boolean p0, p0, Lz2/x70$OooO0O0;->OooO0O0:Z

    return p0
.end method


# virtual methods
.method public OooO0Oo()Lz2/x70;
    .locals 1

    new-instance v0, Lz2/x70;

    invoke-direct {v0, p0}, Lz2/x70;-><init>(Lz2/x70$OooO0O0;)V

    return-object v0
.end method

.method public OooO0o(Lz2/x70$OooOo00;)Lz2/x70$OooO0O0;
    .locals 1

    iget-object v0, p0, Lz2/x70$OooO0O0;->OooO0OO:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public OooO0o0()Lz2/x70$OooO0O0;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/x70$OooO0O0;->OooO0O0:Z

    return-object p0
.end method

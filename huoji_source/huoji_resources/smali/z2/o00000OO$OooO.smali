.class public Lz2/o00000OO$OooO;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/o00000OO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO"
.end annotation


# instance fields
.field private final OooO00o:Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Request<",
            "*>;"
        }
    .end annotation
.end field

.field private OooO0O0:Landroid/graphics/Bitmap;

.field private OooO0OO:Lcom/android/volley/VolleyError;

.field private final OooO0Oo:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lz2/o00000OO$OooOO0O;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic OooO0o0:Lz2/o00000OO;


# direct methods
.method public constructor <init>(Lz2/o00000OO;Lcom/android/volley/Request;Lz2/o00000OO$OooOO0O;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Lz2/o00000OO$OooOO0O;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lz2/o00000OO$OooO;->OooO0o0:Lz2/o00000OO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lz2/o00000OO$OooO;->OooO0Oo:Ljava/util/LinkedList;

    iput-object p2, p0, Lz2/o00000OO$OooO;->OooO00o:Lcom/android/volley/Request;

    invoke-virtual {p1, p3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic OooO00o(Lz2/o00000OO$OooO;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lz2/o00000OO$OooO;->OooO0O0:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static synthetic OooO0O0(Lz2/o00000OO$OooO;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lz2/o00000OO$OooO;->OooO0O0:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public static synthetic OooO0OO(Lz2/o00000OO$OooO;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, Lz2/o00000OO$OooO;->OooO0Oo:Ljava/util/LinkedList;

    return-object p0
.end method


# virtual methods
.method public OooO0Oo(Lz2/o00000OO$OooOO0O;)V
    .locals 1

    iget-object v0, p0, Lz2/o00000OO$OooO;->OooO0Oo:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public OooO0o(Lz2/o00000OO$OooOO0O;)Z
    .locals 1

    iget-object v0, p0, Lz2/o00000OO$OooO;->OooO0Oo:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lz2/o00000OO$OooO;->OooO0Oo:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lz2/o00000OO$OooO;->OooO00o:Lcom/android/volley/Request;

    invoke-virtual {p1}, Lcom/android/volley/Request;->OooO0OO()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public OooO0o0()Lcom/android/volley/VolleyError;
    .locals 1

    iget-object v0, p0, Lz2/o00000OO$OooO;->OooO0OO:Lcom/android/volley/VolleyError;

    return-object v0
.end method

.method public OooO0oO(Lcom/android/volley/VolleyError;)V
    .locals 0

    iput-object p1, p0, Lz2/o00000OO$OooO;->OooO0OO:Lcom/android/volley/VolleyError;

    return-void
.end method

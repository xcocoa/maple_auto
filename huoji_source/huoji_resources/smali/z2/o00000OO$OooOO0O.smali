.class public Lz2/o00000OO$OooOO0O;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/o00000OO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooOO0O"
.end annotation


# instance fields
.field private OooO00o:Landroid/graphics/Bitmap;

.field private final OooO0O0:Lz2/o00000OO$OooOOO0;

.field private final OooO0OO:Ljava/lang/String;

.field private final OooO0Oo:Ljava/lang/String;

.field public final synthetic OooO0o0:Lz2/o00000OO;


# direct methods
.method public constructor <init>(Lz2/o00000OO;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lz2/o00000OO$OooOOO0;)V
    .locals 0

    iput-object p1, p0, Lz2/o00000OO$OooOO0O;->OooO0o0:Lz2/o00000OO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lz2/o00000OO$OooOO0O;->OooO00o:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lz2/o00000OO$OooOO0O;->OooO0Oo:Ljava/lang/String;

    iput-object p4, p0, Lz2/o00000OO$OooOO0O;->OooO0OO:Ljava/lang/String;

    iput-object p5, p0, Lz2/o00000OO$OooOO0O;->OooO0O0:Lz2/o00000OO$OooOOO0;

    return-void
.end method

.method public static synthetic OooO00o(Lz2/o00000OO$OooOO0O;)Lz2/o00000OO$OooOOO0;
    .locals 0

    iget-object p0, p0, Lz2/o00000OO$OooOO0O;->OooO0O0:Lz2/o00000OO$OooOOO0;

    return-object p0
.end method

.method public static synthetic OooO0O0(Lz2/o00000OO$OooOO0O;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lz2/o00000OO$OooOO0O;->OooO00o:Landroid/graphics/Bitmap;

    return-object p1
.end method


# virtual methods
.method public OooO0OO()V
    .locals 2

    iget-object v0, p0, Lz2/o00000OO$OooOO0O;->OooO0O0:Lz2/o00000OO$OooOOO0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lz2/o00000OO$OooOO0O;->OooO0o0:Lz2/o00000OO;

    invoke-static {v0}, Lz2/o00000OO;->OooO00o(Lz2/o00000OO;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lz2/o00000OO$OooOO0O;->OooO0OO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/o00000OO$OooO;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lz2/o00000OO$OooO;->OooO0o(Lz2/o00000OO$OooOO0O;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lz2/o00000OO$OooOO0O;->OooO0o0:Lz2/o00000OO;

    invoke-static {v0}, Lz2/o00000OO;->OooO00o(Lz2/o00000OO;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lz2/o00000OO$OooOO0O;->OooO0o0:Lz2/o00000OO;

    invoke-static {v0}, Lz2/o00000OO;->OooO0O0(Lz2/o00000OO;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lz2/o00000OO$OooOO0O;->OooO0OO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/o00000OO$OooO;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lz2/o00000OO$OooO;->OooO0o(Lz2/o00000OO$OooOO0O;)Z

    invoke-static {v0}, Lz2/o00000OO$OooO;->OooO0OO(Lz2/o00000OO$OooO;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lz2/o00000OO$OooOO0O;->OooO0o0:Lz2/o00000OO;

    invoke-static {v0}, Lz2/o00000OO;->OooO0O0(Lz2/o00000OO;)Ljava/util/HashMap;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lz2/o00000OO$OooOO0O;->OooO0OO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public OooO0Oo()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lz2/o00000OO$OooOO0O;->OooO00o:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public OooO0o0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/o00000OO$OooOO0O;->OooO0Oo:Ljava/lang/String;

    return-object v0
.end method

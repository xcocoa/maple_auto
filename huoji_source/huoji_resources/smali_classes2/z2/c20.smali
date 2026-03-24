.class public Lz2/c20;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public OooO:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final OooO00o:Landroid/content/res/Resources;

.field public final OooO0O0:I

.field public final OooO0OO:I

.field public final OooO0Oo:Lz2/e20;

.field public OooO0o:Z

.field public OooO0o0:Lz2/l10;

.field public OooO0oO:Ljava/lang/String;

.field public OooO0oo:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/c20;->OooO0o:Z

    iput-object p1, p0, Lz2/c20;->OooO00o:Landroid/content/res/Resources;

    iput p2, p0, Lz2/c20;->OooO0O0:I

    iput p3, p0, Lz2/c20;->OooO0OO:I

    new-instance p1, Lz2/e20;

    invoke-direct {p1}, Lz2/e20;-><init>()V

    iput-object p1, p0, Lz2/c20;->OooO0Oo:Lz2/e20;

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/Class;I)Lz2/c20;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;I)",
            "Lz2/c20;"
        }
    .end annotation

    iget-object v0, p0, Lz2/c20;->OooO0Oo:Lz2/e20;

    invoke-virtual {v0, p1, p2}, Lz2/e20;->OooO00o(Ljava/lang/Class;I)Lz2/e20;

    return-object p0
.end method

.method public OooO0O0()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/c20;->OooO0o:Z

    return-void
.end method

.method public OooO0OO()Lz2/l10;
    .locals 1

    iget-object v0, p0, Lz2/c20;->OooO0o0:Lz2/l10;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lz2/l10;->OooO0o()Lz2/l10;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public OooO0Oo(Ljava/lang/Throwable;)I
    .locals 3

    iget-object v0, p0, Lz2/c20;->OooO0Oo:Lz2/e20;

    invoke-virtual {v0, p1}, Lz2/e20;->OooO0O0(Ljava/lang/Throwable;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    sget-object v0, Lz2/l10;->OooOOo0:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No specific message ressource ID found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lz2/c20;->OooO0OO:I

    return p1
.end method

.method public OooO0o(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lz2/c20;->OooO:Ljava/lang/Class;

    return-void
.end method

.method public OooO0o0(I)V
    .locals 0

    iput p1, p0, Lz2/c20;->OooO0oo:I

    return-void
.end method

.method public OooO0oO(Lz2/l10;)V
    .locals 0

    iput-object p1, p0, Lz2/c20;->OooO0o0:Lz2/l10;

    return-void
.end method

.method public OooO0oo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz2/c20;->OooO0oO:Ljava/lang/String;

    return-void
.end method

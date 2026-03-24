.class public Lz2/j5$OooO00o;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/j5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO00o"
.end annotation


# instance fields
.field private OooO00o:Ljava/lang/String;

.field private OooO0O0:Ljava/lang/String;

.field private OooO0OO:Landroid/graphics/drawable/Drawable;

.field private OooO0Oo:Ljava/lang/String;

.field private OooO0o:I

.field private OooO0o0:Ljava/lang/String;

.field private OooO0oO:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p2}, Lz2/j5$OooO00o;->OooO(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lz2/j5$OooO00o;->OooO0oo(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, Lz2/j5$OooO00o;->OooOO0(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lz2/j5$OooO00o;->OooOO0O(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, Lz2/j5$OooO00o;->OooOOO(Ljava/lang/String;)V

    invoke-virtual {p0, p6}, Lz2/j5$OooO00o;->OooOOO0(I)V

    invoke-virtual {p0, p7}, Lz2/j5$OooO00o;->OooOO0o(Z)V

    return-void
.end method


# virtual methods
.method public OooO(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz2/j5$OooO00o;->OooO0O0:Ljava/lang/String;

    return-void
.end method

.method public OooO00o()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lz2/j5$OooO00o;->OooO0OO:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public OooO0O0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/j5$OooO00o;->OooO0O0:Ljava/lang/String;

    return-object v0
.end method

.method public OooO0OO()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/j5$OooO00o;->OooO00o:Ljava/lang/String;

    return-object v0
.end method

.method public OooO0Oo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/j5$OooO00o;->OooO0Oo:Ljava/lang/String;

    return-object v0
.end method

.method public OooO0o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/j5$OooO00o;->OooO0o0:Ljava/lang/String;

    return-object v0
.end method

.method public OooO0o0()I
    .locals 1

    iget v0, p0, Lz2/j5$OooO00o;->OooO0o:I

    return v0
.end method

.method public OooO0oO()Z
    .locals 1

    iget-boolean v0, p0, Lz2/j5$OooO00o;->OooO0oO:Z

    return v0
.end method

.method public OooO0oo(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lz2/j5$OooO00o;->OooO0OO:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public OooOO0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz2/j5$OooO00o;->OooO00o:Ljava/lang/String;

    return-void
.end method

.method public OooOO0O(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz2/j5$OooO00o;->OooO0Oo:Ljava/lang/String;

    return-void
.end method

.method public OooOO0o(Z)V
    .locals 0

    iput-boolean p1, p0, Lz2/j5$OooO00o;->OooO0oO:Z

    return-void
.end method

.method public OooOOO(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz2/j5$OooO00o;->OooO0o0:Ljava/lang/String;

    return-void
.end method

.method public OooOOO0(I)V
    .locals 0

    iput p1, p0, Lz2/j5$OooO00o;->OooO0o:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\n    pkg name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lz2/j5$OooO00o;->OooO0OO()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n    app icon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lz2/j5$OooO00o;->OooO00o()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n    app name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lz2/j5$OooO00o;->OooO0O0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n    app path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lz2/j5$OooO00o;->OooO0Oo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n    app v name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lz2/j5$OooO00o;->OooO0o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n    app v code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lz2/j5$OooO00o;->OooO0o0()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n    is system: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lz2/j5$OooO00o;->OooO0oO()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

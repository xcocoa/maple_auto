.class public Lz2/oO00o00;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/oO00Oo0$OooO00o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/oO00o00$OooO0OO;
    }
.end annotation


# instance fields
.field private final OooO0OO:J

.field private final OooO0Oo:Lz2/oO00o00$OooO0OO;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    new-instance v0, Lz2/oO00o00$OooO00o;

    invoke-direct {v0, p1}, Lz2/oO00o00$OooO00o;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3}, Lz2/oO00o00;-><init>(Lz2/oO00o00$OooO0OO;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    new-instance v0, Lz2/oO00o00$OooO0O0;

    invoke-direct {v0, p1, p2}, Lz2/oO00o00$OooO0O0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3, p4}, Lz2/oO00o00;-><init>(Lz2/oO00o00$OooO0OO;J)V

    return-void
.end method

.method public constructor <init>(Lz2/oO00o00$OooO0OO;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lz2/oO00o00;->OooO0OO:J

    iput-object p1, p0, Lz2/oO00o00;->OooO0Oo:Lz2/oO00o00$OooO0OO;

    return-void
.end method


# virtual methods
.method public build()Lz2/oO00Oo0;
    .locals 3

    iget-object v0, p0, Lz2/oO00o00;->OooO0Oo:Lz2/oO00o00$OooO0OO;

    invoke-interface {v0}, Lz2/oO00o00$OooO0OO;->OooO00o()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    return-object v1

    :cond_2
    iget-wide v1, p0, Lz2/oO00o00;->OooO0OO:J

    invoke-static {v0, v1, v2}, Lz2/oO0OOO00;->OooO0Oo(Ljava/io/File;J)Lz2/oO00Oo0;

    move-result-object v0

    return-object v0
.end method

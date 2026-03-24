.class public final Lz2/o0O00$OooO;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/o0O00;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OooO"
.end annotation


# instance fields
.field private final OooO00o:Ljava/lang/String;

.field private final OooO0O0:J

.field private final OooO0OO:[J

.field private final OooO0Oo:[Ljava/io/File;

.field public final synthetic OooO0o0:Lz2/o0O00;


# direct methods
.method private constructor <init>(Lz2/o0O00;Ljava/lang/String;J[Ljava/io/File;[J)V
    .locals 0

    iput-object p1, p0, Lz2/o0O00$OooO;->OooO0o0:Lz2/o0O00;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lz2/o0O00$OooO;->OooO00o:Ljava/lang/String;

    iput-wide p3, p0, Lz2/o0O00$OooO;->OooO0O0:J

    iput-object p5, p0, Lz2/o0O00$OooO;->OooO0Oo:[Ljava/io/File;

    iput-object p6, p0, Lz2/o0O00$OooO;->OooO0OO:[J

    return-void
.end method

.method public synthetic constructor <init>(Lz2/o0O00;Ljava/lang/String;J[Ljava/io/File;[JLz2/o0O00$OooO00o;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lz2/o0O00$OooO;-><init>(Lz2/o0O00;Ljava/lang/String;J[Ljava/io/File;[J)V

    return-void
.end method


# virtual methods
.method public OooO00o()Lz2/o0O00$OooO0OO;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/o0O00$OooO;->OooO0o0:Lz2/o0O00;

    iget-object v1, p0, Lz2/o0O00$OooO;->OooO00o:Ljava/lang/String;

    iget-wide v2, p0, Lz2/o0O00$OooO;->OooO0O0:J

    invoke-static {v0, v1, v2, v3}, Lz2/o0O00;->OooooOo(Lz2/o0O00;Ljava/lang/String;J)Lz2/o0O00$OooO0OO;

    move-result-object v0

    return-object v0
.end method

.method public OooO0O0(I)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lz2/o0O00$OooO;->OooO0Oo:[Ljava/io/File;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public OooO0OO(I)J
    .locals 3

    iget-object v0, p0, Lz2/o0O00$OooO;->OooO0OO:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public OooO0Oo(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lz2/o0O00$OooO;->OooO0Oo:[Ljava/io/File;

    aget-object p1, v1, p1

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lz2/o0O00;->Oooooo0(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

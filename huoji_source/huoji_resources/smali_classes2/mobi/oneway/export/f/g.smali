.class public Lmobi/oneway/export/f/g;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:I

.field private b:Ljava/lang/Class;

.field private c:Ljava/lang/ClassLoader;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lmobi/oneway/export/f/g;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lmobi/oneway/export/f/g;->a:I

    return-void
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lmobi/oneway/export/f/g;->e:J

    return-void
.end method

.method public a(Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lmobi/oneway/export/f/g;->b:Ljava/lang/Class;

    return-void
.end method

.method public a(Ljava/lang/ClassLoader;)V
    .locals 0

    iput-object p1, p0, Lmobi/oneway/export/f/g;->c:Ljava/lang/ClassLoader;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmobi/oneway/export/f/g;->d:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lmobi/oneway/export/f/g;->b:Ljava/lang/Class;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmobi/oneway/export/f/g;->f:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/ClassLoader;
    .locals 1

    iget-object v0, p0, Lmobi/oneway/export/f/g;->c:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmobi/oneway/export/f/g;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, Lmobi/oneway/export/f/g;->e:J

    return-wide v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmobi/oneway/export/f/g;->f:Ljava/lang/String;

    return-object v0
.end method

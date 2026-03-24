.class public Lz2/p80;
.super Lz2/r80;
.source ""


# instance fields
.field private OooO00o:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lz2/r80;-><init>()V

    return-void
.end method


# virtual methods
.method public OooOOO(Lorg/junit/runner/Description;)V
    .locals 0

    invoke-virtual {p1}, Lorg/junit/runner/Description;->getMethodName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lz2/p80;->OooO00o:Ljava/lang/String;

    return-void
.end method

.method public OooOOo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/p80;->OooO00o:Ljava/lang/String;

    return-object v0
.end method

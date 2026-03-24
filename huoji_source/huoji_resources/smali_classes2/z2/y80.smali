.class public final Lz2/y80;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final OooO00o:Lorg/junit/runner/Description;

.field private final OooO0O0:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/junit/runner/Description;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lz2/y80;->OooO00o:Lorg/junit/runner/Description;

    iput-object p2, p0, Lz2/y80;->OooO0O0:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public OooO00o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/y80;->OooO0O0:Ljava/lang/String;

    return-object v0
.end method

.method public OooO0O0()Lorg/junit/runner/Description;
    .locals 1

    iget-object v0, p0, Lz2/y80;->OooO00o:Lorg/junit/runner/Description;

    return-object v0
.end method

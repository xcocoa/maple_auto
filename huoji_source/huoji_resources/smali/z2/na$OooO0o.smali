.class public Lz2/na$OooO0o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/r3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/na;->Oooo0O0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/na;


# direct methods
.method public constructor <init>(Lz2/na;)V
    .locals 0

    iput-object p1, p0, Lz2/na$OooO0o;->OooO00o:Lz2/na;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lz2/na$OooO0o;->OooO00o:Lz2/na;

    invoke-static {v0, p1}, Lz2/na;->OooOo(Lz2/na;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

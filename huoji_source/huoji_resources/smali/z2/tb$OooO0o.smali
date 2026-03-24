.class public Lz2/tb$OooO0o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/tb;->Oooo00O(Lz2/nb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lz2/tb;


# direct methods
.method public constructor <init>(Lz2/tb;)V
    .locals 0

    iput-object p1, p0, Lz2/tb$OooO0o;->OoooOoO:Lz2/tb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    iget-object p1, p0, Lz2/tb$OooO0o;->OoooOoO:Lz2/tb;

    invoke-static {p1, p2}, Lz2/tb;->OooOo(Lz2/tb;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

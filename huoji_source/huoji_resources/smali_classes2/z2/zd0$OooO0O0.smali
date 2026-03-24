.class public Lz2/zd0$OooO0O0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/zd0;->OooO0O0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Ljava/lang/String;

.field public final synthetic OoooOoo:Lz2/zd0;


# direct methods
.method public constructor <init>(Lz2/zd0;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz2/zd0$OooO0O0;->OoooOoo:Lz2/zd0;

    iput-object p2, p0, Lz2/zd0$OooO0O0;->OoooOoO:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    iget-object p1, p0, Lz2/zd0$OooO0O0;->OoooOoO:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

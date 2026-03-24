.class public Lz2/hi$OooO0OO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/cyjh/mobileanjian/ipc/interfaces/OnEngineStartCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/hi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/hi;


# direct methods
.method public constructor <init>(Lz2/hi;)V
    .locals 0

    iput-object p1, p0, Lz2/hi$OooO0OO;->OooO00o:Lz2/hi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEngineStart(I)V
    .locals 2

    iget-object v0, p0, Lz2/hi$OooO0OO;->OooO00o:Lz2/hi;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lz2/hi;->OooO0O0(Lz2/hi;Z)Z

    iget-object v0, p0, Lz2/hi$OooO0OO;->OooO00o:Lz2/hi;

    invoke-static {v0}, Lz2/hi;->OooO00o(Lz2/hi;)Lz2/ji;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/hi$OooO0OO;->OooO00o:Lz2/hi;

    invoke-static {v0}, Lz2/hi;->OooO00o(Lz2/hi;)Lz2/ji;

    move-result-object v0

    invoke-interface {v0, p1}, Lz2/ji;->onEngineStart(I)V

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lz2/ii;->OooO00o:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ocrex"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lz2/ii;->OooOOO0(Ljava/lang/String;)V

    const/16 p1, 0xa

    new-array p1, p1, [B

    fill-array-data p1, :array_0

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lz2/wi;->OooO0OO([BI)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lz2/ii;->OooO00o:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lz2/wi;->OooO0O0(Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x31t
        0x6et
        0x6bt
        0x64t
        0x6ft
        0x73t
        0x6ft
        0x30t
        0x75t
        0x71t
    .end array-data
.end method

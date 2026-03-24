.class public final Lcom/didi/virtualapk/internal/utils/PackageParserCompat;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/virtualapk/internal/utils/PackageParserCompat$PackageParserLegacy;,
        Lcom/didi/virtualapk/internal/utils/PackageParserCompat$PackageParserLollipop;,
        Lcom/didi/virtualapk/internal/utils/PackageParserCompat$PackageParserV24;,
        Lcom/didi/virtualapk/internal/utils/PackageParserCompat$PackageParserPPreview;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final parsePackage(Landroid/content/Context;Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .locals 2

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_3

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    invoke-static {p0, p1, p2}, Lcom/didi/virtualapk/internal/utils/PackageParserCompat$PackageParserV24;->parsePackage(Landroid/content/Context;Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    invoke-static {p0, p1, p2}, Lcom/didi/virtualapk/internal/utils/PackageParserCompat$PackageParserLollipop;->parsePackage(Landroid/content/Context;Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p0, p1, p2}, Lcom/didi/virtualapk/internal/utils/PackageParserCompat$PackageParserLegacy;->parsePackage(Landroid/content/Context;Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    invoke-static {p0, p1, p2}, Lcom/didi/virtualapk/internal/utils/PackageParserCompat$PackageParserPPreview;->parsePackage(Landroid/content/Context;Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "error"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

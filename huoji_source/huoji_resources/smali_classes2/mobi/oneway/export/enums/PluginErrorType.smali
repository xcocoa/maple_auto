.class public final enum Lmobi/oneway/export/enums/PluginErrorType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmobi/oneway/export/enums/PluginErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmobi/oneway/export/enums/PluginErrorType;

.field public static final enum shell_error_assetsIo:Lmobi/oneway/export/enums/PluginErrorType;

.field public static final enum shell_error_classNoFound:Lmobi/oneway/export/enums/PluginErrorType;

.field public static final enum shell_error_classloader:Lmobi/oneway/export/enums/PluginErrorType;

.field public static final enum shell_error_reflectClass:Lmobi/oneway/export/enums/PluginErrorType;

.field public static final enum shell_error_reflectMethod:Lmobi/oneway/export/enums/PluginErrorType;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lmobi/oneway/export/enums/PluginErrorType;

    const-string v1, "shell_error_reflectClass"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmobi/oneway/export/enums/PluginErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/oneway/export/enums/PluginErrorType;->shell_error_reflectClass:Lmobi/oneway/export/enums/PluginErrorType;

    new-instance v1, Lmobi/oneway/export/enums/PluginErrorType;

    const-string v3, "shell_error_reflectMethod"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lmobi/oneway/export/enums/PluginErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lmobi/oneway/export/enums/PluginErrorType;->shell_error_reflectMethod:Lmobi/oneway/export/enums/PluginErrorType;

    new-instance v3, Lmobi/oneway/export/enums/PluginErrorType;

    const-string v5, "shell_error_assetsIo"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lmobi/oneway/export/enums/PluginErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lmobi/oneway/export/enums/PluginErrorType;->shell_error_assetsIo:Lmobi/oneway/export/enums/PluginErrorType;

    new-instance v5, Lmobi/oneway/export/enums/PluginErrorType;

    const-string v7, "shell_error_classloader"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lmobi/oneway/export/enums/PluginErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lmobi/oneway/export/enums/PluginErrorType;->shell_error_classloader:Lmobi/oneway/export/enums/PluginErrorType;

    new-instance v7, Lmobi/oneway/export/enums/PluginErrorType;

    const-string v9, "shell_error_classNoFound"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lmobi/oneway/export/enums/PluginErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lmobi/oneway/export/enums/PluginErrorType;->shell_error_classNoFound:Lmobi/oneway/export/enums/PluginErrorType;

    const/4 v9, 0x5

    new-array v9, v9, [Lmobi/oneway/export/enums/PluginErrorType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lmobi/oneway/export/enums/PluginErrorType;->$VALUES:[Lmobi/oneway/export/enums/PluginErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmobi/oneway/export/enums/PluginErrorType;
    .locals 1

    const-class v0, Lmobi/oneway/export/enums/PluginErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmobi/oneway/export/enums/PluginErrorType;

    return-object p0
.end method

.method public static values()[Lmobi/oneway/export/enums/PluginErrorType;
    .locals 1

    sget-object v0, Lmobi/oneway/export/enums/PluginErrorType;->$VALUES:[Lmobi/oneway/export/enums/PluginErrorType;

    invoke-virtual {v0}, [Lmobi/oneway/export/enums/PluginErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmobi/oneway/export/enums/PluginErrorType;

    return-object v0
.end method

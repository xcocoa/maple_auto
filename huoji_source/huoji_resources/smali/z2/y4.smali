.class public Lz2/y4;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/y4$OooO0O0;,
        Lz2/y4$OooO00o;
    }
.end annotation


# static fields
.field public static final OooO00o:Ljava/lang/String; = "su"

.field public static final OooO0O0:Ljava/lang/String; = "sh"

.field public static final OooO0OO:Ljava/lang/String; = "exit\n"

.field public static final OooO0Oo:Ljava/lang/String; = "\n"

.field private static OooO0o0:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static synthetic OooO00o()Z
    .locals 1

    sget-boolean v0, Lz2/y4;->OooO0o0:Z

    return v0
.end method

.method public static OooO0O0()Z
    .locals 3

    const-string v0, "echo root"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Lz2/y4;->OooO0Oo(Ljava/lang/String;ZZI)Lz2/y4$OooO00o;

    move-result-object v0

    iget v0, v0, Lz2/y4$OooO00o;->OooO00o:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static OooO0OO(Ljava/lang/String;ZI)Lz2/y4$OooO00o;
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1, p1, v0, p2}, Lz2/y4;->OooO0oo([Ljava/lang/String;ZZI)Lz2/y4$OooO00o;

    move-result-object p0

    return-object p0
.end method

.method public static OooO0Oo(Ljava/lang/String;ZZI)Lz2/y4$OooO00o;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1, p2, p3}, Lz2/y4;->OooO0oo([Ljava/lang/String;ZZI)Lz2/y4$OooO00o;

    move-result-object p0

    return-object p0
.end method

.method public static OooO0o(Ljava/util/List;ZZI)Lz2/y4$OooO00o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZI)",
            "Lz2/y4$OooO00o;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    :goto_0
    invoke-static {p0, p1, p2, p3}, Lz2/y4;->OooO0oo([Ljava/lang/String;ZZI)Lz2/y4$OooO00o;

    move-result-object p0

    return-object p0
.end method

.method public static OooO0o0(Ljava/util/List;ZI)Lz2/y4$OooO00o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZI)",
            "Lz2/y4$OooO00o;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    :goto_0
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2}, Lz2/y4;->OooO0oo([Ljava/lang/String;ZZI)Lz2/y4$OooO00o;

    move-result-object p0

    return-object p0
.end method

.method public static OooO0oO([Ljava/lang/String;ZI)Lz2/y4$OooO00o;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2}, Lz2/y4;->OooO0oo([Ljava/lang/String;ZZI)Lz2/y4$OooO00o;

    move-result-object p0

    return-object p0
.end method

.method public static OooO0oo([Ljava/lang/String;ZZI)Lz2/y4$OooO00o;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eqz p0, :cond_1b

    array-length v2, p0

    if-nez v2, :cond_0

    goto/16 :goto_28

    :cond_0
    const/4 v2, 0x0

    sput-boolean v2, Lz2/y4;->OooO0o0:Z

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    if-eqz p1, :cond_1

    const-string p1, "su"

    goto :goto_0

    :cond_1
    const-string p1, "sh"

    :goto_0
    invoke-virtual {v3, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_10
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    :try_start_1
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_d
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    :try_start_2
    array-length v4, p0

    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v5, p0, v2

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->write([B)V

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const-string p0, "exit\n"

    invoke-virtual {v3, p0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    if-lez p3, :cond_4

    new-instance p0, Lz2/y4$OooO0O0;

    invoke-direct {p0, p1, p3}, Lz2/y4$OooO0O0;-><init>(Ljava/lang/Process;I)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I

    move-result v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    :try_start_3
    const-string p0, "SYS"

    const-string p3, "command finished."

    invoke-static {p0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    sput-boolean p0, Lz2/y4;->OooO0o0:Z

    if-eqz p2, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    new-instance p3, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_3
    :try_start_7
    invoke-virtual {p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    :goto_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v4

    move-object v6, p1

    move-object p1, p0

    move-object p0, v4

    move-object v4, v3

    move-object v3, v2

    goto :goto_5

    :catch_0
    move-exception v4

    move-object v6, p1

    move-object p1, p0

    move-object p0, v4

    move-object v4, v3

    move-object v3, v2

    goto :goto_6

    :catch_1
    move-exception v4

    move-object v6, p1

    move-object p1, p0

    move-object p0, v4

    move-object v4, v3

    move-object v3, v2

    goto :goto_7

    :catchall_1
    move-exception v2

    move-object v4, v3

    move-object v3, v0

    move-object v6, p1

    move-object p1, p0

    move-object p0, v2

    :goto_5
    move v2, v1

    move-object v1, p3

    goto :goto_8

    :catch_2
    move-exception v2

    move-object v4, v3

    move-object v3, v0

    move-object v6, p1

    move-object p1, p0

    move-object p0, v2

    :goto_6
    move v2, v1

    move-object v1, p3

    goto :goto_9

    :catch_3
    move-exception v2

    move-object v4, v3

    move-object v3, v0

    move-object v6, p1

    move-object p1, p0

    move-object p0, v2

    :goto_7
    move v2, v1

    move-object v1, p3

    goto :goto_a

    :catchall_2
    move-exception p3

    move v2, v1

    move-object v4, v3

    move-object v1, v0

    move-object v3, v1

    move-object v6, p1

    move-object p1, p0

    move-object p0, p3

    :goto_8
    move-object p3, p2

    goto :goto_b

    :catch_4
    move-exception p3

    move v2, v1

    move-object v4, v3

    move-object v1, v0

    move-object v3, v1

    move-object v6, p1

    move-object p1, p0

    move-object p0, p3

    :goto_9
    move-object p3, p2

    goto :goto_c

    :catch_5
    move-exception p3

    move v2, v1

    move-object v4, v3

    move-object v1, v0

    move-object v3, v1

    move-object v6, p1

    move-object p1, p0

    move-object p0, p3

    :goto_a
    move-object p3, p2

    goto :goto_d

    :catchall_3
    move-exception p2

    move-object p3, v0

    move v2, v1

    move-object v4, v3

    move-object v1, p3

    move-object v3, v1

    move-object v6, p1

    move-object p1, p0

    move-object p0, p2

    :goto_b
    move-object p2, v6

    goto/16 :goto_13

    :catch_6
    move-exception p2

    move-object p3, v0

    move v2, v1

    move-object v4, v3

    move-object v1, p3

    move-object v3, v1

    move-object v6, p1

    move-object p1, p0

    move-object p0, p2

    :goto_c
    move-object p2, v6

    goto/16 :goto_18

    :catch_7
    move-exception p2

    move-object p3, v0

    move v2, v1

    move-object v4, v3

    move-object v1, p3

    move-object v3, v1

    move-object v6, p1

    move-object p1, p0

    move-object p0, p2

    :goto_d
    move-object p2, v6

    goto/16 :goto_1d

    :cond_6
    move-object p0, v0

    move-object p2, p0

    move-object p3, p2

    move-object v2, p3

    :cond_7
    :try_start_8
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    if-eqz p3, :cond_8

    invoke-virtual {p3}, Ljava/io/BufferedReader;->close()V

    :cond_8
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_e

    :catch_8
    move-exception p3

    invoke-virtual {p3}, Ljava/io/IOException;->printStackTrace()V

    :cond_9
    :goto_e
    if-eqz p1, :cond_14

    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    goto/16 :goto_22

    :catchall_4
    move-exception p0

    move-object p2, p1

    move-object p1, v0

    move-object p3, p1

    move v2, v1

    move-object v4, v3

    move-object v1, p3

    goto :goto_f

    :catch_9
    move-exception p0

    move-object p2, p1

    move-object p1, v0

    move-object p3, p1

    move v2, v1

    move-object v4, v3

    move-object v1, p3

    goto :goto_10

    :catch_a
    move-exception p0

    move-object p2, p1

    move-object p1, v0

    move-object p3, p1

    move v2, v1

    move-object v4, v3

    move-object v1, p3

    goto :goto_11

    :catchall_5
    move-exception p0

    move-object p2, p1

    move-object p1, v0

    move-object p3, p1

    move-object v1, p3

    move-object v4, v3

    const/4 v2, -0x1

    :goto_f
    move-object v3, v1

    goto :goto_13

    :catch_b
    move-exception p0

    move-object p2, p1

    move-object p1, v0

    move-object p3, p1

    move-object v1, p3

    move-object v4, v3

    const/4 v2, -0x1

    :goto_10
    move-object v3, v1

    goto/16 :goto_18

    :catch_c
    move-exception p0

    move-object p2, p1

    move-object p1, v0

    move-object p3, p1

    move-object v1, p3

    move-object v4, v3

    const/4 v2, -0x1

    :goto_11
    move-object v3, v1

    goto/16 :goto_1d

    :catchall_6
    move-exception p0

    move-object p2, p1

    move-object p1, v0

    move-object p3, p1

    goto :goto_12

    :catch_d
    move-exception p0

    move-object p2, p1

    move-object p1, v0

    move-object p3, p1

    goto :goto_17

    :catch_e
    move-exception p0

    move-object p2, p1

    move-object p1, v0

    move-object p3, p1

    goto/16 :goto_1c

    :catchall_7
    move-exception p0

    move-object p1, v0

    move-object p2, p1

    move-object p3, p2

    :goto_12
    move-object v1, p3

    move-object v3, v1

    move-object v4, v3

    const/4 v2, -0x1

    :goto_13
    :try_start_9
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    if-eqz v4, :cond_a

    :try_start_a
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    goto :goto_14

    :catch_f
    move-exception p0

    goto :goto_15

    :cond_a
    :goto_14
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_b
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_f

    goto :goto_16

    :goto_15
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_c
    :goto_16
    if-eqz p2, :cond_13

    goto :goto_21

    :catch_10
    move-exception p0

    move-object p1, v0

    move-object p2, p1

    move-object p3, p2

    :goto_17
    move-object v1, p3

    move-object v3, v1

    move-object v4, v3

    const/4 v2, -0x1

    :goto_18
    :try_start_b
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    if-eqz v4, :cond_d

    :try_start_c
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    goto :goto_19

    :catch_11
    move-exception p0

    goto :goto_1a

    :cond_d
    :goto_19
    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_e
    if-eqz v3, :cond_f

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_11

    goto :goto_1b

    :goto_1a
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_f
    :goto_1b
    if-eqz p2, :cond_13

    goto :goto_21

    :catch_12
    move-exception p0

    move-object p1, v0

    move-object p2, p1

    move-object p3, p2

    :goto_1c
    move-object v1, p3

    move-object v3, v1

    move-object v4, v3

    const/4 v2, -0x1

    :goto_1d
    :try_start_d
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    if-eqz v4, :cond_10

    :try_start_e
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    goto :goto_1e

    :catch_13
    move-exception p0

    goto :goto_1f

    :cond_10
    :goto_1e
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_11
    if-eqz v3, :cond_12

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_13

    goto :goto_20

    :goto_1f
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_12
    :goto_20
    if-eqz p2, :cond_13

    :goto_21
    invoke-virtual {p2}, Ljava/lang/Process;->destroy()V

    :cond_13
    move-object p0, p1

    move-object p2, p3

    move v1, v2

    :cond_14
    :goto_22
    new-instance p1, Lz2/y4$OooO00o;

    if-nez p0, :cond_15

    move-object p0, v0

    goto :goto_23

    :cond_15
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_23
    if-nez p2, :cond_16

    goto :goto_24

    :cond_16
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_24
    invoke-direct {p1, v1, p0, v0}, Lz2/y4$OooO00o;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object p1

    :catchall_8
    move-exception p0

    if-eqz v4, :cond_17

    :try_start_f
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    goto :goto_25

    :catch_14
    move-exception p1

    goto :goto_26

    :cond_17
    :goto_25
    if-eqz v1, :cond_18

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_18
    if-eqz v3, :cond_19

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_14

    goto :goto_27

    :goto_26
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_19
    :goto_27
    if-eqz p2, :cond_1a

    invoke-virtual {p2}, Ljava/lang/Process;->destroy()V

    :cond_1a
    throw p0

    :cond_1b
    :goto_28
    new-instance p0, Lz2/y4$OooO00o;

    invoke-direct {p0, v1, v0, v0}, Lz2/y4$OooO00o;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
